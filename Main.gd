extends Node2D

var points = 0 

func _ready():
	pass

func _process(delta):
	$HUD/Label.text = str(points)

func _on_Player1_pressed():
	$Player.jump()


func _on_Player2_pressed():
	$Player2.jump()



func _on_running_points_timeout():
	points += 5
