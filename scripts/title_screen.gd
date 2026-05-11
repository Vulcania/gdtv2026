extends Control

@onready var main_menu: VBoxContainer = $MainMenuContainer
@onready var options: VBoxContainer = $OptionsContainer
@onready var credits: VBoxContainer = $CreditsContainer
@onready var music_slider: HSlider = $OptionsContainer/MusicSlider
@onready var sfx_slider: HSlider = $OptionsContainer/SfxSlider

func _ready() -> void:
	options.visible = false
	credits.visible = false
	main_menu.visible = true
	music_slider.value = Global.music_volume
	sfx_slider.value = Global.sfx_volume


func _on_play_button_pressed() -> void:
	print('play pressed')


func _on_options_button_pressed() -> void:
	main_menu.visible = false
	options.visible = true


func _on_credits_button_pressed() -> void:
	main_menu.visible = false
	credits.visible = true


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_back_button_pressed() -> void:
	options.visible = false
	credits.visible = false
	main_menu.visible = true


func _on_sfx_slider_value_changed(value: float) -> void:
	Global.sfx_volume = value / 100.0


func _on_music_slider_value_changed(value: float) -> void:
	Global.music_volume = value / 100.0
