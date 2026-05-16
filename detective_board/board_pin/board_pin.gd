class_name BoardPin extends Node2D

var connected_pins: Array[BoardPin]
@export var pinned_clue: PinnedClue = get_parent()

func connect_pin(other_pin: BoardPin):
	if not other_pin in connected_pins:
		connected_pins.append(other_pin)
		# TODO: move this feedback to the Detective board UI so the hints are displayed there
		if ClueManager.clues_connected(pinned_clue.clue, other_pin.pinned_clue.clue):
			print("Seems about right")
		else:
			print("Hmm, something is wrong...")
