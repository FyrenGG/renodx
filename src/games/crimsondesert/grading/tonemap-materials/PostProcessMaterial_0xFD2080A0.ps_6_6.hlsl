struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

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

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
};

typedef BindlessParameters_PostProcessDirectionalBlur BindlessParameters_PostProcessDirectionalBlur_t;
ConstantBuffer<BindlessParameters_PostProcessDirectionalBlur_t> BindlessParameters_PostProcessDirectionalBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  int _29;
  int _37;
  int _46;
  float _54;
  int _58;
  float _66;
  int _67;
  float _75;
  float _77;
  float _78;
  float _79;
  int _80;
  float _202;
  float _407;
  float _408;
  float _409;
  float _502;
  float _503;
  float _504;
  float _558;
  float _559;
  float _560;
  float _579;
  float _580;
  float _581;
  float _611;
  float _612;
  float _613;
  float _627;
  float _628;
  float _629;
  float _83;
  float _84;
  float _87;
  float _88;
  float4 _93;
  float _103;
  float _104;
  float _105;
  float4 _132;
  float _142;
  float _143;
  float _144;
  float _171;
  float _174;
  float _177;
  int _178;
  uint _189;
  bool _205;
  float _211;
  float _260;
  float _261;
  float _262;
  float _264;
  float _271;
  float _272;
  float _273;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _346;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _369;
  float _370;
  float _371;
  float _372;
  float _378;
  float _381;
  float _388;
  float _389;
  float _390;
  float _419;
  float _444;
  float _445;
  float _446;
  float _465;
  float _466;
  float _467;
  float _473;
  float _477;
  float _478;
  float _479;
  float _480;
  float _485;
  float _510;
  float _514;
  float _515;
  float _516;
  float _517;
  float _547;
  float _569;
  float _570;
  float _574;
  float _618;
  float _639;
  float _640;
  float _641;
  int __loop_jump_target = -1;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_18 < (uint)170000), _18, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_29 < (uint)170000), _29, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_46 < (uint)170000), _46, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_58 < (uint)170000), _58, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_67 < (uint)170000), _67, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _77 = 0.0f;
  _78 = 0.0f;
  _79 = 0.0f;
  _80 = 1;
  while(true) {
    _83 = (_66 * 0.03125f) * float((int)(_80));
    _84 = _75 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_37 < (uint)65000), _37, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_26 * TEXCOORD.x), (_26 * TEXCOORD.y))))).x);
    _87 = _83 * (_84 + (-0.0f - sin(_54)));
    _88 = _83 * (_84 + cos(_54));
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _93 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_87 + TEXCOORD.x), (_88 + TEXCOORD.y)));
    _103 = (pow(_93.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _104 = (pow(_93.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _105 = (pow(_93.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _132 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _87), (TEXCOORD.y - _88)));
    _142 = (pow(_132.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _143 = (pow(_132.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _144 = (pow(_132.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _171 = ((exp2(log2(max(0.0f, (_142 + -0.8359375f)) / (18.8515625f - (_142 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.8515625f - (_103 * 18.6875f))) * 6.277394771575928f)) * 10000.0f) + _77;
    _174 = ((exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.8515625f - (_143 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.8515625f - (_104 * 18.6875f))) * 6.277394771575928f)) * 10000.0f) + _78;
    _177 = ((exp2(log2(max(0.0f, (_144 + -0.8359375f)) / (18.8515625f - (_144 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_105 + -0.8359375f)) / (18.8515625f - (_105 * 18.6875f))) * 6.277394771575928f)) * 10000.0f) + _79;
    _178 = _80 + 1;
    if (!(_178 == 33)) {
      _77 = _171;
      _78 = _174;
      _79 = _177;
      _80 = _178;
      continue;
    }
    _189 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _202 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _189, 0)))).x) & 127)))) + 0.5f);
    } else {
      _202 = _postProcessParams.x;
    }
    _205 = (_localToneMappingParams.w > 0.0f);
    if (_205) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_171, _174, _177));
      _465 = _rndx_tonemapped_color.x;
      _466 = _rndx_tonemapped_color.y;
      _467 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _473 = 1.0f - abs(_etcParams.w);
        _477 = saturate(_etcParams.w);  // [sem: expr_sat]
        _478 = (_473 * _465) + _477;
        _479 = (_473 * _466) + _477;
        _480 = (_473 * _467) + _477;
        if (_colorGradingParams.w > 0.0f) {
          _485 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _502 = (((max(0.0f, (1.0f - _478)) - _478) * _485) + _478);
          _503 = (((max(0.0f, (1.0f - _479)) - _479) * _485) + _479);
          _504 = (((max(0.0f, (1.0f - _480)) - _480) * _485) + _480);
        } else {
          _502 = _478;
          _503 = _479;
          _504 = _480;
        }
        _510 = _userImageAdjust.y + 1.0f;
        _514 = _userImageAdjust.x + 0.5f;
        _515 = ((_502 + -0.5f) * _510) + _514;
        _516 = ((_503 + -0.5f) * _510) + _514;
        _517 = ((_504 + -0.5f) * _510) + _514;
        _547 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _558 = exp2(log2(saturate(mad(_colorBlind0.z, _517, mad(_colorBlind0.y, _516, (_colorBlind0.x * _515))))) * _547);
        _559 = exp2(log2(saturate(mad(_colorBlind1.z, _517, mad(_colorBlind1.y, _516, (_colorBlind1.x * _515))))) * _547);
        _560 = exp2(log2(saturate(mad(_colorBlind2.z, _517, mad(_colorBlind2.y, _516, (_colorBlind2.x * _515))))) * _547);
      } else {
        _558 = _465;
        _559 = _466;
        _560 = _467;
      }
    } else {
      _558 = (_171 * 0.015625f);
      _559 = (_174 * 0.015625f);
      _560 = (_177 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _569 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _570 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _574 = saturate(1.0f - (dot(float2(_569, _570), float2(_569, _570)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _579 = (_574 * _558);
      _580 = (_574 * _559);
      _581 = (_574 * _560);
    } else {
      _579 = _558;
      _580 = _559;
      _581 = _560;
    }
    if (_205 && (_etcParams.z > 0.0f)) {
      _611 = select((_579 <= 0.0031308000907301903f), (_579 * 12.920000076293945f), (((pow(_579, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _612 = select((_580 <= 0.0031308000907301903f), (_580 * 12.920000076293945f), (((pow(_580, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _613 = select((_581 <= 0.0031308000907301903f), (_581 * 12.920000076293945f), (((pow(_581, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _611 = _579;
      _612 = _580;
      _613 = _581;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _618 = (float)((uint)_189);
      if (!(_618 < _viewDir.w)) {
        if (!(_618 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _627 = _611;
          _628 = _612;
          _629 = _613;
        } else {
          _627 = 0.0f;
          _628 = 0.0f;
          _629 = 0.0f;
        }
      } else {
        _627 = 0.0f;
        _628 = 0.0f;
        _629 = 0.0f;
      }
    } else {
      _627 = _611;
      _628 = _612;
      _629 = _613;
    }
    _639 = exp2(log2(_627 * 9.999999747378752e-05f) * 0.1593017578125f);
    _640 = exp2(log2(_628 * 9.999999747378752e-05f) * 0.1593017578125f);
    _641 = exp2(log2(_629 * 9.999999747378752e-05f) * 0.1593017578125f);
    SV_Target.x = exp2(log2((1.0f / ((_639 * 18.6875f) + 1.0f)) * ((_639 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_640 * 18.6875f) + 1.0f)) * ((_640 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _202;
    break;
  }
  return SV_Target;
}
