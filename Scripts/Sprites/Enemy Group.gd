extends Node2D

var enemies: Array = []
var enemy_size: int = 0
var index: int = 0

var action_queue: Array = []
var is_battling: bool = false
@onready var choice = $"../CanvasLayer/Choice"

signal next_player
# Called when the node enters the scene tree for the first time.
func _ready():
	enemies = get_children()
	for i in enemies.size():
		enemies[i].position = Vector2(0, i * 86)
	enemy_size = enemies.size()
	show_choice()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if not choice.visible:
		if Input.is_action_just_pressed("ui_up") and index > 0:
			index -= 1
			switch_focus(index, index + 1)
		if Input.is_action_just_pressed("ui_down") and index < enemy_size - 1:
			index += 1
			switch_focus(index, index - 1)
		if Input.is_action_just_pressed("ui_accept"):
			action_queue.push_back(index)
			emit_signal("next_player")
	if action_queue.size() == enemy_size and not is_battling:
		is_battling = true
		_action(action_queue)

func _action(stack):
	for i in stack:
		enemies[i].take_damage(1)
		await get_tree().create_timer(0.6).timeout
	action_queue.clear()
	is_battling = false
	show_choice()

func switch_focus(x, y):
	enemies[x].focus()
	enemies[y].unfocus()

func show_choice():
	choice.show()
	choice.find_child("Attack").grab_focus()

func _reset_focus():
	index = 0
	for enemy in enemies:
		enemy.unfocus()

func _start_choosing():
	_reset_focus()
	enemies[0].focus()


func _on_attack_pressed():
	choice.hide()
	_start_choosing()
