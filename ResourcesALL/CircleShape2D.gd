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
		
		var q_CircleShape2D : CircleShape2D = CircleShape2D.new()
		
		q_CircleShape2D.set_radius(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_CircleShape2D.set_radius(randf() * 1000 - 500)