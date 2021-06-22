extends KinematicBody2D

var motion = Vector2(0,0)


const SPEED = 500
const GRAVITY = 10
export var UP = Vector2(0,-1)
const JUMP_SPEED = 500


func _ready():
	yield(get_tree(), "idle_frame")


func _physics_process(delta):
	jump()
	move()
	move_and_slide(motion,UP)
	apply_gravity()
	
		
	
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
	
	
func jump():
	if Input.is_action_just_pressed("jump") and is_on_floor():
		if UP == Vector2(0,-1):
			motion.y -= JUMP_SPEED
		elif UP == Vector2(0, 1):
			motion.y += JUMP_SPEED

func move():
	if Input.is_action_pressed('ui_left') and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed('ui_right') and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0




