extends Control

class_name keyboard_inputs

@onready var flag_texture = $Border/display_flag
@onready var result = $Node2D/Result
@onready var list = $Node2D/list_of_hints

@onready var input = $Inputs/attempt_1
@onready var game_timer = $Control/GameTimer
@onready var timer_label = $Control/TimerLabel
@onready var score_label = $Node2D/score_label
@onready var total_score_label: Label = $Score_Panel/total_score_label
@onready var streak_label = $Score_Panel/streak_label
@onready var replay_button = $Score_Panel/ReplayButton
@onready var panel: TextureRect = $Score_Panel/Panel

@onready var distortion: Sprite2D = $Border/Distortion
@onready var distortion_2: Sprite2D = $Border/Distortion2
@onready var distortion_3: Sprite2D = $Border/Distortion3
@onready var distortion_6: Sprite2D = $Border/Distortion6
@onready var distortion_4: Sprite2D = $Border/Distortion4


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
	score_label.text = "Score: " + str(score)
	result.text = ""
	
	Hud.hide_leaderboard(total_score_label, streak_label, panel, replay_button)
	Hud.turn_on_all_distortions(distortion, distortion_2, distortion_3, distortion_4, distortion_6)
	
	# Reset all input fields
	for line in A:
		line.text = ""
	input = A[0]
	
	# Clear hints
	for child in list.get_children():
		child.queue_free()
	
	# Timer
	time_remaining = 60  # Reset timer
	timer_label.text = "Time: " + str(time_remaining) + "s"
	if game_timer != null:
		game_timer.wait_time = 1.0  # Ensure the timer ticks every second
		game_timer.one_shot = false  # It should loop
		game_timer.start()  # Start the timer
		print("Timer started:", game_timer)  # Debugging
	flag_texture.texture = load(selected_data["image"])

	# Obscures flag
	flag_texture.modulate = Color(1, 1, 1, 0.2)

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
	Hud.disable_distortions(row_num, distortion, distortion_2, distortion_3, distortion_4, distortion_6)
	
	# Guessing the correct country
	if stored_attempts[row_num].to_upper() == selected_country.to_upper():
		# Score depends on the amount of attempts
		score = Hud.get_score(row_num)
		total_score += score
		score_label.text = "Score: " + str(score)
		total_score_label.text = "Total Score: " + str(total_score)
		
		# Winning Streak
		streak += 1
		if streak >= 5:
			streak_label.text = "Streak: " + str(streak) + " 🔥"
		else:
			streak_label.text = "Streak: " + str(streak)
			
		# Reveal flag and display win message
		flag_texture.modulate = Color(1, 1, 1, 1)
		result.text = "Correct! The country is " + selected_country
		
		Hud.show_leaderboard(total_score_label, streak_label, panel, replay_button)
		Hud.turn_off_all_distortions(distortion, distortion_2, distortion_3, distortion_4, distortion_6)
		
		game_timer.stop()
		
		return

	# Current guess is incorrect
	else:
		row_num += 1
		hint.text += str(" ❌ - Hint: " + Display.get_hint(row_num, selected_data))
		list.add_child(hint)
		print(Display.get_hint(row_num, selected_data))

		# Move to next attempt if there are guesses left
		if row_num < 5:
			input = A[row_num]
			print(input)
			input.clear()

		# Lose message due to too many incorrect guesses
		else:
			flag_texture.modulate = Color(1, 1, 1, 1) # Reveals the flag
			result.text = "Game Over! The country was " + selected_country
			streak = 0
			streak_label.text = "Streak: " + str(streak)
			
			Hud.show_leaderboard(total_score_label, streak_label, panel, replay_button)
			Hud.turn_off_all_distortions(distortion, distortion_2, distortion_3, distortion_4, distortion_6)
			
			game_timer.stop()

	# Display array with all attempts
	print(stored_attempts)

# Time is up
func time_up():
	flag_texture.modulate = Color(1, 1, 1, 1)  # Reveal flag
	result.text = "Time's up! The country was " + selected_country.capitalize()
	score = 0
	streak = 0 # resets the streak
	
	# Display on Score Panel
	score_label.text = "Score: " + str(score)
	total_score_label.text = "Total Score: " + str(total_score)
	streak_label.text = "Streak: " + str(streak)
	
	
	Hud.show_leaderboard(total_score_label, streak_label, panel, replay_button)
	Hud.turn_off_all_distortions(distortion, distortion_2, distortion_3, distortion_4, distortion_6)
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
	

func _on_replay_button_pressed() -> void:
	start_new_game()
