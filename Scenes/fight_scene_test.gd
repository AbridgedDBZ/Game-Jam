extends Node2D
# vec i*32
var players: Array = []
var index: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	players = get_children()
	for i in players.size():
		players[i].position = Vector2(0, i*32)
	players[0].focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_up"):
		if index > 0:
			switch_focus(index, index + 1)
	if Input.is_action_just_pressed("ui_down"):
		if index < players.size() - 1:
			index += 1
			switch_focus(index, index - 1)

func switch_focus(x, y):
	players[x].focus()
	players[y].unfocus()
