extends CharacterBody2D

var can_dash = true 
var invincible = false
var shot = 6
var health = 3


func _physics_process(delta):
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * 250
	move_and_slide()
	
func _on_VisibleOnScreenNotifier2D_screen_exited():
	print("bruh")
