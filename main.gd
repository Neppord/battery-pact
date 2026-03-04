extends Node2D

const TOY = preload("uid://c1xwjjii6xoxd")

func spawn_left(toy_position: Vector2) -> void:
	spawn(toy_position, Vector2.RIGHT)
	
func spawn_right(toy_position: Vector2) -> void:
	spawn(toy_position, Vector2.LEFT)
	
func spawn(toy_position: Vector2, direction: Vector2) -> void:
	var toy := TOY.instantiate()
	get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
	toy.scale = Vector2(10, 10)
	toy.global_position = toy_position
	toy.direction = direction
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
