extends Area2D

var released = false
var speed = 100
var campfire = preload("res://enemies/Enemy.tscn")
var snake = preload("res://enemies/Enemy2.tscn")
var candy = preload("res://enemies/Candy.tscn")
var cont
func _process(delta):
	if released == false:
		release()


func release():
		cont = randi() % 45 + 0
		if cont < 20:
			var mob = campfire.instance()
			.add_child(mob)
			mob.connect("passou", self, "can_release")
		elif cont < 40 and cont >= 20:
			var mob = snake.instance()
			.add_child(mob)
			mob.connect("passou", self, "can_release")
		elif cont >= 40:
			var mob = candy.instance()
			.add_child(mob)
			mob.connect("passou", self, "can_release")
		
		

		#"pressed", self, "Button_pressed", [child.text])
		released = true

func can_release():
	released = false

