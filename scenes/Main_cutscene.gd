extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("Event1")
	yield($anim,"animation_finished")
	$quadrilheiros/campfire.queue_free()
	
	$anim.play("Event2")
	yield($anim,"animation_finished")

	get_tree().change_scene("res://scenes/Main.tscn")
