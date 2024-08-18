extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://levels/TestWorld.tscn")


func _on_quit_pressed():
	get_tree().quit()


#moves button for start
func _on_start_mouse_entered():
	$"start/start img".frame = 1

func _on_start_mouse_exited():
	$"start/start img".frame = 0

#moves button for quit
func _on_quit_mouse_entered():
	$"Quit/quit img".frame = 1

func _on_quit_mouse_exited():
	$"Quit/quit img".frame = 0


#same for options 
func _on_options_mouse_entered():
		$"Options/options img".frame = 1 

func _on_options_mouse_exited():
		$"Options/options img".frame = 0
