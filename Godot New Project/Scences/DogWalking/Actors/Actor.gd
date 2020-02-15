extends KinematicBody2D
class_name Actor

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed: = Vector2(300.0, 1000.0)
export var gravity: = 3000.0
var velocity: = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity)

#velocity.y = max(velocity.y, speed.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
