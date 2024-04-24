extends Node2D

var KeyboardPlayer
var MouseBullet
var MousePlayer 


func _ready():
	KeyboardPlayer = get_node("KeyboardPlayer")
	MouseBullet = get_node("MouseBullet")
	MousePlayer = get_node("MousePlayer")

