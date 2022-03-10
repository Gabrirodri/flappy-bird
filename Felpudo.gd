extends "res://scripts/Felpudo.gd"


func _ready():
	set_process_input(true)
	cena = get_tree().get_current_scene()
	
func _input(event):
	if event.is_action_pressed("touch"):
		on_touch()

func on_touch():
	apply_impulse(Vector2(0,0), Vector2(0,-300))
	if cena.estado == cena.JOGANDO:
		get_node("SomVoa").play()
