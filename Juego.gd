extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var stressPersonaje = 0
var MAX_STRESS = 100

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	$OSD/LabelStress.text = "STRESS: " + String(stressPersonaje)
	if (stressPersonaje > MAX_STRESS):
		$OSD/LabelGameOver.visible = true
		pass#a a mejor vida
	else:
		stressPersonaje = stressPersonaje + delta
