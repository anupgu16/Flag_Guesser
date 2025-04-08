extends Control

class_name keyboard_inputs

@onready var flag_texture = $Border/display_flag
@onready var result = $Result
@onready var list = $list_of_hints
@onready var input = $Inputs/attempt_1
@onready var game_timer = $Control/GameTimer
@onready var timer_label = $Control/TimerLabel
@onready var score_label = $score_label
@onready var replay_button = $ReplayButton
@onready var streak_label = $streak_label

# To access all the attempts
@export var A : Array[LineEdit] = []

var selected_country = CountryFlags.get_random_country()
var selected_data = CountryFlags.flags[selected_country]
var time_remaining = 60  # Initial time
var row_num = 0
var stored_attempts = ["", "", "", "", ""]
var score = 0
var total_score = 0
var streak = 0

func _on_replay_button_pressed() -> void:
	start_new_game() # Replace with function body.

# Preparing the Attempt inputs
func _ready():
	if game_timer != null:
		game_timer.timeout.connect(_on_timer_tick)
		print(flag_texture)
		A.append($Inputs/attempt_1)
		A.append($Inputs/attempt_2)
		A.append($Inputs/attempt_3)
		A.append($Inputs/attempt_4)
		A.append($Inputs/attempt_5)
		
		start_new_game()
	
func start_new_game():
	# Get new country + data
	selected_country = CountryFlags.get_random_country()
	selected_data = CountryFlags.flags[selected_country]
	
	# Reset vars
	row_num = 0
	time_remaining = 60
	stored_attempts = ["", "", "", "", ""]
	score = 0
	timer_label.text = "Time: " + str(time_remaining) + "s"
	score_label.text = "Score: " + str(total_score)
	result.text = ""
	replay_button.visible = false

	# Reset all input fields
	for line in A:
		line.text = ""
	input = A[0]

	# Clear hints
	for child in list.get_children():
		child.queue_free()

	# Reset flag + obscure
	flag_texture.texture = load(selected_data["image"])
	flag_texture.modulate = Color(1, 1, 1, 0.2)

	# Restart timer
	if game_timer != null:
		game_timer.wait_time = 1.0
		game_timer.one_shot = false
		game_timer.start()


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
	
	# Store the inputs
	stored_attempts[row_num] = input.text
	
	# Guessing the correct country
	if stored_attempts[row_num] == selected_country:
		# Score depends on the amount of attempts
		match row_num:
			0: score = 100
			1: score = 80
			2: score = 60
			3: score = 40
			4: score = 20
		total_score += score
		score_label.text = "Score: " + str(score)
		
		# update the streak
		streak += 1
		if streak >= 5:
			streak_label.text = "Streak: " + str(streak) + " 🔥"
		else:
			streak_label.text = "Streak: " + str(streak)
		
		# Reveal flag and display win message
		flag_texture.modulate = Color(1, 1, 1, 1)
		result.text = "Correct! The country is " + selected_country
		replay_button.visible = true

		return

	# Current guess is incorrect
	else:
		row_num += 1
		hint.text += str(" ❌ - Hint: " + get_hint(row_num))
		list.add_child(hint)

		# Move to next attempt if there are guesses left
		if row_num < 5:
			input = A[row_num]
			print(input)
			input.clear()

		# Lose message due to too many incorrect guesses
		else:
			flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
			result.text = "Game Over! The country was " + selected_country
			streak = 0 # resets the streak
			streak_label.text = "Streak: 0"
			replay_button.visible = true
			

	# Display array with all attempts
	print(stored_attempts)

#Hint depends on the amount already guessed
func get_hint(attempt):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"

# Time is up
func time_up():
	flag_texture.modulate = Color(1, 1, 1, 1)  # Reveal flag
	result.text = "Time's up! The country was " + selected_country.capitalize()
	streak = 0 # resets the streak
	streak_label.text = "Streak: 0"
	replay_button.visible = true
	game_timer.stop()  # Stop the timer

func _on_timer_tick():
	# If the guess is wrong while there's still time and guesses left
	if time_remaining > 0 and row_num < 5 \
	and stored_attempts[row_num] != selected_country:
		time_remaining -= 1
		timer_label.text = "Time: " + str(time_remaining) + "s"
		print("Time Left:", time_remaining)  # Debugging

	# Stop timer if all the guesses are gone or if they guessed correctly
	elif (time_remaining > 0 and row_num == 5) \
	or (time_remaining > 0 and stored_attempts[row_num] == selected_country):
		timer_label.text = "Time: " + str(time_remaining) + "s"
		game_timer.stop()
	
	# When time is up
	if time_remaining <= 0:
		time_up()
	
