//shader is really unoptimised and not made by someone who knows much about shaders,
//but someone who makes stuff that poorly work, if at all.

shader_type canvas_item;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform sampler2D noise_1;
uniform sampler2D noise_2;
uniform sampler2D noise_3;
uniform float strenght = 0.85;
uniform float speed = 5.0;


void fragment() {


	float noiseValue = 0.0;

	float time = (TIME - floor(TIME)) * speed;
	time = time - float(int(time));

	if (time < 0.33){
	noiseValue = texture(noise_1, UV).r;
	}
	else if (time > 0.33 && time < 0.66){
	noiseValue = texture(noise_2, UV).r;
	}
	else{
	noiseValue = texture(noise_3, UV).r;
	}


	// glsl -> godot shader

	vec2 iResolution = 1.0 / SCREEN_PIXEL_SIZE;
	vec4 fragCoord = FRAGCOORD;
	vec2 p = fragCoord.xy / iResolution.x;
	float prop = iResolution.x / iResolution.y;
	vec2 m = vec2(0.5, 0.5 / prop);
	vec2 d = p - m;
	float r = sqrt(dot(d, d));



	vec2 uv;
	uv = p + noiseValue / (100.0 / strenght);
	uv.y *= prop;

	vec3 col = texture(SCREEN_TEXTURE, uv).rgb;

	COLOR = vec4(col, 1.0);
}