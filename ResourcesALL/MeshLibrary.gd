extends Node2D

var q_MeshLibrary : MeshLibrary = MeshLibrary.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_MeshLibrary = MeshLibrary.new()

		if randi() % 2 == 1:
			q_MeshLibrary.clear()
		if randi() % 2 == 1:
			q_MeshLibrary.create_item(Autoload.get_int())
		if randi() % 2 == 1:
			q_MeshLibrary.find_item_by_name(Autoload.get_string()))

		if randi() % 2 == 1:
			q_MeshLibrary.get_item_list())
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_mesh(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_name(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_navmesh(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_navmesh_transform(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_preview(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_item_shapes(Autoload.get_int()))
		if randi() % 2 == 1:
			q_MeshLibrary.get_last_unused_item_id())

		if randi() % 2 == 1:
			q_MeshLibrary.remove_item(Autoload.get_int())

		if randi() % 2 == 1:
			q_MeshLibrary.set_item_mesh(Autoload.get_int(),Autoload.loadA("CubeMesh.tres"))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_name(Autoload.get_int(),Autoload.get_string())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh(Autoload.get_int(),Autoload.loadA("NavigationMesh.tres"))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh_transform(Autoload.get_int(),Autoload.get_transform())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_preview(Autoload.get_int(),Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_shapes(Autoload.get_int(),Autoload.get_array())

