extends RigidBody2D
var y=0
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and y==0:
		if event.button_index == BUTTON_LEFT:
			y=1
			var mo = (get_global_mouse_position()-get_position())
			print(mo)
			apply_impulse(Vector2(),mo*1.5)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Visibility_screen_exited():
	pass
func _on_Node2D_sig():
	y=0
	queue_free()
