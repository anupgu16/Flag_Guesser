extends Control

const password = "123"
var text_length

@onready var input = $VBoxContainer/MarginContainer/GridContainer2/Attempt_1

# Called when the node enters the scene tree for the first time.
func press_key(digit):
	if len(input.text) <= 56:
		input.text += str(digit)

signal character_key(letter: String)
signal backspace_key
signal enter_key	

func _on_keyboard_pressed(letter: String):
	character_key.emit(letter)
	press_key(letter)
	print(letter)

func _on_delete_key_pressed():
	backspace_key.emit()
	if input.text.length() > 0:
		input.text = input.text.substr(0, input.text.length() - 1)

func _on_enter_key_pressed():
	enter_key.emit()
