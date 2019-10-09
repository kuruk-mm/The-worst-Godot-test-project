extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
			
		var q_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
		if !Autoload.RANDI:
			
			for i in range(SpatialMaterial.FEATURE_MAX):
				q_SpatialMaterial.set_feature(i,bool(randi()%2))
				
			for i in range(SpatialMaterial.FLAG_MAX):
				q_SpatialMaterial.set_flag(i,bool(randi()%2))
			
			q_SpatialMaterial.set_diffuse_mode(randi() % 5) #DiffuseMode
			q_SpatialMaterial.set_specular_mode(randi() % 5) #SpecularMode
			q_SpatialMaterial.set_blend_mode(randi() % 4) #BlendMode
			q_SpatialMaterial.set_cull_mode(randi() % 3) #CullMode
			q_SpatialMaterial.set_depth_draw_mode(randi() % 4) #DepthDrawMode
			q_SpatialMaterial.set_line_width(randf() * 50)
			q_SpatialMaterial.set_point_size(randf() * 50)
			q_SpatialMaterial.set_billboard_mode(randi() % 4) # BillboardMode
			q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
			q_SpatialMaterial.set_grow(randf() * 50)
			q_SpatialMaterial.set_alpha_scissor_threshold(randf() * 50)
			q_SpatialMaterial.set_particles_anim_h_frames(randi()%50)
			q_SpatialMaterial.set_particles_anim_v_frames(randi()%50)
			q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
			q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
			q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_SpatialMaterial.set_metallic(randf() * 50)
			q_SpatialMaterial.set_specular(randf() * 50)
			q_SpatialMaterial.set_metallic_texture_channel(randi() % 5)#TextureChannel
			q_SpatialMaterial.set_roughness(randf() * 50)
			q_SpatialMaterial.set_roughness_texture_channel(randi() % 5)#TextureChannel
			q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
			q_SpatialMaterial.set_emission_energy(randf() * 50)
			q_SpatialMaterial.set_emission_operator(randi() % 2) #EmissionOperator
			q_SpatialMaterial.set_normal_scale(randf() * 50)
			q_SpatialMaterial.set_rim(randf() * 50)
			q_SpatialMaterial.set_rim_tint(randf() * 50)
			q_SpatialMaterial.set_clearcoat(randf() * 50)
			q_SpatialMaterial.set_clearcoat_gloss(randf() * 50)
			q_SpatialMaterial.set_anisotropy(randf() * 50)
			q_SpatialMaterial.set_ao_light_affect(randf() * 50)
			q_SpatialMaterial.set_ao_texture_channel(randi() % 5)#TextureChannel
			q_SpatialMaterial.set_depth_scale(randf() * 50)
			q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
			q_SpatialMaterial.set_depth_deep_parallax_min_layers(randi()%50)
			q_SpatialMaterial.set_depth_deep_parallax_max_layers(randi()%50)
			q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
			q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
			q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
			q_SpatialMaterial.set_refraction(bool(randi()%2))
			q_SpatialMaterial.set_refraction_texture_channel(randi() % 5)#TextureChannel
			q_SpatialMaterial.set_detail_blend_mode(randi() % 4) #BlendMode
			q_SpatialMaterial.set_detail_uv(randi() % 2) #DetailUV
			q_SpatialMaterial.set_uv1_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_SpatialMaterial.set_uv1_offset(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(randf() * 50)
			q_SpatialMaterial.set_uv2_scale(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_SpatialMaterial.set_uv2_offset(Vector3(randf() * 50,randf() * 50,randf() * 50))
			q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(randf() * 50)
			q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
			q_SpatialMaterial.set_proximity_fade_distance(randf() * 50)
			q_SpatialMaterial.set_distance_fade(randi() % 4) #DistanceFadeMode
			q_SpatialMaterial.set_distance_fade_min_distance(randf() * 50)
			q_SpatialMaterial.set_distance_fade_max_distance(randf() * 50)
			
			if Autoload.WRONG_BUGS:
				q_SpatialMaterial.set_feature(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
					
				q_SpatialMaterial.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
				q_SpatialMaterial.set_diffuse_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DiffuseMode
				q_SpatialMaterial.set_specular_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #SpecularMode
				q_SpatialMaterial.set_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
				q_SpatialMaterial.set_cull_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #CullMode
				q_SpatialMaterial.set_depth_draw_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DepthDrawMode
				q_SpatialMaterial.set_line_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_point_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_billboard_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # BillboardMode
				q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
				q_SpatialMaterial.set_grow(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_alpha_scissor_threshold(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_particles_anim_h_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_particles_anim_v_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
				q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
				q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",true))
				q_SpatialMaterial.set_metallic(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_specular(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_metallic_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
				q_SpatialMaterial.set_roughness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_roughness_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
				q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
				q_SpatialMaterial.set_emission_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_emission_operator(randi() % Autoload.RANGE - Autoload.RANGE / 2) #EmissionOperator
				q_SpatialMaterial.set_normal_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_rim(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_rim_tint(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_clearcoat(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_clearcoat_gloss(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_anisotropy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_ao_light_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				#BUG q_SpatialMaterial.set_ao_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
				q_SpatialMaterial.set_depth_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
				q_SpatialMaterial.set_depth_deep_parallax_min_layers(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_depth_deep_parallax_max_layers(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
				q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
				q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
				q_SpatialMaterial.set_refraction(bool(randi()%2))
				#BUG q_SpatialMaterial.set_refraction_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
				q_SpatialMaterial.set_detail_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
				q_SpatialMaterial.set_detail_uv(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DetailUV
				q_SpatialMaterial.set_uv1_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SpatialMaterial.set_uv1_offset(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_uv2_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SpatialMaterial.set_uv2_offset(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
				q_SpatialMaterial.set_proximity_fade_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_distance_fade(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DistanceFadeMode
				q_SpatialMaterial.set_distance_fade_min_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_SpatialMaterial.set_distance_fade_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_SpatialMaterial.set_feature(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
					
			if randi() % 2 == 1:
				q_SpatialMaterial.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
			if randi() % 2 == 1:
				q_SpatialMaterial.set_diffuse_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DiffuseMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_specular_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #SpecularMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_cull_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #CullMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_draw_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DepthDrawMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_line_width(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_point_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_billboard_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # BillboardMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_grow_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_grow(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_alpha_scissor_threshold(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_particles_anim_h_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_particles_anim_v_frames(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_particles_anim_loop(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_albedo(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_texture(randi() % SpatialMaterial.TEXTURE_MAX,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",true))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_metallic(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_specular(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_metallic_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
			if randi() % 2 == 1:
				q_SpatialMaterial.set_roughness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_roughness_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
			if randi() % 2 == 1:
				q_SpatialMaterial.set_emission(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_emission_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_emission_operator(randi() % Autoload.RANGE - Autoload.RANGE / 2) #EmissionOperator
			if randi() % 2 == 1:
				q_SpatialMaterial.set_normal_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_rim(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_rim_tint(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_clearcoat(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_clearcoat_gloss(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_anisotropy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_ao_light_affect(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#			if randi() % 2 == 1:
				#BUG q_SpatialMaterial.set_ao_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_deep_parallax(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_deep_parallax_min_layers(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_deep_parallax_max_layers(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_deep_parallax_flip_tangent(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_depth_deep_parallax_flip_binormal(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_subsurface_scattering_strength(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_refraction(bool(randi()%2))
			#if randi() % 2 == 1:
				#BUG q_SpatialMaterial.set_refraction_texture_channel(randi() % Autoload.RANGE - Autoload.RANGE / 2)#TextureChannel
			if randi() % 2 == 1:
				q_SpatialMaterial.set_detail_blend_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BlendMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_detail_uv(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DetailUV
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv1_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv1_offset(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv1_triplanar_blend_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv2_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv2_offset(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_uv2_triplanar_blend_sharpness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_proximity_fade(bool(randi()%2))
			if randi() % 2 == 1:
				q_SpatialMaterial.set_proximity_fade_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_distance_fade(randi() % Autoload.RANGE - Autoload.RANGE / 2) #DistanceFadeMode
			if randi() % 2 == 1:
				q_SpatialMaterial.set_distance_fade_min_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_SpatialMaterial.set_distance_fade_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
