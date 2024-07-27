extends RigidBody2D

@export var ballSpeed : float
@export var ballSize : float

func _ready():
	apply_impulse(Vector2(-300, 100), Vector2(0, 0))
	
func _physics_processs():
	pass

