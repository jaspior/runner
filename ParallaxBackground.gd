extends ParallaxBackground

export (float) var speed = 1000

func _process(delta):
	scroll_offset.x -= speed*delta
	


func _on_paralax_speed_timeout():
	if speed <= 4000:
		speed += 50
		GAME.speed = speed
