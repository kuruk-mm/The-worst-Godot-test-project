extends Node2D

var q_VisualShader : VisualShader = VisualShader.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualShader,true)

func nodeFunction(q_VisualShader : VisualShader, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualShader = VisualShader.new()
	if randi() % 2 == 1:
		AutoResourcesShader.nodeFunction(q_VisualShader)
#
# BUG
#		if randi() % 2 == 1:
#			q_VisualShader.add_node( Autoload.get_int(), VisualShaderNode.new(), Autoload.get_vector2(), Autoload.get_int())
#		if randi() % 2 == 1:
#			q_VisualShader.can_connect_nodes( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int()))
#
#		if randi() % 2 == 1:
#			q_VisualShader.connect_nodes( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.connect_nodes_forced( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
#
#		if randi() % 2 == 1:
#			q_VisualShader.disconnect_nodes( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
#
#		if randi() % 2 == 1:
#			q_VisualShader.get_node( Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.get_node_connections( Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.get_node_list( Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.get_node_position( Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.get_valid_node_id( Autoload.get_int()))
#
#		if randi() % 2 == 1:
#			q_VisualShader.is_node_connection( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int()))
#		if randi() % 2 == 1:
#			q_VisualShader.rebuild()
#		if randi() % 2 == 1:
#			q_VisualShader.remove_node( Autoload.get_int(), Autoload.get_int())
#
#		if randi() % 2 == 1:
#			q_VisualShader.set_mode( Autoload.get_int()) # Shader.Mode
#		if randi() % 2 == 1:
#			q_VisualShader.set_node_position( Autoload.get_int(), Autoload.get_int(), Autoload.get_vector2())
