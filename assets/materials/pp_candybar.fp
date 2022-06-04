varying highp vec4 var_position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D pp_screen;

void main()
{
    vec4 tex = texture2D(pp_screen, var_texcoord0.xy);

    float candybar= (tex.r*tex.g-tex.b / 5.2);
    tex.rgb = vec3(0.1+candybar,0.06+candybar,0.04+candybar);
    
    gl_FragColor = vec4(tex.rgb,1.0);
}

