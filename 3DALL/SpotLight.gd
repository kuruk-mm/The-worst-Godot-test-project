extends SpotLight

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_SpotLight : SpotLight, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SpotLight)
		AutoObjects.A_Node(q_SpotLight)
		AutoObjects.A_Spatial(q_SpotLight)
		AutoObjects.A_VisualInstance(q_SpotLight)
		AutoObjects.A_Light(q_SpotLight)
		
	if randi() % 2 == 1:
		q_SpotLight.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set_param(Autoload.get_int(),Autoload.get_float())
	if randi() % 2 == 1:
		q_SpotLight.set_param(Autoload.get_int(),Autoload.get_float())
