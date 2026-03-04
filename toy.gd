extends CharacterBody2D

@onready var sprite: Sprite2D = $NeonToyCar

const SPEED = 300.0
var direction := Vector2.RIGHT

func _process(delta: float) -> void:
	if direction == Vector2.RIGHT: 
		sprite.flip_h = false
	else: 
		sprite.flip_h = true

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity = direction * SPEED
	move_and_slide()
