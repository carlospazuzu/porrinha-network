extends Sprite


enum State { WAITING }
var current_state = State.WAITING

var moving_offset = 0
var direction = 1

const SPEED = 80
export var is_enemy: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_enemy:
		direction = -1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_state == State.WAITING:
		moving_offset += SPEED * delta
		position.y -= SPEED * delta * direction
		
		if moving_offset >= 20:
			moving_offset = 0
			direction *= -1
#	pass
