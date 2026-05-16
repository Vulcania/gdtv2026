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

"""
Thoughts on clue system:
    - relations between clues managed via clue id
    - clue objects could be tracked as resources and only registered here as part of their _ready script


Thoughts on detective board:
    - clues do not need a location on the board, player can drag and drop them
    - board tracks if the clue has already been used before
    - Player can place pins and connect them with lines
"""