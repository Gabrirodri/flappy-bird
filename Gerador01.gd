extends Position2D
onready var cano = preload("res://Cano.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.set_position(get_position() + Vector2(600, rand_range(-200,200)))
	get_owner().add_child(novocano)
