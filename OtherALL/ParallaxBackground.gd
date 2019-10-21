extends ParallaxBackground

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		nodeFunction(self)

func nodeFunction(q_ParallaxBackground :ParallaxBackground) -> void:

		if randi() % 2 == 1:
			q_ParallaxBackground.set_scroll_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxBackground.set_scroll_base_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxBackground.set_scroll_base_scale(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxBackground.set_limit_begin(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxBackground.set_limit_end(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_ParallaxBackground.set_ignore_camera_zoom(Autoload.get_bool())
