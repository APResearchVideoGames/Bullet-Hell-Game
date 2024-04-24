extends Area2D

@export var KeyboardPlayer: PackedScene

var fire = MOUSE_BUTTON_LEFT
var speed = 100
var direction = Vector2.DOWN


func _physics_process(delta):
	position += direction * speed * delta

func _on_screen_exited():
	queue_free()

