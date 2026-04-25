extends CharacterBody3D

@export var speed = 3.0
var direction = 1

func _physics_process(delta):
	velocity.x = direction * speed
	move_and_slide()

func _on_timer_timeout():
	direction *= -1
	
func _on_body_entered(body):
	if body.name == "Player":
		body.global_position = Vector3(0, 1, 0)
		get_tree().root.get_node("Level/CanvasLayer/Label").text = "¡Golpeaste un NPC!"

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		var level = get_tree().root.get_node("Level")

		level.game_over()  # 👈 CLAVE

		body.global_position = Vector3(0, 1, 0)
