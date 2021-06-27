extends KinematicBody2D

export var speed = 100
var motion = Vector2(0,0)
signal passou
var gravity = -1
var UP = Vector2(0,gravity)
const GRAVITY = 10
onready var snake = randi()%30+10
func _ready():
	if global_position.y > 125:
		gravity = 1
	else:
		gravity = -1
	UP = Vector2(0,gravity)

func _physics_process(delta):
	move()
	move_and_slide(motion,UP)
	apply_gravity()

func move():

	motion.x = -GAME.speed / 10 - snake


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
