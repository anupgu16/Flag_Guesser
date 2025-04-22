shader_type canvas_item;
render_mode unshaded;

uniform float speed : hint_range(0.0, 2.0, 0.01) = 1.0;
uniform float intensity : hint_range(0.0, 1.0, 0.01) = 0.2;
uniform sampler2D SCREEN_TEXTURE: hint_screen_texture, filter_linear_mipmap;

void fragment() {
    vec2 uv = SCREEN_UV;
    vec3 pixel = texture(SCREEN_TEXTURE, uv).rgb;
    vec2 line = vec2(sin(TIME * speed) * 0.5 + 0.5, uv.y);
    vec3 glitch = texture(SCREEN_TEXTURE, line).rgb * intensity;

    COLOR = vec4(pixel + glitch, 0.3);
}
