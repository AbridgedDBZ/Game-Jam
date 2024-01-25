extends Node2D


func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Scenes/dialogue/1st.dialogue"), "start")
	return

func _process(_delta):
	pass
