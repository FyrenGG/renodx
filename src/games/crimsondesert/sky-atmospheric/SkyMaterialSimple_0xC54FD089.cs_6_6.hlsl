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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_depth : register(t104, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t21, space36);

RWTexture2D<float4> __3__38__0__1__g_postProcessUAV : register(u0, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b22, space35) {
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

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b45, space35) {
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

struct BindlessParameters_PostProcessSky {
  PostProcessSkyStruct BindlessParameters_PostProcessSky;
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
  float _43;
  float _44;
  float _45;
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _66;
  float _69;
  float _105;
  float _106;
  float _107;
  float _108;
  float _110;
  float _111;
  float _112;
  float _113;
  float _116;
  float _123;
  float _125;
  bool _128;
  bool _129;
  bool _130;
  bool _131;
  int _144;
  int _152;
  float4 _159;
  int _163;
  float _171;
  float _172;
  float _173;
  float _174;
  if (!((!(((__3__36__0__0__g_depth.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0))).x) < 1e-07f)) && (((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 127) != 10))) {
    _43 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
    _44 = sin(_43);
    _45 = cos(_43);
    _49 = (_time.w * 0.2617994f) + -3.1415927f;
    _50 = sin(_49);
    _51 = cos(_49);
    _52 = 1.0f - _51;
    _53 = _52 * _44;
    _54 = _52 * _45;
    _55 = _50 * _44;
    _56 = _50 * _45;
    _66 = (((((float)((uint)(SV_DispatchThreadID.x))) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
    _69 = ((1.0f - ((((float)((uint)(SV_DispatchThreadID.y))) + 0.5f) * _bufferSizeAndInvSize.w)) * 2.0f) + -1.0f;
    _105 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _69, ((_invViewProjRelative[3].x) * _66));
    _106 = ((mad((_invViewProjRelative[0].y), _69, ((_invViewProjRelative[0].x) * _66)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _105;
    _107 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _69, ((_invViewProjRelative[1].x) * _66))) / _105;
    _108 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _69, ((_invViewProjRelative[2].x) * _66))) / _105;
    _110 = rsqrt(dot(float3(_106, _107, _108), float3(_106, _107, _108)));  // [sem: invLength]
    _111 = _110 * _106;
    _112 = _110 * _107;
    _113 = _110 * _108;
    _116 = mad((-0.0f - _55), _113, mad(_56, _112, (_111 * _51)));
    _123 = mad(((_54 * _45) + _51), _113, mad((_53 * _45), _112, (_111 * _55)));
    _125 = atan(_123 / _116);
    _128 = (_116 < 0.0f);
    _129 = (_116 == 0.0f);
    _130 = (_123 >= 0.0f);
    _131 = (_123 < 0.0f);
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayTexture);
    _159 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_152 < (uint)65000), _152, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_129 && _130), 0.75f, select((_129 && _131), 0.25f, ((select((_128 && _131), (_125 + -3.1415927f), select((_128 && _130), (_125 + 3.1415927f), _125)) * 0.15915494f) + 0.5f))), (acos(mad((_54 * _44), _113, mad(((_53 * _44) + _51), _112, (-0.0f - (_56 * _111))))) * 0.31830987f)), 0.0f);
    _163 = WaveReadLaneFirst(_materialIndex);
    _171 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_163 < (uint)170000), _163, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayRatio);
    // RenoDX: >>> [Patch: MilkyWayLightIntensity] [Version: 1.16.00]
    // Description: Scales only the sampled Milky Way texture contribution in the simple sky material used
    //              by sky/environment probe paths. The native shader multiplies the Milky Way texture by
    //              the material-authored ratio with no user control, so the night sky's galactic
    //              band cannot be brightened or removed independently of stars, moon, aurora, or
    //              atmospheric scattering. This block folds a user scalar into that same ratio before it
    //              reaches the three colour channels. The bound setting is normalised by 0.01 so its
    //              default resolves to 1.0 exactly (100.f * 0.01f is exactly 1.0f in binary32), but the
    //              default is still not bit-exact against the native: the scale is applied as a two-step
    //              multiply, ratio * intensity then * 0.01f, and float multiplication is not
    //              associative, so the rounding can land one ULP away from the single native product.
    //              The difference is far below visible threshold. The max()
    //              guards against a negative ratio producing negative radiance. Aurora and other
    //              night-sky lighting additions remain on their own separate controls. The three
    //              channel assignments below are the native expressions with the scaled ratio routed
    //              in place of the native ratio.
    float _rndx_milkyWayRatio = _171 * max(MILKY_WAY_LIGHT_INTENSITY, 0.0f) * 0.01f;
    _172 = _rndx_milkyWayRatio * _159.x;
    _173 = _rndx_milkyWayRatio * _159.y;
    _174 = _rndx_milkyWayRatio * _159.z;
    // RenoDX: <<< [Patch: MilkyWayLightIntensity]
    // RenoDX: >>> [Patch: AuroraProbeLighting] [Version: 1.16.00]
    // Description: Adds a dampened aurora contribution to the simple sky material used by environment
    //              probe paths. The visible aurora is injected by a separate patch in the main sky
    //              shaders, but the probe path here only receives the Milky Way term, so at night the
    //              indirect lighting, metals, and specular reflections carry no trace of an aurora that is
    //              plainly visible in the sky - reflections and lit surfaces look mismatched. This block
    //              evaluates the same aurora function along the probe's normalized world-space view
    //              direction, attenuates it by the atmospheric transmittance along that same axis
    //              so grazing/near-horizon directions do not over-contribute, clamps it to a sane range,
    //              applies the shared brightness dampening, and scales it by the probe-specific GI energy
    //              factor before adding it into the three colour channels. Preserving the view-axis
    //              transmittance is what keeps terrain and reflections from becoming over-bright or
    //              green-shifted. The whole block is gated on AURORA_BOREALIS_ENABLED, which is 0 unless
    //              the aurora feature is explicitly turned on, so the default path reproduces the native
    //              result exactly.
    [branch]
    if (AURORA_BOREALIS_ENABLED) {
      float nightGate = ComputeNightGate(_sunDirection.y);
      float3 aurora = ComputeAurora(
        float3(_111, _112, _113), _time.x, nightGate, _frameNumber.x,
        uint2(SV_DispatchThreadID.x, SV_DispatchThreadID.y), _ssaoRandomDirection
      );
      float transmittance = AuroraAtmosphereTransmittance(_113, _rayleighScaledHeight, _earthRadius);
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
  }
}
