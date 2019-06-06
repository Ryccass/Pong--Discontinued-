extends KinematicBody2D

export var ball_speed = 250

var velocity = Vector2()
var target = null

func _ready():
	velocity.x = 1
	velocity.y = -1
	
func _physics_process(delta):
	velocity = velocity.normalized() * ball_speed
	var collision = move_and_collide(velocity * delta)
	if collision.name == "wall1" or collision.name == "wall2":
		velocity.y *= -1
	if collision:
		velocity *= -1
	
	