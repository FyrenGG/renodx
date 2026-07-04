struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
};

typedef BindlessParameters_PostProcessAbyssEnter_CD BindlessParameters_PostProcessAbyssEnter_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnter_CD_t> BindlessParameters_PostProcessAbyssEnter_CD[] : register(b0, space100);

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
  int _38;
  int _46;
  float _83;
  float _84;
  float _85;
  float _86;
  float _150;
  float _151;
  float _152;
  float _153;
  float _154;
  float _155;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _273;
  float _320;
  float _321;
  float _322;
  float _336;
  float _541;
  float _542;
  float _543;
  float _636;
  float _637;
  float _638;
  float _692;
  float _693;
  float _694;
  float _713;
  float _714;
  float _715;
  float _745;
  float _746;
  float _747;
  float _761;
  float _762;
  float _763;
  float _49;
  int _58;
  int _66;
  float4 _73;
  float _76;
  float _78;
  float _79;
  float _80;
  float _81;
  float _98;
  float _102;
  float4 _107;
  float _117;
  float _118;
  float _119;
  float _144;
  float _145;
  float _146;
  float _160;
  float _161;
  float _162;
  float _163;
  float _172;
  float _173;
  float _175;
  float _190;
  float _191;
  float _192;
  float _198;
  float _203;
  int _210;
  float _218;
  float _219;
  int _227;
  int _235;
  float4 _240;
  float _242;
  float _246;
  float _247;
  float _261;
  float _266;
  float _278;
  float _279;
  float _280;
  float _281;
  float _290;
  float _291;
  float _293;
  float _311;
  float _312;
  float _313;
  float _316;
  uint _323;
  bool _339;
  float _345;
  float _394;
  float _395;
  float _396;
  float _398;
  float _405;
  float _406;
  float _407;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _480;
  float _481;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _503;
  float _504;
  float _505;
  float _506;
  float _512;
  float _515;
  float _522;
  float _523;
  float _524;
  float _553;
  float _578;
  float _579;
  float _580;
  float _599;
  float _600;
  float _601;
  float _607;
  float _611;
  float _612;
  float _613;
  float _614;
  float _619;
  float _644;
  float _648;
  float _649;
  float _650;
  float _651;
  float _681;
  float _703;
  float _704;
  float _708;
  float _752;
  float _773;
  float _774;
  float _775;
  int __loop_jump_target = -1;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)(select(((uint)_38 < (uint)170000), _38, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_46 == 0) {
    _49 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _58 = WaveReadLaneFirst(_materialIndex);
    _66 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)(select(((uint)_58 < (uint)170000), _58, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _73 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_66 < (uint)65000), _66, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_49 * TEXCOORD.x) - (_time.x * 0.2199999988079071f)), ((_49 * TEXCOORD.y) - (_time.x * 0.18000000715255737f))));
    _76 = _73.x + -0.30000001192092896f;
    _78 = ((_73.x + -0.4000000059604645f) * 10.471975326538086f) + -1.5707963705062866f;
    _79 = sin(_78);
    _80 = cos(_78);
    _81 = _76 * 0.029999999329447746f;
    _83 = _81;
    _84 = _81;
    _85 = 0.0f;
    _86 = -1.0f;
    while(true) {
      _98 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_83 * _79) * _86)), (TEXCOORD.y - ((_84 * _80) * _86)))))).w) * 0.20000000298023224f) + _85;
      _102 = _86 + 0.20000000298023224f;
      if (!(!(_102 <= 1.0f))) {
        _83 = (_83 * 1.0099999904632568f);
        _84 = (_84 * 1.0099999904632568f);
        _85 = (_98 * 0.8999999761581421f);
        _86 = _102;
        continue;
      }
      _107 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _117 = (pow(_107.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _118 = (pow(_107.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _119 = (pow(_107.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _144 = exp2(log2(max(0.0f, (_117 + -0.8359375f)) / (18.8515625f - (_117 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _145 = exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.8515625f - (_118 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _146 = exp2(log2(max(0.0f, (_119 + -0.8359375f)) / (18.8515625f - (_119 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      if ((_98 * 0.5400000214576721f) > 0.0f) {
        _150 = _81;
        _151 = _81;
        _152 = 0.0f;
        _153 = 0.0f;
        _154 = 0.0f;
        _155 = -1.0f;
        while(true) {
          _160 = TEXCOORD.x - ((_150 * _79) * _155);
          _161 = TEXCOORD.y - ((_151 * _80) * _155);
          _162 = _160 + -0.5f;
          _163 = _161 + -0.5f;
  // [sem: invLength]
          _172 = rsqrt(dot(float2(_162, _163), float2(_162, _163))) * ((_76 * 0.05999999865889549f) * sqrt((_162 * _162) + (_163 * _163)));
          _173 = _172 * _162;
          _175 = _172 * _163;
          _190 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_160 - _173), (_161 - _175))))).x) * 0.20000000298023224f) + _152;
          _191 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_160, _161)))).y) * 0.20000000298023224f) + _153;
          _192 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_173 + _160), (_175 + _161))))).z) * 0.20000000298023224f) + _154;
          _198 = _155 + 0.20000000298023224f;
          if (!(!(_198 <= 1.0f))) {
            _150 = (_150 * 1.0099999904632568f);
            _151 = (_151 * 1.0099999904632568f);
            _152 = (_190 * 0.8999999761581421f);
            _153 = (_191 * 0.8999999761581421f);
            _154 = (_192 * 0.8999999761581421f);
            _155 = _198;
            continue;
          }
          _203 = 0.5400000214576721f / max(0.0010000000474974513f, _exposure0.x);
          _210 = WaveReadLaneFirst(_materialIndex);
          _218 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)(select(((uint)_210 < (uint)170000), _210, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnter_CD._ppAbyssEnterRatio);
          _219 = _218 * saturate(_98 * 1.0800000429153442f);
          _320 = ((_219 * ((_190 * _203) - _144)) + _144);
          _321 = ((_219 * ((_191 * _203) - _145)) + _145);
          _322 = ((_219 * ((_192 * _203) - _146)) + _146);
          break;
        }
      } else {
        _320 = _144;
        _321 = _145;
        _322 = _146;
      }
      break;
    }
  } else {
    _227 = WaveReadLaneFirst(_materialIndex);
    _235 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)(select(((uint)_227 < (uint)170000), _227, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_235 == 1) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _240 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _242 = _240.w + -0.4000000059604645f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _246 = (float)((uint)uint(_srcTargetSizeAndInv.x * TEXCOORD.x));
      _247 = (float)((uint)uint(_srcTargetSizeAndInv.y * TEXCOORD.y));
      _261 = min(max(((_242 * 6.6666669845581055f) + -1.0f), -1.0f), 1.0f);
      _266 = (_242 * 0.020000001415610313f) + -0.003000000026077032f;
      _268 = _266;
      _269 = _266;
      _270 = 0.0f;
      _271 = 0.0f;
      _272 = 0.0f;
      _273 = -1.0f;
      while(true) {
        _278 = TEXCOORD.x - ((_268 * ((frac(frac(dot(float2(_246, _247), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) + -0.5f) - (_261 * 8.742277657347586e-08f))) * _273);
        _279 = TEXCOORD.y - ((_269 * ((frac(frac(dot(float2((_246 + 32.665000915527344f), (_247 + 11.8149995803833f)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) + -0.5f) - _261)) * _273);
        _280 = _278 + -0.5f;
        _281 = _279 + -0.5f;
  // [sem: invLength]
        _290 = rsqrt(dot(float2(_280, _281), float2(_280, _281))) * (((_240.w + -0.30000001192092896f) * 0.0010000000474974513f) * sqrt((_280 * _280) + (_281 * _281)));
        _291 = _290 * _280;
        _293 = _290 * _281;
        _311 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_278 - _291), (_279 - _293))))).x) * 0.20000000298023224f) + _270) * 0.5f;
        _312 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_278, _279)))).y) * 0.20000000298023224f) + _271) * 0.5f;
        _313 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_291 + _278), (_293 + _279))))).z) * 0.20000000298023224f) + _272) * 0.5f;
        _316 = _273 + 0.20000000298023224f;
        if (!(!(_316 <= 1.0f))) {
          _268 = (_268 * 0.20000000298023224f);
          _269 = (_269 * 0.20000000298023224f);
          _270 = _311;
          _271 = _312;
          _272 = _313;
          _273 = _316;
          continue;
        }
        _320 = _311;
        _321 = _312;
        _322 = _313;
        break;
      }
    } else {
      _320 = 0.0f;
      _321 = 0.0f;
      _322 = 0.0f;
    }
  }
  _323 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _336 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _323, 0)))).x) & 127)))) + 0.5f);
  } else {
    _336 = 1.0f;
  }
  _339 = (_localToneMappingParams.w > 0.0f);
  if (_339) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_320, _321, _322));
    _599 = _rndx_tonemapped_color.x;
    _600 = _rndx_tonemapped_color.y;
    _601 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _607 = 1.0f - abs(_etcParams.w);
      _611 = saturate(_etcParams.w);  // [sem: expr_sat]
      _612 = (_607 * _599) + _611;
      _613 = (_607 * _600) + _611;
      _614 = (_607 * _601) + _611;
      if (_colorGradingParams.w > 0.0f) {
        _619 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _636 = (((max(0.0f, (1.0f - _612)) - _612) * _619) + _612);
        _637 = (((max(0.0f, (1.0f - _613)) - _613) * _619) + _613);
        _638 = (((max(0.0f, (1.0f - _614)) - _614) * _619) + _614);
      } else {
        _636 = _612;
        _637 = _613;
        _638 = _614;
      }
      _644 = _userImageAdjust.y + 1.0f;
      _648 = _userImageAdjust.x + 0.5f;
      _649 = ((_636 + -0.5f) * _644) + _648;
      _650 = ((_637 + -0.5f) * _644) + _648;
      _651 = ((_638 + -0.5f) * _644) + _648;
      _681 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _692 = exp2(log2(saturate(mad(_colorBlind0.z, _651, mad(_colorBlind0.y, _650, (_colorBlind0.x * _649))))) * _681);
      _693 = exp2(log2(saturate(mad(_colorBlind1.z, _651, mad(_colorBlind1.y, _650, (_colorBlind1.x * _649))))) * _681);
      _694 = exp2(log2(saturate(mad(_colorBlind2.z, _651, mad(_colorBlind2.y, _650, (_colorBlind2.x * _649))))) * _681);
    } else {
      _692 = _599;
      _693 = _600;
      _694 = _601;
    }
  } else {
    _692 = _320;
    _693 = _321;
    _694 = _322;
  }
  if (_etcParams.y > 1.0f) {
    _703 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _704 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _708 = saturate(1.0f - (dot(float2(_703, _704), float2(_703, _704)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _713 = (_708 * _692);
    _714 = (_708 * _693);
    _715 = (_708 * _694);
  } else {
    _713 = _692;
    _714 = _693;
    _715 = _694;
  }
  if (_339 && (_etcParams.z > 0.0f)) {
    _745 = select((_713 <= 0.0031308000907301903f), (_713 * 12.920000076293945f), (((pow(_713, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _746 = select((_714 <= 0.0031308000907301903f), (_714 * 12.920000076293945f), (((pow(_714, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _747 = select((_715 <= 0.0031308000907301903f), (_715 * 12.920000076293945f), (((pow(_715, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _745 = _713;
    _746 = _714;
    _747 = _715;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _752 = (float)((uint)_323);
    if (!(_752 < _viewDir.w)) {
      if (!(_752 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _761 = _745;
        _762 = _746;
        _763 = _747;
      } else {
        _761 = 0.0f;
        _762 = 0.0f;
        _763 = 0.0f;
      }
    } else {
      _761 = 0.0f;
      _762 = 0.0f;
      _763 = 0.0f;
    }
  } else {
    _761 = _745;
    _762 = _746;
    _763 = _747;
  }
  _773 = exp2(log2(_761 * 9.999999747378752e-05f) * 0.1593017578125f);
  _774 = exp2(log2(_762 * 9.999999747378752e-05f) * 0.1593017578125f);
  _775 = exp2(log2(_763 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_773 * 18.6875f) + 1.0f)) * ((_773 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_774 * 18.6875f) + 1.0f)) * ((_774 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_775 * 18.6875f) + 1.0f)) * ((_775 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _336;
  return SV_Target;
}
