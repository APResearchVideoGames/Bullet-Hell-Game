extends CharacterBody2D

@export var MouseBullet: PackedScene
@export var Smite: PackedScene 
@export var Warning: PackedScene
@export var Recycle: PackedScene
@export var Congrats: PackedScene
@export var Newcar: PackedScene
@export var Discord: PackedScene

var cycle: int = 1
var firstability = 1 #1 Newcar 2daaaaaaaadw
var secondability = 2 # 1 discord = 2
var currentxpos
var canfire
var SmiteCooldown = true
var RecycleCooldown = true
var CarCooldown = true
var DiscordCooldown = true
var NewcarCooldown = true

signal shoot
signal despawnsmite
var KeyboardPlayer

var CanShoot = true
var theta: float  = 0.0 
@export_range(0,2*PI) var alpha: float = 0.0

@onready var timer = get_node("SmiteTimer")
var PlayerPosition = null

func _ready():
	KeyboardPlayer = get_parent().find_child("KeyboardPlayer")
	var canfire = false

func _process(delta):
	if Input.is_action_just_pressed("MouseShoot"):
		shoot_bullet()

func _physics_process(delt: float) -> void:
	global_position = get_global_mouse_position()
	DisplayServer.mouse_set_mode(DisplayServer.MOUSE_MODE_HIDDEN)
	if Input.is_action_just_pressed("Cycleup"):
		cycle += 1 
	if Input.is_action_just_pressed("Cycledown"):
		cycle -= 1 
	if cycle > 2:
		cycle = 1
	if cycle < 1:
		cycle = 2


func shoot_bullet():

	if cycle == 1:
		if firstability == 1:
			if SmiteCooldown == true:
				SmiteCooldown = false
				$SmiteTimer.start()
				currentxpos = global_position
				var warning = Warning.instantiate()
				warning.position = Vector2(currentxpos.x, 500)
				
				get_tree().current_scene.call_deferred("add_child",warning)
			else:
				pass
		else:
			if firstability == 2:
				if NewcarCooldown == true:
					NewcarCooldown = false
					$NewCarCool.start()
					currentxpos = global_position
					var congrat = Congrats.instantiate()
					congrat.position = Vector2(100, currentxpos.y)
					get_tree().current_scene.call_deferred("add_child", congrat)
					var newcar = Newcar.instantiate()
					newcar.position = Vector2(100, currentxpos.y)
					get_tree().current_scene.call_deferred("add_child", newcar)
	else:
		if cycle == 2:
			if secondability == 1:
				if RecycleCooldown == true:
					RecycleCooldown = false
					$RecycleCool.start()
					currentxpos = global_position
					var recycle = Recycle.instantiate()
					recycle.position = Vector2(currentxpos.x, 0)
					
					get_tree().current_scene.call_deferred("add_child", recycle)
				else:
					pass
			else:
				if secondability == 2:
					if DiscordCooldown == true:
						DiscordCooldown = false
						$DiscordCooldown.start()
						currentxpos = global_position
						var discord = Discord.instantiate()
						discord.position = currentxpos
						get_tree().current_scene.call_deferred("add_child", discord)
					else: 
						pass


func _on_smite_timer_timeout():
	$SMITE.play()
	var corsmite = Smite.instantiate()
	corsmite.position = Vector2(currentxpos.x - 560, 10)
	
	get_tree().current_scene.call_deferred("add_child",corsmite)
	
	$SmiteCooldown.start()

func _on_discord_cooldown_timeout():
	DiscordCooldown = true

func _on_smite_cooldown_timeout():
	SmiteCooldown = true


func _on_recycle_timeout():
	RecycleCooldown = true


func _on_new_car_timeout():
	NewcarCooldown = true

