
//  ShaderType.h
//  MetalPracticeCW
//  Used toturial as coding reference
#ifndef ShaderType_h
#define ShaderType_h
using namespace metal;

constant half3 luminanceWeighting = half3(0.2125, 0.7154, 0.0721);

struct SingleInputVertexIO
{
    float4 position [[position]];
    float2 textureCoordinate [[user(texturecoord)]];
};



#endif /* ShaderType_h */
