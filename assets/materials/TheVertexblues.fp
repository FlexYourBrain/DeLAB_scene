#version 140

uniform sampler2D tex0;
uniform fs_uniforms
{
    vec4 var_light;
};

in vec4 var_position;
in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    vec2 uv0 = var_texcoord0;
    // Pre-multiply alpha since all runtime textures already are
    vec4 tex = texture(tex0, var_texcoord0.xy);
    vec3 dabluez = vec3(tex.y+uv0.x-0.5,tex.y+uv0.y-0.6,tex.b+0.7)*0.5;
    color_out = vec4(dabluez,1.0);
}

