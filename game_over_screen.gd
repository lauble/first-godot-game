extends CanvasLayer

func _on_start_over_button_pressed():
	get_tree().change_scene_to_file("res://main_scene.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
