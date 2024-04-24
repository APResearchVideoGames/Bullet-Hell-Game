extends Node2D

var Hovered = null

func _on_back_menu_pressed():
	get_tree().change_scene_to_file("res://Assets/main_menu.tscn")


func _on_version_2_pressed():
	get_tree().change_scene_to_file("res://Assets/Version2.tscn")



func _on_version_1_pressed():
	CharacterSelectGlobalMusic.stop()
	BattleGlobalMusic.play()
	get_tree().change_scene_to_file("res://Assets/Version1.tscn")
