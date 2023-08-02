extends CharacterBody2D

var speed = 200

func _ready():
	$Camera2D.enabled = true
	$Camera2D.position_smoothing_enabled = true
	$Camera2D.limit_left = 0
	$Camera2D.limit_top = 0
	$Camera2D.limit_right = 500
	$Camera2D.limit_bottom = 500
	$Camera2D.zoom = Vector2(3, 3)

func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
	move_and_collide(velocity * delta)
