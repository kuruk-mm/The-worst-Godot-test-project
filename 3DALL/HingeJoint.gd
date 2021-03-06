extends HingeJoint

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_HingeJoint : HingeJoint, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_HingeJoint)
		AutoObjects.A_Node(q_HingeJoint)
		AutoObjects.A_Spatial(q_HingeJoint)
		AutoObjects.A_Joint(q_HingeJoint)

	if randi() % 2 == 1:
		set("params/bias",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/enable",Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_limit/upper",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/lower",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/bias",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/relaxation",Autoload.get_float())
	if randi() % 2 == 1:
		set("motor/enable",Autoload.get_bool())
	if randi() % 2 == 1:
		set("motor/target_velocity",Autoload.get_float())
	if randi() % 2 == 1:
		set("motor/max_impulse",Autoload.get_float())
