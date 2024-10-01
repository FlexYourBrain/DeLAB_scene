#version 140

uniform sampler2D tex0;
uniform fs_uniforms
{
    vec4 colorMe;
};

in vec4 var_position;
in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    vec4 tex = texture(tex0, var_texcoord0.xy);
    vec4 colorIN = vec4(colorMe);

    color_out = vec4((tex.rgb)+(colorIN.rgb)*(1.0-tex.a),1.0);
}

