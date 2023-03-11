extends AnimatedSprite2D

@onready var _animated_player : AnimatedSprite2D = get_node("AnimatedPlayer")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		_animated_player.play("run")
