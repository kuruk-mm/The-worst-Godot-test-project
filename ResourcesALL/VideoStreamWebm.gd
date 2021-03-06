extends Node2D

var q_VideoStreamWebm : VideoStreamWebm = VideoStreamWebm.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VideoStreamWebm,true)

func nodeFunction(q_VideoStreamWebm : VideoStreamWebm, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VideoStreamWebm = VideoStreamWebm.new()
	if randi() % 2 == 1:
		AutoResourcesVideoStream.nodeFunction(q_VideoStreamWebm)

	if randi() % 2 == 1:
		q_VideoStreamWebm.get_file()
	if randi() % 2 == 1:
		q_VideoStreamWebm.set_file( Autoload.get_string())
