extends Node2D

export var vel = -1800
var cena

func _ready():
	set_process(true) 
	cena = get_tree().get_current_scene()
	
func _process(delta):
	if cena.estado == cena.JOGANDO:
		set_position(get_position() - Vector2(vel * delta,0))
	
	if get_position().x < -800:
		print("destruido")
		queue_free()
		
#func _on_Area2D_body_enter( body ):
#	if body.get_name() == "Felpudo":
#		cena.kill()
		 
#func _on_Ponto_body_enter( body ):
#	cena.pontuar()

func _on_Ponto_body_entered(body):
	if body.get_name() == "Felpudo":
		print("Ponto")
		cena.pontuar()

func _on_Area2D_body_entered(body):
	if body.get_name() == "Felpudo":
		print("perdeu")
		cena.kill()

