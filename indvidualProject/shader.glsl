// credit: Gayathri Naranath
// butterfly: Lime Butterfly
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;
void main() {
   vec2 st = gl_FragCoord.xy/u_resolution.xy;
   float mask = 1.0;
   mask *= step( 0.3, distance( st.xy, vec2(0.5, 0.4) ) );
   mask *= step( 0.25, distance( st.xy, vec2(0.6, 0.7) ) );
   mask *= step( 0.25, distance( st.xy, vec2(0.4, 0.7) ) );
   colour_out = vec4( st.x, st.y, abs(sin(3.0*u_time)), 1.0 );
   colour_out *= 1.0-mask;
}
