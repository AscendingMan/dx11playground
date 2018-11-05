struct POut
{
	float4 position : SV_Position;
	float2 texcoord : TEXCOORD0;
};
//
struct Pixel
{
	float4 color : SV_Target;
};
//
//Texture2D txDiffuse : register(t0);
//SamplerState samLinear : register(s0);
//
//Pixel main(Interpolants In)
//{
//	Pixel Out;
//	Out.color = txDiffuse.Sample(samLinear, In.texcoord);
//	return Out;
//}


//struct POut
//{
//	float4 position : SV_Position;
//	float4 color : COLOR;
//};

Pixel main(POut In)
{
	Pixel Out;
	//Out.color = In.color;
	Out.color = (1.0, 1.0, 1.0, 1.0);
	return Out;
}