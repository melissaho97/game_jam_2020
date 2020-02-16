extends Node2D

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
			
func _unhandled_input_2(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_MIDDLE:
			$AnimatedSprite.play("refillFood")
		else:
			pass


