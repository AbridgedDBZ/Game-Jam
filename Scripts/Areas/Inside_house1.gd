extends Node2D

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_house_1_exit_body_entered(_body):
	var change_to_map := func():
		get_tree().change_scene_to_file("res://Scenes/map_from_house.tscn")
	change_to_map.call_deferred()

func _on_to_basement_1_body_entered(_body):
	var change_to_basement := func():
		get_tree().change_scene_to_file("res://Scenes/basement_1.tscn")
	change_to_basement.call_deferred()
