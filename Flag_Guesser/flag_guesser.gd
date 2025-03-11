extends Node2D

@onready var flag_texture = $Flag/TextureRect
@onready var hint_label = $Flag/HintLabel
@onready var result_label = $Flag/ResultLabel

var selected_country = ""
var selected_data = Keyboard.stored_attempts
var guesses = Keyboard.stored_attempts[Keyboard.row_num]
var flags = CountryFlags.flags
var max_attempts = 5

func _ready():
	Keyboard._on_enter_key_pressed().connect(results)
	print(flag_texture)
	start_new_game()
	
func start_new_game():
	selected_country = CountryFlags.get_random_country()
	print(selected_country)
	selected_data = CountryFlags.flags[selected_country]
	flag_texture.texture = load(selected_data["image"])
	
	# Obscures flag
	flag_texture.modulate = Color(1, 1, 1, 0.2)
	Keyboard.stored_attempts = ["", "", "", "", ""]

func results(Keyboard):
	print(guesses)
	if guesses == selected_country:
		flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
		result_label.text = "Correct! The country is " + selected_country.capitalize()
		return
	if len(Keyboard.row_num) < max_attempts:
		guesses.text += " ❌ - Hint: " + get_hint(len(guesses))
	else:
		result_label.text = "Game Over! The country was " + selected_country.capitalize()
		flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
		
func get_hint(attempt):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"
