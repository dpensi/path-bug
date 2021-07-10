extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(PackedScene) var MeNotWorks

var path_instance
# Called when the node enters the scene tree for the first time.
func _ready():
	path_instance = MeNotWorks.instance()
	get_parent().add_child(path_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print(path_instance.get_child(0).position, " ", path_instance.get_child(0).offset)
	path_instance.get_child(0).set_offset(
		path_instance.get_child(0).get_offset() + 100)
