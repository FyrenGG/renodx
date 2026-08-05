struct PostProcessSkyStruct {
  uint _moonTexture;
  uint _milkyWayTexture;
  float _milkyWayRatio;
  float _starRatio;
};

struct BindlessParameters_PostProcessSky {
  PostProcessSkyStruct BindlessParameters_PostProcessSky;
};

struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_texSkyInscatter : register(t95, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinction : register(t2, space36);

Texture3D<float4> __3__36__0__0__g_texFroxel : register(t117, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t101, space36);

Texture2D<float> __3__36__0__0__g_depthHalf : register(t20, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_tileData : register(t41, space36);

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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b24, space35) {
  float4 _precomputedAmbient0 : packoffset(c000.x);
  float4 _precomputedAmbient1 : packoffset(c001.x);
  float4 _precomputedAmbient2 : packoffset(c002.x);
  float4 _precomputedAmbient3 : packoffset(c003.x);
  float4 _precomputedAmbient4 : packoffset(c004.x);
  float4 _precomputedAmbient5 : packoffset(c005.x);
  float4 _precomputedAmbient6 : packoffset(c006.x);
  float4 _precomputedAmbient7 : packoffset(c007.x);
  float4 _precomputedAmbients[56] : packoffset(c008.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b25, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
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

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

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
  int _28;
  int _29;
  int4 _31;
  int _43;
  int _47;
  uint _54;
  uint _59;
  bool _66;
  float _67;
  float _68;
  float _72;
  float _75;
  bool _82;
  float _405;
  float _406;
  float _407;
  float _437;
  float _438;
  float _439;
  float _440;
  float _594;
  float _595;
  float _596;
  int _659;
  int _660;
  int _661;
  float _662;
  float _663;
  float _664;
  int _665;
  int _717;
  float _718;
  float _719;
  float _720;
  float _721;
  float _770;
  float _771;
  float _790;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  int _796;
  float _859;
  int _86;
  float _91;
  float _94;
  float _106;
  float _115;
  float _124;
  float _133;
  float _135;
  float _136;
  float _137;
  float _138;
  float _144;
  float _145;
  float _146;
  float _150;
  float _151;
  float _152;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _161;
  float _168;
  float _174;
  float _176;
  bool _177;
  bool _178;
  bool _179;
  bool _180;
  int _183;
  int _191;
  float4 _212;
  float _218;
  float _221;
  float _224;
  float _237;
  float _249;
  float _252;
  float _255;
  float _258;
  float _271;
  float _283;
  float _287;
  float _289;
  float _291;
  float _293;
  float _297;
  int _300;
  float _308;
  int _311;
  float _319;
  float _329;
  float _333;
  float _337;
  float _341;
  float _350;
  float _353;
  float _356;
  float _359;
  float _362;
  float _366;
  float _369;
  float _371;
  float _373;
  float _374;
  float _376;
  float _383;
  float _390;
  float _394;
  float _396;
  float _398;
  float _400;
  float _409;
  int _443;
  int _451;
  float4 _458;
  float _465;
  float _469;
  float _473;
  float _476;
  float _484;
  float _490;
  float _496;
  float _502;
  float _504;
  float _505;
  float _506;
  float _507;
  float _511;
  float _515;
  float _519;
  float _523;
  float _526;
  float _529;
  float _532;
  float _535;
  float _536;
  float _537;
  float _540;
  float _547;
  float _551;
  float _555;
  float _556;
  float _576;
  float _581;
  float _587;
  float _588;
  float _589;
  float _598;
  float _610;
  float _619;
  float _628;
  float _637;
  float _643;
  float _648;
  float _651;
  float _653;
  int _657;
  int _669;
  float _672;
  float _675;
  float _680;
  float _682;
  bool _683;
  float _684;
  float _688;
  float _691;
  float _693;
  float _695;
  float _697;
  bool _698;
  int _704;
  int _706;
  int _708;
  int _709;
  float _712;
  uint _738;
  int _739;
  int _740;
  float _741;
  float _744;
  float _752;
  float _762;
  float _773;
  float _775;
  float4 _778;
  float4 _783;
  uint _807;
  int _808;
  int _809;
  float _810;
  float _813;
  float _821;
  float _831;
  float _833;
  float _837;
  float _838;
  float4 _900;
  float _916;
  float _926;
  float _936;
  float _938;
  float _945;
  bool _946;
  float _947;
  float _950;
  int __loop_jump_target = -1;
  int _26[4];
  _28 = (int)(SV_GroupID.x) & 15;
  _29 = (uint)((uint)(_28)) >> 2;
  _31 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _26[0] = _31.x;
  _26[1] = _31.y;
  _26[2] = _31.z;
  _26[3] = _31.w;
  _43 = _26[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _47 = select((((int)(SV_GroupID.x) & 16) == 0), _43, ((uint)((uint)(_43)) >> 16));
  _54 = (uint)((uint)((uint)((int)((int)(_28) - (int)((int)(_29) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_47)) << 5)) & 8160));
  _59 = (uint)((uint)((uint)((int)(_29) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_47)) >> 3) & 8160));
  _66 = (((((uint)(__3__36__0__0__g_tileData.Load(int3(((uint)((uint)(_54)) >> 5), ((uint)((uint)(_59)) >> 5), 0)))).x) & 3) == 0);
  _67 = (float)((uint)((uint)(_54)));
  _68 = (float)((uint)((uint)(_59)));
  _72 = (_67 + 0.5f) * _bufferSizeAndInvSize.z;
  _75 = (_68 + 0.5f) * _bufferSizeAndInvSize.w;
  [branch]
  if (!_66) {
    _82 = (!(((__3__36__0__0__g_depth.Load(int3(_54, _59, 0))).x) < 1e-07f));
  } else {
    _82 = false;
  }
  _86 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(_54, _59, 0)))).x) & 127;
  if (!(_82 && (_86 != 10))) {
    _91 = (_72 * 2.0f) + -1.0f;
    _94 = ((1.0f - _75) * 2.0f) + -1.0f;
    _106 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _94, ((_invViewProjRelative[3].x) * _91));
    _115 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _94, ((_invViewProjRelative[0].x) * _91))) / _106;
    _124 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _94, ((_invViewProjRelative[1].x) * _91))) / _106;
    _133 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _94, ((_invViewProjRelative[2].x) * _91))) / _106;
    _135 = rsqrt(dot(float3(_115, _124, _133), float3(_115, _124, _133)));  // [sem: invLength]
    _136 = _135 * _115;
    _137 = _135 * _124;
    _138 = _135 * _133;
    _144 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
    _145 = sin(_144);
    _146 = cos(_144);
    _150 = (_time.w * 0.2617994f) + -3.1415927f;
    _151 = sin(_150);
    _152 = cos(_150);
    _153 = 1.0f - _152;
    _154 = _153 * _145;
    _155 = _153 * _146;
    _156 = _151 * _145;
    _157 = _151 * _146;
    _161 = mad((-0.0f - _156), _138, mad(_157, _137, (_152 * _136)));
    _168 = mad((_155 * _145), _138, mad(((_154 * _145) + _152), _137, (-0.0f - (_136 * _157))));
    _174 = mad(((_155 * _146) + _152), _138, mad((_154 * _146), _137, (_156 * _136)));
    _176 = atan(_174 / _161);
    _177 = (_161 < 0.0f);
    _178 = (_161 == 0.0f);
    _179 = (_174 >= 0.0f);
    _180 = (_174 < 0.0f);
    _183 = WaveReadLaneFirst(_materialIndex);
    _191 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayTexture);
    _212 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_191 < (uint)65000), _191, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_178 && _179), 0.75f, select((_178 && _180), 0.25f, ((select((_177 && _180), (_176 + -3.1415927f), select((_177 && _179), (_176 + 3.1415927f), _176)) * 0.15915494f) + 0.5f))), (acos(_168) * 0.31830987f)), 0.0f);
    _218 = (float)((int)((int)(_161 * 2000.0f)));
    _221 = (float)((int)((int)(_168 * 2000.0f)));
    _224 = (float)((int)((int)(_174 * 2000.0f)));
    _237 = frac((sin((_221 * 5.0000002e-05f) + (_218 * 0.0085f)) * 10000.0f) * (abs(sin((_221 * 0.0065f) + (_218 * 0.0005f))) + 0.1f));
    _249 = frac((sin((_237 * 17.0f) + (_224 * 5.0000002e-05f)) * 10000.0f) * (abs(sin(_237 + (_224 * 0.0065f))) + 0.1f));
    _252 = (float)((int)((int)(_161 * 1500.0f)));
    _255 = (float)((int)((int)(_168 * 1500.0f)));
    _258 = (float)((int)((int)(_174 * 1500.0f)));
    _271 = frac((sin((_255 * 6.666667e-05f) + (_252 * 0.011333333f)) * 10000.0f) * (abs(sin((_255 * 0.008666666f) + (_252 * 0.00066666666f))) + 0.1f));
    _283 = frac((sin((_271 * 17.0f) + (_258 * 6.666667e-05f)) * 10000.0f) * (abs(sin(_271 + (_258 * 0.008666666f))) + 0.1f));
    _287 = saturate((_249 + -0.7f) * 3.3333333f) * 1.5f;
    _289 = (_287 * _212.x) + _212.x;
    _291 = (_287 * _212.y) + _212.y;
    _293 = (_287 * _212.z) + _212.z;
    _297 = saturate((_283 + -0.98f) * 50.00005f) * 9.0f;
    _300 = WaveReadLaneFirst(_materialIndex);
    _308 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_300 < (uint)170000), _300, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayRatio);
    _311 = WaveReadLaneFirst(_materialIndex);
    _319 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_311 < (uint)170000), _311, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._starRatio);
    _329 = ((saturate((_249 + -0.999f) * 1000.0129f) * 0.1f) + (saturate((_283 + -0.9995f) * 1999.9065f) * 3.0f)) * _319;
    _333 = _329 + (_308 * ((_289 * _297) + _289));
    _337 = _329 + (_308 * ((_291 * _297) + _291));
    _341 = _329 + (_308 * ((_293 * _297) + _293));
    _350 = select((dot(float3(_136, _137, _138), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) > _sunSizeAngleCosine), 1.0f, 0.0f);
    _353 = min(1e+06f, _precomputedAmbient7.x);
    _356 = (_350 * (_353 - _333)) + _333;
    _359 = (_350 * (_353 - _337)) + _337;
    _362 = (_350 * (_353 - _341)) + _341;
    _366 = sin(_moonSizeAngle * 0.017453292f);
    _369 = -0.0f - _moonDirection.x;
    _371 = -0.0f - _moonDirection.y;
    _373 = -0.0f - _moonDirection.z;
    _374 = dot(float3(_136, _137, _138), float3(_136, _137, _138));
    _376 = dot(float3(_369, _371, _373), float3(_136, _137, _138)) * 2.0f;
    _383 = (_376 * _376) - ((_374 * 4.0f) * (dot(float3(_369, _371, _373), float3(_369, _371, _373)) - (_366 * _366)));
    if (!(_383 < 0.0f)) {
      _390 = ((-0.0f - _376) - sqrt(_383)) / (_374 * 2.0f);
      if (!(!(_390 >= 0.0f))) {
        _394 = (_390 * _136) - _moonDirection.x;
        _396 = (_390 * _137) - _moonDirection.y;
        _398 = (_390 * _138) - _moonDirection.z;
        _400 = rsqrt(dot(float3(_394, _396, _398), float3(_394, _396, _398)));  // [sem: invLength]
        _405 = (_400 * _398);
        _406 = (_400 * _396);
        _407 = (_400 * _394);
      } else {
        _405 = 0.0f;
        _406 = 0.0f;
        _407 = 0.0f;
      }
    } else {
      _405 = 0.0f;
      _406 = 0.0f;
      _407 = 0.0f;
    }
    // [sem: invLength]
    _409 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
    if (dot(float3(_136, _137, _138), float3((_409 * _moonDirection.x), (_409 * _moonDirection.y), (_409 * _moonDirection.z))) > _moonSizeAngleCosine) {
      _437 = ((dot(float3(_407, _406, _405), float3(_moonUp.x, _moonUp.y, _moonUp.z)) * 0.5f) + 0.5f);
      _438 = ((dot(float3(_407, _406, _405), float3(_moonRight.x, _moonRight.y, _moonRight.z)) * 0.5f) + 0.5f);
      _439 = 1.0f;
      _440 = (saturate(dot(float3(_407, _406, _405), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z))) * _precomputedAmbient7.z);
    } else {
      _437 = 0.0f;
      _438 = 0.0f;
      _439 = 0.0f;
      _440 = 0.0f;
    }
    _443 = WaveReadLaneFirst(_materialIndex);
    _451 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_443 < (uint)170000), _443, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._moonTexture);
    _458 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_451 < (uint)65000), _451, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_438, _437));
    _465 = (((_458.x * _440) - _356) * _439) + _356;
    _469 = (((_458.y * _440) - _359) * _439) + _359;
    _473 = (((_458.z * _440) - _362) * _439) + _362;
    _476 = floor(_time.x);
    if (frac(sqrt(abs(_476 * 0.368417f)) * 3734.4219f) < 0.1f) {
      _484 = _476 + 60.0f;
      _490 = (frac(sin(_484 * 22.037682f) * 435.543f) * 2.0f) + -1.0f;
      _496 = (frac(sin(_484 * 85.16736f) * 435.543f) * 2.0f) + -1.0f;
      _502 = (frac(sin(_484 * 124.43804f) * 435.543f) * 2.0f) + -1.0f;
      _504 = rsqrt(dot(float3(_490, _496, _502), float3(_490, _496, _502)));  // [sem: invLength]
      _505 = _504 * _490;
      _506 = _504 * _496;
      _507 = _502 * _504;
      if (dot(float3(_161, _168, _174), float3(_505, _506, _507)) > 0.99f) {
        _511 = frac(_time.x);
        _515 = frac(sin(_476 * 22.037682f) * 435.543f);
        _519 = frac(sin(_476 * 85.16736f) * 435.543f);
        _523 = frac(sin(_476 * 124.43804f) * 435.543f);
        _526 = saturate(_511 * 1.5f) * 100.0f;
        _529 = _526 * ((_515 * 0.5f) + -0.25f);
        _532 = _526 * ((_519 * 0.5f) + -0.25f);
        _535 = _526 * ((_523 * 0.5f) + -0.25f);
        _536 = _161 * 100.0f;
        _537 = _168 * 100.0f;
        _540 = (_529 * _537) - (_532 * _536);
        if (!(abs(_540) < 0.05f)) {
          _547 = ((_505 + 0.125f) - (_515 * 0.25f)) * -100.0f;
          _551 = ((_506 + 0.125f) - (_519 * 0.25f)) * -100.0f;
          _555 = ((_547 * _537) - (_551 * _536)) / _540;
          _556 = _555 * _535;
          if (!(abs((_556 + (((_507 + 0.125f) - (_523 * 0.25f)) * 100.0f)) - ((_174 * 100.0f) * (((_532 * _547) - (_529 * _551)) / _540))) > 0.05f)) {
            _576 = dot(float3((_555 * _529), (_555 * _532), _556), float3(_529, _532, _535)) / dot(float3(_529, _532, _535), float3(_529, _532, _535));
            if ((_576 >= 0.0f) && (_576 <= 1.0f)) {
              _581 = _576 * _576;
              _587 = (_581 * _581) * (1.0f - saturate((_511 + -0.5f) * 2.0f));
              _588 = _587 * _587;
              _589 = _588 * _588;
              _594 = (_589 + _473);
              _595 = (_589 + _469);
              _596 = (_589 + _465);
            } else {
              _594 = _473;
              _595 = _469;
              _596 = _465;
            }
          } else {
            _594 = _473;
            _595 = _469;
            _596 = _465;
          }
        } else {
          _594 = _473;
          _595 = _469;
          _596 = _465;
        }
      } else {
        _594 = _473;
        _595 = _469;
        _596 = _465;
      }
    } else {
      _594 = _473;
      _595 = _469;
      _596 = _465;
    }
    _598 = 1.0f - (_75 * 2.0f);
    _610 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _598, ((_invViewProjRelative[3].x) * _91)));
    _619 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _598, ((_invViewProjRelative[0].x) * _91))) + (_invViewProjRelative[0].w)) / _610;
    _628 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _598, ((_invViewProjRelative[1].x) * _91))) + (_invViewProjRelative[1].w)) / _610;
    _637 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _598, ((_invViewProjRelative[2].x) * _91))) + (_invViewProjRelative[2].w)) / _610;
    _643 = sqrt(((_628 * _628) + (_619 * _619)) + (_637 * _637));
    if (_643 > 128.0f) {
      _648 = _nearFarProj.x * 1e+07f;
      _651 = 2.0f / _bufferSizeAndInvSize.x;
      _653 = 2.0f / _bufferSizeAndInvSize.y;
      [branch]
      if (!_66) {
        _657 = (int)((int)((int)(_54) % (int)(2)) << 1) + (int)(-1);
        _659 = 0;
        _660 = 0;
        _661 = 0;
        _662 = _648;
        _663 = _648;
        _664 = _648;
        _665 = 1;
        while(true) {
          _669 = (int)((int)((int)((int)(_59) % (int)(2)) << 1) + (int)(-1)) * (int)(_659);
          _672 = (((float)((int)(_669))) * _653) + _75;
          _675 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_72, _672), 0.0f);  // [sem: _3__36__0__0__g_depthHalf_sampleLod]
          _680 = _nearFarProj.x / max(1e-07f, _675.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
          _682 = abs(_680 - _648);
          _683 = (_682 < _662);
          _684 = select(_683, _682, _662);
          // [sem: _3__36__0__0__g_depthHalf_sampleLod]
          _688 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((((float)((int)(_657))) * _651) + _72), _672), 0.0f);
          _691 = _nearFarProj.x / max(1e-07f, _688.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
          _693 = min(min(_664, _680), _691);
          _695 = max(max(_663, _680), _691);
          _697 = abs(_691 - _648);
          _698 = (_697 < _684);
          _704 = select(_698, ((int)(uint)((int)(_688.x < 1e-07f))), select(_683, ((int)(uint)((int)(_675.x < 1e-07f))), _665));
          _706 = select(_698, _657, select(_683, 0, _661));
          _708 = select((_683 || _698), _669, _660);
          _709 = (int)(_659) + (int)(1);
          if (!(_709 == 2)) {
            _712 = select(_698, _697, _684);
            _659 = _709;
            _660 = _708;
            _661 = _706;
            _662 = _712;
            _663 = _695;
            _664 = _693;
            _665 = _704;
            continue;
          }
          _717 = _704;
          _718 = _693;
          _719 = _695;
          _720 = ((float)((int)(_706)));
          _721 = ((float)((int)(_708)));
          break;
        }
      } else {
        _717 = 1;
        _718 = _648;
        _719 = _648;
        _720 = 0.0f;
        _721 = 0.0f;
      }
      if (!(((_719 - _718) / _719) > ((max(0.0f, (_718 + -20000.0f)) * 0.0001f) + 0.1f))) {
        _738 = (uint)(((_bufferSizeAndInvSize.x * _68) + _67) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(11))) & 1023)))));
        _739 = (uint)((uint)(_738)) >> 1;
        _740 = (uint)((uint)(_738)) >> 3;
        _741 = (float)((uint)((uint)(_738)));
        _744 = 0.33676624f / sqrt(_741 + -0.3f);
        _752 = ((((float)((uint)((uint)(((int)((uint)((uint)(_739)) * (uint)(-1029531031))) ^ _740)))) * 2.3283064e-10f) + -0.5f) * ((_741 * 0.7548776f) + _744);
        _762 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_739)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _740)))) * 2.3283064e-10f) + -0.5f) * ((_741 * 0.56984025f) + _744);
        _770 = ((-0.5f - floor(_752)) + _752);
        _771 = ((-0.5f - floor(_762)) + _762);
      } else {
        _770 = _720;
        _771 = _721;
      }
      _773 = (_770 * _651) + _72;
      _775 = (_771 * _653) + _75;
      _778 = __3__36__0__0__g_texSkyInscatter.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_773, _775), 0.0f);  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod]
      _783 = __3__36__0__0__g_texSkyExtinction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_773, _775), 0.0f);  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod]
      _790 = _778.x;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _791 = _778.y;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _792 = _778.z;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _793 = _783.x;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _794 = _783.y;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _795 = _783.z;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _796 = ((int)(uint)((int)(_717 == 0)));
    } else {
      _790 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _791 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _792 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _793 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _794 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _795 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _796 = 0;
    }
    _807 = (uint)(((_bufferSizeAndInvSize.x * _68) + _67) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(101))) & 1023)))));
    _808 = (uint)((uint)(_807)) >> 1;
    _809 = (uint)((uint)(_807)) >> 3;
    _810 = (float)((uint)((uint)(_807)));
    _813 = 0.33676624f / sqrt(_810 + -0.3f);
    _821 = ((((float)((uint)((uint)(((int)((uint)((uint)(_808)) * (uint)(-1029531031))) ^ _809)))) * 2.3283064e-10f) + -0.5f) * ((_810 * 0.7548776f) + _813);
    _831 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_808)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _809)))) * 2.3283064e-10f) + -0.5f) * ((_810 * 0.56984025f) + _813);
    _833 = (float)((uint)((uint)(_frameNumber.x & 1023)));
    _837 = max(0.0f, (_etcParams.w + -48.0f));
    _838 = max(0.0f, _643);
    if (!(_838 <= 128.0f)) {
      if (!(_837 <= 0.0f)) {
        _859 = ((log2((((_838 + -128.0f) * 0.0078125f) * (exp2(_837 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _859 = 48.0f;
      }
    } else {
      _859 = (log2((_838 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _900 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.x - (_etcParams.y * 4.0f)) > 0.0f))) + 0.5f) / _etcParams.y)), ((((_821 + -0.5f) - floor(_821)) / _etcParams.y) + _72)), min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.y - (_etcParams.z * 4.0f)) > 0.0f))) + 0.5f) / _etcParams.z)), ((((_831 + -0.5f) - floor(_831)) / _etcParams.z) + _75)), ((_859 - frac(frac(dot(float2(((_833 * 32.665f) + _67), ((_833 * 11.815f) + _68)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) / _etcParams.w)), 0.0f);
    _916 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 0.01f, mad((_projToPrevProj[3].y), _598, ((_projToPrevProj[3].x) * _91)));
    _926 = ((mad((_projToPrevProj[0].z), 0.01f, mad((_projToPrevProj[0].y), _598, ((_projToPrevProj[0].x) * _91))) + (_projToPrevProj[0].w)) / _916) - _91;
    _936 = ((mad((_projToPrevProj[1].z), 0.01f, mad((_projToPrevProj[1].y), _598, ((_projToPrevProj[1].x) * _91))) + (_projToPrevProj[1].w)) / _916) - _598;
    _938 = dot(float3(_793, _794, _795), float3(0.212671f, 0.71516f, 0.072169f)) * _900.w;
    _945 = saturate(1.0f - (sqrt((_936 * _936) + (_926 * _926)) * 20.0f));  // [sem: expr_sat]
    _946 = (_86 == 10);
    _947 = select(_946, 1.0f, _900.w);
    _950 = _947 * select((_796 != 0), 0.0f, 1.0f);
    __3__38__0__1__g_postProcessUAV[int2(_54, _59)] = float4((((_947 * _790) + select(_946, 0.0f, _900.x)) + ((_793 * (((_595 * 0.33951f) + (_594 * 0.04737f)) + (_596 * 0.61312f))) * _950)), (((_947 * _791) + select(_946, 0.0f, _900.y)) + ((_794 * (((_595 * 0.91636f) + (_594 * 0.01345f)) + (_596 * 0.0702f))) * _950)), (((_947 * _792) + select(_946, 0.0f, _900.z)) + ((_795 * (((_595 * 0.10958f) + (_594 * 0.8698f)) + (_596 * 0.02062f))) * _950)), ((_945 + _938) - (_945 * _938)));
  }
}
