class_name Clue # TODO: make each clue a separate resource
extends Resource

@export var id: int # Used in conversations to identify where the clue is given
@export var description: String = ""
@export var image: Texture2D
@export var hidden_relations: Array[int] # Contains all clue IDs which make sense to connect to it (to get a feedback like "hmm, that's right" or "I'm not sure" when the player does it)
