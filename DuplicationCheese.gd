extends Area2D

@export var BeenActivated = false

var PlayerClone = preload("res://GamePlayObjects/PlayerNode.tscn")

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	var NewRat = PlayerClone.instantiate()
	NewRat.global_position = self.position
	get_tree().get_current_scene().add_child(NewRat)
	queue_free()