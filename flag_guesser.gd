extends Node2D

@onready var flag_texture = $Control/TextureRect
@onready var guess_input = $Control/LineEdit
@onready var submit_button = $Control/Button
@onready var guess_container = $Control/VBoxContainer
@onready var hint_label = $Control/HintLabel
@onready var result_label = $Control/ResultLabel

var flags = {
	"france": {
		"image": "res://flags/france.png",
		"flag_colors": "Blue, White, Red",
		"size": "551,695 km²",
		"population": "67 million",
		"capital": "Paris"
	},
	"brazil": {
		"image": "res://flags/brazil.png",
		"flag_colors": "Green, Yellow, Blue, White",
		"size": "8,515,767 km²",
		"population": "214 million",
		"capital": "Brasília"
	},
}


var selected_country = ""
var selected_data = {}
var guesses = []
var max_attempts = 5

func _ready():
	submit_button.pressed.connect(submit_guess)
	print(flag_texture)  # If null, the path is incorrect
	start_new_game()

func start_new_game():
	var country_keys = flags.keys()
	selected_country = country_keys[randi() % country_keys.size()]
	selected_data = flags[selected_country]
	flag_texture.texture = load(selected_data["image"])
	
	# Obscures flag
	flag_texture.modulate = Color(1, 1, 1, 0.2)
	
	guesses.clear()
	for	child	in	guess_container.get_children():
		guess_container.remove_child(child)
		child.queue_free()

	hint_label.text = "Guess the country!"
	result_label.text = ""
	guess_input.text = ""
	guess_input.grab_focus()

func submit_guess():
	var guess = guess_input.text.strip_edges().to_lower()
	
	if guess in guesses:
		return # Ignore duplicate guesses

	guesses.append(guess)
	
	var guess_label = Label.new()
	guess_label.text = guess.capitalize()
	
	if guess == selected_country:
		flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
		result_label.text = "Correct! The country is " + selected_country.capitalize()
		submit_button.disabled = true
		return
	
	if len(guesses) < max_attempts:
		guess_label.text += " ❌ - Hint: " + get_hint(len(guesses))
		guess_container.add_child(guess_label)
	else:
		result_label.text = "Game Over! The country was " + selected_country.capitalize()
		flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
		submit_button.disabled = true
	
	guess_input.text = ""

func get_hint(attempt):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"

func _on_Button_pressed():
	submit_guess()
