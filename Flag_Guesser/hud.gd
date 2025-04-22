class_name Display

extends Node2D

var score = 0

static func get_hint(attempt, selected_data):
	match attempt:
		1: return "Flag Colors: " + selected_data["flag_colors"]
		2: return "Country Size: " + selected_data["size"]
		3: return "Population: " + selected_data["population"]
		4: return "Capital City: " + selected_data["capital"]
		5: return "Flag revealed!"

func get_score(row_num):
	match row_num:
		0: score = 100
		1: score = 80
		2: score = 60
		3: score = 40
		4: score = 20
	return score
	
func disable_distortions(row_num, d1, d2, d3, d4, d5):
	match row_num:
		0: d1.visible = false
		1: d2.visible = false
		2: d3.visible = false
		3: d4.visible = false
		4: d5.visible = false
		
func turn_off_all_distortions(d1, d2, d3, d4, d5):
	d1.visible = false
	d2.visible = false
	d3.visible = false
	d4.visible = false
	d5.visible = false
	
func turn_on_all_distortions(d1, d2, d3, d4, d5):
	d1.visible = true
	d2.visible = true
	d3.visible = true
	d4.visible = true
	d5.visible = true

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
