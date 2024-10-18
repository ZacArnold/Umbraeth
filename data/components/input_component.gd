class_name InputComponent
extends Node

@export var input_direction: Vector2

@export_group("Components")
@export var actor: Node2D

func calculate_input_direction(delta):
	input_direction = Input.get_vector("left", "right", "up", "down").normalized()
