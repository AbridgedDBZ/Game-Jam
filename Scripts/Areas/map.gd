extends Node2D

func _ready():
	pass
	
func _process(_delta):
	pass

func _on_house_1_transition_area_body_entered(_body):
	var inside_house = func():
		get_tree().change_scene_to_file("res://Scenes/Inside_house1.tscn")
	inside_house.call_deferred()


func _on_enter_mayors_house_body_entered(body):
	var inside_house = func():
		get_tree().change_scene_to_file("res://Scenes/mayors_house.tscn")
	inside_house.call_deferred()
