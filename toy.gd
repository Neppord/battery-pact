extends CharacterBody2D

@onready var sprite: Sprite2D = $NeonToyCar
@onready var sfx_player: AudioStreamPlayer2D = $"SFX player"

const SPEED = 300.0
const CONSUMPTION := 0.03
var direction := Vector2.RIGHT
var charge: float = 10.0

func _process(delta: float) -> void:
	if direction == Vector2.RIGHT: 
		sprite.flip_h = false
	else: 
		sprite.flip_h = true

func _physics_process(delta: float) -> void:
	charge -= CONSUMPTION
	velocity = direction * SPEED
	if charge > 0:
		move_and_slide()
		if get_slide_collision_count() > 0 and !sfx_player.is_playing():
			sfx_player.play()
	else:
		sprite.modulate = Color.DIM_GRAY
