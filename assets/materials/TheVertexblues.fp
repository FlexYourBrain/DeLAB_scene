varying highp vec4 var_position;
varying mediump vec3 var_normal;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D tex0;

void main()
{
    vec2 uv0 = var_texcoord0;
    // Pre-multiply alpha since all runtime textures already are
    vec4 tex = texture2D(tex0, var_texcoord0.xy);
    vec3 dabluez = vec3(tex.y+uv0.x-0.5,tex.y+uv0.y-0.6,tex.b+0.7)*0.5;
    gl_FragColor = vec4(dabluez,1.0);
}

