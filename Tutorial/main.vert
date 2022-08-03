#version 300 es

// TODO: Define the inputs. The first input
// will be the position and the second will be
// the color.
layout(location = 0) in vec3 position;
layout(location = 1) in vec4 color;

// TODO: Define the outputs. Since the output for the vertex
// position is a built-in variable, we just need to define
// an output for the color. Note that the default interpolation 
// qualifier is smooth, so it is not neccessary to write.
smooth out vec4 vertexColor;

// TODO: Define a uniform mat4 variable for the
// transformation matrix.
uniform mat4 transform;

// //point lighting
// in vec4 a_position;
// in vec4 a_normal;

// uniform vec3 u_lightWorldPosition;

// uniform mat4 u_world;
// uniform mat4 u_worldViewProjection;
// uniform mat4 u_worldInverseTranspose;

// out vec3 v_normal;
// out vec3 v_surfaceToLight;

// Per-vertex transformations 
// should be computed in the vertex shader.
void main() {

    // TODO: Write the position to gl_Position.
    // Remember, we need to use homogenous coordinates.
    // keep using this for bunny. duplicate main.vert for cube and cone shaders one file will do
    // can use the same VAO for cube/cone but should be different from bunnies.
    gl_Position = transform*vec4(position, 1.0f); //all vertices going in will be multiplied by this




    // // point lighting
    // gl_Position = u_worldViewProjection * a_position;

    // v_normal = a_normal * u_worldInverseTranspose;

    // vec3 surfaceWorldPosition = (u_world * a_position).xyz;

    // v_surfaceToLight = u_lightWorldPosition - surfaceWorldPosition;


    //compute a separate matrix for translation, rotation, etc.

    // TODO: Write the color to the output defined earlier.
    vertexColor = color;

}