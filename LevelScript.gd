extends Node2D

var currKing = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var ratArmy = find_children("", "CharacterBody2D", true, false)
	if Input.is_action_just_pressed("ResetLevel"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("NextKing"):
		ratArmy[currKing].velocity.x = 0
		ratArmy[currKing].isKing = false
		if currKing+1 == len(ratArmy):
			currKing = 0
		else:
			currKing += 1
		ratArmy[currKing].isKing = true

#func _on_child_exiting_tree(node):
	#var killVolumeTotal = find_child("KillVolume",false, false).killCount
	#var endDoortotal = find_child("EndDorr", false, false).killCount
	#print(killVolumeTotal+endDoortotal)
	
			
