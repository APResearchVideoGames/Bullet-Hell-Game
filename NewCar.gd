extends Area2D

var speed = 0
var direction = Vector2.RIGHT

func _ready():
	$Startup.start()

func _physics_process(delta):
	position += direction * speed * delta

func _on_screen_exit():
	queue_free()

func _on_startup_timeout():
	speed = 400
