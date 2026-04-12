extends AnimatedSprite2D
 
@export var toy_scene: PackedScene
@export var up_action: String = "player_2_up"
@export var down_action: String = "player_2_down"
@export var spawn_action: String = "player_2_spawn"

 
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
    if Input.is_action_just_pressed(up_action):
        lane -= 1
        
    if Input.is_action_just_pressed(down_action):
        lane += 1
    
    var tmp_lane: int = lane
    lane = clampi(lane, 0, player_positions.size() - 1)
    if lane != tmp_lane:
        $"../SFX/ArrowCollision".play()

    self.position.y = player_positions[lane]
    
    if Input.is_action_just_pressed(spawn_action):
        spawned_toy.emit(global_position)
