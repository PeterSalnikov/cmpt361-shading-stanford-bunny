#version 300 es

// TODO: Define the input to the fragment shader
// based on the output from the vertex shader,, assuming
// there are no intermediate shader stages.
in mediump vec4 vertexColor;

// TODO: Define the color output.
out mediump vec4 outputColor;

// precision mediump float;

// out vec3 v_normal;
// out vec3 v_surfaceToLight;

// uniform vec4 u_color;

void main() {
    // TODO: Write the color to the output.
    outputColor = vertexColor;

    // vec3 normal = normalize(v_normal);

    // vec3 surfaceToLightDirection = normalize(v_surfaceToLight);

    // float light = dot(normal, surfaceToLightDirection);

    // gl_FragColor = u_color;

    // gl_FragColor.rgb *= light;
}