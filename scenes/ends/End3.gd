extends Node


func _ready():
	$anim.play("Event1")
	yield($anim,"animation_finished")
	$texts/Button2.visible = true
	$texts/Button3.visible = true
	$anim.play("Event2")
	yield($anim,"animation_finished")

func _process(delta):
	$texts/score.text = str(GAME.points)


func _on_Button2_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://scenes/main_menu.tscn")
