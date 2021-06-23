extends KinematicBody2D

var motion = Vector2(0,0)


const SPEED = 500
const GRAVITY = 10
export var UP = Vector2(0,-1)
const JUMP_SPEED = 300
export(int,"Player1","Player2") var Player


func _ready():
	yield(get_tree(), "idle_frame")
	print(Player)


func _physics_process(delta):
	jump()
	#move()
	runner()
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
	if Player == 0:
		if Input.is_action_pressed("jump") and is_on_floor():
			$anim.play("jump")
			if UP == Vector2(0,-1):
				motion.y -= JUMP_SPEED
			elif UP == Vector2(0, 1):
				motion.y += JUMP_SPEED
	if Player == 1:
		if Input.is_action_pressed("jump2") and is_on_floor():
			$anim.play("jump")
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


func runner():
	$anim.play("walking")
	motion.x = SPEED

