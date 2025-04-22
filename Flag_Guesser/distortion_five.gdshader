shader_type canvas_item;
render_mode unshaded;

uniform vec4 tint_color : hint_color = vec4(1.0, 0.6, 0.6, 1.0);

void fragment() {
    vec4 screen = texture(SCREEN_TEXTURE, SCREEN_UV);
    COLOR = screen * tint_color;
}