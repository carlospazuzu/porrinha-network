extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _draw():
	draw_rect(Rect2(Vector2(0, 0), Vector2(600, 600)), Color('#e4dbdb'), true)
