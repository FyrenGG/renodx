struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float2 _seedPoint : packoffset(c000.y);
  float _dirDependency : packoffset(c000.w);
  float _choppyScale : packoffset(c001.x);
  float _cascadeSize1 : packoffset(c001.y);
  float _cascadeSize2 : packoffset(c001.z);
  float _cascadeSize3 : packoffset(c001.w);
  float _cascadeSize4 : packoffset(c002.x);
  float _cascadeAmplitude1 : packoffset(c002.y);
  float _cascadeAmplitude2 : packoffset(c002.z);
  float _cascadeAmplitude3 : packoffset(c002.w);
  float _cascadeAmplitude4 : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  uint _scatteringAlbedo : packoffset(c003.z);
  float _underWaterMossRate : packoffset(c003.w);
  float _underWaterMossScale : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float2 _seaPadding : packoffset(c004.z);
};

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _281;
  float _282;
  float _283;
  float _284;
  int _285;
  float _401;
  float _402;
  float _403;
  float _404;
  int _405;
  float _456;
  float _457;
  float _458;
  float _472;
  float _677;
  float _678;
  float _679;
  float _772;
  float _773;
  float _774;
  float _828;
  float _829;
  float _830;
  float _849;
  float _850;
  float _851;
  float _881;
  float _882;
  float _883;
  float _897;
  float _898;
  float _899;
  int _44;
  float _61;
  float _63;
  float _64;
  float4 _101;
  int _105;
  float _113;
  float _114;
  float _116;
  float _117;
  float _122;
  float _132;
  float _135;
  float _137;
  float _165;
  float4 _179;
  float _186;
  float4 _188;
  float4 _193;
  float _197;
  float4 _199;
  float4 _204;
  int _227;
  float _234;
  float _235;
  float _236;
  float _264;
  float _269;
  float _270;
  bool _271;
  float _276;
  float _277;
  float _286;
  int _287;
  float _295;
  float _298;
  int _303;
  float _311;
  float _314;
  float4 _317;
  float _324;
  float _325;
  float _326;
  float _327;
  int _328;
  float _331;
  int _335;
  float _343;
  float _354;
  float _355;
  float _356;
  float _384;
  float _389;
  float _390;
  bool _391;
  float _396;
  float _397;
  float _406;
  int _407;
  float _415;
  float _418;
  int _423;
  float _431;
  float _434;
  float4 _437;
  float _444;
  float _445;
  float _446;
  float _447;
  int _448;
  float _451;
  uint _459;
  bool _475;
  float _481;
  float _530;
  float _531;
  float _532;
  float _534;
  float _541;
  float _542;
  float _543;
  float _562;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _570;
  float _616;
  float _617;
  float _618;
  float _619;
  float _620;
  float _621;
  float _622;
  float _639;
  float _640;
  float _641;
  float _642;
  float _648;
  float _651;
  float _658;
  float _659;
  float _660;
  float _689;
  float _714;
  float _715;
  float _716;
  float _735;
  float _736;
  float _737;
  float _743;
  float _747;
  float _748;
  float _749;
  float _750;
  float _755;
  float _780;
  float _784;
  float _785;
  float _786;
  float _787;
  float _817;
  float _839;
  float _840;
  float _844;
  float _888;
  int __loop_jump_target = -1;
  if (_passIndex == 0) {
    _44 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127;
    if ((_44 != 107) && (!(((uint)(_44 + -27) < (uint)2) || ((_44 == 26) || ((uint)(_44 + -105) < (uint)2))))) {
      _61 = (TEXCOORD.x * 2.0f) + -1.0f;
      _63 = 1.0f - (TEXCOORD.y * 2.0f);
      _64 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      if (abs(((mad((_invViewProj[2].y), _64, mad((_invViewProj[1].y), _63, ((_invViewProj[0].y) * _61))) + (_invViewProj[3].y)) / (mad((_invViewProj[2].w), _64, mad((_invViewProj[1].w), _63, ((_invViewProj[0].w) * _61))) + (_invViewProj[3].w))) - _seaBaseline) < 1.0f) {
        _101 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _105 = WaveReadLaneFirst(_materialIndex);
        _113 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_105 < (uint)170000), _105, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _114 = dot(float3(_101.x, _101.y, _101.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
        _116 = (_113 * 0.75f) + 9.999999747378752e-06f;
        _117 = _114 - _113;
        _122 = saturate((_117 + _116) / ((_113 * 1.5f) + 1.9999999494757503e-05f));  // [sem: expr_sat]
        _132 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _135 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _137 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        _165 = (max(_117, ((_122 * _122) * _116)) / max(_114, 9.999999747378752e-06f)) * saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) * 10.0f);
        _456 = ((_165 * _101.x) * select(((_132 * 0.003921568859368563f) < 0.040449999272823334f), (_132 * 0.0003035269910469651f), exp2(log2((_132 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _457 = ((_165 * _101.y) * select(((_135 * 0.003921568859368563f) < 0.040449999272823334f), (_135 * 0.0003035269910469651f), exp2(log2((_135 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _458 = ((_165 * _101.z) * select(((_137 * 0.003921568859368563f) < 0.040449999272823334f), (_137 * 0.0003035269910469651f), exp2(log2((_137 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
      } else {
        _456 = 0.0f;
        _457 = 0.0f;
        _458 = 0.0f;
      }
    } else {
      _456 = 0.0f;
      _457 = 0.0f;
      _458 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _179 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _186 = _srcTargetSizeAndInv.z * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _188 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_186 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _193 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _186), TEXCOORD.y));
      _197 = _srcTargetSizeAndInv.z * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _199 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_197 + TEXCOORD.x), TEXCOORD.y));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _204 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _197), TEXCOORD.y));
      _456 = ((((_193.x + _188.x) * 0.31621623039245605f) + (_179.x * 0.227027028799057f)) + ((_204.x + _199.x) * 0.07027027010917664f));
      _457 = ((((_193.y + _188.y) * 0.31621623039245605f) + (_179.y * 0.227027028799057f)) + ((_204.y + _199.y) * 0.07027027010917664f));
      _458 = ((((_193.z + _188.z) * 0.31621623039245605f) + (_179.z * 0.227027028799057f)) + ((_204.z + _199.z) * 0.07027027010917664f));
    } else {
      _227 = _passIndex & -2;
      if (_227 == 2) {
        _234 = _sunDirection.x * 10000.0f;
        _235 = _sunDirection.y * 10000.0f;
        _236 = _sunDirection.z * 10000.0f;
        _264 = mad((_viewProjRelative[2].w), _236, mad((_viewProjRelative[1].w), _235, ((_viewProjRelative[0].w) * _234))) + (_viewProjRelative[3].w);
        _269 = (((mad((_viewProjRelative[2].x), _236, mad((_viewProjRelative[1].x), _235, ((_viewProjRelative[0].x) * _234))) + (_viewProjRelative[3].x)) / _264) * 0.5f) + 0.5f;
        _270 = 0.5f - (((mad((_viewProjRelative[2].y), _236, mad((_viewProjRelative[1].y), _235, ((_viewProjRelative[0].y) * _234))) + (_viewProjRelative[3].y)) / _264) * 0.5f);
        _271 = (_264 <= 0.0f);
        _276 = TEXCOORD.x - select(_271, (-0.0f - _269), _269);
        _277 = TEXCOORD.y - select(_271, (-0.0f - _270), _270);
        _281 = 0.0f;
        _282 = 0.0f;
        _283 = 0.0f;
        _284 = 0.0f;
        _285 = 0;
        while(true) {
          _286 = float((int)(_285));
          _287 = WaveReadLaneFirst(_materialIndex);
          _295 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_287 < (uint)170000), _287, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
          _298 = _295 * ((rsqrt(dot(float2(_276, _277), float2(_276, _277))) * 0.06666667014360428f) * _286);
          _303 = WaveReadLaneFirst(_materialIndex);
          _311 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_303 < (uint)170000), _303, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftDecay);
          _314 = (pow(_311, _286));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _317 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_298 * _276)), (TEXCOORD.y - (_298 * _277))));
          _324 = (_317.x * _314) + _281;
          _325 = (_317.y * _314) + _282;
          _326 = (_317.z * _314) + _283;
          _327 = _314 + _284;
          _328 = _285 + 1;
          if (!(_328 == 16)) {
            _281 = _324;
            _282 = _325;
            _283 = _326;
            _284 = _327;
            _285 = _328;
            continue;
          }
          _331 = max(_327, 9.999999747378752e-05f);
          _335 = WaveReadLaneFirst(_materialIndex);
          _343 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_335 < (uint)170000), _335, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
          _456 = (_343 * (_324 / _331));
          _457 = (_343 * (_325 / _331));
          _458 = (_343 * (_326 / _331));
          break;
        }
      } else {
        if (_227 == 4) {
          _354 = _sunDirection.x * 10000.0f;
          _355 = _sunDirection.y * 10000.0f;
          _356 = _sunDirection.z * 10000.0f;
          _384 = mad((_viewProjRelative[2].w), _356, mad((_viewProjRelative[1].w), _355, ((_viewProjRelative[0].w) * _354))) + (_viewProjRelative[3].w);
          _389 = (((mad((_viewProjRelative[2].x), _356, mad((_viewProjRelative[1].x), _355, ((_viewProjRelative[0].x) * _354))) + (_viewProjRelative[3].x)) / _384) * 0.5f) + 0.5f;
          _390 = 0.5f - (((mad((_viewProjRelative[2].y), _356, mad((_viewProjRelative[1].y), _355, ((_viewProjRelative[0].y) * _354))) + (_viewProjRelative[3].y)) / _384) * 0.5f);
          _391 = (_384 <= 0.0f);
          _396 = TEXCOORD.x - select(_391, (-0.0f - _389), _389);
          _397 = TEXCOORD.y - select(_391, (-0.0f - _390), _390);
          _401 = 0.0f;
          _402 = 0.0f;
          _403 = 0.0f;
          _404 = 0.0f;
          _405 = 0;
          while(true) {
            _406 = float((int)(_405));
            _407 = WaveReadLaneFirst(_materialIndex);
            _415 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_407 < (uint)170000), _407, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._blurStrength);
            _418 = _415 * ((rsqrt(dot(float2(_396, _397), float2(_396, _397))) * 0.06666667014360428f) * _406);
            _423 = WaveReadLaneFirst(_materialIndex);
            _431 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_423 < (uint)170000), _423, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._blurDecay);
            _434 = (pow(_431, _406));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _437 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_418 * _396)), (TEXCOORD.y - (_418 * _397))));
            _444 = (_437.x * _434) + _401;
            _445 = (_437.y * _434) + _402;
            _446 = (_437.z * _434) + _403;
            _447 = _434 + _404;
            _448 = _405 + 1;
            if (!(_448 == 16)) {
              _401 = _444;
              _402 = _445;
              _403 = _446;
              _404 = _447;
              _405 = _448;
              continue;
            }
            _451 = max(_447, 9.999999747378752e-05f);
            _456 = (_444 / _451);
            _457 = (_445 / _451);
            _458 = (_446 / _451);
            break;
          }
        } else {
          _456 = 0.0f;
          _457 = 0.0f;
          _458 = 0.0f;
        }
      }
    }
  }
  _459 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _472 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _459, 0)))).x) & 127)))) + 0.5f);
  } else {
    _472 = 1.0f;
  }
  _475 = (_localToneMappingParams.w > 0.0f);
  if (_475) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_456, _457, _458));
    _735 = _rndx_tonemapped_color.x;
    _736 = _rndx_tonemapped_color.y;
    _737 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _743 = 1.0f - abs(_etcParams.w);
      _747 = saturate(_etcParams.w);  // [sem: expr_sat]
      _748 = (_743 * _735) + _747;
      _749 = (_743 * _736) + _747;
      _750 = (_743 * _737) + _747;
      if (_colorGradingParams.w > 0.0f) {
        _755 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _772 = (((max(0.0f, (1.0f - _748)) - _748) * _755) + _748);
        _773 = (((max(0.0f, (1.0f - _749)) - _749) * _755) + _749);
        _774 = (((max(0.0f, (1.0f - _750)) - _750) * _755) + _750);
      } else {
        _772 = _748;
        _773 = _749;
        _774 = _750;
      }
      _780 = _userImageAdjust.y + 1.0f;
      _784 = _userImageAdjust.x + 0.5f;
      _785 = ((_772 + -0.5f) * _780) + _784;
      _786 = ((_773 + -0.5f) * _780) + _784;
      _787 = ((_774 + -0.5f) * _780) + _784;
      _817 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _828 = exp2(log2(saturate(mad(_colorBlind0.z, _787, mad(_colorBlind0.y, _786, (_colorBlind0.x * _785))))) * _817);
      _829 = exp2(log2(saturate(mad(_colorBlind1.z, _787, mad(_colorBlind1.y, _786, (_colorBlind1.x * _785))))) * _817);
      _830 = exp2(log2(saturate(mad(_colorBlind2.z, _787, mad(_colorBlind2.y, _786, (_colorBlind2.x * _785))))) * _817);
    } else {
      _828 = _735;
      _829 = _736;
      _830 = _737;
    }
  } else {
    _828 = _456;
    _829 = _457;
    _830 = _458;
  }
  if (_etcParams.y > 1.0f) {
    _839 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _840 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _844 = saturate(1.0f - (dot(float2(_839, _840), float2(_839, _840)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _849 = (_844 * _828);
    _850 = (_844 * _829);
    _851 = (_844 * _830);
  } else {
    _849 = _828;
    _850 = _829;
    _851 = _830;
  }
  if (_475 && (_etcParams.z > 0.0f)) {
    _881 = select((_849 <= 0.0031308000907301903f), (_849 * 12.920000076293945f), (((pow(_849, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _882 = select((_850 <= 0.0031308000907301903f), (_850 * 12.920000076293945f), (((pow(_850, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _883 = select((_851 <= 0.0031308000907301903f), (_851 * 12.920000076293945f), (((pow(_851, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _881 = _849;
    _882 = _850;
    _883 = _851;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _888 = (float)((uint)_459);
    if (!(_888 < _viewDir.w)) {
      if (!(_888 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _897 = _881;
        _898 = _882;
        _899 = _883;
      } else {
        _897 = 0.0f;
        _898 = 0.0f;
        _899 = 0.0f;
      }
    } else {
      _897 = 0.0f;
      _898 = 0.0f;
      _899 = 0.0f;
    }
  } else {
    _897 = _881;
    _898 = _882;
    _899 = _883;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_897, _898, _899), _sunDirection.y, _moonDirection.y);
    _897 = _rndx_final_color.x;
    _898 = _rndx_final_color.y;
    _899 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _897;
  SV_Target.y = _898;
  SV_Target.z = _899;
  SV_Target.w = _472;
  return SV_Target;
}
