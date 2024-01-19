extends Area2D

@export var next_change_scene = ""
@export var next_scene_pos = Vector2.ZERO

func _ready():
	pass

func _process(_delta):
	pass

func _on_body_entered(_body):
	var change_to_map := func():
		globala.next_scene_position = next_scene_pos
		get_tree().change_scene_to_file(next_change_scene)
	change_to_map.call_deferred()
