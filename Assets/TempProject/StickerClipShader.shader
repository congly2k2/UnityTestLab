Shader "Custom/StickerClipShader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _UVMin ("UV Min", Vector) = (0, 0, 0, 0)
        _UVMax ("UV Max", Vector) = (1, 1, 0, 0)
        _AlphaThreshold ("Alpha Threshold", Range(0, 1)) = 0.1
    }

    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        LOD 200
        Cull Off
        ZWrite On

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float4 _MainTex_TexelSize;
            float2 _UVMin;
            float2 _UVMax;
            float _AlphaThreshold;

            v2f vert(appdata v)
            {
                v2f o;

                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            float4 frag(v2f i) : SV_Target
            {
                float4 texColor = tex2D(_MainTex, i.uv);

                if (i.uv.x < _UVMin.x || i.uv.x > _UVMax.x || i.uv.y < _UVMin.y || i.uv.y > _UVMax.y)
                {
                    discard;
                }

                if (texColor.a < _AlphaThreshold)
                {
                    discard;
                }

                return texColor;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
