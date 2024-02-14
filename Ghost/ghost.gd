extends CharacterBody2D

@onready var player 

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 350
	move_and_slide()
