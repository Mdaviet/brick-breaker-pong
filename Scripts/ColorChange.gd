extends Node

@onready var parentSprite : Sprite2D

func _ready():
	parentSprite = get_parent()
	parentSprite.modulate = Color8(randi_range(30, 220), randi_range(30, 220), randi_range(30, 220), 255)
