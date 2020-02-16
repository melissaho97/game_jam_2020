extends Node2D

var next_scene = preload("res://Scenes/selection.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_StartButton_pressed():
	get_tree().change_scene_to(next_scene)
