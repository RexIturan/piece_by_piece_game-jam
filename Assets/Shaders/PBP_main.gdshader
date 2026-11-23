shader_type spatial;

uniform sampler2D albedo_tex : source_color, filter_linear_mipmap;
uniform sampler2D normal_tex : hint_normal, filter_linear_mipmap;
uniform sampler2D ao_tex : hint_default_white, filter_linear_mipmap;

//for uniform chaning parameters in engine
uniform float normal_strength : hint_range(0.0, 2.0) = 1.0;
uniform float ao_light_affect : hint_range(0.0, 1.0) = 0.0;//the higher the value, the less it is affected by the direct light, the more structures it perserves from the art
uniform float roughness_value : hint_range(0.0, 1.0) = 0.7;
uniform float metallic_value : hint_range(0.0, 1.0) = 0.0;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	ALBEDO = texture(albedo_tex, UV).rgb;
	NORMAL_MAP = texture(normal_tex, UV).rgb;
	AO = texture(ao_tex, UV).r;
	AO_LIGHT_AFFECT = ao_light_affect;
	
	ROUGHNESS = roughness_value;
	METALLIC = metallic_value;
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
