extends CharacterBody2D

@export var isKing = false

const SPEED = 150.0
const JUMP_VELOCITY = -200.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var RatSize = 1
	
func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	#handles crown 👑👑👑
	$crown.visible = 1 if isKing else 0
	# Handle jump
	if isKing:
		if Input.is_action_just_pressed("Jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		# Get the input direction and handle the movement/deceleration.
		
		
		# As good practice, you should replace UI actions with custom gameplay actions.
		var direction = Input.get_axis("MoveLeft", "MoveRight")
		if velocity.x > 0:
			$Sprite2D.flip_h = true
		elif velocity.x < 0:
			$Sprite2D.flip_h = false
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	

func _on_crown_draw():
	pass # Replace with function body.
