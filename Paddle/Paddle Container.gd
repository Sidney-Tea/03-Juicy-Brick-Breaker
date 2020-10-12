extends Node2D

onready var Paddle = load("res://Paddle/Paddle.tscn")

func _ready():
	_load_paddle()


func _load_paddle():
	var paddle = Paddle.instance()
	add_child(paddle)
