Shader "MyShader/Unlit/ColorChange"
{
    Properties
    {
        _Color("Color",Color) = (1,1,1,1)
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            // 指定vert是顶点着色器，frag是片元着色器
            #pragma vertex vert 
            #pragma fragment frag

            // 顶点着色器
            // 表示vertex是从POSITION中取得位置的参数
            // 输出到SV_POSITION
            float4 vert(float4 vertex : POSITION) : SV_POSITION
            {
                vertex = UnityObjectToClipPos(vertex);
                return vertex;
            }

            // 片元着色器
            fixed4 _Color;
            fixed4 frag() : SV_TARGET
            {
                return _Color;
            }
            ENDCG
        }
    }
    Fallback "Diffuse"
}
