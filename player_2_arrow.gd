extends AnimatedSprite2D

@export var toy_scene: PackedScene

const movement = 160

const player_positions: Array[int] = [
	75,
	235,
	395,
	555,
	715,
]

var lane: int = 1
const y_offset: int = 80

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("player_2_up"):
		lane -= 1
		
	if Input.is_action_just_pressed("player_2_down"):
		lane += 1
	
	lane = clampi(lane, 0, player_positions.size() - 1)

	self.position.y = player_positions[lane]
	
	if Input.is_action_just_pressed("player_2_spawn"):
		var toy := toy_scene.instantiate()
		get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
		toy.scale = Vector2(10, 10)
		toy.global_position = Vector2(global_position.x, player_positions[lane] + y_offset)
