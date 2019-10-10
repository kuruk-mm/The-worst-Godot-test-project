extends Node2D

var q_Texture : Texture = ImageTexture.new()
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
			q_Texture = ImageTexture.new()
			
		if randi() % 2 == 1:
			q_Texture.draw(RID(),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
		if randi() % 2 == 1:
			q_Texture.draw_rect(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),bool(randi()%2),Color(randf(),randf(),randf(),randf()),bool(randi()%2),ImageTexture.new())
		if randi() % 2 == 1:
			q_Texture.draw_rect_region(RID(),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)),Rect2(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)), Color(randf(),randf(),randf(),randf()), bool(randi()%2),ImageTexture.new(),bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(q_Texture.get_data())
		if randi() % 2 == 1:
			qq += str(q_Texture.get_height())
		if randi() % 2 == 1:
			qq += str(q_Texture.get_size())
		if randi() % 2 == 1:
			qq += str(q_Texture.get_width())
		if randi() % 2 == 1:
			qq += str(q_Texture.has_alpha())
