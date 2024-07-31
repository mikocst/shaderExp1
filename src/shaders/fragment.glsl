uniform float uTime;
uniform float uRadius;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec2 vUv;


//signed distance fields
// float drawCircle(vec2 position, vec2 center, float radius) {
//     return step(radius, distance(position, center));
// }

// float sdBox( in vec2 p, in vec2 b ) {
//     vec2 d = abs(p) - b;
//     return length(max(d,0.0)) + min(max(d.x, d.y), 0.0);
// }

void main() {
   vec3 color = vec3(0, 1, 1);
//    color.xy = vec2(1.0,0.0); swizzle mask
    
    vec2 uv = vUv;
    uv -= vec2(0.5);
    uv *= 2.0;

    //vec3(step(uRadius, length(uv)))
    //fract(vUv.x * 10.0)
    //step(0.5. mod(vUv.x * 10.0 * 3.0))
    //mix(0.0, 0.5, vUv.x)

    //dot
    // vec3 vecA = vec3(1.0);
    // vec3 vecB = vec3(0.5);
    // float dotProd = dot(vecA, vecB);

    //Picture 2 of distance between 2 points projecting on vector from origin to camera
    //normalize just gives us the direction and sets the length of the vector to 1
    // vec3 viewDirection = normalize(cameraPosition - vPosition);
    // float fresnel = dot(viewDirection, vNormal);

    //line
    //vec3(1.0 - abs(vUv.x - 0.5))

    //circle
    //vec3(drawCircle(vUv, vec2(0.5), uRadius))

   gl_FragColor = vec4(vec3(sdBox(vUv - 0.5, vec2(0.25))),1);
}