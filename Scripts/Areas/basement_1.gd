extends Node2D

func _ready():
	pass

func _process(_delta):
	pass

func _on_area_2d_body_entered(_body):
	var inside_house := func():
		get_tree().change_scene_to_file("res://Scenes/inside_house_1_basement.tscn")
	inside_house.call_deferred()
	