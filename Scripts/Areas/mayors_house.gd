extends Node2D

func _ready():
	pass

func _process(delta):
	pass


func _on_exit_mayor_house_body_entered(body):
	var change_to_map := func():
		get_tree().change_scene_to_file("res://Scenes/map_from_mayor.tscn")
	change_to_map.call_deferred()
