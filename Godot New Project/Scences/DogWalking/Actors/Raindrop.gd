extends "res://Scences/DogWalking/Actors/Actor.gd"


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_velocity.y = 1000.0
	return

func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()

func _physics_process(delta: float) -> void:
	_velocity = move_and_slide(_velocity, Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
