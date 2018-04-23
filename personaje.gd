extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var frenar = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if (!frenar):
		position.y -= 100 * delta
	# TODO: Verificar si llegó al fin del "mapa"
	# TODO: Limitar el movimiento del personaje por los bordes del "mapa"
	# TODO: Velocidad
	if (Input.is_action_pressed("ui_left")):
		position.x -= 100 * delta
	if (Input.is_action_pressed("ui_right")):
		position.x += 100 * delta


func _on_personaje_area_entered(area):
	# TODO: Ver cómo hacer para bloquear de costado
	# Nota: parece que se podría usar collide_and_get_contacts, y las posiciones de las áreas
	if (area.has_node("es_obstaculo")):
		frenar = true


func _on_personaje_area_exited(area):
	if (area.has_node("es_obstaculo")):
		frenar = false
