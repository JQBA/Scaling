extends Area2D

func _on_body_entered(body):
	if body.isKing:
		get_tree().reload_current_scene()
	else:
		body.queue_free()
