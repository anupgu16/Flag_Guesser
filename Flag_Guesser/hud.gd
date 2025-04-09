class_name Display

extends Node2D

var score = 0

func get_hint(attempt, selected_data):
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
