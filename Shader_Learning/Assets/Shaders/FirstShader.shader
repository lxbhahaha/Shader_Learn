Shader "MyShader/Unlit/FirstShader"
{
    Properties
    {
        _NewColor ("NewColor",Color) = (1,1,1,1)
        [HDR]_HDRColor ("HDRColor",Color) = (1,1,1,1)
        _MyInt ("MyInt",int) = 0
        _Float ("MyFloat",float) = 1.5
        _RangeFloat("RangeFloat",Range(1,5)) = 2.5
        [PowerSlider(1.3)]_PowerFloat("PowerFloat",Range(1,5)) = 2.5
        [IntRange]_IntRange("IntRange",Range(0,10)) = 5
        [Toggle]_ToggleFloat("ToggleFloat",Range(0,1)) = 1
        [Enum(UnityEngine.Rendering.CullMode)]_EnumMode("EnumMode",Float) = 1
        _Vector("Vector",vector) = (0,0,0,0)
        _Texture2D("Texture2D",2D) = "white" {}
        [NoScaleOffset]_Texture2DnoSO("Texture2DnoSO",2D) = "white" {}
        [Normal]_Normal2D("Normal2D",2D) = "white" {}
        [Header(This is header)]
        _Texture3D("Texture3D",3D) = "" {}
        _Cube("Cube",Cube) = "" {}
    }
    SubShader
    {
        Pass
        {
        }
    }
    Fallback "Diffuse"
}