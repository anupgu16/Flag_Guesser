extends Node

class_name country

var flags = {
	"FRANCE": {
		"image": "res://flags/france.png",
		"flag_colors": "Blue, White, Red",
		"size": "551,695 km²",
		"population": "67 million",
		"capital": "Paris"
	},
	"BRAZIL": {
		"image": "res://flags/brazil.png",
		"flag_colors": "Green, Yellow, Blue, White",
		"size": "8,515,767 km²",
		"population": "214 million",
		"capital": "Brasília"
	},
}

func get_random_country():
	var country_flags = flags.keys()
	return country_flags[randi() % country_flags.size()]
