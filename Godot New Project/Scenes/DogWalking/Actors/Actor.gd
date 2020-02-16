extends KinematicBody2D
class_name Actor

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed: = Vector2(300.0, 600.0)
export var gravity: = 3000.0
var _velocity: = Vector2.ZERO
# Called when the node enters the scene tree for the first time.

#_velocity.y = max(_velocity.y, speed.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
