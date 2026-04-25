extends Area3D

func _on_body_entered(body):
	if body.name == "Player":
		get_parent().add_score(1)
		queue_free()
