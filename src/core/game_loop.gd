# Game Loop — Manages the main tick cycle and frame timing
#
# Handles fixed timestep for physics, variable timestep for rendering,
# and pause/resume state management.

extends Node

## Target physics ticks per second
const PHYSICS_FPS: int = 60

## Accumulator for fixed timestep
var _accumulator: float = 0.0
var _fixed_delta: float = 1.0 / PHYSICS_FPS

## Game state
var is_paused: bool = false
var game_speed: float = 1.0
var _frame_count: int = 0
var _elapsed_time: float = 0.0

func _ready() -> void:
	EventBus.subscribe("game_pause", self, "_on_game_pause")
	EventBus.subscribe("game_resume", self, "_on_game_resume")
	EventBus.subscribe("game_speed_change", self, "_on_speed_change")

func _process(delta: float) -> void:
	if is_paused:
		return

	var scaled_delta = delta * game_speed
	_elapsed_time += scaled_delta
	_frame_count += 1

	# Variable timestep update (rendering, UI, animations)
	EventBus.emit("frame_update", {"delta": scaled_delta, "frame": _frame_count})

func _physics_process(delta: float) -> void:
	if is_paused:
		return

	var scaled_delta = delta * game_speed

	# Fixed timestep update (physics, gameplay logic)
	EventBus.emit("physics_update", {"delta": scaled_delta})

func _on_game_pause(_data: Dictionary) -> void:
	is_paused = true

func _on_game_resume(_data: Dictionary) -> void:
	is_paused = false

func _on_speed_change(data: Dictionary) -> void:
	game_speed = clamp(data.get("speed", 1.0), 0.1, 5.0)

## Get elapsed game time (accounts for pauses and speed changes)
func get_elapsed_time() -> float:
	return _elapsed_time

## Get current frame count
func get_frame_count() -> int:
	return _frame_count

func _exit_tree() -> void:
	EventBus.unsubscribe_all(self)
