extends Node2D

var q_AnimationNodeStateMachine : AnimationNodeStateMachine = AnimationNodeStateMachine.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeStateMachine = AnimationNodeStateMachine.new()

		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.add_node( Autoload.get_string(), AnimationNode.new(), Autoload.get_vector2())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.add_transition( Autoload.get_string(), Autoload.get_string(), AnimationNodeStateMachineTransition.new())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_end_node()
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_graph_offset()
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_node( Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_node_name( AnimationNode.new())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_node_position( Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_start_node()
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_transition( Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_transition_count()
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_transition_from( Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.get_transition_to( Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.has_node( Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.has_transition( Autoload.get_string(), Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_node( Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_transition( Autoload.get_string(), Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_transition_by_index(Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.rename_node( Autoload.get_string(), Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_end_node( Autoload.get_string())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_graph_offset( Autoload.get_vector2())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_node_position( Autoload.get_string(), Autoload.get_vector2())
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_start_node( Autoload.get_string())
