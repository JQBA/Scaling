extends Area2D


func _on_body_entered(body):
	var impulseAmount = Vector2(200, 200)
	body.apply_impulse(impulseAmount)
	
