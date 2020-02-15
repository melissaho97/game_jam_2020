extends "res://Scences/DogWalking/Actors/Actor.gd"


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_velocity.y = 100.0
	return

func _on_HitDetect_body_entered(body) -> void:
	print(body.get_class())
	if body.global_position.y > get_node("HitDetect").global_position.y:
		queue_free()

func _physics_process(delta: float) -> void:
	_velocity = move_and_slide(_velocity, Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_AutoRemove_body_entered(body) -> void:
	if body.get_class() == "TileMap":
		queue_free()
