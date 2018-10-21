//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_fRed;
uniform float u_fGreen;
uniform float u_fBlue;
uniform float u_fAlpha;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.rgb = vec3(u_fRed, u_fGreen, u_fBlue);
    gl_FragColor.a *= u_fAlpha;
}
