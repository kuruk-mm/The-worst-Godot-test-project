extends ImmediateGeometry

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if !Autoload.RANDI:
#
#			add_sphere(randi()%50,randi()%50,randf() * 50,bool(randi()%2))
#			add_vertex(Vector3(randf() * 50,randf() * 50,randf() * 50))
#			begin(randi() % 7,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false)) # PrimitiveType
#			clear()
#			end()
#			set_color(Color(randf(),randf(),randf(),randf()))
#			set_normal(Vector3(randf() * 50,randf() * 50,randf() * 50))
#			set_tangent(Plane(randf(),randf(),randf(),randf()))
#			set_uv(Vector2(randf() * 50,randf() * 50))
#			set_uv2(Vector2(randf() * 50,randf() * 50))
#
#
#			if Autoload.WRONG_BUGS:
#				add_sphere(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#				add_vertex(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				begin(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")) # PrimitiveType
#				clear()
#				end()
#				set_color(Color(randf(),randf(),randf(),randf()))
#				set_normal(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_tangent(Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_uv(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_uv2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#		else: #RANDI
#			if randi() % 2 == 1:
#				add_sphere(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#			if randi() % 2 == 1:
#				add_vertex(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#			if randi() % 2 == 1:
#				begin(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")) # PrimitiveType
#			if randi() % 2 == 1:
#				clear()
#			if randi() % 2 == 1:
#				end()
#			if randi() % 2 == 1:
#				set_color(Color(randf(),randf(),randf(),randf()))
#			if randi() % 2 == 1:
#				set_normal(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#			if randi() % 2 == 1:
#				set_tangent(Plane(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#			if randi() % 2 == 1:
#				set_uv(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#			if randi() % 2 == 1:
#				set_uv2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
