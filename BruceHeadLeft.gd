extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.r == true and Global.b == true:
		use_turn()
		await get_tree().create_timer(0.5).timeout
		Global.r = false
		Global.b = false

func use_turn():
	self.visible = true
	await get_tree().create_timer(1.0).timeout
	self.visible = false
	Global.turn = "Raygan"
	Global.bability = "BruceHead"
	
func go_again():
	self.visible = true
	await get_tree().create_timer(1.0).timeout
	self.visible = false
	Global.again = "Raygan"
	Global.rability = "RayganHead"
