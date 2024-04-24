extends Area2D

signal hit
var health = 3
var invincible = false 
var time = 0

func _ready():
	invincible = false
	
func _on_area_entered(area):
	if invincible == true:
		pass
	else:
		print(health)
		health -= 1 
		print(health)
	
func _process(delta):
	if health < 1:
		print(time)
		get_tree().quit()

func _on_time_timeout():
	time += 1
	
