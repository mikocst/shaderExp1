//uniforms affect all vertices
uniform float uTime;

varying vec3 vPosition; 
varying vec3 vNormal;
varying vec2 vUv;

void main() {

    vPosition = position;
    vNormal = normal;
    vUv = uv;

    //Transform -> position, scale, rotation
    //model matrix -> position, scale, rotation of the model
    //view matrix -> position and orientation of camera
    //projection matrix -> projects object onto screen (aspect ratio and perspective ratio)

    //MVP model view projection series (order matters)
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1);
}
