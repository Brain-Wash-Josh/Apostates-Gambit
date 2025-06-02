extends AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = 400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var velocity = 1;

func _physics_process(delta):
	

	if not is_on_floor():
			velocity.y += gravity * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
		



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
