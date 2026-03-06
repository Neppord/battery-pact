extends Node2D

const TOY = preload("uid://c1xwjjii6xoxd")
@onready var player_1_timer: Timer = $Player1Timer
@onready var player_2_timer: Timer = $Player2Timer
@onready var sfx_player: AudioStreamPlayer2D = $"SFX player"
@onready var player_1_battery: Timer = $Player1Arrow/Player1Battery

func spawn_left(toy_position: Vector2) -> void:
    if player_1_timer.is_stopped():
        player_1_timer.start()
        spawn(toy_position, Vector2.RIGHT)
    
func spawn_right(toy_position: Vector2) -> void:
    if player_2_timer.is_stopped():
        player_2_timer.start()
        spawn(toy_position, Vector2.LEFT)
    
func spawn(toy_position: Vector2, direction: Vector2) -> void:
    sfx_player.play()
    var toy := TOY.instantiate()
    get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
    toy.global_position = toy_position
    toy.direction = direction
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
