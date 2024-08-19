extends Area2D

var FatRat = load("res://GamePlayObjects/FatRat.tscn")

func _on_body_entered(body):
	var NewRat = FatRat.instantiate()
	NewRat.global_position = self.position
	get_tree().get_current_scene().add_child(NewRat)
	queue_free()
