extends Node2D

var q_AStar : AStar = AStar.new()
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
			q_AStar = AStar.new()
			
			
		###q_AStar._compute_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		###q_AStar._estimate_cost(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
		if randi() % 2 == 1:
			q_AStar.add_point(randi() % Autoload.RANGE - Autoload.RANGE / 2, Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(q_AStar.are_points_connected(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_AStar.clear()
		if randi() % 2 == 1:
			q_AStar.connect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			q_AStar.disconnect_points(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			qq += str(q_AStar.get_available_point_id())
		if randi() % 2 == 1:
			qq += str(q_AStar.get_closest_point(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_closest_position_in_segment(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_id_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_connections(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_path(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.get_points())

		if randi() % 2 == 1:
			qq += str(q_AStar.has_point(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_AStar.is_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_AStar.remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			q_AStar.set_point_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			q_AStar.set_point_position(randi() % Autoload.RANGE - Autoload.RANGE / 2,Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_AStar.set_point_weight_scale(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
