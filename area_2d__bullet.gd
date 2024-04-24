extends Area2D

var fire = MOUSE_BUTTON_LEFT
var speed = 750
var direction = Vector2.RIGHT
@export var MouseBullet : PackedScene

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_screen_exited():
	queue_free()
