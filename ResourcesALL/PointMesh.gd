extends Node2D

var q_PointMesh : PointMesh = PointMesh.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PointMesh,true)

func nodeFunction(q_PointMesh : PointMesh, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PointMesh = PointMesh.new()
	if randi() % 2 == 1:
		AutoResourcesPrimitiveMesh.nodeFunction(q_PointMesh)
