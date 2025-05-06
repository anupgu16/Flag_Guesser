shader_type canvas_item;
uniform sampler2D existing_screen_texture: hint_screen_texture, filter_linear_mipmap;
uniform float freq = 60;

void fragment() {
	vec2 new_uv = SCREEN_UV;
	new_uv.y += sin(new_uv.x * freq + TIME) * 0.1;
	vec3 new_colors = textureLod(existing_screen_texture, new_uv, 0.0).rgb;
	COLOR.rgb = new_colors;

}
