extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var input_direction = Input.get_vector("Left", "Right", "Forward", "Back")
	var direction = (transform.basis * Vector3(input_direction.x, 0, input_direction.y)).normalized()

	if direction:
		position.x += direction.x  * 0.1
		position.z += direction.z * 0.1

	

func _input(event):
	if event is InputEventMouseMotion:
		var rot_x = event.relative.y * 0.2
		var rot_y = event.relative.x * 0.2

		rotation_degrees.x -= rot_x
		rotation_degrees.y -= rot_y

		rotation_degrees.y = wrapf(rotation_degrees.y, 0, 360)
		rotation_degrees.x = clampf(rotation_degrees.x, -20, 90)
