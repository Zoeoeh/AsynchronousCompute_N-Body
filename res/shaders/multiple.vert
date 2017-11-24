#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(location = 0) in vec3 inPos;
layout(location = 1) in vec3 inColour;
layout(location = 2) in vec2 inTexCoord;

layout(location = 3) in vec3 instancePos;

layout(location = 0) out vec3 fragColour;
layout(location = 1) out vec2 fragTexCoord;

layout(binding = 0) uniform UniformBufferObject
{
    mat4 model;
    mat4 view;
    mat4 proj;
} ubo;

out gl_PerVertex
{
    vec4 gl_Position;
};

void main()
{
    gl_Position =  ubo.proj * ubo.view * ubo.model * vec4((inPos + instancePos), 1.0);
    fragColour = instancePos;
	fragTexCoord = inTexCoord;
}