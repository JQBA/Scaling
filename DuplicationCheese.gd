extends Area2D

@export var BeenActivated = false

var PlayerClone = preload("res://GamePlayObjects/PlayerNode.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	print("need more rats") 
	var NewRat = PlayerClone.instantiate()
	NewRat.global_position = self.position
	get_tree().get_current_scene().add_child(NewRat)
	queue_free()
