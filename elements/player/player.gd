class_name Player
extends Node2D

@export_group("Components")
@export var state_chart: StateChart
@export var velocity_component: VelocityComponent
@export var input_component: InputComponent

var add_modifiers: Array[float] = []
var mult_modifiers: Array[float] = []

func _process(delta: float) -> void:
	input_component.calculate_input_direction(delta)
	velocity_component.calculate_speed(add_modifiers, mult_modifiers)
	velocity_component.intitiate_velocity()
	
