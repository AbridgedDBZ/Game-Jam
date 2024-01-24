extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Scenes/dialogue/First_scene.dialogue"), "Cave_1")
	return

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
