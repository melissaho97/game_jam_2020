extends Node2D
var infoPopUpmenu
var settingPopUpmenu

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	infoPopUpmenu = get_node("infoPopupMenu")
	settingPopUpmenu = get_node("settingPopupMenu")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Dinning_pressed():
	#get_tree().change_scene(res://Scenes/.....)
	pass # Replace with function body.
	
func _on_MainBuilding_pressed():
	#get_tree().change_scene("res://Scenes/DogWalking/DogWalking.tscn")
	pass # Replace with function body.

func _on_Park_pressed():
	#get_tree().change_scene(res://Scenes/.....)
	pass # Replace with function body.
	
func _on_HospitalandGrooming_pressed():
	#get_tree().change_scene(res://Scenes/.....)
	pass # Replace with function body.

func _on_Shop_pressed():
	#get_tree().change_scene(res://Scenes/.....)
	pass # Replace with function body.

func _on_Close_pressed():
	infoPopUpmenu.hide()
	settingPopUpmenu.hide()
	pass # Replace with function body.
