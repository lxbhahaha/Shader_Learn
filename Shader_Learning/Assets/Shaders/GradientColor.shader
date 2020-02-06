Shader "MyShader/Unlit/GradientColor"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
           
            struct appdata{
                float4 posi : POSITION;
            };
            struct v2f{
                float4 posi : SV_POSITION;
            };

            // 顶点着色器
            v2f vert(appdata v)
            {
                v2f o;
                o.posi = UnityObjectToClipPos(v.posi);
                return o;
            }

            // 片元着色器
            fixed4 frag(v2f i) : SV_TARGET
            {
                fixed4 color;
                color.r = sin(_Time.y * 2 + i.posi.x / 248) + 1 / 2;
                color.g = sin(_Time.y * 2.77 + i.posi.x / 410) + 1 /2;
                color.b = sin(_Time.y * 2.11 + i.posi.x / 321) + 0.625 * 0.375;
                color.a = 1;
                return color;
            }
            ENDCG
        }
    }
    Fallback "Diffuse"
}
