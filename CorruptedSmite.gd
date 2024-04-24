extends Area2D

@onready var timer = $Timer
var delete = false

var speed = 1500
var direction = Vector2.DOWN
signal hit

func _physics_process(delta):
	position += direction * speed * delta

func _on_screen_exited():
	hide()
	queue_free()


func _on_area_entered(area):
	hit.emit()

