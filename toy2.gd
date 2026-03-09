extends RigidBody2D

@onready var sprite: Sprite2D = $NeonToyCar
@onready var sfx_player: AudioStreamPlayer2D = $"SFX player"

const SPEED := 300.0
var direction := Vector2.from_angle(PI/4).normalized()
var charge: float = 1.

func _ready() -> void:
    add_to_group("toy")

func _process(delta: float) -> void:
    if direction.x > 0: 
        sprite.flip_h = false
    else: 
        sprite.flip_h = true

func _physics_process(delta: float) -> void:
    if charge > 0:
        charge -= delta/15/3
        set_linear_velocity(direction * charge * SPEED)
    else:
        sprite.modulate = Color.DIM_GRAY


func _on_body_entered(body: Node) -> void:
    if body.is_in_group("wall"):
        direction *= Vector2(1,-1)
    else:
        if !sfx_player.is_playing():
            sfx_player.play() # Replace with function body.
