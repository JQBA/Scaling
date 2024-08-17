extends CharacterBody2D

@export var MoveSpeed = 400
@export var Gravity = 9.8
@export var JumpForce = 500

# Called when the node enters the scene tree for the first time. Hiii noah U//w//U
func _ready():
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	if !is_on_floor():
		velocity.y += Gravity
	if Input.is_action_just_pressed("Jump"):
		velocity.y = -JumpForce
	var DirectionalInput = Input.get_axis("MoveLeft", "MoveRight")
	velocity.x = MoveSpeed * DirectionalInput
	move_and_slide()
	
		
