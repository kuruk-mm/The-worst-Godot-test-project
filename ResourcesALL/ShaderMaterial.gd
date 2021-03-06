extends Node2D

var q_ShaderMaterial : ShaderMaterial = ShaderMaterial.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ShaderMaterial,true)

func nodeFunction(q_ShaderMaterial : ShaderMaterial, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ShaderMaterial = ShaderMaterial.new()
	if randi() % 2 == 1:
		AutoResourcesMaterial.nodeFunction(q_ShaderMaterial)
		
	### START TEMP
	var temp_Shader : Shader = Shader.new()
	AutoResourcesShader.nodeFunction(temp_Shader)
	
	### END TEMP

	if randi() % 2 == 1:
		q_ShaderMaterial.set_shader(temp_Shader)

	if randi() % 2 == 1:
		q_ShaderMaterial.get_shader_param( Autoload.get_string())
	if randi() % 2 == 1:
		q_ShaderMaterial.property_can_revert( Autoload.get_string())
#	BUG core/pool_vector.h:326:69: runtime error: reference binding to null pointer of type 'int'	if randi() % 2 == 1:
#			q_ShaderMaterial.property_get_revert( Autoload.get_string()))

	if randi() % 2 == 1:
		q_ShaderMaterial.set_shader_param( Autoload.get_string(), Autoload.get_float())
