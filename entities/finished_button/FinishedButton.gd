extends Sprite


var is_mouse_over: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT and is_mouse_over:
			self.modulate.a8 = 255
			$SFX.play()


func _on_Area2D_mouse_entered():
	is_mouse_over = true	


func _on_Area2D_mouse_exited():
	is_mouse_over = false	
