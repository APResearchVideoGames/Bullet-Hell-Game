extends Node


var ability1 
var ability2 

func _on_smite_pressed():
	ability1 = 1
	print(ability1)
	print(AbilityCheck.ability1)
	
func _on_new_car_pressed():
	ability1 = 2


func _on_discord_pressed():
	ability2 = 1


func _on_recycle_pressed():
	ability2 = 2

