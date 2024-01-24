extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("RESET")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	test_esc()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	hide()

func pause():
	get_tree().paused = true
	show()
	$AnimationPlayer.play("blur")

func test_esc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()

func _on_resume_pressed():
	resume()

func _on_settings_pressed():
	pass # Replace with function body.
	# add opening settings menu

func _on_quit_pressed():
	var inside_house := func():
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	inside_house.call_deferred()
