extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var VEL_CONSTANTE = 50
var dir = Vector2()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	dir.x = randi() % 3 - 1
	dir.y = randi() % 3 - 1
	
	dir = dir.normalized()

func _physics_process(delta):
	var movimiento = dir
	var variacion = Vector2()
	variacion.x = randi() % 3 - 1
	variacion.y = randi() % 3 - 1
	
	movimiento = movimiento * VEL_CONSTANTE + variacion * 10
	
	move_and_slide(movimiento)
