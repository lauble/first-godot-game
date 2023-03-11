extends Node2D

var ROTATION_SPEED = 3

func _process(delta):
	rotation += ROTATION_SPEED * delta
