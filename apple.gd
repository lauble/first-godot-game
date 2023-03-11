extends Node2D

var ROTATION_SPEED = 1

func _process(delta):
	rotation += ROTATION_SPEED * delta
