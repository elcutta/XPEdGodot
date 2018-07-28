extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var VEL_CONSTANTE = 50

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	var movimiento = Vector2()
	movimiento.x = randi() % 3 - 1
	movimiento.y = randi() % 3 - 1
	
	movimiento = movimiento.normalized() * VEL_CONSTANTE
	
	move_and_slide(movimiento)
