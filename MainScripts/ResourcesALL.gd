extends Node2D

func _ready() -> void:
	if !is_visible():
		queue_free()

	for i in get_children():
		if !i.is_visible():
#			if i.has_method("delete_node"):
#				i.delete_node()
			i.queue_free()

func _process(delta) -> void:
	for i in get_children():
		if i.has_method("alt_process"):
			i.alt_process(delta)
			
func _physics_process(delta) -> void:
	for i in get_children():
		if i.has_method("alt_process"):
			i.alt_process(delta)
