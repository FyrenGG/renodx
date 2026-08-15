struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
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

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

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
  int _22;
  float _30;
  float _33;
  int _34;
  float _42;
  int _43;
  float _51;
  float _52;
  float _53;
  int _60;
  int _68;
  float _80;
  float _84;
  int _85;
  int _93;
  float _105;
  int _113;
  float _121;
  int _122;
  float _130;
  float _131;
  float _132;
  int _133;
  int _141;
  int _151;
  int _159;
  float4 _166;
  float _173;
  float _187;
  float _195;
  float4 _204;
  float _214;
  float _215;
  float _216;
  float _238;
  float _239;
  float _240;
  uint _248;
  float _262;
  float _467;
  float _468;
  float _469;
  float _562;
  float _563;
  float _564;
  float _618;
  float _619;
  float _620;
  float _639;
  float _640;
  float _641;
  float _671;
  float _672;
  float _673;
  float _687;
  float _688;
  float _689;
  bool _265;
  float _271;
  float _320;
  float _321;
  float _322;
  float _324;
  float _331;
  float _332;
  float _333;
  float _352;
  float _353;
  float _354;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _360;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  float _411;
  float _412;
  float _429;
  float _430;
  float _431;
  float _432;
  float _438;
  float _441;
  float _448;
  float _449;
  float _450;
  float _479;
  float _504;
  float _505;
  float _506;
  float _525;
  float _526;
  float _527;
  float _533;
  float _537;
  float _538;
  float _539;
  float _540;
  float _545;
  float _570;
  float _574;
  float _575;
  float _576;
  float _577;
  float _607;
  float _629;
  float _630;
  float _634;
  float _678;
  float _699;
  float _700;
  float _701;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainSpeed);
  _33 = _time.x * _30;
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakUTiling);
  _43 = WaveReadLaneFirst(_materialIndex);
  _51 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakVTiling);
  _52 = _42 * TEXCOORD.x;
  _53 = _51 * TEXCOORD.y;
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _80 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_68 < (uint)65000), _68, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, (_53 - frac(_33)))))).z) + -0.01f) * 1.1235955f);
  _84 = (_80 * _80) * (3.0f - (_80 * 2.0f));
  _85 = WaveReadLaneFirst(_materialIndex);
  _93 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _105 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_93 < (uint)65000), _93, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, ((_53 * 1.2f) - frac(_33 * 1.5f)))))).z) + -0.04f) * 50.0f);
  _113 = WaveReadLaneFirst(_materialIndex);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
  _131 = _121 * TEXCOORD.x;
  _132 = _130 * TEXCOORD.y;
  _133 = WaveReadLaneFirst(_materialIndex);
  _141 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  _151 = WaveReadLaneFirst(_materialIndex);
  _159 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainNormalTexture);
  _166 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_159 < (uint)65000), _159, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, (1.0f - _132)));
  _173 = saturate((2.5f - TEXCOORD.y) * 0.33333334f);  // [sem: expr_sat]
  // [sem: expr_sat]
  _187 = saturate(saturate(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_141 < (uint)65000), _141, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, _132)))).y) - saturate(((((((_105 * _105) * (3.0f - (_105 * 2.0f))) - _84) * 0.5f) + _84) - saturate(exp2(log2((_173 * _173) * (3.0f - (_173 * 2.0f))) * 1.1f))) * 5.0f));
  _195 = dot(float3(_187, _187, _187), float3(1.0f, 1.0f, 1.0f)) * 0.09f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _204 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_195 * ((_187 * ((_166.x * 2.0f) + -1.4960785f)) + 0.5f)) + TEXCOORD.x), abs(TEXCOORD.y - (_195 * ((_187 * ((_166.y * 2.0f) + -1.4960785f)) + 0.5f)))));
  _214 = (pow(_204.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _215 = (pow(_204.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _216 = (pow(_204.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _238 = exp2(log2(max(0.0f, (_214 + -0.8359375f)) / (18.851562f - (_214 * 18.6875f))) * 6.277395f);
  _239 = exp2(log2(max(0.0f, (_215 + -0.8359375f)) / (18.851562f - (_215 * 18.6875f))) * 6.277395f);
  _240 = exp2(log2(max(0.0f, (_216 + -0.8359375f)) / (18.851562f - (_216 * 18.6875f))) * 6.277395f);
  _248 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _262 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _248, 0)))).x) & 127)))) + 0.5f);
  } else {
    _262 = select(isnan(_postProcessParams.x), 0.0f, _postProcessParams.x);
  }
  _265 = (_localToneMappingParams.w > 0.0f);
  if (_265) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_238, _239, _240));
    _525 = _rndx_tonemapped_color.x;
    _526 = _rndx_tonemapped_color.y;
    _527 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _533 = 1.0f - abs(_etcParams.w);
      _537 = saturate(_etcParams.w);  // [sem: expr_sat]
      _538 = (_533 * _525) + _537;
      _539 = (_533 * _526) + _537;
      _540 = (_533 * _527) + _537;
      if (_colorGradingParams.w > 0.0f) {
        _545 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _562 = (((max(0.0f, (1.0f - _538)) - _538) * _545) + _538);
        _563 = (((max(0.0f, (1.0f - _539)) - _539) * _545) + _539);
        _564 = (((max(0.0f, (1.0f - _540)) - _540) * _545) + _540);
      } else {
        _562 = _538;
        _563 = _539;
        _564 = _540;
      }
      _570 = _userImageAdjust.y + 1.0f;
      _574 = _userImageAdjust.x + 0.5f;
      _575 = ((_562 + -0.5f) * _570) + _574;
      _576 = ((_563 + -0.5f) * _570) + _574;
      _577 = ((_564 + -0.5f) * _570) + _574;
      _607 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _618 = exp2(log2(saturate(mad(_colorBlind0.z, _577, mad(_colorBlind0.y, _576, (_colorBlind0.x * _575))))) * _607);
      _619 = exp2(log2(saturate(mad(_colorBlind1.z, _577, mad(_colorBlind1.y, _576, (_colorBlind1.x * _575))))) * _607);
      _620 = exp2(log2(saturate(mad(_colorBlind2.z, _577, mad(_colorBlind2.y, _576, (_colorBlind2.x * _575))))) * _607);
    } else {
      _618 = _525;
      _619 = _526;
      _620 = _527;
    }
  } else {
    _618 = (_238 * 10000.0f);
    _619 = (_239 * 10000.0f);
    _620 = (_240 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _629 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _630 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _634 = saturate(1.0f - (dot(float2(_629, _630), float2(_629, _630)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _639 = (_634 * _618);
    _640 = (_634 * _619);
    _641 = (_634 * _620);
  } else {
    _639 = _618;
    _640 = _619;
    _641 = _620;
  }
  if (_265 && (_etcParams.z > 0.0f)) {
    _671 = select((_639 <= 0.0031308f), (_639 * 12.92f), (((pow(_639, 0.41666666f)) * 1.055f) + -0.055f));
    _672 = select((_640 <= 0.0031308f), (_640 * 12.92f), (((pow(_640, 0.41666666f)) * 1.055f) + -0.055f));
    _673 = select((_641 <= 0.0031308f), (_641 * 12.92f), (((pow(_641, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _671 = _639;
    _672 = _640;
    _673 = _641;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _678 = (float)((uint)((uint)(_248)));
    if (!(_678 < _viewDir.w)) {
      if (!(_678 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _687 = _671;
        _688 = _672;
        _689 = _673;
      } else {
        _687 = 0.0f;
        _688 = 0.0f;
        _689 = 0.0f;
      }
    } else {
      _687 = 0.0f;
      _688 = 0.0f;
      _689 = 0.0f;
    }
  } else {
    _687 = _671;
    _688 = _672;
    _689 = _673;
  }
  _699 = exp2(log2(_687 * 0.0001f) * 0.15930176f);
  _700 = exp2(log2(_688 * 0.0001f) * 0.15930176f);
  _701 = exp2(log2(_689 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_699 * 18.6875f) + 1.0f)) * ((_699 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_700 * 18.6875f) + 1.0f)) * ((_700 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_701 * 18.6875f) + 1.0f)) * ((_701 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _262;
  return SV_Target;
}
