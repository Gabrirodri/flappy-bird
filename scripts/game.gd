extends Node2D
var pontos = 0
var estado = 1

onready var felpudo = get_node("Felpudo")
onready var timer_replay = get_node("TimerToReplay")
onready var label = get_node("Node2D/Control/Label")

const JOGANDO = 1
const PERDENDO = 2

func _ready():
	pass

func kill():
	felpudo.apply_impulse(Vector2(0,0), Vector2(-1000,0))
	get_node("BackAnim").stop()
	estado = PERDENDO
	timer_replay.start()
	get_node("somHit").play()

func pontuar():
	pontos += 1
	print("pontos + 1")
	label.set_text(str(pontos))
	get_node("somScore").play()
	
func _on_TimerToReplay_timeout():
	get_tree().reload_current_scene()
	

