extends Node2D

@export var has_collided : bool = false
var fruitObj = preload("res://Scenes/fruit.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_rigid_body_2d_body_entered(body: Node) -> void:
	if body is RigidBody2D:
		var radius_1 = self.get_node("RigidBody2D/CollisionShape2D").shape.radius
		var radius_2 = body.get_node("CollisionShape2D").shape.radius
		
		if radius_1 == radius_2:
			self.has_collided = true
			
			
func set_fruit_image(smallest_radius, smallest_scale, radius_scale_diff):  # blueberry
	if self.get_node("RigidBody2D/CollisionShape2D").shape.radius == smallest_radius:
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/blueberry.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(smallest_scale, smallest_scale)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * radius_scale_diff, 0.1):  # strawberry
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/strawberry.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.315, 0.315)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(2, 21)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 2), 0.1):  # banana
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/banana.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.148, 0.148)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(1, 9)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 3), 0.1): # apple
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/apple.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.299, 0.299)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(2, 5)
	
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 4), 0.1): # orange
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/orange.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.268, 0.268)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(2, 0)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 5), 0.1): # lemon
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/lemon.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.404, 0.404)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(10, 17)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 6), 0.1): # peach
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/peach.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.373, 0.373)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(-5, -5)
	
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 7), 0.1): # coconut
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/coconut.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.201, 0.201)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(6, 4)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 8), 0.1): # kiwi
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/kiwi.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.367, 0.367)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(-1, 0)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 9), 0.1): # pineapple
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/pineapple.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.341, 0.341)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(10, -56)
		
	elif snapped(self.get_node("RigidBody2D/CollisionShape2D").shape.radius, 0.1) == snapped(smallest_radius * (radius_scale_diff ** 10), 0.1): # watermelon
		self.get_node("RigidBody2D/Sprite2D").texture = load("res://Sprites/watermelon.png")
		self.get_node("RigidBody2D/Sprite2D").scale = Vector2(0.35, 0.35)
		self.get_node("RigidBody2D/Sprite2D").position = Vector2(3, 4)
	
	
	
		
