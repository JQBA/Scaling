extends Area2D

func _on_body_entered(body):
	body.scale.x *= 1.5
	body.scale.y *= 1.5
	queue_free()
