extends Node


func _ready():
	$anim.play("Event1")
	yield($anim,"animation_finished")
	$texts/Button2.visible = true
	$anim.play("Event2")
	yield($anim,"animation_finished")

func _process(delta):
	$score.text = str(GAME.points)


func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")
