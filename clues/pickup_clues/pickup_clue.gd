extends Node2D

@export var clue: Clue

func _ready() -> void:
	$PickupClueTexture.texture = clue.image
	var new_collision := RectangleShape2D.new()
	new_collision.size = $PickupClueTexture.texture.get_size()
	$PickupCollision.shape = new_collision

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("clicked"):
		ClueManager.collect_clue(clue)
		self.queue_free()
