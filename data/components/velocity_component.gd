class_name VelocityComponent
extends Node2D

@export var velocity: Vector2
@export var speed: float

@export_group("Components")
@export var actor: Node2D
@export var input_component: InputComponent

var modded_speed: float = speed

func calculate_speed(add_modifiers: Array[float], mult_modifiers: Array[float]) -> void:
	modded_speed = speed
	
	for mod in add_modifiers:
		modded_speed += mod
	for mod in mult_modifiers:
		modded_speed *= mod

func calculate_velocity(delta) -> void:
	var direction = input_component.input_direction
	velocity = direction * modded_speed
	
func intitiate_velocity() -> void:
	actor.position.x += velocity.x
	actor.position.y += velocity.y
