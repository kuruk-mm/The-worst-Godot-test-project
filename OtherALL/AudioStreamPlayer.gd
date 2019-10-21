extends AudioStreamPlayer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		nodeFunction(self)

func nodeFunction(q_AudioStreamPlayer : AudioStreamPlayer) -> void:

		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_stream(AudioStream.new())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_volume_db(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_pitch_scale(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioStreamPlayer._set_playing(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_autoplay(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_stream_paused(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_mix_target(Autoload.get_int())# MixTarget
		if randi() % 2 == 1:
			q_AudioStreamPlayer.set_bus(Autoload.get_string())

		if randi() % 2 == 1:
			q_AudioStreamPlayer.get_playback_position()
		if randi() % 2 == 1:
			q_AudioStreamPlayer.get_stream_playback()

		if randi() % 2 == 1:
			q_AudioStreamPlayer.play()
		if randi() % 2 == 1:
			q_AudioStreamPlayer.seek(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioStreamPlayer.stop()
