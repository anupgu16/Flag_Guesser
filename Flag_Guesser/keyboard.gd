extends Control

class_name keyboard_inputs

# Tracking attempt_number
var row_num = 0
# Tracking attempts
var stored_attempts = ["", "", "", "", ""]
@onready var result = $Result
@onready var list = $list_of_hints
# For first attempt
@onready var input = $Inputs/attempt_1
# To access all the attempts
@export var A : Array[LineEdit] = []
var selected_country = CountryFlags.get_random_country()
var selected_data = CountryFlags.flags[selected_country]


# Preparing the Attempt inputs
func _ready():
	A.append($Inputs/attempt_1)
	A.append($Inputs/attempt_2)
	A.append($Inputs/attempt_3)
	A.append($Inputs/attempt_4)
	A.append($Inputs/attempt_5)

# Put the characters into input
func press_key(digit):
	if len(input.text) <= 56:
		input.text += str(digit)

signal character_key(letter: String)
signal backspace_key
signal enter_key	

# For pressing letters
func _on_keyboard_pressed(letter: String):
	if row_num < 5:
		character_key.emit(letter)
		press_key(letter)
		print(letter)

# Remove character when pressing backspace
func _on_delete_key_pressed():
	if row_num < 5:
		backspace_key.emit()
		if input.text.length() > 0:
			input.text = input.text.substr(0, input.text.length() - 1)

# Going to next line when pressing enter
func _on_enter_key_pressed():
	var hint = Label.new()
	hint.text = stored_attempts[row_num]
	enter_key.emit()
	
	if input.text in stored_attempts:
		input.clear()
		return # Ignores duplicate guesses

	stored_attempts[row_num] = input.text
	if stored_attempts[row_num] == selected_country:
		result.text = "Correct! The country is " + selected_country
		return
	else:
		row_num += 1
		hint.text += str(" ❌ - Hint: " + get_hint(row_num))
		list.add_child(hint)
		if row_num < 5:
			input = A[row_num]
			print(input)
			input.clear()
		else:
			result.text = "Game Over! The country was " + selected_country
	print(stored_attempts)
	
func get_hint(attempt):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"
