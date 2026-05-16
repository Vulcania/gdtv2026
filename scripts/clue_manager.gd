extends Node

var all_clues: Dictionary[int,Clue] = {}
var collected_clues: Array[Clue] = []

func register_clue(new_clue: Clue) -> void:
	# Part of game startup
	if not new_clue in collected_clues:
		all_clues[new_clue.id] = new_clue

func collect_clue(clue_id: int) -> void:
	# When the player actually finds out about a clue, add it here
	collected_clues.append(all_clues[clue_id])

func clue_combination_works(clue_1_id: int, clue_2_id: int) -> bool:
	# returns if a combination of clues makes sense
	var clue_1: Clue = all_clues[clue_1_id]
	var clue_2: Clue = all_clues[clue_2_id]
	return clue_1.hidden_relations.has(clue_2_id) or clue_2.hidden_relations.has(clue_1_id)

"""
Thoughts on clue system:
    - relations between clues managed via clue id
    - clue objects could be tracked as resources and only registered here as part of their _ready script


Thoughts on detective board:
    - clues do not need a location on the board, player can drag and drop them
    - board tracks if the clue has already been used before
    - Player can place pins and connect them with lines
"""
