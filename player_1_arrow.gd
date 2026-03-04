extends AnimatedSprite2D

const movement = 160

const player_positions: Array[int] = [
	75,
	235,
	395,
	555,
	715,
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
		
	self.position.y =player_positions[lane]
		
		
