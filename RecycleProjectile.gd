extends Area2D

var speed = 200
var direction = Vector2.DOWN

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	position += direction * speed * delta

func _on_screen_exited():
	queue_free()
