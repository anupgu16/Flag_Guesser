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
	"Algeria": {
		"image": "res://Flag Images/algeria.png",
		"flag_colors": "Red, Green, White",
		"size": "2,381,740 km²",
		"population": "47 million",
		"capital": "Algiers"
	},
	"Andorra": {
		"image": "res://Flag Images/andorra.png",
		"flag_colors": "Blue, Yellow, Red",
		"size": "470 km²",
		"population": "89 thousand",
		"capital": "Andorra la Vella"
	},
	"Angola": {
		"image": "res://Flag Images/angola.png",
		"flag_colors": "Yellow, Red, Black",
		"size": "1,246,700 km²",
		"population": "39 million",
		"capital": "Luanda"
	},
	"Antigua and Barbuda": {
		"image": "res://Flag Images/Antigua_and_Barbuda.png",
		"flag_colors": "Black, Yellow, Blue, White, Red",
		"size": "440 km²",
		"population": "94 thousand",
		"capital": "St. John's"
	},
	"Argentina": {
		"image": "res://Flag Images/Argentina.png",
		"flag_colors": "Yellow, White, Blue",
		"size": "2,736,690 km²",
		"population": "45 million",
		"capital": "Buenos Aires"
	},
	"Armenia": {
		"image": "res://Flag Images/Armenia.png",
		"flag_colors": "Red, Blue, Orange",
		"size": "28,470 km²",
		"population": "3 million",
		"capital": "Yerevan"
	},
	"AUSTRALIA": {
		"image": "res://Flag Images/australia.png",
		"flag_colors": "Red, White, Blue",
		"size": "7,692,024 km²",
		"population": "26 million",
		"capital": "Canberra"
	},
	"Austria": {
		"image": "res://Flag Images/Austria.png",
		"flag_colors": "Red, White",
		"size": "82,409 km²",
		"population": "9 million",
		"capital": "Vienna"
	},
	"Azerbaijan": {
		"image": "res://Flag Images/Azerbaijan.png",
		"flag_colors": "White, Blue, Red, Green",
		"size": "82,658 km²",
		"population": "10 million",
		"capital": "Baku"
	},
	"Bahamas": {
		"image": "res://Flag Images/Bahamas.png",
		"flag_colors": "Black, Blue, Yellow",
		"size": "10,010 km²",
		"population": "403 thousand",
		"capital": "Nassau"
	},
	"Bahrain": {
		"image": "res://Flag Images/.png",
		"flag_colors": "White, Red",
		"size": "760 km²",
		"population": "1 million",
		"capital": "Manama"
	},
	"Bangladesh": {
		"image": "res://Flag Images/Bangladesh.png",
		"flag_colors": "Red, Green",
		"size": "130,170 km²",
		"population": "175 million",
		"capital": "Dhaka"
	},
	"Barbados": {
		"image": "res://Flag Images/Barbados.png",
		"flag_colors": "Black, Blue, Yellow",
		"size": "430 km²",
		"population": "282 thousand",
		"capital": "Bridgetown"
	},
	"Belarus": {
		"image": "res://Flag Images/Belarus.png",
		"flag_colors": "Red, Green, White",
		"size": "202,910 km²",
		"population": "9 million",
		"capital": "Minsk"
	},
	"Belgium": {
		"image": "res://Flag Images/Belgium.png",
		"flag_colors": "Black, Yellow, Red",
		"size": "30,280 km²",
		"population": "11 million",
		"capital": "City of Brussels"
	},
	"Belize": {
		"image": "res://Flag Images/Belize.png",
		"flag_colors": "Red, White, Blue",
		"size": "22,810 km²",
		"population": "422 thousand",
		"capital": "Belmopan"
	},
	"Benin": {
		"image": "res://Flag Images/Benin.png",
		"flag_colors": "Green, Yellow, Red",
		"size": "112,760 km²",
		"population": "14 million",
		"capital": "Porto-Novo"
	},
	"Bhutan": {
		"image": "res://Flag Images/Bhutan.png",
		"flag_colors": "Yellow, Orange, White, Black",
		"size": "38,117 km²",
		"population": "796 thousand",
		"capital": "Thimphu"
	},
	"Bolivia": {
		"image": "res://Flag Images/Bolivia.png",
		"flag_colors": "Red, Yellow, Green",
		"size": "1,083,300 km²",
		"population": "12 million",
		"capital": "Sucre"
	},
	"Bosnia and Herzegovina": {
		"image": "res://Flag Images/Bosnia_and_Herzegovina.png",
		"flag_colors": "Blue, Yellow, White",
		"size": "51,000	 km²",
		"population": "3 million",
		"capital": "Sarajevo"
	},
	"Botswana": {
		"image": "res://Flag Images/Botswana.png",
		"flag_colors": "Blue, Black, White",
		"size": "566,730 km²",
		"population": "2 million",
		"capital": "Gaborone"
	},
	"BRAZIL": {
		"image": "res://Flag Images/brazil.png",
		"flag_colors": "Green, Yellow, Blue, White",
		"size": "8,515,767 km²",
		"population": "214 million",
		"capital": "Brasília"
	},
	"Brunei": {
		"image": "res://Flag Images/Brunei.png",
		"flag_colors": "Red, Yellow, White, Black",
		"size": "5,270 km²",
		"population": "466 thousand",
		"capital": "Bandar Seri Begawan"
	},
	"Bulgaria": {
		"image": "res://Flag Images/Bulgaria.png",
		"flag_colors": "White, Green, Red",
		"size": "108,560 km²",
		"population": "6 million",
		"capital": "Sofia"
	},
	"Burkina Faso": {
		"image": "res://Flag Images/Burkina_Faso.png",
		"flag_colors": "Yellow, Red, Green",
		"size": "273,600 km²",
		"population": "24 million",
		"capital": "Ouagadougou"
	},
	"Burundi": {
		"image": "res://Flag Images/Burundi.png",
		"flag_colors": "Red, Green, White",
		"size": "25,680 km²",
		"population": "14 million",
		"capital": "Gitega"
	},
	"Cabo Verde": {
		"image": "res://Flag Images/Cape_Verde.png",
		"flag_colors": "Yellow, Blue, White, Red",
		"size": "4,030 km²",
		"population": "527 thousand",
		"capital": "Praia"
	},
	"Cambodia": {
		"image": "res://Flag Images/Cambodia.png",
		"flag_colors": "Blue, Red, White, Black",
		"size": "176,520 km²",
		"population": "17 million",
		"capital": "Phnom Penh"
	},
	"Cameroon": {
		"image": "res://Flag Images/Cameroon.png",
		"flag_colors": "Yellow, Green, Red",
		"size": "472,710 km²",
		"population": "29 million",
		"capital": "Yaoundé"
	},
	"CANADA": {
		"image": "res://Flag Images/canada.png",
		"flag_colors": "Red, White",
		"size": "9,984,670 km²",
		"population": "41 million",
		"capital": "Ottawa"
	},
	"Central African Republic": {
		"image": "res://Flag Images/Central_African_Republic.png",
		"flag_colors": "Red, Yellow, Blue, White, Green",
		"size": "622,980 km²",
		"population": "5 million",
		"capital": "Bangui"
	},
	"Chad": {
		"image": "res://Flag Images/Chad.png",
		"flag_colors": "Blue, Yellow, Red",
		"size": "1,259,200 km²",
		"population": "21 million",
		"capital": "N'Djamena"
	},
	"Chile": {
		"image": "res://Flag Images/Chile.png",
		"flag_colors": "White, Blue, Red",
		"size": "743,532 km²",
		"population": "20 million",
		"capital": "Santiago"
	},
	"China": {
		"image": "res://Flag Images/china.png",
		"flag_colors": "Red, Yellow",
		"size": "9,596,961 km²",
		"population": "1.4 billion",
		"capital": "Beijing"
	},
	"Colombia": {
		"image": "res://Flag Images/Colombia.png",
		"flag_colors": "Yellow, Blue, Red",
		"size": "1,109,500 km²",
		"population": "53 million",
		"capital": "Bogotá"
	},
	"Comoros": {
		"image": "res://Flag Images/Comoros.png",
		"flag_colors": "Green, White, Yellow, Blue, Red",
		"size": "1,861 km²",
		"population": "882 thousand",
		"capital": "Moroni"
	},
	"Republic of Congo": {
		"image": "res://Flag Images/Republic_of_the_Congo.png",
		"flag_colors": "Green, Yellow, Red",
		"size": "341,500 km²",
		"population": "6 million",
		"capital": "Brazzaville"
	},
	"Costa Rica": {
		"image": "res://Flag Images/Costa_Rica.png",
		"flag_colors": "Red, White, Blue",
		"size": "51,060 km²",
		"population": "5 million",
		"capital": "San José"
	},
	"Côte d'Ivoire": {
		"image": "res://Flag Images/Côte_d'Ivoire.png",
		"flag_colors": "Orange, White, Green",
		"size": "318,000 km²",
		"population": "32 million",
		"capital": "Yamoussoukro"
	},
	"Croatia": {
		"image": "res://Flag Images/Croatia.png",
		"flag_colors": "Red, White, Blue",
		"size": "55,960 km²",
		"population": "3,848,160 million",
		"capital": "Zagreb"
	},
	"Cuba": {
		"image": "res://Flag Images/Cuba.png",
		"flag_colors": "White, Red, Blue",
		"size": "106,440 km²",
		"population": "10 million",
		"capital": "Havana"
	},
	"Cyprus": {
		"image": "res://Flag Images/Cyprus.png",
		"flag_colors": "Orange, White, Green",
		"size": "9,240 km²",
		"population": "1 million",
		"capital": "Nicosia"
	},
	"Czech Republic": {
		"image": "res://Flag Images/Czech_Republic.png",
		"flag_colors": "Blue, White, Red",
		"size": "77,240 km²",
		"population": "10 million",
		"capital": "Prague"
	},
	"Democratic Republic of the Congo": {
		"image": "res://Flag Images/Democratic_Republic_of_the_Congo.png",
		"flag_colors": "Yellow, Blue, Red",
		"size": "2,267,050 km²",
		"population": "112 million",
		"capital": "Kinshasa"
	},
	"Denmark": {
		"image": "res://Flag Images/Denmark.png",
		"flag_colors": "Red, White",
		"size": "42,430 km²",
		"population": "6 million",
		"capital": "Copenhagen"
	},
	"Djibouti": {
		"image": "res://Flag Images/Djibouti.png",
		"flag_colors": "Red, White, Blue, Green",
		"size": "23,180 km²",
		"population": "1 million",
		"capital": "Djibouti City"
	},
	"Dominica": {
		"image": "res://Flag Images/Dominica.png",
		"flag_colors": "Red, Green, Yellow, Black, White",
		"size": "750 km²",
		"population": "65 thousand",
		"capital": "Roseau"
	},
	"Dominican Republic": {
		"image": "res://Flag Images/Dominican_Republic.png",
		"flag_colors": "White, Red, Blue",
		"size": "48,320 km²",
		"population": "11 million",
		"capital": "Santo Domingo"
	},
	"Ecuador": {
		"image": "res://Flag Images/Ecuador.png",
		"flag_colors": "Yellow, Blue, Red",
		"size": "248,360 km²",
		"population": "18 million",
		"capital": "Quito"
	},
	"Egypt": {
		"image": "res://Flag Images/Egypt.png",
		"flag_colors": "Yellow, Red, White, Black",
		"size": "995,450 km²",
		"population": "118 million",
		"capital": "Cairo"
	},
	"El Salvador": {
		"image": "res://Flag Images/El_Salvador.png",
		"flag_colors": "White, Blue",
		"size": "20,720 km²",
		"population": "6 million",
		"capital": "San Salvador"
	},
	"Equatorial Guinea": {
		"image": "res://Flag Images/Equatorial_Guinea.png",
		"flag_colors": "Blue, Green, White, Red",
		"size": "28,050 km²",
		"population": "2 million",
		"capital": "Malabo"
	},
	"Eritrea": {
		"image": "res://Flag Images/Eritrea.png",
		"flag_colors": "Yellow, Red, Green, Blue",
		"size": "101,000 km²",
		"population": "3 million",
		"capital": "Asmara"
	},
	"Estonia": {
		"image": "res://Flag Images/Estonia.png",
		"flag_colors": "Blue, Black, White",
		"size": "42,390 km²",
		"population": "1 million",
		"capital": "Tallinn"
	},
	"Eswatini": {
		"image": "res://Flag Images/Eswatini.png",
		"flag_colors": "Black, White, Red, Yellow, Blue",
		"size": "17,200 km²",
		"population": "1 million",
		"capital": "Mbabane"
	},
	"Ethiopia": {
		"image": "res://Flag Images/Ethiopia.png",
		"flag_colors": "Yellow, Blue, Green, Red",
		"size": "1,000,000 km²",
		"population": "135 million",
		"capital": "Addis Ababa"
	},
	"Fiji": {
		"image": "res://Flag Images/Fiji.png",
		"flag_colors": "Blue, Red, White, Yellow, Green",
		"size": "18,270 km²",
		"population": "933 thousand",
		"capital": "Suva"
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
	"Gabon": {
		"image": "res://Flag Images/Gabon.png",
		"flag_colors": "Green, Yellow, Blue",
		"size": "257,670 km²",
		"population": "2 million",
		"capital": "Libreville"
	},
	"Gambia": {
		"image": "res://Flag Images/Gambia.png",
		"flag_colors": "Blue, White, Red, Green",
		"size": "10,120 km²",
		"population": "2 million",
		"capital": "Banjul"
	},
	"Georgia": {
		"image": "res://Flag Images/Georgia.png",
		"flag_colors": "Red, White",
		"size": "69,490 km²",
		"population": "3 million",
		"capital": "Tbilisi"
	},
	"GERMANY": {
		"image": "res://Flag Images/germany.png",
		"flag_colors": "Red, Black, Yellow",
		"size": "357,596 km²",
		"population": "83 million",
		"capital": "Berlin"
	},
	"Ghana": {
		"image": "res://Flag Images/Ghana.png",
		"flag_colors": "Black, Red, Yellow, Green",
		"size": "227,540 km²",
		"population": "35 million",
		"capital": "Accra"
	},
	"Greece": {
		"image": "res://Flag Images/Greece.png",
		"flag_colors": "Blue, White",
		"size": "128,900 km²",
		"population": "9 million",
		"capital": "Athens"
	},
	"Grenada": {
		"image": "res://Flag Images/Grenada.png",
		"flag_colors": "Yellow, Red, Green",
		"size": "340 km²",
		"population": "117 thousand",
		"capital": "St. George's"
	},
	"Guatemala": {
		"image": "res://Flag Images/Guatemala.png",
		"flag_colors": "Blue, White",
		"size": "107,160 km²",
		"population": "18 million",
		"capital": "Guatemala City"
	},
	"Guinea": {
		"image": "res://Flag Images/Guinea.png",
		"flag_colors": "Red, Yellow, Green",
		"size": "245,720 km²",
		"population": "15 million",
		"capital": "Conakry"
	},
	"Guinea-Bissau": {
		"image": "res://Flag Images/Guinea-Bissau.png",
		"flag_colors": "",
		"size": "28,120 km²",
		"population": "2 million",
		"capital": "Bissau"
	},
	"Guyana": {
		"image": "res://Flag Images/Guyana.png",
		"flag_colors": "Red, Black, Yellow, White, Green",
		"size": "196,850 km²",
		"population": "835 thousand",
		"capital": "Georgetown"
	},
	"Haiti": {
		"image": "res://Flag Images/Haiti.png",
		"flag_colors": "Blue, Red",
		"size": "27,560 km²",
		"population": "11 million",
		"capital": "Port-au-Prince"
	},
	"Honduras": {
		"image": "res://Flag Images/Honduras.png",
		"flag_colors": "Blue, White",
		"size": "111,890 km²",
		"population": "11 million",
		"capital": "Tegucigalpa"
	},
	"Hungary": {
		"image": "res://Flag Images/Hungary.png",
		"flag_colors": "Red, White, Green",
		"size": "90,530 km²",
		"population": "9 million",
		"capital": "Budapest"
	},
	"Iceland": {
		"image": "res://Flag Images/Iceland.png",
		"flag_colors": "Red, White, Blue",
		"size": "100,250 km²",
		"population": "398 thousand",
		"capital": "Reykjavík"
	},
	"INDIA": {
		"image": "res://Flag Images/india.png",
		"flag_colors": "Orange, White, Green, Blue",
		"size": "3,297,263 km²",
		"population": "1.42 billion",
		"capital": "New Delhi"
	},
	"Indonesia": {
		"image": "res://Flag Images/Indonesia.png",
		"flag_colors": "Red, White",
		"size": "1,811,570 km²",
		"population": "285 million",
		"capital": "Jakarta"
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
