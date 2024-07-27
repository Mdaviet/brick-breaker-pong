extends RigidBody2D

@export var ballSpeed : float
@export var ballSize : float

func _ready():
	add_constant_force(Vector2(-100,10), Vector2(0,0))
