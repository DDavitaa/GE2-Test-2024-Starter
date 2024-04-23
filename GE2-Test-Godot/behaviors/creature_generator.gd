@tool
extends Node3D

# length, frequency, start_angle, base_size, multiplier
@export var length:int = 10
@export var start_angle:float = 0
@export var frequency:float = 1
@export var base_size:float = 1
@export var multiplier:float = 5

var length_distance:float = 2


func _process(delta):
	DebugDraw3D.draw_sphere(global_position,1,Color.HOT_PINK,2.0)
	DebugDraw3D.draw_sphere(global_position,2,Color.SKY_BLUE,2.0)
	
func create_creature():
	var creatureHead_scene = load("res://behaviors/creature_head.tscn")
	var creatureBody_scene = load("res://behaviors/creature_body.tscn")
	var creatureHead_instance = creatureHead_scene.instantiate()
	creatureHead_instance.global_position.x = length_distance
	add_child(creatureHead_instance)
	
	creatureBody_scene.
	for i in length:
		pass
		

func _ready():
	if not Engine.is_editor_hint():
		pass
	
	create_creature()
	



