extends Node2D


func _on_next_level_button_pressed():
	get_tree().change_scene_to_file("res://levels/Level_01.tscn")


func _on_end_game_button_pressed():
	get_tree().quit() # Replace with function body.


func _on_reset_level_pressed():
	get_tree().change_scene_to_file("res://levels/TestWorld.tscn") # Replace with function body.
