extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim.play("Event1")
	yield($anim,"animation_finished")
	
func _process(delta):
	$score.text = str(GAME.points)


func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")
