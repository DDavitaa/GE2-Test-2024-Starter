@tool
extends Node3D

# length, frequency, start_angle, base_size, multiplier
@export var length:int = 10
@export var start_angle:float = 0
@export var frequency:float = 1
@export var base_size:float = 1
@export var multiplier:float = 5

var old_length = length


var creatureHead_scene = load("res://behaviors/creature_head.tscn")
var creatureBody_scene = load("res://behaviors/creature_body.tscn")
var length_distance:float = 2

var cubes_array = []
var theta = 1

func _process(delta):
	DebugDraw3D.draw_sphere(global_position,1,Color.HOT_PINK,2.0)
	DebugDraw3D.draw_sphere(global_position,2,Color.SKY_BLUE,2.0)
	
	if length != old_length :
		remove_child(get_node("creatureHead"))
		remove_child(get_node("creatureBody"))
		length_distance = 0.0
		cubes_array = []
		old_length = length
		
		create_creature()
		
	#print(lerp(sin(10),10.0,frequency))
	
	
func create_creature():
	
	var creatureHead_instance = creatureHead_scene.instantiate()
	var creatureBody_instance = creatureBody_scene.instantiate()
	
	creatureHead_instance.global_position.x = length_distance
	length_distance += creatureHead_instance.size.x
	cubes_array.append(creatureHead_instance)
	
	for i in length:
		var cube_instance = CSGBox3D.new()
		cube_instance.position.x = length_distance
		length_distance += cube_instance.size.x
		creatureBody_instance.add_child(cube_instance)
		cubes_array.append(creatureBody_instance)
		
	
	add_child(creatureHead_instance)
	add_child(creatureBody_instance)
	
	

func _ready():
	
	
	if not Engine.is_editor_hint():
		create_creature()
	
	
	



