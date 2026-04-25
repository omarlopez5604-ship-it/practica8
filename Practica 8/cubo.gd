extends CharacterBody3D

@export var speed = 5.0

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_forward"):
		direction.z -= 1
	if Input.is_action_pressed("move_back"):
		direction.z += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1

	direction = direction.normalized()
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed

	move_and_slide()


func _on_area_3d_body_entered(body: Node3D) -> void:
	pass # Replace with function body.
