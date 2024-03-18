extends CharacterBody2D


@onready var rdown: Sprite2D = get_node("RayganDown")
@onready var rup: Sprite2D = get_node("RayganUp")
@onready var rright: Sprite2D = get_node("RayganRight")
@onready var rleft: Sprite2D = get_node("RayganLeft")
@onready var rheaddown: Sprite2D = get_node("RayganHeadDown")
@onready var rheadup: Sprite2D = get_node("RayganHeadUp")
@onready var rheadright: Sprite2D = get_node("RayganHeadRight")
@onready var rheadleft: Sprite2D = get_node("RayganHeadLeft")




func _process(delta):
	if Global.turn == "Raygan" and Global.bability == "BruceHead":
		if Input.is_action_pressed("Down") and Input.is_action_pressed("BDown"):
			rdown.go_again()
		elif Input.is_action_pressed("Down"):
			rdown.use_turn()
		if Input.is_action_pressed("Up") and Input.is_action_pressed("BUp"):
			rup.go_again()
		elif Input.is_action_pressed("Up"):
			rup.use_turn()
		if Input.is_action_pressed("Right") and Input.is_action_pressed("BRight"):
			rright.go_again()
		elif Input.is_action_pressed("Right"):
			rright.use_turn()
		if Input.is_action_pressed("Left") and Input.is_action_pressed("BLeft"):
			rleft.go_again()
		elif Input.is_action_pressed("Left"):
			rleft.use_turn()

	if Global.turn == "Bruce" and Global.rability == "RayganHead":
		if Input.is_action_pressed("Down") and Input.is_action_pressed("BDown"):
			rheaddown.go_again()
		elif Input.is_action_pressed("Down"):
			rheaddown.use_turn()
		if Input.is_action_pressed("Up") and Input.is_action_pressed("BUp"):
			rheadup.go_again()
		elif Input.is_action_pressed("Up"):
			rheadup.use_turn()
		if Input.is_action_pressed("Right") and Input.is_action_pressed("BRight"):
			rheadright.go_again()
		elif Input.is_action_pressed("Right"):
			rheadright.use_turn()
		if Input.is_action_pressed("Left") and Input.is_action_pressed("BLeft"):
			rheadleft.go_again()
		elif Input.is_action_pressed("Left"):
			rheadleft.use_turn()
			
	#if Input.is_action_just_pressed("Down"):
		#Global.r = true
	#if Input.is_action_just_pressed("Up"):
		#Global.r = true
	#if Input.is_action_just_pressed("Right"):
		#Global.r = true
	#if Input.is_action_just_pressed("Left"):
		#Global.r = true
