extends Node2D

var q_NoiseTexture : NoiseTexture = NoiseTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_NoiseTexture,true)

func nodeFunction(q_NoiseTexture : NoiseTexture, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_NoiseTexture = NoiseTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_NoiseTexture)
		
	### START TEMP
	
	var temp_OpenSimplexNoise : OpenSimplexNoise = OpenSimplexNoise.new()
	AutoResourcesOpenSimplexNoise.nodeFunction(temp_OpenSimplexNoise)
	
	### END TEMP
	if randi() % 2 == 1:
		q_NoiseTexture.set_width(Autoload.get_int())
	if randi() % 2 == 1:
		q_NoiseTexture.set_height(Autoload.get_int())
	if randi() % 2 == 1:
		q_NoiseTexture.set_seamless(Autoload.get_bool())
	if randi() % 2 == 1:
		q_NoiseTexture.set_as_normalmap(Autoload.get_bool())
	if randi() % 2 == 1:
		q_NoiseTexture.set_bump_strength(Autoload.get_float())
	if randi() % 2 == 1:
		q_NoiseTexture.set_noise(temp_OpenSimplexNoise)
