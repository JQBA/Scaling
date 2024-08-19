extends Area2D

var EndScreen = preload("res://GamePlayObjects/EndLevelScreen.tscn")
var killCount = 0
func _on_body_entered(body):
	var EndScreenSpawn = EndScreen.instantiate()
	if body.isKing:
		body.queue_free()
		get_tree().get_current_scene().add_child(EndScreenSpawn)
	else: 
		killCount+=1
		body.queue_free()
