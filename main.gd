extends Node2D

const TOY = preload("uid://c1xwjjii6xoxd")
@onready var player_1_cooldown: Timer = $Player1Timer
@onready var player_2_cooldown: Timer = $Player2Timer
@onready var sfx_player: AudioStreamPlayer2D = $"SFX player"
@onready var player_1_battery: Timer = $Player1Arrow/Player1Battery

func spawn_left(toy_position: Vector2) -> void:
    if player_1_cooldown.is_stopped():
        var progress := 1.0 - (player_1_battery.time_left / player_1_battery.wait_time)
        player_1_battery.start()
        player_1_cooldown.start()
        spawn(toy_position, Vector2.RIGHT, progress)
    
func spawn_right(toy_position: Vector2) -> void:
    if player_2_cooldown.is_stopped():
        player_2_cooldown.start()
        spawn(toy_position, Vector2.LEFT, 1.)
    
func spawn(toy_position: Vector2, direction: Vector2, charge:float) -> void:
    sfx_player.play()
    var toy := TOY.instantiate()
    get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
    toy.global_position = toy_position
    toy.direction = direction
    toy.charge = charge
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
