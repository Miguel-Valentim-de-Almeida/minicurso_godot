extends Node2D

var speed := 400  # speed of the ship
var player_position := Vector2.ZERO  # ship position

func _ready() -> void:
	# initialize with the ship position
	player_position = position 


func _process(delta: float) -> void:
	var velocity := Vector2.ZERO
	
	# ------------------------------------------------------------------------------
	# MOVIMENTAÇÃO DO JOGADOR
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	elif Input.is_action_pressed("ui_right"):
		velocity.x += 1
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	elif Input.is_action_pressed("ui_down"):
		velocity.y += 1
	# ------------------------------------------------------------------------------
	
	# update de position
	player_position += velocity.normalized() * speed * delta
	
	# Clamping to view
	var view_size = get_viewport_rect().size
	player_position.x = clamp(player_position.x, 40, view_size.x - 40)
	
	# new position
	position = player_position 
