precision mediump float;
#pragma glslify: noise = require(glsl-noise/periodic/3d) 

uniform float time;
uniform vec2 resolution;

void main() {
  vec2 coord = gl_FragCoord.xy * 100.;
  float n =  noise( 
    vec3( coord.x / resolution.x, coord.y / resolution.y, time ),
    vec3(50.) 
  );
  gl_FragColor = vec4( n,n,n, 1. );
}
