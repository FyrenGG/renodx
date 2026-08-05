struct PostProcessDamageTestStruct {
  uint _bloodTexture;
  float _bloodRatio;
  uint _dirtTexture;
  uint _dirtMaskTexture;
  float _dirtRatio1;
  float _dirtRatio2;
  float _dirtRatio3;
  uint _waterNormalTexture;
  uint _waterMaskTexture;
  float _waterRatio1;
  float _waterRatio2;
  float _waterRatio3;
  float _isDead;
  float3 _mulColor;
  float _vignettFalloff;
  float _maxPower;
};

struct BindlessParameters_PostProcessDamageTest {
  PostProcessDamageTestStruct BindlessParameters_PostProcessDamageTest;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessDamageTest BindlessParameters_PostProcessDamageTest_t;
ConstantBuffer<BindlessParameters_PostProcessDamageTest_t> BindlessParameters_PostProcessDamageTest[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  int _31;
  int _34;
  int _42;
  float _46;
  float _51;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  int _63;
  float _71;
  float _110;
  float _111;
  float _348;
  float _553;
  float _554;
  float _555;
  float _648;
  float _649;
  float _650;
  float _704;
  float _705;
  float _706;
  float _725;
  float _726;
  float _727;
  float _757;
  float _758;
  float _759;
  float _773;
  float _774;
  float _775;
  float _75;
  float _79;
  float _84;
  float _86;
  float _100;
  float _102;
  float _113;
  float4 _118;
  int _124;
  float _132;
  float _133;
  int _136;
  int _144;
  float4 _151;
  int _158;
  int _166;
  float4 _173;
  int _180;
  int _188;
  float4 _195;
  float _209;
  int _212;
  float _220;
  float _229;
  float _233;
  float _237;
  float _241;
  int _244;
  float _252;
  int _255;
  float _263;
  int _266;
  float _274;
  float _276;
  float _279;
  float _282;
  float _285;
  int _288;
  float _296;
  float _297;
  int _300;
  float _308;
  float _312;
  float _316;
  float _321;
  float _326;
  float _331;
  uint _332;
  bool _351;
  float _357;
  float _376;
  float _392;
  float _408;
  float _409;
  float _413;
  float _416;
  float _419;
  float _426;
  float _433;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  float _462;
  float _478;
  float _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _515;
  float _516;
  float _517;
  float _518;
  float _521;
  float _524;
  float _528;
  float _532;
  float _536;
  float _556;
  float _568;
  float _580;
  float _592;
  float _599;
  float _606;
  float _613;
  float _619;
  float _620;
  float _622;
  float _624;
  float _626;
  float _631;
  float _652;
  float _654;
  float _657;
  float _660;
  float _663;
  float _669;
  float _711;
  float _714;
  float _720;
  float _762;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._waterNormalTexture);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._waterMaskTexture);
  _46 = _destTargetSizAndInv.y * (1.0f - TEXCOORD.y);
  _51 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _53 = _46 / _srcTargetSizeAndInv.y;
  _54 = _46 / _srcTargetSizeAndInv.x;
  _55 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _56 = 0.5f / _55;
  _57 = _51 + -0.5f;
  _58 = _54 - _56;
  _59 = dot(float2(_57, _58), float2(_57, _58));
  _60 = sqrt(_59);
  _63 = WaveReadLaneFirst(_materialIndex);
  _71 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._maxPower);
  if (_71 > 0.0f) {
    _79 = sqrt(dot(float2(0.5f, _56), float2(0.5f, _56)));
    _84 = tan(_79 * _71);
    _86 = tan(_71 * _60) * (rsqrt(_59) * _79);
    _110 = (((_86 * _58) / _84) + _56);
    _111 = (((_86 * _57) / _84) + 0.5f);
  } else {
    _75 = select((_55 < 1.0f), 0.5f, _56);
    if (_71 < 0.0f) {
      _100 = atan((_71 * -10.0f) * _75);
      _102 = atan((_71 * _60) * -10.0f) * (rsqrt(_59) * _75);
      _110 = (((_102 * _58) / _100) + _56);
      _111 = (((_102 * _57) / _100) + 0.5f);
    } else {
      _110 = _54;
      _111 = _51;
    }
  }
  _113 = 1.0f - (_110 * _55);
  _118 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs(_111), abs(_113)));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _124 = WaveReadLaneFirst(_materialIndex);
  _132 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_124 < (uint)170000), _124, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._isDead);
  _133 = dot(float3(_118.x, _118.y, _118.z), float3(0.2627f, 0.678f, 0.0593f));
  _136 = WaveReadLaneFirst(_materialIndex);
  _144 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_136 < (uint)170000), _136, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _151 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_144 < (uint)65000), _144, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _158 = WaveReadLaneFirst(_materialIndex);
  _166 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _173 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_166 < (uint)65000), _166, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _180 = WaveReadLaneFirst(_materialIndex);
  _188 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_180 < (uint)170000), _180, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _195 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_188 < (uint)65000), _188, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _209 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _212 = WaveReadLaneFirst(_materialIndex);
  _220 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _229 = exp2(log2((((_51 * 15.0f) * (1.0f - _51)) * _53) * (1.0f - _53)) * _220);
  _233 = _229 * (lerp(_118.x, _133, _132));
  _237 = _229 * (lerp(_118.y, _133, _132));
  _241 = _229 * (lerp(_118.z, _133, _132));
  _244 = WaveReadLaneFirst(_materialIndex);
  _252 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _255 = WaveReadLaneFirst(_materialIndex);
  _263 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _276 = dot(float3(_195.x, _195.y, _195.z), float3(_252, _263, _274)) * _173.w;
  _279 = (_276 * (_173.x - _233)) + _233;
  _282 = (_276 * (_173.y - _237)) + _237;
  _285 = (_276 * (_173.z - _241)) + _241;
  _288 = WaveReadLaneFirst(_materialIndex);
  _296 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_288 < (uint)170000), _288, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _297 = _296 * _151.w;
  _300 = WaveReadLaneFirst(_materialIndex);
  _308 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_300 < (uint)170000), _300, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _312 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_300 < (uint)170000), _300, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _316 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_300 < (uint)170000), _300, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _321 = _308 * ((_297 * ((_209 * _151.x) - _279)) + _279);
  _326 = _312 * ((_297 * ((_209 * _151.y) - _282)) + _282);
  _331 = _316 * ((_297 * ((_209 * _151.z) - _285)) + _285);
  _332 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _348 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _332, 0)))).x) & 127)))) + 0.5f);
  } else {
    _348 = _postProcessParams.x;
  }
  _351 = (_localToneMappingParams.w > 0.0f);
  if (_351) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_321, _326, _331));
    _599 = _rndx_tonemapped_color.x;
    _606 = _rndx_tonemapped_color.y;
    _613 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _619 = 1.0f - abs(_etcParams.w);
      _620 = saturate(_etcParams.w);  // [sem: expr_sat]
      _622 = (_619 * _599) + _620;
      _624 = (_619 * _606) + _620;
      _626 = (_619 * _613) + _620;
      if (_colorGradingParams.w > 0.0f) {
        _631 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _648 = (((max(0.0f, (1.0f - _622)) - _622) * _631) + _622);
        _649 = (((max(0.0f, (1.0f - _624)) - _624) * _631) + _624);
        _650 = (((max(0.0f, (1.0f - _626)) - _626) * _631) + _626);
      } else {
        _648 = _622;
        _649 = _624;
        _650 = _626;
      }
      _652 = _userImageAdjust.y + 1.0f;
      _654 = _userImageAdjust.x + 0.5f;
      _657 = ((_648 + -0.5f) * _652) + _654;
      _660 = ((_649 + -0.5f) * _652) + _654;
      _663 = ((_650 + -0.5f) * _652) + _654;
      _669 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _704 = exp2(log2(saturate(mad(_colorBlind0.z, _663, mad(_colorBlind0.y, _660, (_colorBlind0.x * _657))))) * _669);
      _705 = exp2(log2(saturate(mad(_colorBlind1.z, _663, mad(_colorBlind1.y, _660, (_colorBlind1.x * _657))))) * _669);
      _706 = exp2(log2(saturate(mad(_colorBlind2.z, _663, mad(_colorBlind2.y, _660, (_colorBlind2.x * _657))))) * _669);
    } else {
      _704 = _599;
      _705 = _606;
      _706 = _613;
    }
  } else {
    _704 = _321;
    _705 = _326;
    _706 = _331;
  }
  if (_etcParams.y > 1.0f) {
    _711 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _714 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _720 = saturate(1.0f - (dot(float2(_711, _714), float2(_711, _714)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _725 = (_720 * _704);
    _726 = (_720 * _705);
    _727 = (_720 * _706);
  } else {
    _725 = _704;
    _726 = _705;
    _727 = _706;
  }
  if (_351 && (_etcParams.z > 0.0f)) {
    _757 = select((_725 <= 0.0031308f), (_725 * 12.92f), (((pow(_725, 0.41666666f)) * 1.055f) + -0.055f));
    _758 = select((_726 <= 0.0031308f), (_726 * 12.92f), (((pow(_726, 0.41666666f)) * 1.055f) + -0.055f));
    _759 = select((_727 <= 0.0031308f), (_727 * 12.92f), (((pow(_727, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _757 = _725;
    _758 = _726;
    _759 = _727;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _762 = (float)((uint)((uint)(_332)));
    if (!(_762 < _viewDir.w)) {
      if (!(!(_762 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _773 = 0.0f;
        _774 = 0.0f;
        _775 = 0.0f;
      } else {
        _773 = _757;
        _774 = _758;
        _775 = _759;
      }
    } else {
      _773 = 0.0f;
      _774 = 0.0f;
      _775 = 0.0f;
    }
  } else {
    _773 = _757;
    _774 = _758;
    _775 = _759;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_773, _774, _775), _sunDirection.y, _moonDirection.y);
    _773 = _rndx_final_color.x;
    _774 = _rndx_final_color.y;
    _775 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _773;
  SV_Target.y = _774;
  SV_Target.z = _775;
  SV_Target.w = _348;
  return SV_Target;
}
