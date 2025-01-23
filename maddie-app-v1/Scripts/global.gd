extends Node2D

var cute_messages = [
	"I love you Maddie <3",
	"Hey, look at me go!",
	"Ow! You pressed on my nose!",
	"You look super cute today!",
	"Hi my love!",
	"Are you trying to see all the messages?",
	"I lose",
	"You always make my day brighter baby!",
	"I'm hungry",
	"I miss you!",
	"WEEEEEEEEEEE!!!!!",
	"Have fun playing the game!",
	"You are so adorable!",
	"You mean the absolute world to me"
]

var lose_messages = [
	"Awww, this game is too hard anyway.",
	"It's ok baby! I will always believe in you.",
	"I'm still so incredibly proud of you Maddie, I love you!",
	"I don't even like watermelon anyway baby!",
	"Who made this game?! Get them on the phone and sue!",
	"You were so close Maddie! Keep going!",
	"Awwww man, I was rooting for you, like I always do!",
	"Don't think about losing, think about cookies!",
	"You still got a great score my love!",
	"It's alright, for every loss, I owe you a kiss!",
	"I think it was just a glitch in the system.",
	"Man, that's a weird way of spelling 'YOU WIN AND GET A MILLION DOLLARS!'",
	"Keep playing Maddie! I know you'll get it soon!",
	"You are so incredible Maddie, this game is just being a meanie.",
	"I still win by having you in my life baby!",
	"I give you permission to throw you phone through a wall. Only once though!"
]

var win_messages = [
	"YAY! You did it Maddie, awesome job I'm so proud of you!",
	"Congratulations Maddie!!!!!! You got the watermelon!",
	"I didn't even know this was possible and you still did it!!! YAYYYYY",
	"WOOHOO!! You rock Maddie, you did it!",
	"Gret job baby! I always knew you could do it!",
	"Unbelievable! You really are incredible at this game Maddie!"
]

var highscore = 0
var difficulty = "hard"


func save(content):
	var file = FileAccess.open("user://save_data.dat", FileAccess.WRITE)
	file.store_string(str(content))
	
func load():
	var file = FileAccess.open("user://save_data.dat", FileAccess.READ)
	var content = file.get_as_text()
	if content == "" or content == null:
		content = 0
	return content

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
