extends Node


var all_clues: Dictionary[int,Clue] = {}
var collected_clues: Array[Clue] = []

func collect_clue(clue_id: int) -> void:
	# When the player actually finds out about a clue, add it here
	collected_clues.append(all_clues[clue_id])

func clues_connected(clue1: Clue, clue2: Clue) -> bool:
	# Returns if clues are related to each other using the clue properties
	return clue1.is_related(clue2) or clue2.is_related(clue1)
