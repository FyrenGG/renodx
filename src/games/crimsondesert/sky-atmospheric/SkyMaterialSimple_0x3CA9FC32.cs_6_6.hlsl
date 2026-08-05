// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared spectral and/or Dawn/Dusk helpers required by this shader's owned patch families.
#include "../shared.h"
#include "aurora_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct PostProcessSkyStruct {
  uint _moonTexture;
  uint _milkyWayTexture;
  float _milkyWayRatio;
  float _starRatio;
};

struct BindlessParameters_PostProcessSky {
  PostProcessSkyStruct BindlessParameters_PostProcessSky;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_depth : register(t101, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t21, space36);

RWTexture2D<float4> __3__38__0__1__g_postProcessUAV : register(u0, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b14, space35) {
  float4 _time;
  float4 _timeNoScale;
  uint4 _frameNumber;
  float4 _screenSizeAndInvSize;
  float4 _bufferSizeAndInvSize;
  float4 _hiZUVScaleAndInvScale;
  float4 _resolutionScale;
  float4 _temporalReprojectionParams;
  float4 _viewPos;
  float4 _viewDir;
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
  float4 _temporalAAJitter;
  float4 _temporalAAJitterParams;
  float4 _frustumPlanes[6];
  float4 _frustumPlanesPrev[6];
  float4 _frustumCornerDirs[4];
  float4 _screenPercentage;
  float4 _nearFarProj;
  float4 _renderingOriginPos;
  float4 _renderingOriginPosPrev;
  float4 _lodMaskRenderRate;
  float4 _terrainNormalParams;
  int4 _hiZMapInfo;
  int4 _hiZMapInfoCurrent;
  float4 _treeParams;
  uint4 _clusterSize;
  uint4 _globalLightParams;
  float4 _bevelParams;
  float4 _variableRateShadingParams;
  float4 _cavityParams;
  float4 _customRenderPassSizeInvSize;
  uint4 _impostorParams;
  float4 _clusterDecalSizeAndInvSize;
  uint4 _globalWindParams;
  float4 _windFluidVolumeParams;
  float4 _windFluidTextureParams;
  float4 _raytracingAccelerationStructureOrigin;
  float4 _debugBaseColor;
  float4 _debugNormal;
  float4 _debugMaterial;
  float4 _debugMultiplier;
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
  float4 _debugCursorWorldPos;
  uint4 _debugRenderToggle01;
  uint4 _debugTreeShapeVariation;
  float4 _positionBasedDynamicsParameter;
  float _effectiveMetallicForVelvet;
  float _debugCharacterSnowRate;
  uint _systemRandomSeed;
  uint _skinnedMeshDebugFlag;
  float4 _viewPosShifted;
  float4 _viewPosShiftedPrev;
  float4 _viewTileRelativePos;
  float4 _viewTileRelativePosPrev;
  int2 _viewTileIndex;
  int2 _viewTileIndexPrev;
  float4 _worldVolume;
  float3 _diffViewPosAccurate;
  uint _isPhotosensitiveMode_isAllolwBlood;
  float _earthRadius;
  float3 _sceneConstantDummy;
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b42, space35) {
  float _sunLightIntensity : packoffset(c000.x);
  float _sunLightPreset : packoffset(c000.y);
  float _sunSizeAngle : packoffset(c000.z);
  float _sunSizeAngleCosine : packoffset(c000.w);
  float _sunDirY : packoffset(c001.x);
  float _moonLightIntensity : packoffset(c001.y);
  float _moonLightPreset : packoffset(c001.z);
  float _moonSizeAngle : packoffset(c001.w);
  float _moonSizeAngleCosine : packoffset(c002.x);
  float _moonDirY : packoffset(c002.y);
  float _earthAxisTilt : packoffset(c002.z);
  float _latitude : packoffset(c002.w);
  float _atmosphereSeaBaseline : packoffset(c003.x);
  float _atmosphereThickness : packoffset(c003.y);
  float _rayleighScaledHeight : packoffset(c003.z);
  uint _rayleighScatteringColor : packoffset(c003.w);
  float _mieScaledHeight : packoffset(c004.x);
  float _mieAerosolDensity : packoffset(c004.y);
  float _mieAerosolAbsorption : packoffset(c004.z);
  float _miePhaseConst : packoffset(c004.w);
  float _ozoneRatio : packoffset(c005.x);
  float _directionalLightLuminanceScale : packoffset(c005.y);
  float _distanceScale : packoffset(c005.z);
  float _heightFogDensity : packoffset(c005.w);
  float _heightFogBaseline : packoffset(c006.x);
  float _heightFogFalloff : packoffset(c006.y);
  float _heightFogScale : packoffset(c006.z);
  float _cloudBaseDensity : packoffset(c006.w);
  float _cloudBaseContrast : packoffset(c007.x);
  float _cloudBaseScale : packoffset(c007.y);
  float _cloudAlpha : packoffset(c007.z);
  float _cloudScrollMultiplier : packoffset(c007.w);
  float _cloudScatteringCoefficient : packoffset(c008.x);
  float _cloudPhaseConstFront : packoffset(c008.y);
  float _cloudPhaseConstBack : packoffset(c008.z);
  float _cloudAltitude : packoffset(c008.w);
  float _cloudThickness : packoffset(c009.x);
  float _cloudVisibleRange : packoffset(c009.y);
  float _cloudNear : packoffset(c009.z);
  float _cloudFadeRange : packoffset(c009.w);
  float _cloudDetailRatio : packoffset(c010.x);
  float _cloudDetailScale : packoffset(c010.y);
  float _cloudMultiRatio : packoffset(c010.z);
  float _cloudBeerPowderRatio : packoffset(c010.w);
  float _cloudCirrusAltitude : packoffset(c011.x);
  float _cloudCirrusDensity : packoffset(c011.y);
  float _cloudCirrusScale : packoffset(c011.z);
  float _cloudCirrusWeightR : packoffset(c011.w);
  float _cloudCirrusWeightG : packoffset(c012.x);
  float _cloudCirrusWeightB : packoffset(c012.y);
  float _cloudFlow : packoffset(c012.z);
  float _cloudSeed : packoffset(c012.w);
  float4 _volumeFogScatterColor : packoffset(c013.x);
  float4 _mieScatterColor : packoffset(c014.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _postProcessParams : packoffset(c000.x);
  float4 _postProcessParams1 : packoffset(c001.x);
  float4 _toneMapParams0 : packoffset(c002.x);
  float4 _toneMapParams1 : packoffset(c003.x);
  float4 _colorGradingParams : packoffset(c004.x);
  float4 _colorCorrectionParams : packoffset(c005.x);
  float4 _localToneMappingParams : packoffset(c006.x);
  float4 _etcParams : packoffset(c007.x);
  float4 _userImageAdjust : packoffset(c008.x);
  float4 _slopeParams : packoffset(c009.x);
  float4 _offsetParams : packoffset(c010.x);
  float4 _powerParams : packoffset(c011.x);
  int _nightToneParm : packoffset(c012.x);
  int3 _padding : packoffset(c012.y);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

typedef BindlessParameters_PostProcessSky BindlessParameters_PostProcessSky_t;
ConstantBuffer<BindlessParameters_PostProcessSky_t> BindlessParameters_PostProcessSky[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float _31;
  float _32;
  float _33;
  float _37;
  float _38;
  float _39;
  float _40;
  float _41;
  float _42;
  float _43;
  float _44;
  float _51;
  float _58;
  float _70;
  float _79;
  float _88;
  float _97;
  float _99;
  float _100;
  float _101;
  float _102;
  float _106;
  float _112;
  float _114;
  bool _115;
  bool _116;
  bool _117;
  bool _118;
  int _121;
  int _129;
  float4 _157;
  int _163;
  float _171;
  float _172;
  float _173;
  float _174;
  if ((((__3__36__0__0__g_depth.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0))).x) < 1e-07f) || ((!(((__3__36__0__0__g_depth.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0))).x) < 1e-07f)) && (((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 127) == 10))) {
    _31 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
    _32 = sin(_31);
    _33 = cos(_31);
    _37 = (_time.w * 0.2617994f) + -3.1415927f;
    _38 = sin(_37);
    _39 = cos(_37);
    _40 = 1.0f - _39;
    _41 = _40 * _32;
    _42 = _40 * _33;
    _43 = _38 * _32;
    _44 = _38 * _33;
    _51 = (((((float)((uint)(SV_DispatchThreadID.x))) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
    _58 = ((1.0f - (_bufferSizeAndInvSize.w * (((float)((uint)(SV_DispatchThreadID.y))) + 0.5f))) * 2.0f) + -1.0f;
    _70 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _58, ((_invViewProjRelative[3].x) * _51));
    _79 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _58, ((_invViewProjRelative[0].x) * _51))) / _70;
    _88 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _58, ((_invViewProjRelative[1].x) * _51))) / _70;
    _97 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _58, ((_invViewProjRelative[2].x) * _51))) / _70;
    _99 = rsqrt(dot(float3(_79, _88, _97), float3(_79, _88, _97)));  // [sem: invLength]
    _100 = _99 * _79;
    _101 = _99 * _88;
    _102 = _99 * _97;
    _106 = mad((-0.0f - _43), _102, mad(_44, _101, (_100 * _39)));
    _112 = mad(((_42 * _33) + _39), _102, mad((_41 * _33), _101, (_100 * _43)));
    _114 = atan(_112 / _106);
    _115 = (_106 < 0.0f);
    _116 = (_106 == 0.0f);
    _117 = (_112 >= 0.0f);
    _118 = (_112 < 0.0f);
    _121 = WaveReadLaneFirst(_materialIndex);
    _129 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayTexture);
    _157 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_116 && _117), 0.75f, select((_116 && _118), 0.25f, ((select((_115 && _118), (_114 + -3.1415927f), select((_115 && _117), (_114 + 3.1415927f), _114)) * 0.15915494f) + 0.5f))), (acos(mad((_42 * _32), _102, mad(((_41 * _32) + _39), _101, (-0.0f - (_44 * _100))))) * 0.31830987f)), 0.0f);
    _163 = WaveReadLaneFirst(_materialIndex);
    _171 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_163 < (uint)170000), _163, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayRatio);
    // RenoDX: >>> [Patch: MilkyWayLightIntensity] [Version: 1.16.00]
    // Description: Scales only the sampled Milky Way texture contribution in the simple sky material used
    //              by sky/environment probe paths. The vanilla shader multiplies the Milky Way texture by
    //              the material-authored ratio (_171) with no user control, so the night sky's galactic
    //              band cannot be brightened or removed independently of stars, moon, aurora, or
    //              atmospheric scattering. This block folds a user scalar into that same ratio before it
    //              reaches the three colour channels. The bound setting is normalised by 0.01 so its
    //              default resolves to 1.0 exactly (100.f * 0.01f is exactly 1.0f in binary32), but the
    //              default is still not bit-exact against vanilla: the scale is applied as a two-step
    //              multiply, ratio * intensity then * 0.01f, and float multiplication is not
    //              associative, so the rounding can land one ULP away from the single native product.
    //              The difference is far below visible threshold. The max()
    //              guards against a negative ratio producing negative radiance. Aurora and other
    //              night-sky lighting additions remain on their own separate controls. The three
    //              channel assignments below are the native expressions with the scaled ratio routed
    //              in place of the native ratio.
    float _rndx_milkyWayRatio = _171 * max(MILKY_WAY_LIGHT_INTENSITY, 0.0f) * 0.01f;
    _172 = _rndx_milkyWayRatio * _157.x;
    _173 = _rndx_milkyWayRatio * _157.y;
    _174 = _rndx_milkyWayRatio * _157.z;
    // RenoDX: <<< [Patch: MilkyWayLightIntensity]
    // RenoDX: >>> [Patch: AuroraProbeLighting] [Version: 1.16.00]
    // Description: Adds a dampened aurora contribution to the simple sky material used by environment
    //              probe paths. The visible aurora is injected by a separate patch in the main sky
    //              shaders, but the probe path here only receives the Milky Way term, so at night the
    //              indirect lighting, metals, and specular reflections carry no trace of an aurora that is
    //              plainly visible in the sky - reflections and lit surfaces look mismatched. This block
    //              evaluates the same aurora function along the probe's world-space view direction
    //              (_111/_112/_113), attenuates it by the atmospheric transmittance along that same axis
    //              so grazing/near-horizon directions do not over-contribute, clamps it to a sane range,
    //              applies the shared brightness dampening, and scales it by the probe-specific GI energy
    //              factor before adding it into the three colour channels. Preserving the view-axis
    //              transmittance is what keeps terrain and reflections from becoming over-bright or
    //              green-shifted. The whole block is gated on AURORA_BOREALIS_ENABLED, which is 0 unless
    //              the aurora feature is explicitly turned on, so the default path reproduces the vanilla
    //              result exactly.
    [branch]
    if (AURORA_BOREALIS_ENABLED) {
      float nightGate = ComputeNightGate(_sunDirection.y);
      float3 aurora = ComputeAurora(
        float3(_100, _101, _102), _time.x, nightGate, _frameNumber.x,
        uint2(SV_DispatchThreadID.x, SV_DispatchThreadID.y), _ssaoRandomDirection
      );
      float transmittance = AuroraAtmosphereTransmittance(_102, _rayleighScaledHeight, _earthRadius);
      aurora = clamp(aurora, 0.f, 10.f) * transmittance;
      aurora *= AuroraBrightnessDampening(AE_DYNAMISM_HIGH);

      // Modulation for sky probe
      aurora *= AURORA_GI_ENERGY;
      _172 += aurora.r;
      _173 += aurora.g;
      _174 += aurora.b;
    }
    // RenoDX: <<< [Patch: AuroraProbeLighting]
    __3__38__0__1__g_postProcessUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4((((_172 * 0.61312f) + (_173 * 0.33951f)) + (_174 * 0.04737f)), (((_172 * 0.0702f) + (_173 * 0.91636f)) + (_174 * 0.01345f)), (((_172 * 0.02062f) + (_173 * 0.10958f)) + (_174 * 0.8698f)), _postProcessParams.x);
  } else {
  }
}
