extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export (PackedScene) var Raindrop

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	$RainTimer.start()

func _on_RainTimer_timeout() -> void:
	$RainSpawn/RaindropPosition.set_offset(randi())
	
	var raindrop = Raindrop.instance()
	add_child(raindrop)
	
	raindrop.position = $RainSpawn/RaindropPosition.position
	
