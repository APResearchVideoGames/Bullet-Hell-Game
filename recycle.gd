extends Node2D

@export var recycleprojectile: PackedScene
var currentxpos
var debug = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D/DespawnTimer.start()
	$Sprite2D/InstanceTimer.start()
	print(debug)

var speed = 200
var direction = Vector2.DOWN

func _physics_process(delta):
	position += direction * speed * delta

func _process(delta):
	rotate(0.01)
	
func _on_screen_exited():
	queue_free()
	print("despawnedRecycle")



func _on_area_2d_area_entered(area):
	print("recycleenter")
