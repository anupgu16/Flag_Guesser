class_name Display

extends Node2D

var score = 0

# Get hint based on row number
static func get_hint(row_num, selected_data):
	match row_num:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"

# Score based row number
func get_score(row_num):
	match row_num:
		0: score = 100
		1: score = 80
		2: score = 60
		3: score = 40
		4: score = 20
	return score

# Disable distortions based on row number
func disable_distortions(row_num, d1, d2, d3, d4):
	match row_num:
		0: d2.visible = false
		1: d3.visible = false
		2: d1.visible = false
		3: d4.visible = false

# Shows all distortions
func turn_off_all_distortions(d1, d2, d3, d4):
	d1.visible = false
	d2.visible = false
	d3.visible = false
	d4.visible = false

# Hides all distorions
func turn_on_all_distortions(d1, d2, d3, d4):
	d1.visible = true
	d2.visible = true
	d3.visible = true
	d4.visible = true

# Show the leaderboard
func show_leaderboard(total, streak, panel, replay):
	total.visible = true
	streak.visible = true
	panel.visible = true
	replay.visible = true
	
# Hide the leaderboard
func hide_leaderboard(total, streak, panel, replay):
	total.visible = false
	streak.visible = false
	panel.visible = false
	replay.visible = false
