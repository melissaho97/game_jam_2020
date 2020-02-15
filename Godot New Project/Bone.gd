extends RigidBody2D
var x=0
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and x==0:
		if event.button_index == BUTTON_LEFT:
			x=1
			var mo = (get_global_mouse_position()-get_position())
			print(mo)
			apply_impulse(Vector2(),mo*1.5)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
