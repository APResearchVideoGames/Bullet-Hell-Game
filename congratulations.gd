extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Despawn.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_despawn_timeout():
	queue_free()
