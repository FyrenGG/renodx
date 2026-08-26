struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _27;
  float _37;
  float _38;
  float _39;
  float _61;
  float _62;
  float _63;
  float _64;
  float _65;
  float _66;
  int _67;
  float _75;
  float _76;
  float _101;
  float _102;
  float _103;
  float _130;
  float _131;
  float _132;
  float _199;
  float _200;
  float _201;
  float _261;
  float _262;
  float _263;
  float _439;
  float _440;
  float _441;
  float _464;
  float _465;
  float _466;
  float _480;
  float _685;
  float _686;
  float _687;
  float _780;
  float _781;
  float _782;
  float _836;
  float _837;
  float _838;
  float _857;
  float _858;
  float _859;
  float _889;
  float _890;
  float _891;
  float _905;
  float _906;
  float _907;
  float _83;
  float _86;
  float _87;
  float _93;
  int _104;
  float _112;
  bool _114;
  float _119;
  int _133;
  float _141;
  int _145;
  float _153;
  float _154;
  float _170;
  float _174;
  float _180;
  float _191;
  float4 _204;
  float _214;
  float _215;
  float _216;
  float _233;
  int _234;
  float _242;
  float _256;
  int _264;
  float _272;
  float _283;
  float _287;
  float _291;
  float _300;
  float _301;
  float _302;
  float _303;
  float _310;
  float _311;
  float _312;
  float _314;
  float _319;
  float _322;
  float _358;
  float _359;
  float _360;
  float _361;
  float _363;
  float _370;
  float _382;
  int _386;
  float _394;
  int _399;
  int _407;
  float4 _414;
  float _418;
  float _431;
  int _442;
  float _450;
  float _451;
  float _456;
  uint _467;
  bool _483;
  float _489;
  float _538;
  float _539;
  float _540;
  float _542;
  float _549;
  float _550;
  float _551;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _629;
  float _630;
  float _647;
  float _648;
  float _649;
  float _650;
  float _656;
  float _659;
  float _666;
  float _667;
  float _668;
  float _697;
  float _722;
  float _723;
  float _724;
  float _743;
  float _744;
  float _745;
  float _751;
  float _755;
  float _756;
  float _757;
  float _758;
  float _763;
  float _788;
  float _792;
  float _793;
  float _794;
  float _795;
  float _825;
  float _847;
  float _848;
  float _852;
  float _896;
  float _917;
  float _918;
  float _919;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_27.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_27.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_27.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _61 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f);
  _62 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f);
  _63 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f);
  _64 = _61 * 10000.0f;
  _65 = _62 * 10000.0f;
  _66 = _63 * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _76 = saturate(_75);  // [sem: _75_sat]
  [branch]
  if (!(_76 < 0.0001f)) {
    _83 = 1.0f / max(0.001f, abs(_exposure0.x));
    _86 = _exposure2.x * _83;
    _87 = _83 * 0.5f;
    [branch]
    if (!(!(_76 >= 0.001f))) {
      _93 = (1.0f - saturate(_86)) * (_76 * 10000.0f);
      _101 = (_61 * (_93 + 10000.0f));
      _102 = (_62 * (_93 + 10000.0f));
      _103 = (_63 * (_93 + 10000.0f));
    } else {
      _101 = _64;
      _102 = _65;
      _103 = _66;
    }
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _114 = (_76 >= 0.001f);
    if (_114 && (!(_112 == 1.0f))) {
      _119 = ((_112 + -1.0f) * _76) + 1.0f;
      _130 = ((_119 * (_101 - _87)) + _87);
      _131 = ((_119 * (_102 - _87)) + _87);
      _132 = ((_119 * (_103 - _87)) + _87);
    } else {
      _130 = _101;
      _131 = _102;
      _132 = _103;
    }
    _133 = WaveReadLaneFirst(_materialIndex);
    _141 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_114 && (_141 < 1.0f)) {
      _145 = WaveReadLaneFirst(_materialIndex);
      _153 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _154 = max(0.0001f, _153);
      // [sem: expr_sat]
      _170 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _154))) / (1.0f - saturate(1.5f / _154)));
      _174 = (_170 * _170) * (3.0f - (_170 * 2.0f));
      _180 = (((1.0f - saturate(_86)) * 0.3f) * (1.0f - _174)) + _174;
      _191 = (1.0f - _141) * _76;
      _199 = ((((_180 * (_130 - _87)) + _87) * _191) + _130);
      _200 = ((((_180 * (_131 - _87)) + _87) * _191) + _131);
      _201 = ((((_180 * (_132 - _87)) + _87) * _191) + _132);
    } else {
      _199 = _130;
      _200 = _131;
      _201 = _132;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _204 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _214 = (pow(_204.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _215 = (pow(_204.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _216 = (pow(_204.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _233 = exp2(log2(max(0.0f, (_216 + -0.8359375f)) / (18.851562f - (_216 * 18.6875f))) * 6.277395f) * 10000.0f;
    _234 = WaveReadLaneFirst(_materialIndex);
    _242 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_234 < (uint)170000), _234, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_242 >= 0.001f))) {
      _256 = 1.0f - (((_76 * 6000.0f) * _242) * exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.851562f - (_214 * 18.6875f))) * 6.277395f));
      _261 = (_256 * _199);
      _262 = (_256 * _200);
      _263 = (_256 * _201);
    } else {
      _261 = _199;
      _262 = _200;
      _263 = _201;
    }
    _264 = WaveReadLaneFirst(_materialIndex);
    _272 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_264 < (uint)170000), _264, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_272 >= 0.0001f))) {
      _283 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _287 = (_283 * _283) * (3.0f - (_283 * 2.0f));
      // [sem: invLength]
      _291 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _300 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _301 = _300 * _moonDirection.x;
      _302 = _300 * _moonDirection.y;
      _303 = _300 * _moonDirection.z;
      _310 = (((_291 * _sunDirection.x) - _301) * _287) + _301;
      _311 = (((_291 * _sunDirection.y) - _302) * _287) + _302;
      _312 = (((_291 * _sunDirection.z) - _303) * _287) + _303;
      _314 = rsqrt(dot(float3(_310, _311, _312), float3(_310, _311, _312)));  // [sem: invLength]
      _319 = (TEXCOORD.x * 2.0f) + -1.0f;
      _322 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _358 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _322, ((_invViewProjRelative[3].x) * _319));
      _359 = ((mad((_invViewProjRelative[0].y), _322, ((_invViewProjRelative[0].x) * _319)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _358;
      _360 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _322, ((_invViewProjRelative[1].x) * _319))) / _358;
      _361 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _322, ((_invViewProjRelative[2].x) * _319))) / _358;
      _363 = rsqrt(dot(float3(_359, _360, _361), float3(_359, _360, _361)));  // [sem: invLength]
      // [sem: expr_sat]
      _370 = saturate((dot(float3((_363 * _359), (_363 * _360), (_363 * _361)), float3((_310 * _314), (_311 * _314), (_312 * _314))) + -0.5f) * 2.0f);
      _382 = (((_287 * 3.6f) + 0.9f) * _233) * saturate(exp2(log2((_370 * _370) * (3.0f - (_370 * 2.0f))) * 3.0f));
      _386 = WaveReadLaneFirst(_materialIndex);
      _394 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _399 = WaveReadLaneFirst(_materialIndex);
      _407 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _414 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_407 < (uint)65000), _407, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((1.0f / _srcTargetSizeAndInv.y) * TEXCOORD.x) * _srcTargetSizeAndInv.x) * _394), (_394 * TEXCOORD.y)));
      _418 = dot(float3(0.3f, 0.59f, 0.11f), float3(_414.x, _414.y, _414.z));
      _431 = (((_83 * _76) * _272) * (0.096f - (_287 * 0.013000004f))) * (_382 + _233);
      _439 = (((lerp(_418, _414.x, _382)) * _431) + _261);
      _440 = (((lerp(_418, _414.y, _382)) * _431) + _262);
      _441 = (((lerp(_418, _414.z, _382)) * _431) + _263);
    } else {
      _439 = _261;
      _440 = _262;
      _441 = _263;
    }
    _442 = WaveReadLaneFirst(_materialIndex);
    _450 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_442 < (uint)170000), _442, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _451 = saturate(_450);  // [sem: _450_sat]
    [branch]
    if (!(!(_451 >= 0.001f))) {
      _456 = ((_76 * 10000.0f) * exp2(log2(max(0.0f, (_215 + -0.8359375f)) / (18.851562f - (_215 * 18.6875f))) * 6.277395f)) * _451;
      _464 = (_439 - (_456 * _439));
      _465 = (_440 - (_456 * _440));
      _466 = (_441 - (_456 * _441));
    } else {
      _464 = _439;
      _465 = _440;
      _466 = _441;
    }
  } else {
    _464 = _64;
    _465 = _65;
    _466 = _66;
  }
  _467 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _480 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _467, 0)))).x) & 127)))) + 0.5f);
  } else {
    _480 = 1.0f;
  }
  _483 = (_localToneMappingParams.w > 0.0f);
  if (_483) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_464, _465, _466));
    _743 = _rndx_tonemapped_color.x;
    _744 = _rndx_tonemapped_color.y;
    _745 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _751 = 1.0f - abs(_etcParams.w);
      _755 = saturate(_etcParams.w);  // [sem: expr_sat]
      _756 = (_751 * _743) + _755;
      _757 = (_751 * _744) + _755;
      _758 = (_751 * _745) + _755;
      if (_colorGradingParams.w > 0.0f) {
        _763 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _780 = (((max(0.0f, (1.0f - _756)) - _756) * _763) + _756);
        _781 = (((max(0.0f, (1.0f - _757)) - _757) * _763) + _757);
        _782 = (((max(0.0f, (1.0f - _758)) - _758) * _763) + _758);
      } else {
        _780 = _756;
        _781 = _757;
        _782 = _758;
      }
      _788 = _userImageAdjust.y + 1.0f;
      _792 = _userImageAdjust.x + 0.5f;
      _793 = ((_780 + -0.5f) * _788) + _792;
      _794 = ((_781 + -0.5f) * _788) + _792;
      _795 = ((_782 + -0.5f) * _788) + _792;
      _825 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _836 = exp2(log2(saturate(mad(_colorBlind0.z, _795, mad(_colorBlind0.y, _794, (_colorBlind0.x * _793))))) * _825);
      _837 = exp2(log2(saturate(mad(_colorBlind1.z, _795, mad(_colorBlind1.y, _794, (_colorBlind1.x * _793))))) * _825);
      _838 = exp2(log2(saturate(mad(_colorBlind2.z, _795, mad(_colorBlind2.y, _794, (_colorBlind2.x * _793))))) * _825);
    } else {
      _836 = _743;
      _837 = _744;
      _838 = _745;
    }
  } else {
    _836 = _464;
    _837 = _465;
    _838 = _466;
  }
  if (_etcParams.y > 1.0f) {
    _847 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _848 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _852 = saturate(1.0f - (dot(float2(_847, _848), float2(_847, _848)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _857 = (_852 * _836);
    _858 = (_852 * _837);
    _859 = (_852 * _838);
  } else {
    _857 = _836;
    _858 = _837;
    _859 = _838;
  }
  if (_483 && (_etcParams.z > 0.0f)) {
    _889 = select((_857 <= 0.0031308f), (_857 * 12.92f), (((pow(_857, 0.41666666f)) * 1.055f) + -0.055f));
    _890 = select((_858 <= 0.0031308f), (_858 * 12.92f), (((pow(_858, 0.41666666f)) * 1.055f) + -0.055f));
    _891 = select((_859 <= 0.0031308f), (_859 * 12.92f), (((pow(_859, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _889 = _857;
    _890 = _858;
    _891 = _859;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _896 = (float)((uint)((uint)(_467)));
    if (!(_896 < _viewDir.w)) {
      if (!(_896 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _905 = _889;
        _906 = _890;
        _907 = _891;
      } else {
        _905 = 0.0f;
        _906 = 0.0f;
        _907 = 0.0f;
      }
    } else {
      _905 = 0.0f;
      _906 = 0.0f;
      _907 = 0.0f;
    }
  } else {
    _905 = _889;
    _906 = _890;
    _907 = _891;
  }
  _917 = exp2(log2(_905 * 0.0001f) * 0.15930176f);
  _918 = exp2(log2(_906 * 0.0001f) * 0.15930176f);
  _919 = exp2(log2(_907 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_917 * 18.6875f) + 1.0f)) * ((_917 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_918 * 18.6875f) + 1.0f)) * ((_918 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_919 * 18.6875f) + 1.0f)) * ((_919 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _480;
  return SV_Target;
}
