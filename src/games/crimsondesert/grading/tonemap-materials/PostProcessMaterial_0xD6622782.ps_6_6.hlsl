struct PostProcessTransitionStruct {
  uint _sceneSampleType;
  uint _sceneDistortTex;
  float2 _sceneDistortTexScale;
  float2 _sceneDistortIntensity;
  float _scenePolarDistort;
  float2 _scenePolarDistortCenter;
  float _topVignetteRatio;
  float _topVignetteRadius;
  float _topVignettePower;
  uint _topVignetteColor;
  float _sideVignetteRatio;
  float _sideVignetteRadius;
  float _sideVignettePower;
  uint _sideVignetteColor;
  float _bottomVignetteRatio;
  float _bottomVignetteRadius;
  float _bottomVignettePower;
  uint _bottomVignetteColor;
  float _impactFrame;
  float _impactFrameFresnel;
  float _impactFrameFresnelIntensity;
  float _impactFrameInverse;
  uint _chapterTransitionTex;
  uint _chapterTransitionNoiseTex;
  float _chapterTransition;
  float _chapterTransitionUseDivide;
};

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
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

typedef BindlessParameters_PostProcessTransition BindlessParameters_PostProcessTransition_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_t> BindlessParameters_PostProcessTransition[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[4] = { -1.0f, -1.0f, 0.0f, 0.0f };
static const float _global_1[4] = { -1.0f, 0.0f, -1.0f, 0.0f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _29;
  float _37;
  float _40;
  int _66;
  float _67;
  float _68;
  float _69;
  float _70;
  float _71;
  float _72;
  int _73;
  float _74;
  float _75;
  int _141;
  float _142;
  float _143;
  float _144;
  float _145;
  float _179;
  float _180;
  float _181;
  float _182;
  float _202;
  float _407;
  float _408;
  float _409;
  float _502;
  float _503;
  float _504;
  float _562;
  float _563;
  float _564;
  float _583;
  float _584;
  float _585;
  float _615;
  float _616;
  float _617;
  float _631;
  float _632;
  float _633;
  int _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  int _699;
  float _700;
  float _701;
  float _82;
  float4 _87;
  float4 _96;
  float _101;
  float _103;
  float _105;
  int _106;
  float _113;
  float _117;
  float _121;
  int _125;
  int _128;
  float4 _136;
  int _146;
  float _149;
  float _152;
  float _155;
  float _161;
  float _167;
  float _173;
  float _175;
  int _183;
  float _186;
  float _187;
  float _188;
  uint _189;
  bool _205;
  float _211;
  float _230;
  float _246;
  float _262;
  float _263;
  float _267;
  float _270;
  float _273;
  float _280;
  float _287;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _316;
  float _332;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _369;
  float _370;
  float _371;
  float _372;
  float _375;
  float _378;
  float _382;
  float _386;
  float _390;
  float _410;
  float _422;
  float _434;
  float _446;
  float _453;
  float _460;
  float _467;
  float _473;
  float _474;
  float _476;
  float _478;
  float _480;
  float _485;
  float _506;
  float _508;
  float _511;
  float _514;
  float _517;
  float _523;
  float _569;
  float _572;
  float _578;
  float _620;
  float _637;
  float _641;
  float _645;
  int _674;
  int __loop_jump_target = -1;
  float _15[4];
  float _16[4];
  float _17[4];
  float _18[4];
  float _19[4];
  float _20[4];
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  _40 = 1.0f / _srcTargetSizeAndInv.y;
  _18[0] = 0.0f;
  _19[0] = 0.0f;
  _20[0] = 0.0f;
  _18[1] = 0.0f;
  _19[1] = 0.0f;
  _20[1] = 0.0f;
  _18[2] = 0.0f;
  _19[2] = 0.0f;
  _20[2] = 0.0f;
  _18[3] = 0.0f;
  _19[3] = 0.0f;
  _20[3] = 0.0f;
  _15[0] = 0.0f;
  _16[0] = 0.0f;
  _17[0] = 0.0f;
  _15[1] = 0.0f;
  _16[1] = 0.0f;
  _17[1] = 0.0f;
  _15[2] = 0.0f;
  _16[2] = 0.0f;
  _17[2] = 0.0f;
  _15[3] = 0.0f;
  _16[3] = 0.0f;
  _17[3] = 0.0f;
  _66 = 0;
  _67 = 0.0f;
  _68 = 0.0f;
  _69 = 0.0f;
  _70 = 0.0f;
  _71 = 0.0f;
  _72 = 0.0f;
  _73 = 0;
  _74 = -1.0f;
  _75 = -1.0f;
  while(true) {
    _699 = _73;
    _700 = _74;
    _701 = _75;
    _82 = ((1.0f / _srcTargetSizeAndInv.x) * (_74 + ((float)((int)(_66))))) + TEXCOORD.x;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _87 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_82, ((_75 * _40) + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _96 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_82, (((_75 + 1.0f) * _40) + TEXCOORD.y)));
    _101 = (_87.x + _67) + _96.x;
    _103 = (_87.y + _68) + _96.y;
    _105 = (_87.z + _69) + _96.z;
    _106 = (int)min((uint)(_73), (uint)(3));
    _18[_106] = _101;
    _19[_106] = _103;
    _20[_106] = _105;
    _113 = ((_87.x * _87.x) + _70) + (_96.x * _96.x);
    _117 = ((_87.y * _87.y) + _71) + (_96.y * _96.y);
    _121 = ((_87.z * _87.z) + _72) + (_96.z * _96.z);
    _15[_106] = _113;
    _16[_106] = _117;
    _17[_106] = _121;
    _125 = (int)(_66) + (int)(1);
    if (!(_125 == 2)) {
      _692 = _125;
      _693 = _101;
      _694 = _103;
      _695 = _105;
      _696 = _113;
      _697 = _117;
      _698 = _121;
      _699 = _73;
      _700 = _74;
      _701 = _75;
      _66 = _692;
      _67 = _693;
      _68 = _694;
      _69 = _695;
      _70 = _696;
      _71 = _697;
      _72 = _698;
      _73 = _699;
      _74 = _700;
      _75 = _701;
      continue;
    }
    _128 = (int)(_73) + (int)(1);
    if (!(_128 == 4)) {
      _674 = (int)min((uint)(_128), (uint)(3));
      _692 = 0;
      _693 = (_18[_674]);
      _694 = (_19[_674]);
      _695 = (_20[_674]);
      _696 = (_15[_674]);
      _697 = (_16[_674]);
      _698 = (_17[_674]);
      _699 = _128;
      _700 = (_global_0[_674]);
      _701 = (_global_1[_674]);
      _66 = _692;
      _67 = _693;
      _68 = _694;
      _69 = _695;
      _70 = _696;
      _71 = _697;
      _72 = _698;
      _73 = _699;
      _74 = _700;
      _75 = _701;
      continue;
    }
    _136 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _141 = 0;
    _142 = 10000.0f;
    _143 = _136.z;
    _144 = _136.y;
    _145 = _136.x;
    while(true) {
      _146 = (int)min((uint)(_141), (uint)(3));
      _149 = (_18[_146]) * 0.25f;
      _152 = (_19[_146]) * 0.25f;
      _155 = (_20[_146]) * 0.25f;
      _18[_146] = _149;
      _19[_146] = _152;
      _20[_146] = _155;
      _161 = abs(((_15[_146]) * 0.25f) - (_149 * _149));
      _167 = abs(((_16[_146]) * 0.25f) - (_152 * _152));
      _173 = abs(((_17[_146]) * 0.25f) - (_155 * _155));
      _15[_146] = _161;
      _16[_146] = _167;
      _17[_146] = _173;
      _175 = (_167 + _161) + _173;
      if (!(_175 < _142)) {
        _179 = _142;
        _180 = _143;
        _181 = _144;
        _182 = _145;
      } else {
        _179 = _175;
        _180 = _155;
        _181 = _152;
        _182 = _149;
      }
      _183 = (int)(_141) + (int)(1);
      if (!(_183 == 4)) {
        _141 = _183;
        _142 = _179;
        _143 = _180;
        _144 = _181;
        _145 = _182;
        continue;
      }
      _186 = dot(float3(_182, _181, _180), float3(0.393f, 0.769f, 0.189f));
      _187 = dot(float3(_182, _181, _180), float3(0.349f, 0.686f, 0.158f));
      _188 = dot(float3(_182, _181, _180), float3(0.272f, 0.534f, 0.131f));
      _189 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _202 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _189, 0)))).x) & 127)))) + 0.5f);
      } else {
        _202 = 0.0f;
      }
      _205 = (_localToneMappingParams.w > 0.0f);
      if (_205) {
              // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
              // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
              float3 _rndx_tonemapped_color = TonemapReplacer(float3(_186, _187, _188));
              _453 = _rndx_tonemapped_color.x;
              _460 = _rndx_tonemapped_color.y;
              _467 = _rndx_tonemapped_color.z;
              // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _473 = 1.0f - abs(_etcParams.w);
          _474 = saturate(_etcParams.w);  // [sem: expr_sat]
          _476 = (_473 * _453) + _474;
          _478 = (_473 * _460) + _474;
          _480 = (_473 * _467) + _474;
          if (_colorGradingParams.w > 0.0f) {
            _485 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _502 = (((max(0.0f, (1.0f - _480)) - _480) * _485) + _480);
            _503 = (((max(0.0f, (1.0f - _478)) - _478) * _485) + _478);
            _504 = (((max(0.0f, (1.0f - _476)) - _476) * _485) + _476);
          } else {
            _502 = _480;
            _503 = _478;
            _504 = _476;
          }
          _506 = _userImageAdjust.y + 1.0f;
          _508 = _userImageAdjust.x + 0.5f;
          _511 = ((_504 + -0.5f) * _506) + _508;
          _514 = ((_503 + -0.5f) * _506) + _508;
          _517 = ((_502 + -0.5f) * _506) + _508;
          _523 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _562 = exp2(log2(saturate(mad(_colorBlind2.z, _517, mad(_colorBlind2.y, _514, (_colorBlind2.x * _511))))) * _523);
          _563 = exp2(log2(saturate(mad(_colorBlind1.z, _517, mad(_colorBlind1.y, _514, (_colorBlind1.x * _511))))) * _523);
          _564 = exp2(log2(saturate(mad(_colorBlind0.z, _517, mad(_colorBlind0.y, _514, (_colorBlind0.x * _511))))) * _523);
        } else {
          _562 = _467;
          _563 = _460;
          _564 = _453;
        }
      } else {
        _562 = (_188 * 0.3f);
        _563 = (_187 * 0.3f);
        _564 = (_186 * 0.3f);
      }
      if (_etcParams.y > 1.0f) {
        _569 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _572 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _578 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_569, _572), float2(_569, _572))));  // [sem: expr_sat]
        _583 = (_578 * _562);
        _584 = (_578 * _563);
        _585 = (_578 * _564);
      } else {
        _583 = _562;
        _584 = _563;
        _585 = _564;
      }
      if (_205 && (_etcParams.z > 0.0f)) {
        _615 = select((_584 <= 0.0031308f), (_584 * 12.92f), (((pow(_584, 0.41666666f)) * 1.055f) + -0.055f));
        _616 = select((_585 <= 0.0031308f), (_585 * 12.92f), (((pow(_585, 0.41666666f)) * 1.055f) + -0.055f));
        _617 = select((_583 <= 0.0031308f), (_583 * 12.92f), (((pow(_583, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _615 = _584;
        _616 = _585;
        _617 = _583;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _620 = (float)((uint)((uint)(_189)));
        if (!(_620 < _viewDir.w)) {
          if (!(!(_620 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _631 = 0.0f;
            _632 = 0.0f;
            _633 = 0.0f;
          } else {
            _631 = _616;
            _632 = _615;
            _633 = _617;
          }
        } else {
          _631 = 0.0f;
          _632 = 0.0f;
          _633 = 0.0f;
        }
      } else {
        _631 = _616;
        _632 = _615;
        _633 = _617;
      }
      _637 = exp2(log2(_631 * 0.0001f) * 0.15930176f);
      _641 = exp2(log2(_632 * 0.0001f) * 0.15930176f);
      _645 = exp2(log2(_633 * 0.0001f) * 0.15930176f);
      SV_Target.x = exp2(log2((1.0f / ((_637 * 18.6875f) + 1.0f)) * ((_637 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_645 * 18.6875f) + 1.0f)) * ((_645 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _202;
      break;
    }
    break;
  }
  return SV_Target;
}
