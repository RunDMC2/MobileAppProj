extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func move(new_pos):
	var move_tween := create_tween()
	move_tween.tween_property(self, "position:x", new_pos, 1).set_trans(Tween.TRANS_QUINT)


func _on_back_pressed() -> void:
	$"../GameSelectionNode".move(0)
	self.move(0)



func _on_reset_pressed() -> void:
	Global.save(0)
	$Highscore.text = "Highscore: " + str(Global.load())


func _on_easy_pressed() -> void:
	$"../..".move(-576)
	
	await get_tree().create_timer(1).timeout 
	get_tree().change_scene_to_file("res://Scenes/fruit_merge_game.tscn")
	Global.difficulty = "easy"


func _on_hard_pressed() -> void:
	$"../..".move(-576)
	
	await get_tree().create_timer(1).timeout 
	get_tree().change_scene_to_file("res://Scenes/fruit_merge_game.tscn")
	Global.difficulty = "hard"
