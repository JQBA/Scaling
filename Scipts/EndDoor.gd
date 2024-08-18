extends Area2D

var EndScreen = preload("res://GamePlayObjects/EndLevelScreen.tscn")

func _on_body_entered(body):
	var EndScreenSpawn = EndScreen.instantiate()
	if body.isKing:
		body.queue_free()
		get_tree().get_current_scene().add_child(EndScreenSpawn)
	else: 
		body.queue_free()
