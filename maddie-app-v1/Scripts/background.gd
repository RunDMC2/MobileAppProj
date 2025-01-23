extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var pics_array = list_files_in_directory("res://Menu Pics/")
	var pic = pics_array[randi()%len(pics_array)]
	print(pic)
	$Sprite2D.texture = load("res://Menu Pics/" + pic)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func list_files_in_directory(path):
	var files = []
	var dir = DirAccess.open(path)

	dir.open(path)
	dir.list_dir_begin()

	while true:
		var file = dir.get_next()
		
		if file == "":
			break
		elif file.ends_with(".import"):
			files.append(file.substr(0, len(file) - 7))
		elif not file.begins_with("."):
			files.append(file)

	return files
