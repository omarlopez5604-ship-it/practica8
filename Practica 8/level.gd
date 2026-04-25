extends Node3D

var score = 0

func add_score(value):
	score += value
	$CanvasLayer/Label2.text = "Monedas: " + str(score)


func _on_collectible_2_body_entered(body: Node3D) -> void:
	pass # Replace with function body.


func _on_collectible_3_body_entered(body: Node3D) -> void:
	pass # Replace with function body.


func _on_collectible_4_body_entered(body: Node3D) -> void:
	pass # Replace with function body.


func _on_collectible_5_body_entered(body: Node3D) -> void:
	pass # Replace with function body.

func _ready():
	$HTTPRequest.request("https://api.adviceslip.com/advice")
	var best = load_score()
	$CanvasLayer/HighScoreLabel.text = "High Score: " + str(best)

func _on_http_request_request_completed(result, response_code, headers, body):
	var json = JSON.parse_string(body.get_string_from_utf8())
	var advice = json["slip"]["advice"]
	$CanvasLayer/Label3.text = advice

	# efecto simple para cumplir requisito
	if advice.length() % 2 == 0:
		print("NPC rápido")
	else:
		print("NPC lento")
		
func save_score():
	var file = FileAccess.open("user://save.txt", FileAccess.WRITE)
	file.store_string(str(score))

func load_score():
	if FileAccess.file_exists("user://save.txt"):
		var file = FileAccess.open("user://save.txt", FileAccess.READ)
		return int(file.get_as_text())
	return 0
	
func game_over():
	var best = load_score()
	$CanvasLayer/HighScoreLabel.text = "High Score: " + str(best)

	if score > best:
		save_score()

	score = 0
	$CanvasLayer/ScoreLabel.text = "Monedas: 0"
