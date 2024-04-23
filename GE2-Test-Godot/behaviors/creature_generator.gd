@tool
extends Node3D

# length, frequency, start_angle, base_size, multiplier
@export var length:int
@export var start_angle:float
@export var frequency:float
@export var base_size:float
@export var multiplier:float


func _process(delta):
	DebugDraw3D.draw_sphere(global_position,2,Color.HOT_PINK,2.0)
	DebugDraw3D.draw_sphere(global_position,4,Color.SKY_BLUE,2.0)
	
func create_cube():
	for i in length:
		pass

func _ready():
	if not Engine.is_editor_hint():
		pass
	
	
	



