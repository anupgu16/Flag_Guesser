extends Node

class_name country

var flags = {
	"Afghanistan": {
		"image": "res://Flag Images/afghanistan.png",
		"flag_colors": "Black, White, Red, Green",
		"size": "652,860 km²",
		"population": "43 million",
		"capital": "Kabul"
	},
	"Albania": {
		"image": "res://Flag Images/albania.png",
		"flag_colors": "Black, Red",
		"size": "652,860 km²",
		"population": "2 million",
		"capital": "Tirana"
	},
	"AUSTRALIA": {
		"image": "res://Flag Images/australia.png",
		"flag_colors": "Red, White, Blue",
		"size": "7,692,024 km²",
		"population": "26 million",
		"capital": "Canberra"
	},
	"BRAZIL": {
		"image": "res://Flag Images/brazil.png",
		"flag_colors": "Green, Yellow, Blue, White",
		"size": "8,515,767 km²",
		"population": "214 million",
		"capital": "Brasília"
	},
	"CANADA": {
		"image": "res://Flag Images/canada.png",
		"flag_colors": "Red, White",
		"size": "9,984,670 km²",
		"population": "41 million",
		"capital": "Ottawa"
	},
	"China": {
		"image": "res://Flag Images/china.png",
		"flag_colors": "Red, Yellow",
		"size": "9,596,961 km²",
		"population": "1.4 billion",
		"capital": "Beijing"
	},
	"FINLAND": {
		"image": "res://Flag Images/finland.png",
		"flag_colors": "Blue, White",
		"size": "338,145 km²",
		"population": "5 million",
		"capital": "Helsinki"
	},
	"FRANCE": {
		"image": "res://Flag Images/france.png",
		"flag_colors": "Blue, White, Red",
		"size": "551,695 km²",
		"population": "67 million",
		"capital": "Paris"
	},
	"GERMANY": {
		"image": "res://Flag Images/germany.png",
		"flag_colors": "Red, Black, Yellow",
		"size": "357,596 km²",
		"population": "83 million",
		"capital": "Berlin"
	},

	"INDIA": {
		"image": "res://Flag Images/india.png",
		"flag_colors": "Orange, White, Green, Blue",
		"size": "3,297,263 km²",
		"population": "1.42 billion",
		"capital": "New Delhi"
	},

	"JAPAN": {
		"image": "res://Flag Images/japan.png",
		"flag_colors": "Red, White",
		"size": "377,973 km²",
		"population": "124 million",
		"capital": "Tokyo"
	},

	"MEXICO": {
		"image": "res://Flag Images/mexico.png",
		"flag_colors": "Red, White, Green",
		"size": "1,972,550 km²",
		"population": "131 million",
		"capital": "Mexico City"
	},

	"RUSSIA": {
		"image": "res://Flag Images/russia.png",
		"flag_colors": "Red, White, Blue",
		"size": "17,098,242 km²",
		"population": "144 million",
		"capital": "Moscow"
	},

	"SWEDEN": {
		"image": "res://Flag Images/sweden.png",
		"flag_colors": "Blue, Yellow",
		"size": "450,295 km²",
		"population": "10 million",
		"capital": "Stockholm"
	},
	"United States": {
		"image": "res://Flag Images/united_states.png",
		"flag_colors": "Red, White, Blue",
		"size": "9,833,520 km²",
		"population": "340 million",
		"capital": "Washington, D.C"
	},
}

var demo_flags = {
	"AUSTRALIA": {
		"image": "res://Flag Images/australia.png",
		"flag_colors": "Red, White, Blue",
		"size": "7,692,024 km²",
		"population": "26 million",
		"capital": "Canberra"
	},
	"BRAZIL": {
		"image": "res://Flag Images/brazil.png",
		"flag_colors": "Green, Yellow, Blue, White",
		"size": "8,515,767 km²",
		"population": "214 million",
		"capital": "Brasília"
	},
	"CANADA": {
		"image": "res://Flag Images/canada.png",
		"flag_colors": "Red, White",
		"size": "9,984,670 km²",
		"population": "41 million",
		"capital": "Ottawa"
	},
	"China": {
		"image": "res://Flag Images/china.png",
		"flag_colors": "Red, Yellow",
		"size": "9,596,961 km²",
		"population": "1.4 billion",
		"capital": "Beijing"
	},
	"FINLAND": {
		"image": "res://Flag Images/finland.png",
		"flag_colors": "Blue, White",
		"size": "338,145 km²",
		"population": "5 million",
		"capital": "Helsinki"
	},
	"FRANCE": {
		"image": "res://Flag Images/france.png",
		"flag_colors": "Blue, White, Red",
		"size": "551,695 km²",
		"population": "67 million",
		"capital": "Paris"
	},
	"GERMANY": {
		"image": "res://Flag Images/germany.png",
		"flag_colors": "Red, Black, Yellow",
		"size": "357,596 km²",
		"population": "83 million",
		"capital": "Berlin"
	},

	"INDIA": {
		"image": "res://Flag Images/india.png",
		"flag_colors": "Orange, White, Green, Blue",
		"size": "3,297,263 km²",
		"population": "1.42 billion",
		"capital": "New Delhi"
	},

	"JAPAN": {
		"image": "res://Flag Images/japan.png",
		"flag_colors": "Red, White",
		"size": "377,973 km²",
		"population": "124 million",
		"capital": "Tokyo"
	},

	"MEXICO": {
		"image": "res://Flag Images/mexico.png",
		"flag_colors": "Red, White, Green",
		"size": "1,972,550 km²",
		"population": "131 million",
		"capital": "Mexico City"
	},

	"RUSSIA": {
		"image": "res://Flag Images/russia.png",
		"flag_colors": "Red, White, Blue",
		"size": "17,098,242 km²",
		"population": "144 million",
		"capital": "Moscow"
	},

	"SWEDEN": {
		"image": "res://Flag Images/sweden.png",
		"flag_colors": "Blue, Yellow",
		"size": "450,295 km²",
		"population": "10 million",
		"capital": "Stockholm"
	},
	"United States": {
		"image": "res://Flag Images/united_states.png",
		"flag_colors": "Red, White, Blue",
		"size": "9,833,520 km²",
		"population": "340 million",
		"capital": "Washington, D.C"
	},
}

func get_random_country():
	# var country_flags = flags.keys()
	var country_flags = demo_flags.keys()
	return country_flags[randi() % country_flags.size()]
