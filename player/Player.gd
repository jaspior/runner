extends KinematicBody2D

var motion = Vector2(0,0)

enum {JUMP,RUNNING}
var status = RUNNING

const SPEED = 500
const GRAVITY = 10
export var UP = Vector2(0,-1)
const JUMP_SPEED = 200
export(int,"Player1","Player2") var Player


func _ready():
	yield(get_tree(), "idle_frame")


func _physics_process(delta):
	jump()
	runner()
	move_and_slide(motion,UP)
	apply_gravity()
	anim_status()
	
	
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
			status = JUMP
			if UP == Vector2(0,-1):
				motion.y -= JUMP_SPEED
			elif UP == Vector2(0, 1):
				motion.y += JUMP_SPEED
			$jump.play()
			yield($jump,"finished")
	if Player == 1:
		if Input.is_action_pressed("jump2") and is_on_floor():
			status = JUMP
			if UP == Vector2(0,-1):
				motion.y -= JUMP_SPEED
			elif UP == Vector2(0, 1):
				motion.y += JUMP_SPEED
			$jump.play()
			yield($jump,"finished")

func move():
	status = RUNNING
	if Input.is_action_pressed('ui_left') and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed('ui_right') and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0


func runner():
	motion.x = 0

func anim_status():
	if is_on_floor():
		status = RUNNING
	elif motion.y < -20:
		status = JUMP
		
	if Player == 0:
		if status == RUNNING:
			$anim.play("walking")
		elif status == JUMP:
			$anim.play("jump")
			
	elif Player == 1:
		if status == RUNNING:
			$anim2.play("walking")
		elif status == JUMP:
			$anim2.play("jump")


func _on_killbox_body_entered(body):
	if body.is_in_group("enemy"):
		$sprite.queue_free()
		body.queue_free()
		#death.play()
		$death_anim.play("death")
		#yield($death,"finished")
		yield($death_anim,"animation_finished")
		if GAME.points < 2500:
			get_tree().change_scene("res://scenes/ends/End1.tscn")
		elif GAME.points >= 2500 and GAME.points < 5000:
			get_tree().change_scene("res://scenes/ends/End2.tscn")
		elif GAME.points >= 5000:
			get_tree().change_scene("res://scenes/ends/End3.tscn")
		#get_tree().reload_current_scene()

	elif body.is_in_group("candy"):
		GAME.points += 300
		body.queue_free()
		$item.play()
		yield($item,"finished")


func _on_Button1_pressed():
	if is_on_floor():
			status = JUMP
			if UP == Vector2(0,-1):
				motion.y -= JUMP_SPEED
			elif UP == Vector2(0, 1):
				motion.y += JUMP_SPEED
			$jump.play()
			yield($jump,"finished")



func _on_Button1_released():
		if Player == 0:
			if is_on_floor():
				status = JUMP
				if UP == Vector2(0,-1):
					motion.y -= JUMP_SPEED
				elif UP == Vector2(0, 1):
					motion.y += JUMP_SPEED
				$jump.play()
				yield($jump,"finished")





func _on_Button2_released():
	if Player == 1:
		if is_on_floor():
				status = JUMP
				if UP == Vector2(0,-1):
					motion.y -= JUMP_SPEED
				elif UP == Vector2(0, 1):
					motion.y += JUMP_SPEED
				$jump.play()
				yield($jump,"finished")
