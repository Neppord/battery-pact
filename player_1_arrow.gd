extends AnimatedSprite2D

@export var toy_scene: PackedScene

const movement = 160

signal spawned_toy(position: Vector2)

const player_positions: Array[float] = [
    75.,
    235.,
    395.,
    555.,
    715.,
]

var lane: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    if Input.is_action_just_pressed("player_1_up"):
        lane -= 1
        
    if Input.is_action_just_pressed("player_1_down"):
        lane += 1
    var tmp_lane: int = lane
    lane = clampi(lane, 0, player_positions.size() - 1)
    if lane != tmp_lane:
        $"../SFX/ArrowCollision".play()
        
    self.position.y = player_positions[lane]
    
    if Input.is_action_just_pressed("player_1_spawn"):
        spawned_toy.emit(global_position)
