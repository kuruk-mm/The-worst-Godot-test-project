extends Node2D

var q_AudioEffectPhaser : AudioEffectPhaser = AudioEffectPhaser.new()
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
			q_AudioEffectPhaser = AudioEffectPhaser.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_range_min_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_range_max_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_rate_hz(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_feedback(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectPhaser.set_depth(randf() * Autoload.RANGE - Autoload.RANGE / 2)
