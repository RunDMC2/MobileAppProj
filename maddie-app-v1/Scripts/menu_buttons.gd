extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fruit_merge_pressed() -> void:
	get_node("GameSelectionNode").move(-576)
	get_node("FruitStartMenuNode").move(-576)
	$FruitStartMenuNode/Highscore.text = "Highscore: " + str(Global.load())


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_more_coming_soon_pressed() -> void:
	get_node("GameSelectionNode/LoveYouMessage").message()
	get_node("GameSelectionNode/LoveYouMessage").move(500)
	
