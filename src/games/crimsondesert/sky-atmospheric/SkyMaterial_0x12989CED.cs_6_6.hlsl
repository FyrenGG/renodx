struct PostProcessSkyStruct {
  uint _moonTexture;
  uint _milkyWayTexture;
  float _milkyWayRatio;
  float _starRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_texSkyInscatter : register(t97, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinction : register(t2, space36);

Texture3D<float4> __3__36__0__0__g_texFroxel : register(t119, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t104, space36);

Texture2D<float> __3__36__0__0__g_depthHalf : register(t20, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_tileData : register(t41, space36);

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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b27, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b16, space35) {
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

struct BindlessParameters_PostProcessSky {
  PostProcessSkyStruct BindlessParameters_PostProcessSky;
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
  int _27;
  int _28;
  int4 _36;
  int _46;
  int _50;
  uint _56;
  uint _58;
  bool _65;
  float _66;
  float _67;
  float _73;
  float _74;
  bool _81;
  float _387;
  float _402;
  float _403;
  float _404;
  float _434;
  float _435;
  float _436;
  float _437;
  float _590;
  float _591;
  float _592;
  int _673;
  float _674;
  float _675;
  float _676;
  int _677;
  int _678;
  int _679;
  int _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _780;
  float _781;
  float _800;
  float _801;
  float _802;
  float _803;
  float _804;
  float _805;
  int _806;
  float _881;
  int _85;
  float _92;
  float _95;
  float _131;
  float _132;
  float _133;
  float _134;
  float _136;
  float _137;
  float _138;
  float _139;
  float _145;
  float _146;
  float _147;
  float _151;
  float _152;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  float _168;
  float _172;
  float _175;
  float _177;
  bool _180;
  bool _181;
  bool _182;
  bool _183;
  int _196;
  int _204;
  float4 _211;
  float _221;
  float _222;
  float _223;
  float _236;
  float _248;
  float _255;
  float _256;
  float _257;
  float _270;
  float _282;
  float _286;
  float _290;
  float _291;
  float _292;
  float _296;
  int _303;
  float _311;
  int _324;
  float _332;
  float _333;
  float _334;
  float _335;
  float _336;
  float _345;
  float _348;
  float _355;
  float _356;
  float _357;
  float _365;
  float _366;
  float _367;
  float _368;
  float _369;
  float _371;
  float _378;
  float _393;
  float _394;
  float _395;
  float _397;
  float _406;
  int _438;
  int _446;
  float4 _453;
  float _466;
  float _467;
  float _468;
  float _471;
  float _479;
  float _495;
  float _496;
  float _497;
  float _499;
  float _500;
  float _501;
  float _502;
  float _506;
  float _516;
  float _517;
  float _518;
  float _527;
  float _528;
  float _529;
  float _530;
  float _531;
  float _532;
  float _535;
  float _550;
  float _551;
  float _555;
  float _560;
  float _571;
  float _576;
  float _577;
  float _582;
  float _584;
  float _585;
  float _609;
  float _645;
  float _646;
  float _647;
  float _648;
  float _654;
  float _659;
  float _663;
  float _664;
  int _670;
  int _680;
  float _683;
  float _686;
  float _691;
  float _695;
  bool _696;
  float _700;
  float _705;
  float _708;
  float _709;
  float _710;
  float _712;
  bool _713;
  int _716;
  int _718;
  int _720;
  int _721;
  uint _748;
  int _749;
  int _751;
  float _763;
  float _766;
  float _771;
  float _772;
  float _784;
  float _785;
  float4 _788;
  float4 _793;
  uint _821;
  int _822;
  int _824;
  float _836;
  float _839;
  float _844;
  float _845;
  float _849;
  float _859;
  float _860;
  float4 _910;
  float _942;
  float _945;
  float _946;
  float _952;
  float _955;
  bool _959;
  float _963;
  float _972;
  int __loop_jump_target = -1;
  int _17[4];
  _27 = (int)(SV_GroupID.x) & 15;
  _28 = (uint)((uint)(_27)) >> 2;
  _36 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _17[0] = _36.x;
  _17[1] = _36.y;
  _17[2] = _36.z;
  _17[3] = _36.w;
  _46 = _17[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _50 = select((((int)(SV_GroupID.x) & 16) == 0), _46, ((uint)((uint)(_46)) >> 16));
  _56 = (uint)((uint)((uint)((int)((int)(_27) - (int)((int)(_28) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_50)) << 5)) & 8160));
  _58 = (uint)((uint)((uint)((int)(_28) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_50)) >> 3) & 8160));
  _65 = (((((uint)(__3__36__0__0__g_tileData.Load(int3(((uint)((uint)(_56)) >> 5), ((uint)((uint)(_58)) >> 5), 0)))).x) & 3) == 0);
  _66 = (float)((uint)((uint)(_56)));
  _67 = (float)((uint)((uint)(_58)));
  _73 = (_66 + 0.5f) * _bufferSizeAndInvSize.z;
  _74 = (_67 + 0.5f) * _bufferSizeAndInvSize.w;
  [branch]
  if (!_65) {
    _81 = (!(((__3__36__0__0__g_depth.Load(int3(_56, _58, 0))).x) < 1e-07f));
  } else {
    _81 = false;
  }
  _85 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(_56, _58, 0)))).x) & 127;
  if (!(_81 && (_85 != 10))) {
    _92 = (_73 * 2.0f) + -1.0f;
    _95 = ((1.0f - _74) * 2.0f) + -1.0f;
    _131 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _95, ((_invViewProjRelative[3].x) * _92));
    _132 = ((mad((_invViewProjRelative[0].y), _95, ((_invViewProjRelative[0].x) * _92)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _131;
    _133 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _95, ((_invViewProjRelative[1].x) * _92))) / _131;
    _134 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _95, ((_invViewProjRelative[2].x) * _92))) / _131;
    _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));  // [sem: invLength]
    _137 = _136 * _132;
    _138 = _136 * _133;
    _139 = _136 * _134;
    _145 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
    _146 = sin(_145);
    _147 = cos(_145);
    _151 = (_time.w * 0.2617994f) + -3.1415927f;
    _152 = sin(_151);
    _153 = cos(_151);
    _154 = 1.0f - _153;
    _155 = _154 * _146;
    _156 = _154 * _147;
    _157 = _152 * _146;
    _158 = _152 * _147;
    _168 = mad((-0.0f - _157), _139, mad(_158, _138, (_153 * _137)));
    _172 = mad((_156 * _146), _139, mad(((_155 * _146) + _153), _138, (-0.0f - (_137 * _158))));
    _175 = mad(((_156 * _147) + _153), _139, mad((_155 * _147), _138, (_157 * _137)));
    _177 = atan(_175 / _168);
    _180 = (_168 < 0.0f);
    _181 = (_168 == 0.0f);
    _182 = (_175 >= 0.0f);
    _183 = (_175 < 0.0f);
    _196 = WaveReadLaneFirst(_materialIndex);
    _204 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_196 < (uint)170000), _196, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayTexture);
    _211 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_204 < (uint)65000), _204, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_181 && _182), 0.75f, select((_181 && _183), 0.25f, ((select((_180 && _183), (_177 + -3.1415927f), select((_180 && _182), (_177 + 3.1415927f), _177)) * 0.15915494f) + 0.5f))), (acos(_172) * 0.31830987f)), 0.0f);
    _221 = (float)((int)((int)(_168 * 2000.0f)));
    _222 = (float)((int)((int)(_172 * 2000.0f)));
    _223 = (float)((int)((int)(_175 * 2000.0f)));
    _236 = frac((sin((_222 * 5.0000002e-05f) + (_221 * 0.0085f)) * 10000.0f) * (abs(sin((_222 * 0.0065f) + (_221 * 0.0005f))) + 0.1f));
    _248 = frac((sin((_236 * 17.0f) + (_223 * 5.0000002e-05f)) * 10000.0f) * (abs(sin(_236 + (_223 * 0.0065f))) + 0.1f));
    _255 = (float)((int)((int)(_168 * 1500.0f)));
    _256 = (float)((int)((int)(_172 * 1500.0f)));
    _257 = (float)((int)((int)(_175 * 1500.0f)));
    _270 = frac((sin((_256 * 6.666667e-05f) + (_255 * 0.011333333f)) * 10000.0f) * (abs(sin((_256 * 0.008666666f) + (_255 * 0.00066666666f))) + 0.1f));
    _282 = frac((sin((_270 * 17.0f) + (_257 * 6.666667e-05f)) * 10000.0f) * (abs(sin(_270 + (_257 * 0.008666666f))) + 0.1f));
    _286 = saturate((_248 + -0.7f) * 3.3333333f) * 1.5f;
    _290 = (_286 * _211.x) + _211.x;
    _291 = (_286 * _211.y) + _211.y;
    _292 = (_286 * _211.z) + _211.z;
    _296 = saturate((_282 + -0.98f) * 50.00005f) * 9.0f;
    _303 = WaveReadLaneFirst(_materialIndex);
    _311 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_303 < (uint)170000), _303, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._milkyWayRatio);
    _324 = WaveReadLaneFirst(_materialIndex);
    _332 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_324 < (uint)170000), _324, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._starRatio);
    _333 = _332 * ((saturate((_282 + -0.9995f) * 1999.9065f) * 3.0f) + (saturate((_248 + -0.999f) * 1000.0129f) * 0.1f));
    _334 = _333 + (_311 * ((_290 * _296) + _290));
    _335 = _333 + (_311 * ((_291 * _296) + _291));
    _336 = _333 + (_311 * ((_292 * _296) + _292));
    _345 = select((dot(float3(_137, _138, _139), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) > _sunSizeAngleCosine), 1.0f, 0.0f);
    _348 = min(1e+06f, _precomputedAmbient7.x);
    _355 = (_345 * (_348 - _334)) + _334;
    _356 = (_345 * (_348 - _335)) + _335;
    _357 = (_345 * (_348 - _336)) + _336;
    _365 = sin(_moonSizeAngle * 0.017453292f);
    _366 = -0.0f - _moonDirection.x;
    _367 = -0.0f - _moonDirection.y;
    _368 = -0.0f - _moonDirection.z;
    _369 = dot(float3(_137, _138, _139), float3(_137, _138, _139));
    _371 = dot(float3(_366, _367, _368), float3(_137, _138, _139)) * 2.0f;
    _378 = (_371 * _371) - ((_369 * 4.0f) * (dot(float3(_366, _367, _368), float3(_366, _367, _368)) - (_365 * _365)));
    if (!(_378 < 0.0f)) {
      _387 = (((-0.0f - _371) - sqrt(_378)) / (_369 * 2.0f));
    } else {
      _387 = -1.0f;
    }
    if (!(!(_387 >= 0.0f))) {
      _393 = (_387 * _137) - _moonDirection.x;
      _394 = (_387 * _138) - _moonDirection.y;
      _395 = (_387 * _139) - _moonDirection.z;
      _397 = rsqrt(dot(float3(_393, _394, _395), float3(_393, _394, _395)));  // [sem: invLength]
      _402 = (_397 * _393);
      _403 = (_397 * _394);
      _404 = (_397 * _395);
    } else {
      _402 = 0.0f;
      _403 = 0.0f;
      _404 = 0.0f;
    }
    // [sem: invLength]
    _406 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
    if (dot(float3(_137, _138, _139), float3((_406 * _moonDirection.x), (_406 * _moonDirection.y), (_406 * _moonDirection.z))) > _moonSizeAngleCosine) {
      _434 = (saturate(dot(float3(_402, _403, _404), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z))) * _precomputedAmbient7.z);
      _435 = 1.0f;
      _436 = ((dot(float3(_402, _403, _404), float3(_moonRight.x, _moonRight.y, _moonRight.z)) * 0.5f) + 0.5f);
      _437 = ((dot(float3(_402, _403, _404), float3(_moonUp.x, _moonUp.y, _moonUp.z)) * 0.5f) + 0.5f);
    } else {
      _434 = 0.0f;
      _435 = 0.0f;
      _436 = 0.0f;
      _437 = 0.0f;
    }
    _438 = WaveReadLaneFirst(_materialIndex);
    _446 = WaveReadLaneFirst(BindlessParameters_PostProcessSky[((int)((uint)((uint)(select(((uint)_438 < (uint)170000), _438, 0))) + (uint)(0)))].BindlessParameters_PostProcessSky._moonTexture);
    _453 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_446 < (uint)65000), _446, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_436, _437));
    _466 = (((_453.x * _434) - _355) * _435) + _355;
    _467 = (((_453.y * _434) - _356) * _435) + _356;
    _468 = (((_453.z * _434) - _357) * _435) + _357;
    _471 = floor(_time.x);
    if (frac(sqrt(abs(_471 * 0.368417f)) * 3734.4219f) < 0.1f) {
      _479 = _471 + 60.0f;
      _495 = (frac(sin(_479 * 22.037682f) * 435.543f) * 2.0f) + -1.0f;
      _496 = (frac(sin(_479 * 85.16736f) * 435.543f) * 2.0f) + -1.0f;
      _497 = (frac(sin(_479 * 124.43804f) * 435.543f) * 2.0f) + -1.0f;
      _499 = rsqrt(dot(float3(_495, _496, _497), float3(_495, _496, _497)));  // [sem: invLength]
      _500 = _499 * _495;
      _501 = _499 * _496;
      _502 = _497 * _499;
      if (dot(float3(_168, _172, _175), float3(_500, _501, _502)) > 0.99f) {
        _506 = frac(_time.x);
        _516 = frac(sin(_471 * 22.037682f) * 435.543f);
        _517 = frac(sin(_471 * 85.16736f) * 435.543f);
        _518 = frac(sin(_471 * 124.43804f) * 435.543f);
        _527 = saturate(_506 * 1.5f) * 100.0f;
        _528 = _527 * ((_516 * 0.5f) + -0.25f);
        _529 = _527 * ((_517 * 0.5f) + -0.25f);
        _530 = _527 * ((_518 * 0.5f) + -0.25f);
        _531 = _168 * 100.0f;
        _532 = _172 * 100.0f;
        _535 = (_528 * _532) - (_529 * _531);
        if (!(abs(_535) < 0.05f)) {
          _550 = ((_500 + 0.125f) - (_516 * 0.25f)) * -100.0f;
          _551 = ((_501 + 0.125f) - (_517 * 0.25f)) * -100.0f;
          _555 = ((_550 * _532) - (_551 * _531)) / _535;
          _560 = _555 * _530;
          if (!(abs((_560 + (((_502 + 0.125f) - (_518 * 0.25f)) * 100.0f)) - ((_175 * 100.0f) * (((_529 * _550) - (_528 * _551)) / _535))) > 0.05f)) {
            _571 = dot(float3((_555 * _528), (_555 * _529), _560), float3(_528, _529, _530)) / dot(float3(_528, _529, _530), float3(_528, _529, _530));
            if ((_571 >= 0.0f) && (_571 <= 1.0f)) {
              _576 = _571 * _571;
              _577 = _576 * _576;
              _582 = 1.0f - saturate((_506 + -0.5f) * 2.0f);
              _584 = (_577 * _577) * (_582 * _582);
              _585 = _584 * _584;
              _590 = (_585 + _466);
              _591 = (_585 + _467);
              _592 = (_585 + _468);
            } else {
              _590 = _466;
              _591 = _467;
              _592 = _468;
            }
          } else {
            _590 = _466;
            _591 = _467;
            _592 = _468;
          }
        } else {
          _590 = _466;
          _591 = _467;
          _592 = _468;
        }
      } else {
        _590 = _466;
        _591 = _467;
        _592 = _468;
      }
    } else {
      _590 = _466;
      _591 = _467;
      _592 = _468;
    }
    _609 = 1.0f - (_74 * 2.0f);
    _645 = mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _609, ((_invViewProjRelative[3].x) * _92))) + (_invViewProjRelative[3].w);
    _646 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _609, ((_invViewProjRelative[0].x) * _92))) + (_invViewProjRelative[0].w)) / _645;
    _647 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _609, ((_invViewProjRelative[1].x) * _92))) + (_invViewProjRelative[1].w)) / _645;
    _648 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _609, ((_invViewProjRelative[2].x) * _92))) + (_invViewProjRelative[2].w)) / _645;
    _654 = sqrt(((_647 * _647) + (_646 * _646)) + (_648 * _648));
    if (_654 > 128.0f) {
      _659 = _nearFarProj.x * 1e+07f;
      _663 = 2.0f / _bufferSizeAndInvSize.x;
      _664 = 2.0f / _bufferSizeAndInvSize.y;
      [branch]
      if (!_65) {
        _670 = (int)((int)((int)(_56) % (int)(2)) << 1) + (int)(-1);
        _673 = 1;
        _674 = _659;
        _675 = _659;
        _676 = _659;
        _677 = 0;
        _678 = 0;
        _679 = 0;
        while(true) {
          _680 = (int)(_679) * (int)((int)((int)((int)(_58) % (int)(2)) << 1) + (int)(-1));
          _683 = (((float)((int)(_680))) * _664) + _74;
          _686 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_73, _683), 0.0f);  // [sem: _3__36__0__0__g_depthHalf_sampleLod]
          _691 = _nearFarProj.x / max(1e-07f, _686.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
          _695 = abs(_691 - _659);
          _696 = (_695 < _676);
          _700 = select(_696, _695, _676);
          // [sem: _3__36__0__0__g_depthHalf_sampleLod]
          _705 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((((float)((int)(_670))) * _663) + _73), _683), 0.0f);
          _708 = _nearFarProj.x / max(1e-07f, _705.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
          _709 = min(min(_674, _691), _708);
          _710 = max(max(_675, _691), _708);
          _712 = abs(_708 - _659);
          _713 = (_712 < _700);
          _716 = select(_713, ((int)(uint)((int)(_705.x < 1e-07f))), select(_696, ((int)(uint)((int)(_686.x < 1e-07f))), _673));
          _718 = select(_713, _670, select(_696, 0, _677));
          _720 = select((_713 || _696), _680, _678);
          _721 = (int)(_679) + (int)(1);
          if (!(_721 == 2)) {
            _673 = _716;
            _674 = _709;
            _675 = _710;
            _676 = select(_713, _712, _700);
            _677 = _718;
            _678 = _720;
            _679 = _721;
            continue;
          }
          _727 = _716;
          _728 = _709;
          _729 = _710;
          _730 = ((float)((int)(_718)));
          _731 = ((float)((int)(_720)));
          break;
        }
      } else {
        _727 = 1;
        _728 = _659;
        _729 = _659;
        _730 = 0.0f;
        _731 = 0.0f;
      }
      if (!(((_729 - _728) / _729) > ((max(0.0f, (_728 + -20000.0f)) * 0.0001f) + 0.1f))) {
        _748 = (uint)(((_bufferSizeAndInvSize.x * _67) + _66) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(11))) & 1023)))));
        _749 = (uint)((uint)(_748)) >> 1;
        _751 = (uint)((uint)(_748)) >> 3;
        _763 = (float)((uint)((uint)(_748)));
        _766 = 0.33676624f / sqrt(_763 + -0.3f);
        _771 = ((((float)((uint)((uint)(((int)((uint)((uint)(_749)) * (uint)(-1029531031))) ^ _751)))) * 2.3283064e-10f) + -0.5f) * ((_763 * 0.7548776f) + _766);
        _772 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_749)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _751)))) * 2.3283064e-10f) + -0.5f) * ((_763 * 0.56984025f) + _766);
        _780 = ((-0.5f - floor(_771)) + _771);
        _781 = ((-0.5f - floor(_772)) + _772);
      } else {
        _780 = _730;
        _781 = _731;
      }
      _784 = (_780 * _663) + _73;
      _785 = (_781 * _664) + _74;
      _788 = __3__36__0__0__g_texSkyInscatter.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_784, _785), 0.0f);  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod]
      _793 = __3__36__0__0__g_texSkyExtinction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_784, _785), 0.0f);  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod]
      _800 = _788.x;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _801 = _788.y;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _802 = _788.z;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _803 = _793.x;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _804 = _793.y;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _805 = _793.z;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _806 = ((int)(uint)((int)(_727 == 0)));
    } else {
      _800 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _801 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _802 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _803 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _804 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _805 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _806 = 0;
    }
    _821 = (uint)(((_bufferSizeAndInvSize.x * _67) + _66) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(101))) & 1023)))));
    _822 = (uint)((uint)(_821)) >> 1;
    _824 = (uint)((uint)(_821)) >> 3;
    _836 = (float)((uint)((uint)(_821)));
    _839 = 0.33676624f / sqrt(_836 + -0.3f);
    _844 = ((((float)((uint)((uint)(((int)((uint)((uint)(_822)) * (uint)(-1029531031))) ^ _824)))) * 2.3283064e-10f) + -0.5f) * ((_836 * 0.7548776f) + _839);
    _845 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_822)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _824)))) * 2.3283064e-10f) + -0.5f) * ((_836 * 0.56984025f) + _839);
    _849 = (float)((uint)((uint)(_frameNumber.x & 1023)));
    _859 = max(0.0f, (_etcParams.w + -48.0f));
    _860 = max(0.0f, _654);
    if (!(_860 <= 128.0f)) {
      if (!(_859 <= 0.0f)) {
        _881 = ((log2((((_860 + -128.0f) * 0.0078125f) * (exp2(_859 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _881 = 48.0f;
      }
    } else {
      _881 = (log2((_860 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _910 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.x - (_etcParams.y * 4.0f)) > 0.0f))) + 0.5f) / _etcParams.y)), ((((-0.5f - floor(_844)) + _844) / _etcParams.y) + _73)), min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.y - (_etcParams.z * 4.0f)) > 0.0f))) + 0.5f) / _etcParams.z)), ((((-0.5f - floor(_845)) + _845) / _etcParams.z) + _74)), ((_881 - frac(frac(dot(float2(((_849 * 32.665f) + _66), ((_849 * 11.815f) + _67)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) / _etcParams.w)), 0.0f);
    _942 = mad((_projToPrevProj[3].z), 0.01f, mad((_projToPrevProj[3].y), _609, ((_projToPrevProj[3].x) * _92))) + (_projToPrevProj[3].w);
    _945 = ((mad((_projToPrevProj[0].z), 0.01f, mad((_projToPrevProj[0].y), _609, ((_projToPrevProj[0].x) * _92))) + (_projToPrevProj[0].w)) / _942) - _92;
    _946 = ((mad((_projToPrevProj[1].z), 0.01f, mad((_projToPrevProj[1].y), _609, ((_projToPrevProj[1].x) * _92))) + (_projToPrevProj[1].w)) / _942) - _609;
    _952 = dot(float3(_803, _804, _805), float3(0.212671f, 0.71516f, 0.072169f)) * _910.w;
    _955 = saturate(1.0f - (sqrt((_946 * _946) + (_945 * _945)) * 20.0f));  // [sem: expr_sat]
    _959 = (_85 == 10);
    _963 = select(_959, 1.0f, _910.w);
    _972 = _963 * select((_806 != 0), 0.0f, 1.0f);
    __3__38__0__1__g_postProcessUAV[int2(_56, _58)] = float4((((_963 * _800) + select(_959, 0.0f, _910.x)) + ((_803 * (((_591 * 0.33951f) + (_590 * 0.61312f)) + (_592 * 0.04737f))) * _972)), (((_963 * _801) + select(_959, 0.0f, _910.y)) + ((_804 * (((_591 * 0.91636f) + (_590 * 0.0702f)) + (_592 * 0.01345f))) * _972)), (((_963 * _802) + select(_959, 0.0f, _910.z)) + ((_805 * (((_591 * 0.10958f) + (_590 * 0.02062f)) + (_592 * 0.8698f))) * _972)), ((_955 + _952) - (_955 * _952)));
  }
}
