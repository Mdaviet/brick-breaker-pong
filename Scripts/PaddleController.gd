extends CharacterBody2D

@export var paddleSpeed : float
@export var paddleSizeMult : float
@export var playerNumber : int

var p1Ball : RigidBody2D
var p2Ball : RigidBody2D

func _ready():
	if playerNumber != 1 || playerNumber != 2:
		print("Player Number not assigned")


func _physics_process(delta):
	
	
	if (playerNumber == 1):
		velocity.y = P1getVerticalInput() * paddleSpeed
		
	if (playerNumber == 2):
		velocity.y = P2getVerticalInput() * paddleSpeed
	
	move_and_slide()
	
func P1getVerticalInput():
	if Input.is_action_pressed("P1 Move Up"):
		return -1
	elif Input.is_action_pressed("P1 Move Down"):
		return 1
	else:
		return 0

func P2getVerticalInput():
	if Input.is_action_pressed("P2 Move Up"):
		return -1
	elif Input.is_action_pressed("P2 Move Down"):
		return 1
	else:
		return 0
		
func P1fire():
	if Input.is_action_just_pressed("P1 Fire"):
		pass
	
func P2fire():
	if Input.is_action_just_pressed("P2 Fire"):
		pass
	
func PauseGame():
	if Input.is_action_just_pressed("Options"):
		pass
	

