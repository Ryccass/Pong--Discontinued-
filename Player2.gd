extends KinematicBody2D

export var move_speed = 250

var velocity = Vector2()

func get_input():
	if Input.is_action_pressed("up2"):
		velocity.y = -1
	if Input.is_action_pressed("down2"):
		velocity.y = 1
	if !Input.is_action_pressed("up2") and !Input.is_action_pressed("down2"):
		velocity.y = 0
	
	velocity = velocity.normalized() * move_speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)