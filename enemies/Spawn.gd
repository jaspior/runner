extends Area2D

var released = false


func _process(delta):
	if released == false:
		release()


func release():
		#var mob = .add_child(load("res://enemies/Enemy.tscn").instance())
		var mob = load("res://enemies/Enemy.tscn").instance()
		.add_child(mob)
		mob.connect("passou", self, "can_release")
		#"pressed", self, "Button_pressed", [child.text])
		released = true

func can_release():
	released = false
