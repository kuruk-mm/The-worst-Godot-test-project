extends Sprite3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Sprite3D : Sprite3D, can_reset : bool = false) -> void:
	pass
#BUG GH36115
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_Sprite3D)
#		AutoObjects.A_Node(q_Sprite3D)
#		AutoObjects.A_Spatial(q_Sprite3D)
#		AutoObjects.A_VisualInstance(q_Sprite3D)
#		AutoObjects.A_GeometryInstance(q_Sprite3D)
#		AutoObjects.A_SpriteBase3D(q_Sprite3D)
#
#
#	### START TEMP
#	var temp_ImageTexture : ImageTexture = ImageTexture.new()
##?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
#
#	### END TEMP
#
#	if randi() % 2 == 1:
#		q_Sprite3D.set_texture(temp_ImageTexture)
#	if randi() % 2 == 1:
#		q_Sprite3D.set_vframes(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Sprite3D.set_hframes(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Sprite3D.set_frame(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Sprite3D.set_frame_coords(Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Sprite3D.set_region(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Sprite3D.set_region_rect(Autoload.get_rect2())
