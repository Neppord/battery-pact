extends Node2D

const TOY = preload("res://toy.tscn")
const TOY2 = preload("res://toy2.tscn")
const toys: Array[PackedScene] = [TOY, TOY2]
var player_1_toy_index = 0
var player_2_toy_index = 0
@onready var player_1_cooldown: Timer = $Player1Timer
@onready var player_2_cooldown: Timer = $Player2Timer
@onready var toy_send: AudioStreamPlayer2D = $SFX/ToySend
@onready var player_1_battery: Timer = $HUD/ChargeBar1/Timer
@onready var player_2_battery: Timer = $HUD/ChargeBar2/Timer

var player_1_score: int = 0
var player_2_score: int = 0
class State: 
    var main

    func _init(_main) -> void:
        self.main = _main
    
    func enter(from: State):
        pass
    func exit(to: State):
        pass

func player_1_scores(body: Node2D) -> void:
    if body.is_in_group("toy"):
        $SFX/PlayerScores.play()
        player_1_score += 1
        $HUD/Player1Score.text = str(player_1_score)
        body.queue_free()
        if player_1_score >= 10 and not $VictoryText.visible:
            $VictoryText.visible = true
            $VictoryText/Label.text = 'The winner is\n Player 1'
            $SFX/PlayerWins.play()
            

func player_2_scores(body: Node2D) -> void:
    if body.is_in_group("toy"):
        $SFX/PlayerScores.play()
        player_2_score += 1
        $HUD/Player2Score.text = str(player_2_score)
        body.queue_free()
        if player_2_score >= 10 and not $VictoryText.visible:
            $VictoryText.visible = true
            $VictoryText/Label.text = 'The winner is\n Player 2'
            $SFX/PlayerWins.play()

func timer_progress(timer: Timer) -> float:
    return 1.0 - (timer.time_left / timer.wait_time)

func spawn_left(toy_position: Vector2) -> void:
    if player_1_cooldown.is_stopped():
        var progress := timer_progress(player_1_battery)
        player_1_battery.start()
        player_1_cooldown.start()
        var toy_scene = toys[player_1_toy_index]
        spawn(toy_scene, toy_position,Vector2(1, 1), progress)
        
    
func spawn_right(toy_position: Vector2) -> void:
    if player_2_cooldown.is_stopped():
        var progress := timer_progress(player_2_battery)
        player_2_battery.start()
        player_2_cooldown.start()
        var toy_scene = toys[player_2_toy_index]
        spawn(toy_scene, toy_position, Vector2(-1, 1), progress)
    
func spawn(toy_scene: PackedScene,toy_position: Vector2, direction: Vector2, charge:float) -> void:
    toy_send.play()
    var toy := toy_scene.instantiate()
    get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
    toy.global_position = toy_position
    toy.direction *= direction
    toy.charge = charge 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.

var player_1_at_max_charge: bool = false
var player_2_at_max_charge: bool = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    var progress1 := timer_progress(player_1_battery)
    $HUD/ChargeBar1.value = progress1 * 100
    var progress2 := timer_progress(player_2_battery)
    $HUD/ChargeBar2.value = progress2 * 100
    
    if progress1 >= 1  and not player_1_at_max_charge:
        player_1_at_max_charge = true
        $SFX/BatteryMaxCharge.play()
    if progress1 < 1:
        player_1_at_max_charge = false
        
    if progress2 >= 1  and not player_2_at_max_charge:
        player_2_at_max_charge = true
        $SFX/BatteryMaxCharge.play()
        
    if progress2 < 1:
        player_2_at_max_charge = false
    
    if Input.is_action_just_pressed("player_1_left"):
        player_1_toy_index = (player_1_toy_index - 1) % toys.size()
            
    if Input.is_action_just_pressed("player_1_right"):
        player_1_toy_index = (player_1_toy_index + 1) % toys.size()
        
    if Input.is_action_just_pressed("player_2_left"):
        player_2_toy_index = (player_2_toy_index - 1) % toys.size()
                
    if Input.is_action_just_pressed("player_2_right"):
        player_2_toy_index = (player_2_toy_index + 1) % toys.size()
    
    $HUD/Player1ToyIndicator.text = str(abs(player_1_toy_index) + 1)
    $HUD/Player2ToyIndicator.text = str(abs(player_2_toy_index) + 1)
