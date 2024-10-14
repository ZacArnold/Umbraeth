extends CharacterBody2D

@onready var state_chart: StateChart = %StateChart

@export var movement_speed:float


func get_input():
	var input_direction:Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * movement_speed

func _physics_process(delta: float) -> void:
	get_input()
	print(velocity)
	move_and_slide()
