extends Node



func _ready() -> void:
	$text_score/Label.text = str(Game.bestscore)

# -----------------------------------------------------
# BOTÃO DE JOGAR E GUIA E SAIR





func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_guia_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tips.tscn")
	pass # Replace with function body.
