cbuffer cbPerObject
{
    float4x4 WVP;
};

VS_OUTPUT VS(float4 inPos : POSITION, float4 inColor : COLOR)
{
	VS_OUTPUT output;

	output.Pos = mul(inPos, WVP);
	output.Color = inColor;

	return output;
}