Shader "Shader Graphs/Sticker_Shader" {
//	Properties {
//		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
//		_Back_Color ("Back_Color", Vector) = (0.9056604,0.8316775,0.6536134,1)
//		_Float ("Float", Range(0, 5)) = 0
//		[HideInInspector] _CastShadows ("_CastShadows", Float) = 0
//		[HideInInspector] _Surface ("_Surface", Float) = 1
//		[HideInInspector] _Blend ("_Blend", Float) = 0
//		[HideInInspector] _AlphaClip ("_AlphaClip", Float) = 0
//		[HideInInspector] _SrcBlend ("_SrcBlend", Float) = 1
//		[HideInInspector] _DstBlend ("_DstBlend", Float) = 0
//		[ToggleUI] [HideInInspector] _ZWrite ("_ZWrite", Float) = 0
//		[HideInInspector] _ZWriteControl ("_ZWriteControl", Float) = 0
//		[HideInInspector] _ZTest ("_ZTest", Float) = 4
//		[HideInInspector] _Cull ("_Cull", Float) = 2
//		[HideInInspector] _AlphaToMask ("_AlphaToMask", Float) = 0
//		[HideInInspector] _QueueOffset ("_QueueOffset", Float) = 0
//		[HideInInspector] _QueueControl ("_QueueControl", Float) = -1
//		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
//		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
//		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
//	}
//	//DummyShaderTextExporter
//	SubShader{
//		Tags { "RenderType"="Opaque" }
//		LOD 200
//
//		Pass
//		{
//			HLSLPROGRAM
//			#pragma vertex vert
//			#pragma fragment frag
//
//			float4x4 unity_MatrixMVP;
//
//			struct Vertex_Stage_Input
//			{
//				float3 pos : POSITION;
//			};
//
//			struct Vertex_Stage_Output
//			{
//				float4 pos : SV_POSITION;
//			};
//
//			Vertex_Stage_Output vert(Vertex_Stage_Input input)
//			{
//				Vertex_Stage_Output output;
//				output.pos = mul(unity_MatrixMVP, float4(input.pos, 1.0));
//				return output;
//			}
//
//			Texture2D<float4> _MainTex;
//			SamplerState _MainTex_sampler;
//
//			struct Fragment_Stage_Input
//			{
//				float2 uv : TEXCOORD0;
//			};
//
//			float4 frag(Fragment_Stage_Input input) : SV_TARGET
//			{
//				return _MainTex.Sample(_MainTex_sampler, float2(input.uv.x, input.uv.y));
//			}
//
//			ENDHLSL
//		}
//	}
//	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}