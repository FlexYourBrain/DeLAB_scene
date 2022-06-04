varying highp vec4 var_position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D tex0;
uniform mediump vec4 colorMe;

void main()
{
    vec4 tex = texture2D(tex0, var_texcoord0.xy);
    vec4 colorIN = vec4(colorMe);

    gl_FragColor = vec4((tex.rgb)+(colorIN.rgb)*(1.0-tex.a),1.0);
}

