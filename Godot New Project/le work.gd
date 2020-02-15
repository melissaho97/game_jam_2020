extends Node2D
var Bone = load("res://Bone.tscn")
var x = 0
signal sig
var b = Bone.instance()
func _ready():
	OS.set_window_size(Vector2(1920, 1080))

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_LEFT:
			x=1
		elif x==1:
			if event.button_index == BUTTON_RIGHT:
				emit_signal("sig")
				remove_child(b)
				b = Bone.instance()
				b.position = Vector2(350,700)
				add_child(b)
				x=0
			
