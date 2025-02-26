extends Control

const password = "123"

@onready var input = $VBoxContainer/MarginContainer/GridContainer2/Attempt_1

# Called when the node enters the scene tree for the first time.
func press_key(digit):
	if len(input.text) <= 56:
		input.text += str(digit)


func _on_q_key_pressed():
	press_key("Q")

func _on_w_key_pressed():
	press_key("W")

func _on_e_key_pressed():
	press_key("E")

func _on_r_key_pressed():
	press_key("R")

func _on_t_key_pressed():
	press_key("T")

func _on_y_key_pressed():
	press_key("Y")

func _on_u_key_pressed():
	press_key("U")

func _on_i_key_pressed():
	press_key("I")

func _on_o_key_pressed():
	press_key("O")

func _on_p_key_pressed():
	press_key("P")

func _on_a_key_pressed():
	press_key("A")

func _on_s_key_pressed():
	press_key("S")

func _on_d_key_pressed():
	press_key("D")

func _on_f_key_pressed():
	press_key("F")

func _on_g_key_pressed():
	press_key("G")

func _on_h_key_pressed():
	press_key("H")

func _on_j_key_pressed():
	press_key("J")

func _on_k_key_pressed():
	press_key("K")

func _on_l_key_pressed():
	press_key("L")

func _on_z_key_pressed():
	press_key("Z")

func _on_x_key_pressed():
	press_key("X")

func _on_c_key_pressed():
	press_key("C")

func _on_v_key_pressed():
	press_key("V")

func _on_b_key_pressed():
	press_key("B")

func _on_n_key_pressed():
	press_key("N")

func _on_m_key_pressed():
	press_key("M")

func _on_space_key_pressed():
	press_key(" ")
