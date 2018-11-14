//struct Vertex
//{
//	float4 position     : SV_Position;
//	float2 texcoord     : TEXCOORD0;
//};
//
//struct Interpolants
//{
//	float4 position     : SV_Position;
//	float2 texcoord     : TEXCOORD0;
//};
//
//Interpolants main(Vertex In)
//{
//	return In;
//}

cbuffer cbPerObject
{
	float4x4 WVP;
};

struct VOut
{
	float4 position : SV_POSITION;
	float2 texcoord : TEXCOORD0;
};

VOut main(VOut In)
{
	VOut output;

	output.position = mul(In.position, WVP);
	output.texcoord = In.texcoord;
	//output.color = In.color;

	return output;
}
