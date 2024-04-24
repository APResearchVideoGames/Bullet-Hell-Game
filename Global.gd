extends Node


var ability1  # 1 is smite 2 is newcar
var ability2  # 1 is discord 2 is recycle



func _on_smite_pressed():
	ability1 = 1 
	print(ability1)
	
func _on_new_car_pressed():
	ability1 = 2
	print(ability1)
	
func _on_recycle_pressed():
	ability2 = 1 
	print(ability2)


func _on_discord_pressed():
	ability2 = 2
	print(ability2)

