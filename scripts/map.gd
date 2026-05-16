extends Control

var highlighted_location: Global.GameLocation = Global.player_location
var map_areas: Array[MapArea] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for child in get_children():
		if child is MapArea:
			map_areas.append(child)
	_update_highlights()
	print(map_areas)
	
func _input(event: InputEvent) -> void:
	pass
		
func _update_highlights()->void:
	for map_area in map_areas:
		map_area.set_highlight(map_area.location==highlighted_location && map_area.is_open)


func _on_lake_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("connected")
	print(event)


func _on_campfire_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("cnct")
	print(event)
