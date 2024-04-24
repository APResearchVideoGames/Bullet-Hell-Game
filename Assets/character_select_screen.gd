extends Node2D

signal smite
signal smiteN

signal newcar
signal newcarN

signal discord
signal discordN

signal recycle
signal recycleN

func _on_back_menu_pressed():
	get_tree().change_scene_to_file("res://Assets/main_menu.tscn")


func _on_ready_button_pressed():
	CharacterSelectGlobalMusic.stop()
	get_tree().change_scene_to_file("res://Arena2.tscn")

	BattleGlobalMusic.play()

func _on_ability_1_mouse_entered(): #smite
	smite.emit()

func _on_ability_2_mouse_entered():
	newcar.emit()

func _on_ability_3_mouse_entered(): #NewCar
	discord.emit()

func _on_ability_4_mouse_entered():
	recycle.emit()



func _on_ability_1_mouse_exited():
	smiteN.emit()


func _on_ability_2_mouse_exited():
	newcarN.emit()


func _on_ability_3_mouse_exited():
	discordN.emit()


func _on_ability_4_mouse_exited():
	recycleN.emit()






