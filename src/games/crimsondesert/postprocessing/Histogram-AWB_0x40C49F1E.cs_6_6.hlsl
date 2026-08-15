struct GlareInstanceData {
  float4 _data0;
  float4 _data1;
  float4 _luminance;
  float4 _vertexNormal;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float4> __3__36__0__0__g_sceneColorLightingOnlyForAwb : register(t41, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_vertexNormal : register(t87, space36);

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
  float _34;
  float _35;
  float _38;
  float _40;
  float4 _43;
  float _50;
  float _51;
  uint2 _55;
  int _57;
  float _93;
  float _94;
  float _95;
  float _96;
  float _98;
  bool _99;
  bool _119;
  bool _120;
  bool _123;
  bool _124;
  bool _125;
  bool _126;
  float _245;
  float _258;
  float _375;
  float _376;
  float _377;
  bool _114;
  bool _115;
  float4 _130;
  bool _138;
  float _140;
  float _150;
  float _151;
  float _152;
  float _154;
  float _158;
  float _159;
  float4 _161;
  float _166;
  float4 _167;
  float _172;
  float4 _173;
  float4 _177;
  float _186;
  float _188;
  float _190;
  float _192;
  float _195;
  float _226;
  float _227;
  float _228;
  bool _247;
  float _259;
  float _260;
  float _261;
  float _262;
  float _269;
  float _270;
  float _271;
  float _272;
  float _277;
  float _280;
  float _284;
  float _285;
  float _286;
  bool _302;
  bool _305;
  float _307;
  float _308;
  float _312;
  float _319;
  float _320;
  float _321;
  float _333;
  float _334;
  float _335;
  float _336;
  float _343;
  float _344;
  float _345;
  float _353;
  float _354;
  float _355;
  float _356;
  float _370;
  uint _387;
  uint _389;
  uint _391;
  float _402;
  float _403;
  bool _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float4 _414;
  bool _416;
  float _418;
  bool _420;
  int _423;
  uint _441;
  uint _443;
  bool _446;
  int _448;
  uint _480;
  uint _482;
  uint _484;
  int _488;
  int _491;
  int _496;
  int _500;
  int _504;
  float _508;
  float _509;
  float _511;
  float _517;
  bool _531;
  float _534;
  int _548;
  float _590;
  _global_5 = 0;
  _global_6 = 0;
  _global_7 = 0;
  GroupMemoryBarrierWithGroupSync();
  _27 = (float)((uint)(SV_DispatchThreadID.x));
  _28 = (float)((uint)(SV_DispatchThreadID.y));
  _34 = _textureSizeAndInvSize.z * (_27 + 0.5f);
  _35 = _textureSizeAndInvSize.w * (_28 + 0.5f);
  _38 = (_34 * 2.0f) + -1.0f;
  _40 = -0.0f - ((_35 * 2.0f) + -1.0f);
  _43 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_34, _35), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _50 = _bufferSizeAndInvSize.x * _34;
  _51 = _bufferSizeAndInvSize.y * _35;
  _55 = __3__36__0__0__g_stencil.Load(int3(((int)(_50)), ((int)(_51)), 0));  // [sem: _3__36__0__0__g_stencil_load]
  _57 = _55.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _93 = mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _40, ((_invViewProjRelative[3].x) * _38))) + (_invViewProjRelative[3].w);
  _94 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _40, ((_invViewProjRelative[0].x) * _38))) + (_invViewProjRelative[0].w)) / _93;
  _95 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _40, ((_invViewProjRelative[1].x) * _38))) + (_invViewProjRelative[1].w)) / _93;
  _96 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _40, ((_invViewProjRelative[2].x) * _38))) + (_invViewProjRelative[2].w)) / _93;
  _98 = rsqrt(dot(float3(_94, _95, _96), float3(_94, _95, _96)));  // [sem: invLength]
  _99 = (_57 == 0);
  if (_99) {
    _119 = (dot(float3((_98 * _94), (_98 * _95), (_98 * _96)), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) > _sunSizeAngleCosine);
    _120 = false;
    _123 = _120;
    _124 = false;
    _125 = _119;
    _126 = (_57 == 27);
  } else {
    _114 = (_57 == 28);
    _115 = (_57 == 56);
    if (!((_57 == 26) || _114)) {
      _119 = false;
      _120 = _115;
      _123 = _120;
      _124 = false;
      _125 = _119;
      _126 = (_57 == 27);
    } else {
      _123 = _115;
      _124 = _114;
      _125 = false;
      _126 = true;
    }
  }
  _130 = __3__36__0__0__g_vertexNormal.Load(int3(((int)((uint)(_50))), ((int)((uint)(_51))), 0));  // [sem: _3__36__0__0__g_vertexNormal_load]
  _138 = (((int)((uint)((_130.w * 3.0f) + 0.5f))) == 3);  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _140 = select(_126, 0.5f, select(_138, 1.0f, 0.0f));
  _150 = (saturate(_130.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _151 = (saturate(_130.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _152 = (saturate(_130.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_vertexNormal_load_derived]
  _154 = rsqrt(dot(float3(_150, _151, _152), float3(_150, _151, _152)));  // [sem: invLength]
  _158 = _textureSizeAndInvSize.z * _27;
  _159 = _textureSizeAndInvSize.w * _28;
  _161 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_158, _159), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _166 = _textureSizeAndInvSize.z * (_27 + 1.0f);
  _167 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_166, _159), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _172 = _textureSizeAndInvSize.w * (_28 + 1.0f);
  _173 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_158, _172), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _177 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_166, _172), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
  _186 = 1.0f / (dot(float3(_161.x, _161.y, _161.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _188 = 1.0f / (dot(float3(_167.x, _167.y, _167.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _190 = 1.0f / (dot(float3(_173.x, _173.y, _173.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _192 = 1.0f / (dot(float3(_177.x, _177.y, _177.z), float3(0.212671f, 0.71516f, 0.072169f)) + 1.0f);
  _195 = ((_188 + _186) + _190) + _192;
  _226 = -0.0f - min(0.0f, (-0.0f - (((((_188 * _167.x) + (_186 * _161.x)) + (_190 * _173.x)) + (_192 * _177.x)) / _195)));
  _227 = -0.0f - min(0.0f, (-0.0f - (((((_188 * _167.y) + (_186 * _161.y)) + (_190 * _173.y)) + (_192 * _177.y)) / _195)));
  _228 = -0.0f - min(0.0f, (-0.0f - (((((_188 * _167.z) + (_186 * _161.z)) + (_190 * _173.z)) + (_192 * _177.z)) / _195)));
  if (_125) {
    _245 = (max(min(_exposure2.x, 2.0f), 0.5f) * _glareParam.w);
  } else {
    if (_124) {
      _245 = (120.0f / max(0.2f, min(_exposure0.y, 0.4f)));
    } else {
      _245 = 1.0f;
    }
  }
  _247 = (_140 > 0.0f);
  if (_247) {
    _258 = ((_140 * 0.004f) * min(_exposure0.y, 20.0f));
  } else {
    _258 = (min(_exposure0.y, 25.0f) * 0.001f);
  }
  _259 = _258 * select(_123, 300.0f, _245);
  _260 = _259 * _226;
  _261 = _259 * _227;
  _262 = _259 * _228;
  _269 = _140 * 48.5203f;
  _270 = log2(_260 + 1.0f) * _269;
  _271 = log2(_261 + 1.0f) * _269;
  _272 = log2(_262 + 1.0f) * _269;
  _277 = select(((_isPhotosensitiveMode_isAllolwBlood & 2) != 0), 0.02f, 1.0f);
  _280 = saturate(dot(float3(_260, _261, _262), float3(0.212671f, 0.71516f, 0.072169f)) * 50.0f);  // [sem: expr_sat]
  _284 = select(_247, (_270 * _270), _260);
  _285 = select(_247, (_271 * _271), _261);
  _286 = select(_247, (_272 * _272), _262);
  __3__38__0__1__g_glareSourceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3((((_280 * (_260 - _284)) + _284) * _277), ((lerp(_285, _261, _280)) * _277), ((lerp(_286, _262, _280)) * _277));
  _302 = (_whiteBalance.w > 0.001f);
  _305 = ((uint)((int)(_57) + (int)(-105)) < (uint)2) || _126;
  _307 = (_43.x + _43.y) + _43.z;
  _308 = _307 * 0.33333334f;
  _312 = 1.5f - (saturate(_307 * 0.00033333333f) * 0.5f);
  _319 = (_312 * (_43.x - _308)) + _308;
  _320 = (_312 * (_43.y - _308)) + _308;
  _321 = (_312 * (_43.z - _308)) + _308;
  if (_305 || _138) {
    _333 = ((_308 / max((((_319 + _320) + _321) * 0.33333334f), 0.0001f)) * 0.002f) * min(_exposure0.y, 20.0f);
    _334 = _333 * _319;
    _335 = _333 * _320;
    _336 = _333 * _321;
    _343 = log2(_334 + 1.0f) * 24.26015f;
    _344 = log2(_335 + 1.0f) * 24.26015f;
    _345 = log2(_336 + 1.0f) * 24.26015f;
    _353 = saturate(dot(float3(_334, _335, _336), float3(0.212671f, 0.71516f, 0.072169f)) * 50.0f);  // [sem: expr_sat]
    _354 = _343 * _343;
    _355 = _344 * _344;
    _356 = _345 * _345;
    _370 = select(_305, _renderParam.z, _renderParam.w) * select(((_isPhotosensitiveMode_isAllolwBlood & 2) != 0), 0.02f, 1.0f);
    _375 = (_370 * ((_353 * (_334 - _354)) + _354));
    _376 = (_370 * ((_353 * (_335 - _355)) + _355));
    _377 = (_370 * ((_353 * (_336 - _356)) + _356));
  } else {
    _375 = 0.0f;
    _376 = 0.0f;
    _377 = 0.0f;
  }
  __3__38__0__1__g_colorAdatationSourceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(_375, _376, _377);
  _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = 0;
  _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = 0;
  if (_302) {
    _global_2[min((uint)((int)(SV_GroupIndex)), 255u)] = 0;
    _global_3[min((uint)((int)(SV_GroupIndex)), 255u)] = 0;
    _global_4[min((uint)((int)(SV_GroupIndex)), 255u)] = 0;
  }
  InterlockedMax(_global_5, (uint)((uint)((int)(uint)(_99))), _387);
  InterlockedMax(_global_6, (uint)((uint)((int)(uint)(_138))), _389);
  InterlockedMax(_global_7, (uint)((uint)((int)(uint)(_305))), _391);
  GroupMemoryBarrierWithGroupSync();
  _402 = max(0.0f, (_viewPos.w + -16.0f));
  _403 = (float)((int)((int)((uint)(_bufferSizeAndInvSize.y * _35))));
  _407 = (!(_403 <= _402)) && (!(_403 >= (_bufferSizeAndInvSize.y - _402)));
  _408 = select(_407, _43.x, 0.0f);
  _409 = select(_407, _43.y, 0.0f);
  _410 = select(_407, _43.z, 0.0f);
  _411 = dot(float3(_408, _409, _410), float3(0.212671f, 0.71516f, 0.072169f));
  // [sem: _3__36__0__0__g_sceneColorLightingOnlyForAwb_sampleLod]
  _414 = __3__36__0__0__g_sceneColorLightingOnlyForAwb.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_34, _35), 0.0f);
  _416 = (_414.w > 0.0f);  // [sem: _3__36__0__0__g_sceneColorLightingOnlyForAwb_sampleLod_derived]
  _418 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_34, _35), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
  _420 = (_418.x < 1e-07f);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _423 = select((_420 || (_418.x == 1.0f)), 1, 4);
  InterlockedAdd(_global_1[min((uint)(((int)((uint)(saturate((log2(dot(float3(_226, _227, _228), float3(0.212671f, 0.71516f, 0.072169f))) * _histogramParam.x) + _histogramParam.y) * 255.0f)))), 255u)], (uint)((uint)(_423)), _441);
  InterlockedAdd(_global_0[min((uint)(((int)((uint)(saturate((log2(_411) * _histogramParam.x) + _histogramParam.y) * 255.0f)))), 255u)], (uint)((uint)(_423)), _443);
  _446 = !(_418.x == 1.0f);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _448 = (int)(_57) + (int)(-52);
  if (((uint)_448 > (uint)15) && (_446 && (_302 && (!(_418.x < 1e-07f))))) {
    InterlockedAdd(_global_2[min((uint)(((int)((uint)(saturate((log2(select(_416, _414.x, _411)) * _histogramParam.x) + _histogramParam.y) * 255.0f)))), 255u)], (uint)((uint)(_423)), _480);
    InterlockedAdd(_global_3[min((uint)(((int)((uint)(saturate((log2(select(_416, _414.y, _411)) * _histogramParam.x) + _histogramParam.y) * 255.0f)))), 255u)], (uint)((uint)(_423)), _482);
    InterlockedAdd(_global_4[min((uint)(((int)((uint)(saturate((log2(select(_416, _414.z, _411)) * _histogramParam.x) + _histogramParam.y) * 255.0f)))), 255u)], (uint)((uint)(_423)), _484);
  }
  GroupMemoryBarrierWithGroupSync();
  InterlockedAdd(__3__39__0__1__g_histogram2UAV[(int)(SV_GroupIndex)], (_global_1[min((uint)((int)(SV_GroupIndex)), 255u)]), _488);
  InterlockedAdd(__3__39__0__1__g_histogramUAV[(int)(SV_GroupIndex)], (_global_0[min((uint)((int)(SV_GroupIndex)), 255u)]), _491);
  if (_302) {
    InterlockedAdd(__3__39__0__1__g_histogramRUAV[(int)(SV_GroupIndex)], (_global_2[min((uint)((int)(SV_GroupIndex)), 255u)]), _496);
    InterlockedAdd(__3__39__0__1__g_histogramGUAV[(int)(SV_GroupIndex)], (_global_3[min((uint)((int)(SV_GroupIndex)), 255u)]), _500);
    InterlockedAdd(__3__39__0__1__g_histogramBUAV[(int)(SV_GroupIndex)], (_global_4[min((uint)((int)(SV_GroupIndex)), 255u)]), _504);
  }
  _508 = max(1e-07f, _418.x);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _509 = _nearFarProj.x / _508;
  _511 = (_409 + _408) + _410;
  _517 = ((saturate(_exposure2.x) * 900.0f) + 100.0f) * _exposure2.x;
  _531 = (_57 == 11) || (((_55.x & 126) == 12) || (((_55.x & 125) == 17) || (_57 == 18)));
  _534 = (((saturate(_509 * 0.005f) * 4.0f) * _517) + _517) * select(_531, 0.1f, 1.0f);
  if (_446 && (!(_420 || ((((int)((int)(_global_6) | (int)(_global_5)) | (int)(_global_7)) != 0) || (!(_511 > _534)))))) {
    __3__39__0__1__g_glareInstanceCounterUAV.InterlockedAdd(0, 1, _548);
    if ((uint)_548 < (uint)999) {
      _590 = mad((_invViewProj[3].z), _508, mad((_invViewProj[3].y), _40, ((_invViewProj[3].x) * _38))) + (_invViewProj[3].w);
      GlareInstanceData __struct_store_0;
      __struct_store_0._data0 = float4(_34, _35, 0.0f, _509);
      __struct_store_0._data1 = float4(((mad((_invViewProj[0].z), _508, mad((_invViewProj[0].y), _40, ((_invViewProj[0].x) * _38))) + (_invViewProj[0].w)) / _590), ((mad((_invViewProj[1].z), _508, mad((_invViewProj[1].y), _40, ((_invViewProj[1].x) * _38))) + (_invViewProj[1].w)) / _590), ((mad((_invViewProj[2].z), _508, mad((_invViewProj[2].y), _40, ((_invViewProj[2].x) * _38))) + (_invViewProj[2].w)) / _590), select(((uint)_448 < (uint)16), 1.0f, 0.0f));
      __struct_store_0._luminance = float4((_408 / _534), (_409 / _534), (_410 / _534), ((_511 - _534) / _534));
      __struct_store_0._vertexNormal = float4((_154 * _150), (_154 * _151), (_152 * _154), select(_531, 1.0f, 0.0f));
      __3__39__0__1__g_glareInstanceUAV[_548] = __struct_store_0;
    }
  }
}
