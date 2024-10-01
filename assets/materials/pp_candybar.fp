#version 140

uniform sampler2D pp_screen;

in vec4 var_position;
in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    vec4 tex = texture(pp_screen, var_texcoord0.xy);

    float candybar= (tex.r*tex.g-tex.b / 5.2);
    tex.rgb = vec3(0.1+candybar,0.06+candybar,0.04+candybar);
    
    color_out = vec4(tex.rgb,1.0);
}

