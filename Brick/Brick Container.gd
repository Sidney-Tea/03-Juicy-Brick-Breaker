extends Node2D

onready var Brick = load("res://Brick/Brick.tscn")
var rows = 7
var columns = 7

onready var VP = get_viewport_rect().size
var B = Vector2(100,40)

func _ready():
	start()
	
	
var Levels = [
	[
		[6,6,6,6,6,6,6]
		,[5,5,5,5,5,5,5]
		,[4,4,4,4,4,4,4]
		,[3,3,3,3,3,3,3]
		,[2,2,0,0,0,2,2]
	]
	,[
		[6,0,6,6,6,0,6]
		,[5,5,0,0,0,5,5]
		,[4,4,4,4,4,4,4]
		,[3,3,3,3,3,3,3]
		,[2,2,0,0,0,2,2]
	]
]



func start():
	for c in get_children():
		c.queue_free()
	var level = Levels[0]
	var startx = (VP.x/2) - (B.x) * (level[0].size()/2)
	var starty = 15
	for r in range(level.size()):
		for c in range(level[r].size()):
			var strength = level[r][c]
			if strength > 0:
				var x = startx + c * B.x
				var y = starty + r * B.y
				var brick = Brick.instance()
				brick.position = Vector2(x,y)
				brick.set_strength(strength)
				add_child(brick)
