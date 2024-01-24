extends Sprite2D
@export var MAX_HEALTH: float = 7
@onready var progress_bar = $ProgressBar
@onready var _focus = $focus
@onready var animation_player = $AnimationPlayer

var health: float = 7:
	set(value):
		health = value
		_update_progress_bar()
		_play_animation()

func _update_progress_bar():
	progress_bar.value = health / MAX_HEALTH * 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _play_animation():
	animation_player.play("hurt")

func focus():
	_focus.show()
	
func unfocus():
	_focus.hide()
