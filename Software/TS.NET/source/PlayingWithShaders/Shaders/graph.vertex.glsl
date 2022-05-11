#version 330 core

layout(location = 0) in vec2 InPosition;

uniform int PointCount;
uniform float OffsetX;
uniform float ScaleX;
uniform float OffsetY;
uniform float ScaleY;

void main(void) {
	float dX = 2/PointCount;

	gl_Position = vec4((InPosition.x * ScaleX) + OffsetX, (InPosition.y * ScaleY) + OffsetY, 0, 1.0);
	//gl_PointSize = max(1.0, sprite);
}
