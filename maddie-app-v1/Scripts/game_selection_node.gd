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
