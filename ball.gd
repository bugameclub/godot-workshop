extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var is_bouncy := false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		if is_bouncy:
			is_bouncy = false
			physics_material_override.bounce = 0
			modulate = Color.BLUE
		else:
			is_bouncy = true
			physics_material_override.bounce = 0.8
			modulate = Color.RED 
