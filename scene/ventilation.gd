@tool

extends Node3D

@export var axis: Vector3 = Vector3(0,0,1)
@export var speed := 1.0
@export var offset := 30.0

func _enter_tree() -> void:
	rotate_object_local(axis, offset);
	pass

func _process(delta: float) -> void:
	
	rotate_object_local(axis, speed * delta)
	
	pass
