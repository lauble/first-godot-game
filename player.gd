extends CharacterBody2D

# variables
var score : int = 0

var speed : int = 200
var jumpForce : int = 500
var gravity : int = 800

@onready var sprite : Sprite2D = get_node("Sprite")

func _physics_process(delta):
	velocity.x = 0
	
	# left right movement
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
	
	# applying velocity
	move_and_collide(velocity * delta)
	move_and_slide()
	
	# sprite direction
	if velocity.x < 0:
		sprite.flip_h = true
	elif velocity.x > 0:
		sprite.flip_h = false
	
	# gravity
	velocity.y += gravity * delta
	
	# jumping movement
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y -= jumpForce
		
	
