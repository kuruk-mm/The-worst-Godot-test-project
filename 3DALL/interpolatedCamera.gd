extends InterpolatedCamera

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	
#		Vector2(randf() * 50,randf() * 50))
#		Vector3(randf() * 50,randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		var qq : String = ""
		
		set_target_path("Roman")
		set_speed(randf() * 50)
		set_interpolation_enabled(bool(randi()%2))
		set_target(get_parent())
		
		
		qq=qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x