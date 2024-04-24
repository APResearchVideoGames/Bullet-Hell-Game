extends Node2D

@export var Ping: PackedScene

var currentxpos

# Called when the node enters the scene tree for the first time.
func _ready():
	$Despawn.start()
	$PING.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(get_global_mouse_position())



func _on_despawn_timeout():
	queue_free()

func _on_ping_timeout():
	$Pingsound.play()
	currentxpos = global_position
	var ping = Ping.instantiate()
	ping.position = global_position 
	ping.direction = (get_global_mouse_position() - position)
	get_tree().current_scene.call_deferred("add_child", ping)
