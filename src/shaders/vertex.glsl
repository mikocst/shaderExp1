//uniforms affect all vertices
uniform float uTime;

varying vec3 vPosition; 
varying vec3 vNormal;
varying vec2 vUv;

void main() {

    vPosition = position;
    vNormal = normal;
    vUv = uv;

    vec3 transformed = position;
    transformed.x += cos(position.y + uTime) * 3.0;
    transformed.y += sin(position.x + uTime) * 1.5;


    gl_Position = projectionMatrix * modelViewMatrix * vec4(transformed, 1.0);
}
