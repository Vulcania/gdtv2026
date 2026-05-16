class_name MapArea

extends Area2D

@export var location: Global.GameLocation
@export var is_open: bool
@onready var highlight: ColorRect = $ColorRect
@onready var polygon: Polygon2D = $Polygon2D

func _ready() -> void:
	highlight.visible = Global.player_location == location
	# TODO: remove when location actually have sprites
	match location:
		Global.GameLocation.LAKE:
			polygon.color = Color.AQUA
		Global.GameLocation.CAMPFIRE:
			polygon.color = Color.FUCHSIA
			

func set_highlight(should_highlight: bool) ->void:
	highlight.visible = should_highlight
