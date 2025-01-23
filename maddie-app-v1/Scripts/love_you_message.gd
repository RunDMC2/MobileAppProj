extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func message():
	self.text = Global.cute_messages.pick_random()
	

func move(new_pos):
	var move_tween := create_tween()
	var old_pos = self.position[1]
	
	$"../GameSelection/More Coming Soon!".disabled = true
	move_tween.tween_property(self, "position:y", new_pos, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	move_tween.tween_property(self, "position:y", old_pos, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	await get_tree().create_timer(2).timeout  # waits to set button back to enabled
	$"../GameSelection/More Coming Soon!".disabled = false
