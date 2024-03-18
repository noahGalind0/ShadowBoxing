extends CharacterBody2D


@onready var bdown: Sprite2D = get_node("BruceDown")
@onready var bup: Sprite2D = get_node("BruceUp")
@onready var bright: Sprite2D = get_node("BruceRight")
@onready var bleft: Sprite2D = get_node("BruceLeft")
@onready var bheaddown: Sprite2D = get_node("BruceHeadDown")
@onready var bheadup: Sprite2D = get_node("BruceHeadUp")
@onready var bheadright: Sprite2D = get_node("BruceHeadRight")
@onready var bheadleft: Sprite2D = get_node("BruceHeadLeft")





func _process(delta):
	if Global.turn == "Bruce" and Global.rability == "RayganHead":
		if Input.is_action_pressed("BDown") and Input.is_action_pressed("Down"):
			bdown.go_again()
		elif Input.is_action_pressed("BDown"):
			bdown.use_turn()
		if Input.is_action_pressed("BUp") and Input.is_action_pressed("Up"):
			bup.go_again()
		elif Input.is_action_pressed("BUp"):
			bup.use_turn()
		if Input.is_action_pressed("BRight") and Input.is_action_pressed("Right"):
			bright.go_again()
		elif Input.is_action_pressed("BRight"):
			bright.use_turn()
		if Input.is_action_pressed("BLeft") and Input.is_action_pressed("Left"):
			bleft.go_again()
		elif Input.is_action_pressed("BLeft"):
			bleft.use_turn()
	
	if Global.turn == "Raygan" and Global.bability == "BruceHead":
		if Input.is_action_pressed("BDown") and Input.is_action_pressed("Down"):
			bheaddown.go_again()
		elif Input.is_action_pressed("BDown"):
			bheaddown.use_turn()
		if Input.is_action_pressed("BUp") and Input.is_action_pressed("Up"):
			bheadup.go_again()
		elif Input.is_action_pressed("BUp"):
			bheadup.use_turn()
		if Input.is_action_pressed("BRight") and Input.is_action_pressed("Right"):
			bheadright.go_again()
		elif Input.is_action_pressed("BRight"):
			bheadright.use_turn()
		if Input.is_action_pressed("BLeft") and Input.is_action_pressed("Left"):
			bheadleft.go_again()
		elif Input.is_action_pressed("BLeft"):
			bheadleft.use_turn()
	
	#if Input.is_action_just_pressed("BDown"):
		#Global.b = true
	#if Input.is_action_just_pressed("BUp"):
		#Global.b = true
	#if Input.is_action_just_pressed("BRight"):
		#Global.b = true
	#if Input.is_action_just_pressed("BLeft"):
		#Global.b = true
