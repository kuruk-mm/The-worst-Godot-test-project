extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

# SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,SPAM,
#		var q_WebSocketServer : WebSocketServer = WebSocketServer.new()
#
#			q_WebSocketServer.disconnect_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Jeden" )
#
#			qq += str(q_WebSocketServer.get_peer_address( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#			qq += str(q_WebSocketServer.get_peer_port( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#
#			qq += str(q_WebSocketServer.has_peer( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
#			qq += str(q_WebSocketServer.is_listening())
#			qq += str(q_WebSocketServer.listen( randi() % Autoload.RANGE - Autoload.RANGE / 2, PoolStringArray(["Tak","Nie","Być może"]), bool(randi()%2)))
#			q_WebSocketServer.stop()
