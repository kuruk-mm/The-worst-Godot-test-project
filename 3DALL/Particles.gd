extends Particles

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		var pm : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture  = CurveTexture.new()
		
		if !Autoload.RANDI:
			
			set_emitting(bool(randi()%2))
			set_amount(randi()%4 + 1)
			set_lifetime(randf())
			set_one_shot(bool(randi()%2))
			set_pre_process_time(randf() * 1)
			set_speed_scale(randf() * 4)
			set_explosiveness_ratio(randf())
			set_randomness_ratio(randf())
			set_fixed_fps(randi()%30 + 30)
			set_fractional_delta(bool(randi()%2))
			set_visibility_aabb(AABB(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			set_use_local_coordinates(bool(randi()%2))
			set_draw_order(randi()%3)
			# Luka na process_material ktory jest na koncu
			for i in range(1):#MAX_DRAW_PASSES):
				set_draw_pass_mesh(i, CubeMesh.new())
			
			pm.set_render_priority(randi()%200 - 100)
			pm.set_next_pass(ParticlesMaterial.new())
			CT.set_width(randi()%10 + 50)
			CT.set_curve(Autoload.loadA("res://RES/Curve" + str(randi()%3 + 1) + ".tres",false))
			pm.set_trail_divisor(randi()%12)
			pm.set_trail_size_modifier(CT)
			pm.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient1.tres",false))
			pm.set_emission_shape(randi()%5)
			pm.set_emission_sphere_radius(randf() * 50)
			pm.set_emission_box_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
			pm.set_emission_point_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			pm.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			pm.set_emission_color_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			pm.set_emission_point_count(randi()%50)
			pm.set_spread(randf() * 360)
			pm.set_flatness(randf())
			pm.set_gravity(Vector3(randf() * 10 - 5,randf() * 10 - 5,randf() * 10 - 5))
			pm.set_color(Color(randf(),randf(),randf(),randf()))
			pm.set_color_ramp(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			
			pm.set_flag(pm.FLAG_ALIGN_Y_TO_VELOCITY,bool(randi()%2))
			pm.set_flag(pm.FLAG_ROTATE_Y ,bool(randi()%2))
			pm.set_flag(pm.FLAG_DISABLE_Z,bool(randi()%2))
			
			#Setting last PARAM_ANIM_OFFSET (11) cause GLES 3 error
			for j in range(11): # range(12):
				pm.set_param(j,randf() * 2)
				pm.set_param_randomness(j,randf())
				pm.set_param_texture(j,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			
			set_process_material(pm)
			
			restart()
	
			if Autoload.WRONG_BUGS:
				set_emitting(bool(randi()%2))
				set_amount(randi()%4 - 2)
				set_lifetime(randf() - 0.5)
				set_one_shot(bool(randi()%2))
				set_pre_process_time(randf() * 1 - 0.5)
				set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_explosiveness_ratio(randf())
				set_randomness_ratio(randf())
				set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_fractional_delta(bool(randi()%2))
				set_visibility_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				set_use_local_coordinates(bool(randi()%2))
				set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				# Luka na process_material ktory jest na koncu
				
				set_draw_pass_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2, CubeMesh.new())
				
				pm.set_render_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_next_pass(ParticlesMaterial.new())
				CT.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				CT.set_curve(Autoload.loadA("res://RES/Curve1.tres"))
				pm.set_trail_divisor(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_trail_size_modifier(CT)
				pm.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient1.tres"))
				pm.set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				pm.set_emission_point_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				pm.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				pm.set_emission_color_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				pm.set_emission_point_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				pm.set_color(Color(randf(),randf(),randf(),randf()))
				pm.set_color_ramp(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
				pm.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
				pm.set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
				pm.set_param_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
				set_process_material(pm)
				
				restart()
	
		else: #RANDI			
			if randi() % 2 == 1:
				set_emitting(bool(randi()%2))
			if randi() % 2 == 1:
				set_amount(randi()%4 - 2)
			if randi() % 2 == 1:
				set_lifetime(randf() - 0.5)
			if randi() % 2 == 1:
				set_one_shot(bool(randi()%2))
			if randi() % 2 == 1:
				set_pre_process_time(randf() * 1 - 0.5)
			if randi() % 2 == 1:
				set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_explosiveness_ratio(randf())
			if randi() % 2 == 1:
				set_randomness_ratio(randf())
			if randi() % 2 == 1:
				set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_fractional_delta(bool(randi()%2))
			if randi() % 2 == 1:
				set_visibility_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				set_use_local_coordinates(bool(randi()%2))
			if randi() % 2 == 1:
				set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				# Luka na process_material ktnory jest na koncu
			if randi() % 2 == 1:
				set_draw_pass_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2, CubeMesh.new())
				
			if randi() % 2 == 1:
				pm.set_render_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				CT = CurveTexture.new()
			if randi() % 2 == 1:
				CT.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				CT.set_curve(Autoload.loadA("res://RES/Curve" + str(randi()%3 + 1) + ".tres"))
			if randi() % 2 == 1:
				pm.set_trail_divisor(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_trail_size_modifier(CT)
			if randi() % 2 == 1:
				pm.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient1.tres"))
			if randi() % 2 == 1:
				pm.set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				pm.set_emission_point_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				pm.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				pm.set_emission_color_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				pm.set_emission_point_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				pm.set_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				pm.set_color_ramp(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
			if randi() % 2 == 1:
				pm.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
			if randi() % 2 == 1:
				pm.set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				pm.set_param_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				
			if randi() % 2 == 1:
				restart()
				
			set_process_material(pm)
				
