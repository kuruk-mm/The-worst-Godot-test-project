extends Node2D

var q_VisualScript : VisualScript = VisualScript.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_VisualScript = VisualScript.new()
		
		
		if randi() % 2 == 1:
			q_VisualScript.add_custom_signal( "Wódz" )
		if randi() % 2 == 1:
			q_VisualScript.add_function( "Wódz" )
		if randi() % 2 == 1:
			q_VisualScript.add_node( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, VisualScriptNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_VisualScript.add_variable( "Wódz", Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), bool(randi()%2) )
	
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_add_argument( "Wódz", randi()%50, "Skoczyć", randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_count( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_name( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.custom_signal_get_argument_type( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_remove_argument( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_set_argument_name( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2, "Skoczyć" )
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_set_argument_type( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi()%50)
		if randi() % 2 == 1:
			q_VisualScript.custom_signal_swap_argument( "Wódz", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
	
		if randi() % 2 == 1:
			q_VisualScript.data_connect( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_VisualScript.data_disconnect( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
	
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_function_node_id( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_function_scroll( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_node( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_node_position( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_default_value( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_export( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.get_variable_info( "Wódz" ))
	
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_custom_signal( "Wódz" ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_data_connection( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_function( "Wódz" ) )
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_node( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_sequence_connection( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_VisualScript.has_variable( "Wódz" ))
	
		if randi() % 2 == 1:
			q_VisualScript.remove_custom_signal( "Wódz" )
		if randi() % 2 == 1:
			q_VisualScript.remove_function( "Wódz" )
		if randi() % 2 == 1:
			q_VisualScript.remove_node( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			q_VisualScript.remove_variable( "Wódz" )
	
		if randi() % 2 == 1:
			q_VisualScript.rename_custom_signal( "Wódz", "Konto" )
		if randi() % 2 == 1:
			q_VisualScript.rename_function( "Wódz", "Konto" )
		if randi() % 2 == 1:
			q_VisualScript.rename_variable( "Wódz", "Konto" )
		if randi() % 2 == 1:
			q_VisualScript.sequence_connect( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_VisualScript.sequence_disconnect( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2 )
	
		if randi() % 2 == 1:
			q_VisualScript.set_function_scroll( "Wódz", Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_VisualScript.set_instance_base_type( "Dobrze" )
		if randi() % 2 == 1:
			q_VisualScript.set_node_position( "Krakau", randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_default_value( "Wódz", bool(randi()%2) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_export( "Wódz", bool(randi()%2) )
		if randi() % 2 == 1:
			q_VisualScript.set_variable_info( "Wódz", {"Ouo": 15, "Kompresja": 124})
