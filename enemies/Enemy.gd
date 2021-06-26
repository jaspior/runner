extends KinematicBody2D

export var speed = 100
var motion = Vector2(0,0)
signal passou
var UP = Vector2(0,-1)
const GRAVITY = 10

#func _ready():
#	set_as_toplevel(true)

func _physics_process(delta):
	  move()
	  move_and_slide(motion,UP)
	  apply_gravity()

func move():
	motion.x = -speed


#remove se sair da tela
func _on_VisibilityNotifier2D_screen_exited():
	emit_signal("passou")	
	queue_free()

func apply_gravity():
	if UP == Vector2(0,-1):
		if  is_on_floor() and motion.y > 0:
			motion.y = 0
		elif is_on_ceiling():
			motion.y = 1
		else:
			motion.y += GRAVITY
	elif UP == Vector2(0,1):
		if  is_on_floor() and motion.y < 0:
			motion.y = 0
		elif is_on_ceiling():
			motion.y = -1
		else:
			motion.y -= GRAVITY
