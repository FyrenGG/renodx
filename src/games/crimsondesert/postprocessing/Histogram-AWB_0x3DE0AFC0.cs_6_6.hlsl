// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct GlareInstanceData {
  float4 _data0;
  float4 _data1;
  float4 _luminance;
  float4 _vertexNormal;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float4> __3__36__0__0__g_sceneColorLightingOnlyForAwb : register(t54, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_vertexNormal : register(t93, space36);

RWStructuredBuffer<uint> __3__39__0__1__g_histogramUAV : register(u9, space39);

RWStructuredBuffer<uint> __3__39__0__1__g_histogram2UAV : register(u10, space39);

RWStructuredBuffer<uint> __3__39__0__1__g_histogramRUAV : register(u11, space39);

RWStructuredBuffer<uint> __3__39__0__1__g_histogramGUAV : register(u12, space39);

RWStructuredBuffer<uint> __3__39__0__1__g_histogramBUAV : register(u13, space39);

RWTexture2D<float3> __3__38__0__1__g_glareSourceUAV : register(u23, space38);

RWTexture2D<float3> __3__38__0__1__g_colorAdatationSourceUAV : register(u24, space38);

RWStructuredBuffer<GlareInstanceData> __3__39__0__1__g_glareInstanceUAV : register(u5, space39);

RWByteAddressBuffer __3__39__0__1__g_glareInstanceCounterUAV : register(u1, space39);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b26, space35) {
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
  float4 _textureSizeAndInvSize : packoffset(c000.x);
  float4 _blurParam : packoffset(c001.x);
  float4 _glareParam : packoffset(c002.x);
  float4 _renderParam : packoffset(c003.x);
  float4 _exposureParam : packoffset(c004.x);
  float4 _histogramParam : packoffset(c005.x);
  float4 _whiteBalance : packoffset(c006.x);
  float4 _glareBlurParam : packoffset(c007.x);
  float4 _preFrameViewPosition : packoffset(c008.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared uint _global_0[256];
groupshared uint _global_1[256];
groupshared uint _global_2[256];
groupshared uint _global_3[256];
groupshared uint _global_4[256];
groupshared uint _global_5;
groupshared uint _global_6;
groupshared uint _global_7;

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float _27;
  float _28;
  float _32;
  float _35;
  float _37;
  float _40;
  float4 _43;
  float _49;
  float _51;
  uint2 _55;
  int _57;
  float _69;
  float _78;
  float _87;
  float _96;
  float _98;
  bool _99;
  int _125;
  int _126;
  bool _127;
  int _128;
  float _246;
  float _258;
  float _377;
  float _378;
  float _379;
  bool _543;
  bool _114;
  int _118;
  float4 _132;
  bool _140;
  bool _142;
  float _143;
  float _147;
  float _151;
  float _155;
  float _157;
  float _158;
  float _159;
  float4 _161;
  float _166;
  float4 _167;
  float _172;
  float4 _173;
  float4 _177;
  float _183;
  float _186;
  float _189;
  float _192;
  float _195;
  float _206;
  float _217;
  float _228;
  bool _247;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _268;
  float _271;
  float _274;
  float _279;
  float _282;
  float _284;
  float _286;
  float _288;
  bool _304;
  bool _306;
  bool _307;
  float _309;
  float _310;
  float _314;
  float _317;
  float _320;
  float _323;
  float _335;
  float _336;
  float _337;
  float _338;
  float _341;
  float _344;
  float _347;
  float _350;
  float _351;
  float _352;
  float _353;
  float _363;
  int _381;
  uint _390;
  uint _392;
  uint _395;
  float _399;
  float _404;
  bool _408;
  float _409;
  float _410;
  float _411;
  float _412;
  float4 _415;
  bool _417;
  float _419;
  bool _421;
  int _424;
  uint _437;
  uint _449;
  bool _450;
  int _451;
  uint _473;
  uint _486;
  uint _499;
  int _503;
  int _506;
  int _511;
  int _515;
  int _519;
  float _521;
  float _524;
  float _526;
  float _532;
  float _550;
  int _564;
  float _578;
  _global_5 = 0;
  _global_6 = 0;
  _global_7 = 0;
  GroupMemoryBarrierWithGroupSync();
  _27 = (float)((uint)(SV_DispatchThreadID.x));
  _28 = (float)((uint)(SV_DispatchThreadID.y));
  _32 = _textureSizeAndInvSize.z * (_27 + 0.5f);
  _35 = _textureSizeAndInvSize.w * (_28 + 0.5f);
  _37 = (_32 * 2.0f) + -1.0f;
  _40 = -0.0f - ((_35 * 2.0f) + -1.0f);
  _43 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_32, _35), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _49 = _bufferSizeAndInvSize.x * _32;
  _51 = _bufferSizeAndInvSize.y * _35;
  _55 = __3__36__0__0__g_stencil.Load(int3(((int)(_49)), ((int)(_51)), 0));  // [sem: _3__36__0__0__g_stencil_load]
  _57 = _55.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _69 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _40, ((_invViewProjRelative[3].x) * _37)));
  _78 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _40, ((_invViewProjRelative[0].x) * _37))) + (_invViewProjRelative[0].w)) / _69;
  _87 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _40, ((_invViewProjRelative[1].x) * _37))) + (_invViewProjRelative[1].w)) / _69;
  _96 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _40, ((_invViewProjRelative[2].x) * _37))) + (_invViewProjRelative[2].w)) / _69;
  _98 = rsqrt(dot(float3(_78, _87, _96), float3(_78, _87, _96)));  // [sem: invLength]
  _99 = (_57 == 0);
  // RenoDX: >>> [Patch: SunBloomExclusion] [Version: 1.16.00]
  // Description: Declares the wider sun-disk test used further down to keep the sun out of the
  //              bloom/glare extraction input. The stock test only covers the sun disk itself
  //              (angle < _sunSizeAngle); the visible corona and near-disk glow extend well beyond
  //              it, so the bloom pyramid still picks the sun up and smears a large halo over the
  //              sky. This flag marks any sky pixel whose angle to the sun direction is within 2.5x
  //              the sun's angular radius, matching the radius the sky material uses for the sun's
  //              own corona falloff. It is only computed here; it is consumed at the glare-source
  //              store.
  bool _sunBloomExclude = false;
  // RenoDX: <<< [Patch: SunBloomExclusion]
  if (_99) {
    _125 = 0;
    _126 = 0;
    _127 = (dot(float3((_98 * _78), (_98 * _87), (_98 * _96)), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) > _sunSizeAngleCosine);
    // RenoDX: >>> [Patch: SunBloomExclusion] [Version: 1.16.00]
    // Description: Evaluates the widened sun-disk test for sky pixels. _sunSizeAngle is the sun's
    //              angular radius in degrees, so it is converted to radians and compared against the
    //              angle between the view ray and the sun direction. The 2.5x multiplier widens the
    //              disk to also cover the corona and near-disk glow, which the stock
    //              _sunSizeAngleCosine test excludes.
    {
      float _sunAngleRadius = _sunSizeAngle * 0.01745329238474369f;
      // The dot product is clamped to acos's valid domain: both operands are only approximately unit
      // length, so rounding can push the product a few ULP past 1.0, and acos outside [-1, 1] returns
      // NaN. Every comparison against NaN is false, so an overshoot would silently report "not the
      // sun" for the pixel pointing most directly at it - exactly the pixel this test exists to
      // exclude. Clamping costs nothing and changes no in-domain result.
      float _sunCosAngle = clamp(dot(float3((_98 * _78), (_98 * _87), (_98 * _96)), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)), -1.0f, 1.0f);
      _sunBloomExclude = (acos(_sunCosAngle) < (_sunAngleRadius * 2.5f));
    }
    // RenoDX: <<< [Patch: SunBloomExclusion]
    _128 = 0;
  } else {
    _114 = (_57 == 28);
    _118 = (int)(uint)((int)(_57 == 56));
    if ((_57 == 26) || _114) {
      _125 = _118;
      _126 = ((int)(uint)(_114));
      _127 = false;
      _128 = 1;
    } else {
      _125 = _118;
      _126 = 0;
      _127 = false;
      _128 = ((int)(uint)((int)(_57 == 27)));
    }
  }
  _132 = __3__36__0__0__g_vertexNormal.Load(int3(((int)((uint)(_49))), ((int)((uint)(_51))), 0));  // [sem: _3__36__0__0__g_vertexNormal_load]
  _140 = (((int)((uint)((_132.w * 3.0f) + 0.5f))) == 3);  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _142 = (_128 != 0);
  _143 = select(_142, 0.5f, select(_140, 1.0f, 0.0f));
  _147 = (saturate(_132.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _151 = (saturate(_132.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _155 = (saturate(_132.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _157 = rsqrt(dot(float3(_147, _151, _155), float3(_147, _151, _155)));  // [sem: invLength]
  _158 = _textureSizeAndInvSize.z * _27;
  _159 = _textureSizeAndInvSize.w * _28;
  _161 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_158, _159), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _166 = _textureSizeAndInvSize.z * (_27 + 1.0f);
  _167 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_166, _159), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _172 = _textureSizeAndInvSize.w * (_28 + 1.0f);
  _173 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_158, _172), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _177 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_166, _172), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _183 = 1.0f / (dot(float3(_161.x, _161.y, _161.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _186 = 1.0f / (dot(float3(_167.x, _167.y, _167.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _189 = 1.0f / (dot(float3(_173.x, _173.y, _173.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _192 = 1.0f / (dot(float3(_177.x, _177.y, _177.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _195 = ((_186 + _183) + _189) + _192;
  _206 = -0.0f - min(0.0f, (-0.0f - (((((_186 * _167.x) + (_183 * _161.x)) + (_189 * _173.x)) + (_192 * _177.x)) / _195)));
  _217 = -0.0f - min(0.0f, (-0.0f - (((((_186 * _167.y) + (_183 * _161.y)) + (_189 * _173.y)) + (_192 * _177.y)) / _195)));
  _228 = -0.0f - min(0.0f, (-0.0f - (((((_186 * _167.z) + (_183 * _161.z)) + (_189 * _173.z)) + (_192 * _177.z)) / _195)));
  // RenoDX: >>> [Patch: GlareSourceFilteredExposure] [Version: 1.16.00]
  // Description: The glare/bloom source intensity is scaled by the auto-exposure value. Vanilla uses
  //              the fast, per-frame exposure slots (_exposure0.y and _exposure2.x), which move
  //              every frame with the metering jitter; because bloom is a highly non-linear function
  //              of that scale, the jitter shows up as visible bloom shimmer and pumping. When the
  //              improved auto-exposure path is enabled RenoDX maintains slow, temporally filtered
  //              copies of both quantities, and these two locals route the glare scaling to the
  //              filtered value with MATCHING UNITS (floored to avoid a divide by zero). With the
  //              improved auto-exposure path disabled they resolve to the untouched vanilla slots.
  //              UNIT CAUTION: the two vanilla slots carry different quantities. _exposure0.y is an
  //              EXPOSURE SCALAR, and its filtered stand-in _exposure4.z (slot 18, low-passed
  //              scalar) has matching units and stays in use below. _exposure2.x is the clamped
  //              histogram ARITHMETIC mean luminance, and it has NO valid filtered stand-in: slot 19
  //              carries the perceptual-mode TRIMMED GEOMETRIC mean, which sits several-fold below
  //              the arithmetic mean in sun-in-frame scenes. Every _exposure2.x consumer in this
  //              shader therefore keeps the untouched vanilla expression; see the glare-instance
  //              threshold below for what substituting the wrong units costs. Do not substitute
  //              here without a low-passed copy of _exposure2.x ITSELF.
  float _glareExposure = (IMPROVED_AUTO_EXPOSURE >= 1) ? max(_exposure4.z, 0.001f) : _exposure0.y;
  float _glareExposure2 = _exposure2.x;
  if (_127) {
    _246 = (max(min(_glareExposure2, 2.0f), 0.5f) * _glareParam.w);
  } else {
    if (_126) {
      _246 = (120.0f / max(0.20000000298023224f, min(_glareExposure, 0.4000000059604645f)));
    } else {
      _246 = 1.0f;
    }
  }
  _247 = (_143 > 0.0f);
  if (_247) {
    _258 = ((_143 * 0.004000000189989805f) * min(_glareExposure, 20.0f));
  } else {
    _258 = (min(_glareExposure, 25.0f) * 0.0010000000474974513f);
  }
  // RenoDX: <<< [Patch: GlareSourceFilteredExposure]
  _261 = _258 * select((_125 != 0), 300.0f, _246);
  _262 = _261 * _206;
  _263 = _261 * _217;
  _264 = _261 * _228;
  _265 = _143 * 48.5203f;
  _268 = log2(_262 + 1.0f) * _265;
  _271 = log2(_263 + 1.0f) * _265;
  _274 = log2(_264 + 1.0f) * _265;
  _279 = select(((_isPhotosensitiveMode_isAllolwBlood & 2) != 0), 0.02f, 1.0f);
  _282 = saturate(dot(float3(_262, _263, _264), float3(0.212671f, 0.71516f, 0.072169f)) * 50.0f);  // [sem: expr_sat]
  _284 = select(_247, (_268 * _268), _262);
  _286 = select(_247, (_271 * _271), _263);
  _288 = select(_247, (_274 * _274), _264);
  // RenoDX: >>> [Patch: SunBloomExclusion] [Version: 1.16.00]
  // Description: Zeroes the glare/bloom extraction source for sky pixels that fall inside the
  //              widened sun disk. The sun is by far the brightest thing in the frame, so feeding it
  //              into the bloom pyramid produces an oversized, low-frequency halo that washes out
  //              the sky and hides cloud detail. Bloom for every other bright source (emissives,
  //              particles, specular highlights, the moon) is untouched because only the sun-disk
  //              mask is applied here. The sun's own appearance - disk, corona and Mie halo - is
  //              produced by the sky material and composited into scene colour, so it is unaffected;
  //              this only removes the sun from the bloom extraction input. The mask is 1.0
  //              (no change) unless the sun improvements feature is enabled.
  float _sunBloomMask = (_sunBloomExclude && SUN_IMPROVEMENTS == 1.f) ? 0.0f : 1.0f;
  __3__38__0__1__g_glareSourceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(((((_282 * (_262 - _284)) + _284) * _279) * _sunBloomMask), (((lerp(_286, _263, _282)) * _279) * _sunBloomMask), (((lerp(_288, _264, _282)) * _279) * _sunBloomMask));
  // RenoDX: <<< [Patch: SunBloomExclusion]
  _304 = (_whiteBalance.w > 0.001f);
  _306 = ((uint)((int)(_57) + (int)(-105)) < (uint)2);
  _307 = _306 || _142;
  _309 = (_43.x + _43.y) + _43.z;
  _310 = _309 * 0.33333334f;
  _314 = 1.5f - (saturate(_309 * 0.00033333333f) * 0.5f);
  _317 = (_314 * (_43.x - _310)) + _310;
  _320 = (_314 * (_43.y - _310)) + _310;
  _323 = (_314 * (_43.z - _310)) + _310;
  if (_307 || _140) {
    // RenoDX: >>> [Patch: GlareSourceFilteredExposure] [Version: 1.16.00]
    // Description: Same exposure-source substitution applied to the colour-adaptation source buffer.
    //              Vanilla scales it by the fast per-frame exposure (_exposure0.y), which carries the
    //              metering jitter into the adaptation input and makes the white-balance/adaptation
    //              result wobble frame to frame. _glareExposure resolves to the slow filtered
    //              exposure when the improved auto-exposure path is enabled and to the untouched
    //              vanilla _exposure0.y otherwise.
    _335 = ((_310 / max((((_317 + _320) + _323) * 0.3333333432674408f), 9.999999747378752e-05f)) * 0.0020000000949949026f) * min(_glareExposure, 20.0f);
    // RenoDX: <<< [Patch: GlareSourceFilteredExposure]
    _336 = _335 * _317;
    _337 = _335 * _320;
    _338 = _335 * _323;
    _341 = log2(_336 + 1.0f) * 24.26015f;
    _344 = log2(_337 + 1.0f) * 24.26015f;
    _347 = log2(_338 + 1.0f) * 24.26015f;
    _350 = saturate(dot(float3(_336, _337, _338), float3(0.212671f, 0.71516f, 0.072169f)) * 50.0f);  // [sem: expr_sat]
    _351 = _341 * _341;
    _352 = _344 * _344;
    _353 = _347 * _347;
    _363 = select(((_isPhotosensitiveMode_isAllolwBlood & 2) != 0), 0.02f, 1.0f) * select(_307, _renderParam.z, _renderParam.w);
    _377 = (_363 * ((_350 * (_336 - _351)) + _351));
    _378 = (_363 * ((_350 * (_337 - _352)) + _352));
    _379 = (_363 * (lerp(_353, _338, _350)));
  } else {
    _377 = 0.0f;
    _378 = 0.0f;
    _379 = 0.0f;
  }
  __3__38__0__1__g_colorAdatationSourceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(_377, _378, _379);
  _381 = (int)min((uint)((int)(SV_GroupIndex)), (uint)(255));
  _global_0[_381] = 0;
  _global_1[_381] = 0;
  if (_304) {
    _global_2[_381] = 0;
    _global_3[_381] = 0;
    _global_4[_381] = 0;
  }
  InterlockedMax(_global_5, (uint)((uint)((int)(uint)(_99))), _390);
  InterlockedMax(_global_6, (uint)((uint)((int)(uint)(_140))), _392);
  InterlockedMax(_global_7, (uint)((uint)((int)(_128) | (int)((int)(uint)(_306)))), _395);
  GroupMemoryBarrierWithGroupSync();
  _399 = max(0.0f, (_viewPos.w + -16.0f));
  _404 = (float)((int)((int)((uint)(_bufferSizeAndInvSize.y * _35))));
  _408 = (!(_404 <= _399)) && (!(_404 >= (_bufferSizeAndInvSize.y - _399)));
  _409 = select(_408, _43.x, 0.0f);
  _410 = select(_408, _43.y, 0.0f);
  _411 = select(_408, _43.z, 0.0f);
  _412 = dot(float3(_409, _410, _411), float3(0.212671f, 0.71516f, 0.072169f));
  // [sem: _3__36__0__0__g_sceneColorLightingOnlyForAwb_sampleLod]
  _415 = __3__36__0__0__g_sceneColorLightingOnlyForAwb.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_32, _35), 0.0f);
  _417 = (_415.w > 0.0f);  // [sem: _3__36__0__0__g_sceneColorLightingOnlyForAwb_sampleLod_derived]
  _419 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_32, _35), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
  _421 = (_419.x < 1e-07f);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _424 = select((_421 || (_419.x == 1.0f)), 1, 4);
  // RenoDX: >>> [Patch: PerceptualAEHistogramMetering] [Version: 1.16.00]
  // Description: Replaces the metering rule that feeds the luminance histogram when the perceptual
  //              auto-exposure mode is selected. Vanilla meters only a horizontal centre strip of the
  //              frame (_408 zeroes everything outside it) and bins Rec.709 luminance with a flat
  //              per-pixel weight. That crop makes exposure lurch whenever bright or dark content
  //              crosses the strip boundary, and Rec.709 luminance under-weights saturated colours
  //              relative to how bright they actually look. This block instead meters the whole
  //              frame, bins a perceptual luminance (Yf) and applies a gaussian centre weight
  //              (sigma 0.25 in normalised screen space, up to 4x the base sample weight) so the
  //              centre of the frame still dominates adaptation without a hard cutoff. _409/_410/
  //              _411 are overwritten with the uncropped scene colour, which also removes the crop
  //              from the glare-instance brightness threshold computed later from the same values.
  //              Only active when the perceptual auto-exposure mode is selected.
  [branch]
  if (IMPROVED_AUTO_EXPOSURE == 2) {
    _409 = _43.x;
    _410 = _43.y;
    _411 = _43.z;
    _412 = renodx::color::yf::from::BT709(float3(_409, _410, _411));
    float _psychov17_du = _32 - 0.5f;
    float _psychov17_dv = _35 - 0.5f;
    float _psychov17_sigma = 0.25f;
    float _psychov17_radius2 = (_psychov17_du * _psychov17_du) + (_psychov17_dv * _psychov17_dv);
    float _psychov17_gaussian = exp((-0.5f * _psychov17_radius2) / (_psychov17_sigma * _psychov17_sigma));
    _424 = max(_424, (int)(round((float)(_424) * _psychov17_gaussian * 4.0f)));
  }
  // RenoDX: <<< [Patch: PerceptualAEHistogramMetering]
  InterlockedAdd(_global_1[((int)min((uint)(((int)((uint)(saturate((_histogramParam.x * log2(dot(float3(_206, _217, _228), float3(0.212671f, 0.71516f, 0.072169f)))) + _histogramParam.y) * 255.0f)))), (uint)(255)))], (uint)((uint)(_424)), _437);
  InterlockedAdd(_global_0[((int)min((uint)(((int)((uint)(saturate((_histogramParam.x * log2(_412)) + _histogramParam.y) * 255.0f)))), (uint)(255)))], (uint)((uint)(_424)), _449);
  _450 = !(_419.x == 1.0f);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _451 = (int)(_57) + (int)(-52);
  if (!(_421 || (!(_304 && (((uint)_451 > (uint)15) && _450))))) {
    // RenoDX: >>> [Patch: AWBNeutralHistogramFallback] [Version: 1.16.00]
    // Description: Keeps the per-channel R/G/B histograms populated when automatic white balance is
    //              switched off. A later pass packs the R/G/B histogram result into a colour
    //              correction stored in _exposure1.z, and the many-lights bounds pass uses that
    //              correction to decide which lights survive. Hero lights and character fill lights
    //              are authored with negative raw channel values that only become positive once the
    //              white-balance matrix is applied, so an all-zero correction silently drops them and
    //              those lights go dark. Writing the neutral luminance bin into all three channels
    //              gives the three histograms an identical distribution, which packs to a neutral
    //              (1,1,1) correction and leaves those lights intact while still disabling any actual
    //              white-balance shift. If hero/fill lights are deliberately disabled as well, the
    //              write is skipped so the histograms stay zero and those lights are excluded as
    //              intended. With automatic white balance enabled the original per-channel path runs
    //              unchanged.
    if (DISABLE_AWB > 0.0f) {
      if (DISABLE_HERO_LIGHTS < 0.5f) {
        InterlockedAdd(_global_2[min((uint)((int)(uint(saturate((log2(_412) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _473);
        InterlockedAdd(_global_3[min((uint)((int)(uint(saturate((log2(_412) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _486);
        InterlockedAdd(_global_4[min((uint)((int)(uint(saturate((log2(_412) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _499);
      }
    } else {
      // Original per-channel white-balance histogram writes, unchanged.
      InterlockedAdd(_global_2[min((uint)((int)(uint(saturate((log2(select(_417, _415.x, _412)) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _473);
      InterlockedAdd(_global_3[min((uint)((int)(uint(saturate((log2(select(_417, _415.y, _412)) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _486);
      InterlockedAdd(_global_4[min((uint)((int)(uint(saturate((log2(select(_417, _415.z, _412)) * _histogramParam.x) + _histogramParam.y) * 255.0f))), 255u)], _424, _499);
    }
    // RenoDX: <<< [Patch: AWBNeutralHistogramFallback]
  }
  GroupMemoryBarrierWithGroupSync();
  InterlockedAdd(__3__39__0__1__g_histogram2UAV[(int)(SV_GroupIndex)], (_global_1[_381]), _503);
  InterlockedAdd(__3__39__0__1__g_histogramUAV[(int)(SV_GroupIndex)], (_global_0[_381]), _506);
  if (_304) {
    InterlockedAdd(__3__39__0__1__g_histogramRUAV[(int)(SV_GroupIndex)], (_global_2[_381]), _511);
    InterlockedAdd(__3__39__0__1__g_histogramGUAV[(int)(SV_GroupIndex)], (_global_3[_381]), _515);
    InterlockedAdd(__3__39__0__1__g_histogramBUAV[(int)(SV_GroupIndex)], (_global_4[_381]), _519);
  }
  _521 = max(1e-07f, _419.x);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _524 = _nearFarProj.x / _521;
  _526 = (_410 + _409) + _411;
  // Vanilla, unmodified. _532 is the brightness a pixel must exceed to register as a glare
  // (lens-flare) instance, derived from the fast per-frame clamped histogram ARITHMETIC MEAN
  // luminance (_exposure2.x, slot 8 — large in bright scenes). No exposure slot carries a
  // temporally filtered copy of that quantity: slot 18 is the exposure SCALAR (~1/luminance, small
  // in bright scenes, inverts the daylight behaviour) and slot 19 is the perceptual-mode TRIMMED
  // GEOMETRIC mean (several-fold below the arithmetic mean with the sun in frame). Either one
  // collapses the threshold, and the 0.1x creature-stencil multiplier below then admits
  // retro-reflective eye glints, which render as a magenta flare at the eye. Do not substitute
  // without a low-passed copy of _exposure2.x itself, validated in a sun-in-frame scene against
  // g_glareInstanceCounterUAV holding vanilla counts.
  _532 = ((saturate(_exposure2.x) * 900.0f) + 100.0f) * _exposure2.x;
  if (!((_57 == 11) || ((_55.x & 126) == 12))) {
    _543 = (((_55.x & 125) == 17) || (_57 == 18));
  } else {
    _543 = true;
  }
  _550 = (((_532 * 4.0f) * saturate(_524 * 0.005f)) + _532) * select(_543, 0.1f, 1.0f);
  if (!(_421 || (!_450))) {
    if ((_526 > _550) && (((int)((int)(_global_5) | (int)(_global_6)) | (int)(_global_7)) == 0)) {
      __3__39__0__1__g_glareInstanceCounterUAV.InterlockedAdd(0, 1, _564);
      if ((uint)_564 < (uint)999) {
        _578 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _521, mad((_invViewProj[3].y), _40, ((_invViewProj[3].x) * _37)));
        GlareInstanceData __struct_store_0;
        __struct_store_0._data0 = float4(_32, _35, 0.0f, _524);
        __struct_store_0._data1 = float4(((mad((_invViewProj[0].z), _521, mad((_invViewProj[0].y), _40, ((_invViewProj[0].x) * _37))) + (_invViewProj[0].w)) / _578), ((mad((_invViewProj[1].z), _521, mad((_invViewProj[1].y), _40, ((_invViewProj[1].x) * _37))) + (_invViewProj[1].w)) / _578), ((mad((_invViewProj[2].z), _521, mad((_invViewProj[2].y), _40, ((_invViewProj[2].x) * _37))) + (_invViewProj[2].w)) / _578), select(((uint)_451 < (uint)16), 1.0f, 0.0f));
        __struct_store_0._luminance = float4((_409 / _550), (_410 / _550), (_411 / _550), ((_526 - _550) / _550));
        __struct_store_0._vertexNormal = float4((_157 * _147), (_157 * _151), (_155 * _157), select(_543, 1.0f, 0.0f));
        __3__39__0__1__g_glareInstanceUAV[_564] = __struct_store_0;
      }
    }
  }
}
