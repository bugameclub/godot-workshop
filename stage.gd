extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouseX := get_viewport().get_mouse_position().x
	var screen_width := get_viewport_rect().size.x
	mouseX = (mouseX / screen_width * 2) - 1
	var target_rotation_degrees := mouseX * 90
	rotation_degrees = move_toward(rotation_degrees, target_rotation_degrees, delta * 180)
