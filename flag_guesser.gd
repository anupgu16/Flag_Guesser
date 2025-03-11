extends Node2D

@onready var flag_texture = $Control/TextureRect
@onready var guess_input = $Control/LineEdit
@onready var submit_button = $Control/Button
@onready var guess_container = $Control/VBoxContainer
@onready var hint_label = $Control/HintLabel
@onready var result_label = $Control/ResultLabel
@onready var score_label = $Control/ScoreLabel
@onready var game_timer = $Control/GameTimer
@onready var timer_label = $Control/TimerLabel

var time_remaining = 60  # Initial time

var score = 0

var flags = {
	"france": {
		"image": "france.png",
		"flag_colors": "Blue, White, Red",
		"size": "551,695 km²",
		"population": "67 million",
		"capital": "Paris"
	},
	"brazil": {
		"image": "brazil.png",
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
	game_timer.timeout.connect(_on_timer_tick)
	submit_button.pressed.connect(submit_guess)
	print(flag_texture)  # If null, the path is incorrect
	start_new_game()

func start_new_game():
	time_remaining = 60  # Reset timer
	timer_label.text = "Time: " + str(time_remaining) + "s"
	
	game_timer.wait_time = 1.0  # Ensure the timer ticks every second
	game_timer.one_shot = false  # It should loop
	game_timer.start()  # Start the timer
	print("Timer started:", game_timer.is_stopped())  # Debugging
	
	var country_keys = flags.keys()
	selected_country = country_keys[randi() % country_keys.size()]
	selected_data = flags[selected_country]
	print("Loading flag image from: ", selected_data["image"])
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
		match len(guesses):
			1: score = 100
			2: score = 80
			3: score = 60
			4: score = 40
			_ : score = 20  # 20 points if it took all 5 guesses
		score_label.text = "Score: " + str(score)

		# Reveal flag and display win message
		flag_texture.modulate = Color(1, 1, 1, 1)
		result_label.text = "Correct! The country is " + selected_country.capitalize()
		submit_button.disabled = true
	
	else:
		if len(guesses) < max_attempts:
			guess_label.text += " ❌ - Hint: " + get_hint(len(guesses))
			guess_container.add_child(guess_label)
		else:
			result_label.text = "Game Over! The country was " + selected_country.capitalize()
			flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
			submit_button.disabled = true
				
	guess_input.text = ""

func time_up():
	result_label.text = "Time's up! The country was " + selected_country.capitalize()
	flag_texture.modulate = Color(1, 1, 1, 1)  # Reveal flag
	submit_button.disabled = true
	game_timer.stop()  # Stop the timer

func _on_timer_tick():
	if time_remaining > 0:
		time_remaining -= 1
		timer_label.text = "Time: " + str(time_remaining) + "s"
		print("Time Left:", time_remaining)  # Debugging
		
	if time_remaining <= 0:
		time_up()


func get_hint(attempt):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"

func _on_Button_pressed():
	submit_guess()
