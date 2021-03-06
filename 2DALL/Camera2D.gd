extends Camera2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Camera2D : Camera2D, can_reset : bool = false) -> void:

	if randi()%2 == 1:
		AutoObjects.A_Object(q_Camera2D)
		AutoObjects.A_Node(q_Camera2D)
		AutoObjects.A_CanvasItem(q_Camera2D)
		AutoObjects.A_Node2D(q_Camera2D)
		
	### START TEMP
	var temp_Viewport : Viewport = Viewport.new()
#?#	AutoOtherViewport.nodeFunction(temp_Viewport)
	
	### END TEMP
	
	if randi() % 2 == 1:
		q_Camera2D.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Camera2D.set_anchor_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set_rotating(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D._set_current(Autoload.get_bool())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Camera2D.set_zoom(Autoload.get_vector2())
	if randi() % 2 == 1:
		if q_Camera2D.get_custom_viewport():
			q_Camera2D.set_custom_viewport(temp_Viewport)
	if randi() % 2 == 1:
		q_Camera2D.set_process_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("limit_left",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("limit_top",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("limit_right",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("limit_bottom",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set_limit_smoothing_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_h_drag_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_v_drag_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_enable_follow_smoothing(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_follow_smoothing(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera2D.set_v_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera2D.set_h_offset(Autoload.get_float())
	if randi() % 2 == 1:
		q_Camera2D.set("drag_margin_left",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("drag_margin_top",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("drag_margin_right",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set("drag_margin_bottom",Autoload.get_int())
	if randi() % 2 == 1:
		q_Camera2D.set_screen_drawing_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_limit_drawing_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.set_margin_drawing_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Camera2D.align()
	if randi() % 2 == 1:
		q_Camera2D.get_camera_position()
	if randi() % 2 == 1:
		q_Camera2D.get_camera_screen_center()
	if randi() % 2 == 1:
		q_Camera2D.make_current()
	if randi() % 2 == 1:
		q_Camera2D.clear_current()
	if randi() % 2 == 1:
		q_Camera2D.reset_smoothing()

	### CLEANING
	temp_Viewport.queue_free()
	### END CLEANING
