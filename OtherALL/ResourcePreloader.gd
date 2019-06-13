extends ResourcePreloader

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
		
		add_resource("qq", ImageTexture.new())
		
		get_resource(qq)
		get_resource_list()
		
		has_resource("qq")
		rename_resource("qq","dd")
		remove_resource("dd") ## Zmiana kolejności