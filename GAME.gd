extends Node


var speed = 100
var points = 0
var hi_score = 0
var score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	if points >= hi_score:
		hi_score = points

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
