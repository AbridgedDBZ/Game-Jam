extends CharacterBody2D
@onready var progress_bar = $ProgressBar
@onready var animation_player = $AnimationPlayer
@onready var _focus = $Focus

@export var MAX_HEALTH: float = 7

var health: float = 7:
	set(value):
		health = value
		_update_progress_bar()
		_play_animation()

func _update_progress_bar():
	progress_bar.value = (health / MAX_HEALTH) * 100

func _play_animation():
	animation_player.play("hurt")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func focus():
	_focus.show()

func unfocus():
	_focus.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func take_damage(value):
	health -= value
