extends ProximityGroup

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ProximityGroup : ProximityGroup, can_reset : bool = false) -> void:
	pass
# CHECK TODO
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_ProximityGroup)
#		AutoObjects.A_Node(q_ProximityGroup)
#		AutoObjects.A_Spatial(q_ProximityGroup)
#
#	### START TEMP
#	var temp_InputEventAction : InputEventAction = InputEventAction.new()
##?#	AutoResourcesInputEventAction.nodeFunction(temp_InputEventAction)
#
#	### END TEMP
#
#
#	if randi() % 2 == 1:
#		q_ProximityGroup.set_group_name(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_ProximityGroup.set_dispatch_mode(Autoload.get_int()) # DispatchMode
#	if randi() % 2 == 1:
#		q_ProximityGroup.set_grid_radius(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_ProximityGroup.broadcast(Autoload.get_string(), temp_InputEventAction)
