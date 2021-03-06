extends Node2D

var q_AnimationNode : AnimationNode = AnimationNode.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimationNode,true)

func nodeFunction(q_AnimationNode : AnimationNode, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_AnimationNode = AnimationNode.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_AnimationNode)
		
	### START TEMP
	var temp_AnimationNode : AnimationNode = AnimationNode.new()
#	AutoResourcesAnimationNode.nodeFunction(temp_AnimationNode)#LOOP
	
	### END TEMP

	if randi() % 2 == 1:
		q_AnimationNode.set_filter_enabled(Autoload.get_bool())

	### q_AnimationNode.get_caption())
	### q_AnimationNode.get_child_by_name(Autoload.get_string()))
	### q_AnimationNode.get_child_nodes())
	### q_AnimationNode.get_parameter_default_value(Autoload.get_string()))
	### q_AnimationNode.get_parameter_list())
	### q_AnimationNode.has_filter())
	### q_AnimationNode.process( Autoload.get_float(), Autoload.get_bool())

	if randi() % 2 == 1:
		q_AnimationNode.add_input(Autoload.get_string())

	if randi() % 2 == 1:
		q_AnimationNode.blend_animation( Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationNode.blend_input( Autoload.get_int(), Autoload.get_float(), Autoload.get_bool(), Autoload.get_float(), Autoload.get_int(), Autoload.get_bool())#FilterAction
	if randi() % 2 == 1:
		q_AnimationNode.blend_node( Autoload.get_string(), temp_AnimationNode, Autoload.get_float(), Autoload.get_bool(), Autoload.get_float(), Autoload.get_int(), Autoload.get_bool())#FilterAction

	if randi() % 2 == 1:
		q_AnimationNode.get_input_count()
	if randi() % 2 == 1:
		q_AnimationNode.get_input_name( Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimationNode.get_parameter( Autoload.get_string())

	if randi() % 2 == 1:
		q_AnimationNode.is_path_filtered( Autoload.get_nodepath(self))
	if randi() % 2 == 1:
		q_AnimationNode.remove_input( Autoload.get_int())

	if randi() % 2 == 1:
		q_AnimationNode.set_filter_path( Autoload.get_nodepath(self), Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimationNode.set_parameter( Autoload.get_string(), Autoload.get_string())
