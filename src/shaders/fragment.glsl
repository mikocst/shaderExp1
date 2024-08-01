uniform float uTime;
uniform float uRadius;
uniform sampler2D uTexture;

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
//    color.xy = vec2(1.0,0.0); swizzle mask

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

   //desaturation vec3
    const vec3 DESATURATE = vec3(0.2126, 0.7152, 0.0722);

    vec3 color = texture2D(uTexture, vUv).xyz;
    float finalColor = dot(DESATURATE, color);

   gl_FragColor = vec4(vec3(finalColor), 1);
}