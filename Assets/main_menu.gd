extends Node2D


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Assets/Version.tscn")


func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://Assets/settings.tscn")


func _on_quit_button_pressed():
	get_tree().quit()

