#version 330 core

layout(location = 0) in uint InPosition;

uniform int PointCount;
//uniform float OffsetX;
//uniform float ScaleX;
uniform float OffsetY;
uniform float ScaleY;

void main(void) {
	//float dX = 2/PointCount;

	//gl_Position = vec4(-1 + (InPosition* 0.0078125f), (InPosition + OffsetY) * ScaleY, 0, 1.0);
	gl_Position = vec4(-1 + (gl_VertexID* 0.0000002f), (InPosition * ScaleY) + OffsetY, 0, 1.0);
	//gl_PointSize = max(1.0, sprite);
}
