extends Sprite

var is_mouse_over: bool = false
var img_array = []

var img_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(6):
		var txt = load('res://resources/img/' + str(i) + '.png')
		img_array.append(txt)
	


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT and is_mouse_over:
			img_index += 1
			if img_index >= 6:
				img_index = 0
			self.texture = img_array[img_index]
			$SFX.play()


func _on_Area2D_mouse_entered():
	is_mouse_over = true


func _on_Area2D_mouse_exited():
	is_mouse_over = false
