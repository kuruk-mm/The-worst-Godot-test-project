extends MeshInstance2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_MeshInstance2D : MeshInstance2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MeshInstance2D)
		AutoObjects.A_Node(q_MeshInstance2D)
		AutoObjects.A_CanvasItem(q_MeshInstance2D)
		AutoObjects.A_Node2D(q_MeshInstance2D)
		
	if randi() % 2 == 1:
		q_MeshInstance2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_MeshInstance2D.set_normal_map(Autoload.loadA("Sprite.png"))
