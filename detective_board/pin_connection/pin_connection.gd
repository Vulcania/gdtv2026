class_name PinConnection extends Node2D

var source_pin: BoardPin
var target_pin: BoardPin

func init(source_pin_i: BoardPin) -> PinConnection:
	source_pin = source_pin_i
	return self

func begin_connection_drag() -> void:
	pass # TODO: add logic here to start drawing a line from the pin to the mouse location of the player

func release_connection_drag() -> void:
	pass
	"""
	TODO
	if connection is released over a board pin:
		finish drawing the connection
		trigger the connect logic on both pins
	else:
		queue_free()
	"""

# TODO: fill the draw function

# TODO: option to delete this pin connection (e.g. by rightclicking on it)
