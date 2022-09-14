extends KinematicBody2D

var velocity = Vector2.ZERO

var rotation_speed = 5.0
var speed = 0.1

func _ready():
	pass 

func _physics_process(delta):
	position = position + velocity
	
	if Input.is_action_pressed("forward"):
		velocity = velocity + Vector2(0,-speed),rotated(rotation)
	if Input.is_action_pressed("left"):
		rotation_degrees = rotation_degrees - rotation_speed
	if Input.is_action_pressed("right"):
		rotation_degrees = rotation_degrees + rotation_speed
		
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.x, 0, 600)
