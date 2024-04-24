extends CharacterBody2D

var can_dash = true 
var invincible = false
var shot = 6
var health = 3


func _physics_process(delta):
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 250
	move_and_slide()
	
	if Input.is_action_just_pressed("Parry"):
		pass
	
	if health == 0:
		get_tree().quit()



func _on_area_2d_hit():
	health -= 1 
	print("health")
