class_name PinnedClue extends Node2D

var clue: Clue

func init(clue_i: Clue) -> PinnedClue:
	clue = clue_i
	$VBoxContainer/clueTexture.texture = clue.image
	$VBoxContainer/clueDescription.text = clue.description
	return self
