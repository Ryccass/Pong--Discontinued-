extends KinematicBody2D

export var move_speed = 250

var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("up1"):
		velocity.y = -1
	if Input.is_action_pressed("down1"):
		velocity.y = 1
	if !Input.is_action_pressed("up1") and !Input.is_action_pressed("down1"):
		velocity.y = 0
	
	velocity = velocity.normalized() * move_speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)