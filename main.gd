extends Node2D

const TOY = preload("uid://c1xwjjii6xoxd")

func spawn_left(position: Vector2) -> void:
	var toy := TOY.instantiate()
	get_tree().current_scene.add_child(toy) # or add_child(toy) depending on where you want it
	toy.scale = Vector2(10, 10)
	toy.global_position = position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
