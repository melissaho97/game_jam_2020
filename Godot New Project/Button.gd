extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function b


func _my_level_was_completed():
	get_tree().change_scene("res://Selectpage.tscn")
	pass
