extends Node2D
var Bone = load("res://Bone.tscn")
var x = 0

func _ready():
	OS.set_window_size(Vector2(1920, 1080))
	set_process_input(true)

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and x == 0:
		if event.button_index == BUTTON_LEFT:
			pass
			
func _process(delta):
	pass
