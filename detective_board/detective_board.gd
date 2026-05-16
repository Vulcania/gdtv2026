extends Node2D

@onready var clue_spawn_area: NavigationRegion2D = $ClueSpawnArea


var pinned_clues: Dictionary[Clue,PinnedClue] = {}
# TODO: save clue positions when the scene is unloaded or somehow keep the scene loaded in the background

func add_pinned_clue(clue: Clue) -> void:
	if not clue in pinned_clues.keys():
		var new_clue: PinnedClue = preload("res://detective_board/pinned_clue/pinned_clue.tscn").instantiate().init(clue)
		pinned_clues[clue] = new_clue
		new_clue.position = Vector2(randf_range($MinNewCluesPosition.position.x,$MaxNewCluesPosition.position.x),randf_range($MinNewCluesPosition.position.y,$MaxNewCluesPosition.position.y))
		add_child(new_clue)

func _ready() -> void:
	ClueManager.collect_clue(preload("res://clues/Clue_Sample.tres"))
	for clue in ClueManager.collected_clues:
		add_pinned_clue(clue)
