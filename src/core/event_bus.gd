# Event Bus — Central message system for cross-system communication
# All systems communicate through this bus, never via direct imports.
#
# Usage:
#   EventBus.emit("enemy_defeated", {"enemy_id": id, "position": pos})
#   EventBus.subscribe("enemy_defeated", self, "_on_enemy_defeated")

extends Node

var _listeners: Dictionary = {}

## Register a callback for an event type
func subscribe(event_name: String, target: Object, method: String) -> void:
	if not _listeners.has(event_name):
		_listeners[event_name] = []
	_listeners[event_name].append({"target": target, "method": method})

## Remove a callback for an event type
func unsubscribe(event_name: String, target: Object, method: String) -> void:
	if not _listeners.has(event_name):
		return
	_listeners[event_name] = _listeners[event_name].filter(
		func(entry): return entry.target != target or entry.method != method
	)

## Emit an event to all subscribers
func emit(event_name: String, data: Dictionary = {}) -> void:
	if not _listeners.has(event_name):
		return
	for entry in _listeners[event_name]:
		if is_instance_valid(entry.target):
			entry.target.call(entry.method, data)

## Remove all subscriptions for a target (call on _exit_tree)
func unsubscribe_all(target: Object) -> void:
	for event_name in _listeners.keys():
		_listeners[event_name] = _listeners[event_name].filter(
			func(entry): return entry.target != target
		)

## Get count of listeners for an event (useful for debugging)
func listener_count(event_name: String) -> int:
	if not _listeners.has(event_name):
		return 0
	return _listeners[event_name].size()
