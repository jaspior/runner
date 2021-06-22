extends Node2D


func _ready():
	pass


func _on_Player1_pressed():
	$Player.jump()


func _on_Player2_pressed():
	$Player2.jump()
