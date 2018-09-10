extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var VEL_CONSTANTE = 100
var stress_modif = 1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	var movimiento = Vector2()
	var modifiVel = 1
	movimiento.y = -1
	
	if (Input.is_action_pressed("ui_left")):
		movimiento.x = -1
	if (Input.is_action_pressed("ui_right")):
		movimiento.x = 1
	if (Input.is_action_pressed("ui_up")):
		modifiVel = 2
		stress_modif = 3
	elif (Input.is_action_pressed("ui_down")):
		modifiVel = 0.5
		stress_modif = 2
	else:
		stress_modif = 1
	
	movimiento = movimiento.normalized() * VEL_CONSTANTE * modifiVel
	
	move_and_slide(movimiento)
	
	# Se estresa más al chocar
	if (get_slide_count() > 0):
		stress_modif = 10
