extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var VEL_CONSTANTE = 100

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	var movimiento = Vector2()
	movimiento.y = -1
	
	if (Input.is_action_pressed("ui_left")):
		movimiento.x = -1
	if (Input.is_action_pressed("ui_right")):
		movimiento.x = 1
	
	movimiento = movimiento.normalized() * VEL_CONSTANTE
	
	move_and_slide(movimiento)
