extends Area2D

var speed = 0.5
var direction: Vector2


func _physics_process(delta):
	position += direction * speed * delta

func _on_screen_exit():
	queue_free()



