extends CharacterBody2D

# variables
var score : int = 0

var speed : int = 300
var jumpForce : int = 600
var gravity : int = 800

@onready var _animated_sprite : AnimatedSprite2D = get_node("AnimatedSprite")

func _physics_process(delta):
	velocity.x = 0
	
	# gravity
	velocity.y += gravity * delta
	
	# actions
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		_animated_sprite.play("run")
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
		_animated_sprite.play("run")
	elif Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y -= jumpForce
	elif Input.is_action_pressed("ui_up") and not is_on_floor():
		_animated_sprite.play("jump")
	else:
		_animated_sprite.play("idle")
	
	# applying velocity
	move_and_collide(velocity * delta)
	move_and_slide()
	
	# sprite direction
	if velocity.x < 0:
		_animated_sprite.flip_h = true
	elif velocity.x > 0:
		_animated_sprite.flip_h = false
	
	
		
		
	
