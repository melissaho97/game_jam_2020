extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export (PackedScene) var Raindrop
var time_remaining: = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/ProgressBar.value = 100
	randomize()
	$StartupDelay.start()
	
func _on_StartupDelay_timeout() -> void:
	time_remaining = 60
	$Timer.start()
	$RainTimer.start()
	$CanvasLayer/Ready.visible = false

func _on_RainTimer_timeout() -> void:
	$RainSpawn/RaindropPosition.set_offset(randi())
	
	var raindrop = Raindrop.instance()
	add_child(raindrop)
	
	raindrop.position = $RainSpawn/RaindropPosition.position
	
	$CanvasLayer/ProgressBar.value = get_node("Player").Health

func game_lost() -> void:
	pass

func game_won() -> void:
	pass

func _on_Timer_timeout() -> void:
	time_remaining -= 1
	var mins = time_remaining / 60
	var secs = time_remaining % 60
	$CanvasLayer/Time.text = "Survive for %02d : %02d" % [mins, secs]
	if time_remaining <= 0:
		$Timer.stop()
		$RainTimer.stop()
		game_won()
	elif get_node("Player").Health <= 0:
		$Timer.stop()
		$RainTimer.stop()
		game_lost()
