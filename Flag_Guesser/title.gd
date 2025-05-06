extends Control
@onready var panel: Panel = $Panel
@onready var button: Button = $Panel/Button
@onready var label: Label = $Panel/Label


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://keyboard.tscn")


func close_instructions() -> void:
	panel.visible = false
	button.visible = false
	label.visible = false
