Shader "MyShader/Unlit/UVTile"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Scale ("UVScale", Range(2,50)) = 10
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            float _Scale;
           
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            fixed checker(float2 uv){
                float2 repeatUV = uv*_Scale;
                float2 c = floor(repeatUV) / 2;
                float checker = frac(c.x + c.y)*2;
                return checker;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                fixed col=checker(i.uv);
                return col;
            }
            ENDCG
        }
    }
}
