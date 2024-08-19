extends Area2D

var killCount = 0

func _on_body_entered(body):
	if body.isKing:
		get_tree().reload_current_scene()
	else:
		killCount +=1 
		body.queue_free()
