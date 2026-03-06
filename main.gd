extends Node2D

const TOY = preload("uid://c1xwjjii6xoxd")
@onready var player_1_cooldown: Timer = $Player1Timer
@onready var player_2_cooldown: Timer = $Player2Timer
@onready var sfx_player: AudioStreamPlayer2D = $"SFX player"
@onready var player_1_battery: Timer = $HUD/ChargeBar1/Timer
@onready var player_2_battery: Timer = $HUD/ChargeBar2/Timer

var player_1_score: int = 0
var player_2_score: int = 0

func player_1_scores(body: Node2D) -> void:
    player_1_score += 1

func player_2_scores(body: Node2D) -> void:
    player_2_score += 1

func timer_progress(timer: Timer) -> float:
    return 1.0 - (timer.time_left / timer.wait_time)

func spawn_left(toy_position: Vector2) -> void:
    if player_1_cooldown.is_stopped():
        var progress := timer_progress(player_1_battery)
        player_1_battery.start()
        player_1_cooldown.start()
        spawn(toy_position, Vector2.RIGHT, progress)
    
func spawn_right(toy_position: Vector2) -> void:
    if player_2_cooldown.is_stopped():
        var progress := timer_progress(player_2_battery)
        player_2_battery.start()
        player_2_cooldown.start()
        spawn(toy_position, Vector2.LEFT, progress)
    
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
    var progress1 := timer_progress(player_1_battery)
    $HUD/ChargeBar1.value = progress1 * 100
    var progress2 := timer_progress(player_2_battery)
    $HUD/ChargeBar2.value = progress2 * 100
