extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Delete.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_delete_timeout():
	queue_free()
