extends Node2D

var enemies: Array = []
var enemies_size: int
var index: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	enemies = get_children()
	for i in enemies.size():
		enemies[i].position = Vector2(0, i * 86)
	enemies_size = enemies.size() - 1
	enemies[0].focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass

func _on_enemy_group_next_player():
	if index < enemies_size:
		index += 1
		switch_focus(index, index - 1)
	else:
		index = 0
		switch_focus(index, enemies_size)

func switch_focus(x, y):
	enemies[x].focus()
	enemies[y].unfocus()
