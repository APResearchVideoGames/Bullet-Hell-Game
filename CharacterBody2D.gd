extends CharacterBody2D

var health

func _physics_process(delta):
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 250
	move_and_slide()
	
	if Input.is_action_just_pressed("Parry"):
		pass
	
	if health == 0:
		get_tree().quit()
