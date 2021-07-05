extends Node2D

var points = 0 

func _ready():
	$music.play()
	GAME.points = points
	$ParallaxBackground/AnimationPlayer.play("Test")

func _process(delta):
	#GAME.points = points
	$HUD/score.text = str(GAME.points)
	$HUD/hiscore.text = str(GAME.hi_score)
	
func _on_Player1_pressed():
	$Player.jump()


func _on_Player2_pressed():
	$Player2.jump()


func _on_running_points_timeout():
	GAME.points += 5
