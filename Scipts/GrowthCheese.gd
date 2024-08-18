extends Area2D

func _on_body_entered(body):
	body.scale.x += 2
	body.scale.y += 2
	queue_free()
