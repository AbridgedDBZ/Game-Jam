extends Node2D

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_house_1_exit_body_entered(_body):
	get_tree().change_scene_to_file("res://Scenes/map.tscn")


func _on_to_basement_1_body_entered(_body):
	get_tree().change_scene_to_file("res://Scenes/basement_1.tscn")
