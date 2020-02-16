extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_RIGHT:
			$AnimatedSprite.play("actionPet")
			$AnimatedSprite.play("expressionDog")
				if event.button_index == BUTTON_LEFT:
					$AnimatedSprite.stop()
				else:
					pass
		else:
			pass
			
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_MIDDLE
			$AnimatedSprite.play("refillFood")
		else:
			pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
