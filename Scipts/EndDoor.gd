extends Area2D

var EndScreen = preload("res://GamePlayObjects/EndLevelScreen.tscn")
@export var nextLevel:String
var killCount = 0
func _on_body_entered(body):
	var EndScreenSpawn = EndScreen.instantiate()
	if body.isKing:
		body.queue_free()
		get_tree().change_scene_to_file(nextLevel)
	else: 
		killCount+=1
		body.queue_free()
