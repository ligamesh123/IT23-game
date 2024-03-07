extends Node2D


func spawn_monster():
	var new_monster = preload("res://Ghost/ghost.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_monster.global_position = %PathFollow2D.global_position
	add_child(new_monster)
	


func _on_timer_timeout():
	spawn_monster()
