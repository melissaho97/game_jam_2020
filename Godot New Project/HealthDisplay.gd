extends Node2D

var infoPopUpmenu
var settingPopUpmenu
var bar_red = preload("res://assets/barHorizontal_red.png")
var bar_green = preload("res://assets/barHorizontal_green.png")
var bar_yellow = preload("res://assets/barHorizontal_yellow.png")

onready var healthbar = $HealthBar


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	if get_parent() and get_parent().get("max_health"):
		healthbar.max_value = get_parent().max_health

func _process(delta):
	global_rotation = 0

func update_healthbar(value):
	healthbar.texture_progress = bar_green
	if value < healthbar.max_value * 0.7:
		healthbar.texture_progress = bar_yellow
	if value < healthbar.max_value * 0.35:
		healthbar.texture_progress = bar_red
	if value < healthbar.max_value:
		show()
	healthbar.value = value


func _ready2():
	infoPopUpmenu = get_node("infoPopupMenu")
	settingPopUpmenu = get_node("settingPopupMenu")
	pass # Replace with function body.


func _on_Dinning_pressed():
	#get_tree().change_scene(res://Scenes/.....)
	pass # Replace with function body.
	
func _on_MainBuilding_pressed():
	#get_tree().change_scene(res://Scenes/DogWalking/DogWalking.tscn)
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
