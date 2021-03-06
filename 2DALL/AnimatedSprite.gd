extends AnimatedSprite

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_AnimatedSprite : AnimatedSprite, can_reset : bool = false) -> void:
	
	if randi()%2 == 1:
		AutoObjects.A_Object(q_AnimatedSprite)
		AutoObjects.A_Node(q_AnimatedSprite)
		AutoObjects.A_CanvasItem(q_AnimatedSprite)
		AutoObjects.A_Node2D(q_AnimatedSprite)
		
	### START TEMP
	var temp_SpriteFrames : SpriteFrames = SpriteFrames.new()
#?#	AutoResourcesSpriteFrames.nodeFunction(temp_SpriteFrames)
	
	### END TEMP
	
	if randi()%2 == 1:
		q_AnimatedSprite.set_sprite_frames(temp_SpriteFrames)
	if randi()%2 == 1:
		q_AnimatedSprite.set_animation(Autoload.get_string())
	if randi()%2 == 1:
		q_AnimatedSprite.set_frame(Autoload.get_int())
	if randi()%2 == 1:
		q_AnimatedSprite.set_speed_scale(Autoload.get_float())
	if randi()%2 == 1:
		q_AnimatedSprite._set_playing(Autoload.get_bool())
	if randi()%2 == 1:
		q_AnimatedSprite.set_centered(Autoload.get_bool())
	if randi()%2 == 1:
		q_AnimatedSprite.set_offset(Autoload.get_vector2())
	if randi()%2 == 1:
		q_AnimatedSprite.set_flip_h(Autoload.get_bool())
	if randi()%2 == 1:
		q_AnimatedSprite.set_flip_v(Autoload.get_bool())

	if randi()%2 == 1:
		q_AnimatedSprite.is_playing()
	if randi()%2 == 1:
		q_AnimatedSprite.play(Autoload.get_string(), Autoload.get_bool())
	if randi()%2 == 1:
		q_AnimatedSprite.stop()
