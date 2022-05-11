#version 330

uniform vec4 Color;

//out vec4 FragColor;

void main()
{
    gl_FragColor = Color;//vec4(1.0, 1.0, 1.0, 1.0);
}