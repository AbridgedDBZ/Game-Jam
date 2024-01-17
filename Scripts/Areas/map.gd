extends Node2D

func _ready():
	pass
	
func _process(_delta):
	pass

func _on_house_1_transition_area_body_entered(_body):
	get_tree().change_scene_to_file("res://Scenes/Inside_house1.tscn")
