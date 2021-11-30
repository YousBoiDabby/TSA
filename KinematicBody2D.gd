extends KinematicBody2D
var speed = 250
var velocity = Vector2()
func movement_input():
	# Detect up/down/left/right keystate and only move when pressed

	velocity = Vector2(0,0)
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	movement_input()
	move_and_collide(velocity * delta)

