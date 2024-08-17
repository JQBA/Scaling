extends Area2D

@export var speed = 400

# Called when the node enters the scene tree for the first time. Hiii noah U//w//U
func _ready():
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("MoveRight"):
		velocity.x +=1
	if Input.is_action_pressed("MoveLeft"):
		velocity.x -=1
		
