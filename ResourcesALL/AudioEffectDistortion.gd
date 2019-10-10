extends Node2D

var q_AudioEffectDistortion : AudioEffectDistortion = AudioEffectDistortion.new()
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
		if randi() % 2 == 1:
			q_AudioEffectDistortion = AudioEffectDistortion.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectDistortion.set_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Mode
		if randi() % 2 == 1:
			q_AudioEffectDistortion.set_pre_gain(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDistortion.set_keep_hf_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDistortion.set_drive(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDistortion.set_post_gain(randf() * Autoload.RANGE - Autoload.RANGE / 2)
