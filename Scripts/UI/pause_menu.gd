extends Control

func resume():
	get_tree().paused = false
	hide()
	$AnimationPlayer.play_backwards("blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()

func _ready():
	$AnimationPlayer.play("RESET")

func test_esc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

func _process(_delta):
	test_esc()


func _on_resume_pressed():
	resume()


func _on_settings_pressed():
	pass # Replace with function body.


func _on_main_menu_pressed():
	var to_main_menu := func():
		get_tree().change_scene_to_file("res://Scenes/Areas/menu.tscn")
	to_main_menu.call_deferred()
