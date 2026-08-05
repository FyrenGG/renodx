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
  float _384;
  float _589;
  float _590;
  float _591;
  float _684;
  float _685;
  float _686;
  float _740;
  float _741;
  float _742;
  float _761;
  float _762;
  float _763;
  float _793;
  float _794;
  float _795;
  float _809;
  float _810;
  float _811;
  float _75;
  float _79;
  float _84;
  float _86;
  float _100;
  float _102;
  float _113;
  float4 _118;
  float _124;
  float _127;
  float _130;
  float _139;
  float _148;
  float _157;
  int _160;
  float _168;
  float _169;
  int _172;
  int _180;
  float4 _187;
  int _194;
  int _202;
  float4 _209;
  int _216;
  int _224;
  float4 _231;
  float _245;
  int _248;
  float _256;
  float _265;
  float _269;
  float _273;
  float _277;
  int _280;
  float _288;
  int _291;
  float _299;
  int _302;
  float _310;
  float _312;
  float _315;
  float _318;
  float _321;
  int _324;
  float _332;
  float _333;
  int _336;
  float _344;
  float _348;
  float _352;
  float _357;
  float _362;
  float _367;
  uint _368;
  bool _387;
  float _393;
  float _412;
  float _428;
  float _444;
  float _445;
  float _449;
  float _452;
  float _455;
  float _462;
  float _469;
  float _476;
  float _477;
  float _478;
  float _479;
  float _480;
  float _481;
  float _482;
  float _498;
  float _514;
  float _530;
  float _531;
  float _532;
  float _533;
  float _534;
  float _551;
  float _552;
  float _553;
  float _554;
  float _557;
  float _560;
  float _564;
  float _568;
  float _572;
  float _592;
  float _604;
  float _616;
  float _628;
  float _635;
  float _642;
  float _649;
  float _655;
  float _656;
  float _658;
  float _660;
  float _662;
  float _667;
  float _688;
  float _690;
  float _693;
  float _696;
  float _699;
  float _705;
  float _747;
  float _750;
  float _756;
  float _798;
  float _815;
  float _819;
  float _823;
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
  _124 = (pow(_118.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _127 = (pow(_118.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _130 = (pow(_118.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _139 = exp2(log2(max(0.0f, (_124 + -0.8359375f)) / (18.851562f - (_124 * 18.6875f))) * 6.277395f) * 10000.0f;
  _148 = exp2(log2(max(0.0f, (_127 + -0.8359375f)) / (18.851562f - (_127 * 18.6875f))) * 6.277395f) * 10000.0f;
  _157 = exp2(log2(max(0.0f, (_130 + -0.8359375f)) / (18.851562f - (_130 * 18.6875f))) * 6.277395f) * 10000.0f;
  _160 = WaveReadLaneFirst(_materialIndex);
  _168 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_160 < (uint)170000), _160, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._isDead);
  _169 = dot(float3(_139, _148, _157), float3(0.2627f, 0.678f, 0.0593f));
  _172 = WaveReadLaneFirst(_materialIndex);
  _180 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_172 < (uint)170000), _172, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _187 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_180 < (uint)65000), _180, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _194 = WaveReadLaneFirst(_materialIndex);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _209 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_202 < (uint)65000), _202, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _216 = WaveReadLaneFirst(_materialIndex);
  _224 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_216 < (uint)170000), _216, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _231 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_224 < (uint)65000), _224, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113));
  _245 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _248 = WaveReadLaneFirst(_materialIndex);
  _256 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_248 < (uint)170000), _248, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _265 = exp2(log2((((_51 * 15.0f) * (1.0f - _51)) * _53) * (1.0f - _53)) * _256);
  _269 = _265 * (lerp(_139, _169, _168));
  _273 = _265 * (lerp(_148, _169, _168));
  _277 = _265 * (lerp(_157, _169, _168));
  _280 = WaveReadLaneFirst(_materialIndex);
  _288 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _291 = WaveReadLaneFirst(_materialIndex);
  _299 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_291 < (uint)170000), _291, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _302 = WaveReadLaneFirst(_materialIndex);
  _310 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_302 < (uint)170000), _302, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _312 = dot(float3(_231.x, _231.y, _231.z), float3(_288, _299, _310)) * _209.w;
  _315 = (_312 * (_209.x - _269)) + _269;
  _318 = (_312 * (_209.y - _273)) + _273;
  _321 = (_312 * (_209.z - _277)) + _277;
  _324 = WaveReadLaneFirst(_materialIndex);
  _332 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_324 < (uint)170000), _324, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _333 = _332 * _187.w;
  _336 = WaveReadLaneFirst(_materialIndex);
  _344 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _348 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _352 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_336 < (uint)170000), _336, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _357 = _344 * ((_333 * ((_245 * _187.x) - _315)) + _315);
  _362 = _348 * ((_333 * ((_245 * _187.y) - _318)) + _318);
  _367 = _352 * ((_333 * ((_245 * _187.z) - _321)) + _321);
  _368 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _384 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _368, 0)))).x) & 127)))) + 0.5f);
  } else {
    _384 = _postProcessParams.x;
  }
  _387 = (_localToneMappingParams.w > 0.0f);
  if (_387) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_357, _362, _367));
    _635 = _rndx_tonemapped_color.x;
    _642 = _rndx_tonemapped_color.y;
    _649 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _655 = 1.0f - abs(_etcParams.w);
      _656 = saturate(_etcParams.w);  // [sem: expr_sat]
      _658 = (_655 * _635) + _656;
      _660 = (_655 * _642) + _656;
      _662 = (_655 * _649) + _656;
      if (_colorGradingParams.w > 0.0f) {
        _667 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _684 = (((max(0.0f, (1.0f - _658)) - _658) * _667) + _658);
        _685 = (((max(0.0f, (1.0f - _660)) - _660) * _667) + _660);
        _686 = (((max(0.0f, (1.0f - _662)) - _662) * _667) + _662);
      } else {
        _684 = _658;
        _685 = _660;
        _686 = _662;
      }
      _688 = _userImageAdjust.y + 1.0f;
      _690 = _userImageAdjust.x + 0.5f;
      _693 = ((_684 + -0.5f) * _688) + _690;
      _696 = ((_685 + -0.5f) * _688) + _690;
      _699 = ((_686 + -0.5f) * _688) + _690;
      _705 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _740 = exp2(log2(saturate(mad(_colorBlind0.z, _699, mad(_colorBlind0.y, _696, (_colorBlind0.x * _693))))) * _705);
      _741 = exp2(log2(saturate(mad(_colorBlind1.z, _699, mad(_colorBlind1.y, _696, (_colorBlind1.x * _693))))) * _705);
      _742 = exp2(log2(saturate(mad(_colorBlind2.z, _699, mad(_colorBlind2.y, _696, (_colorBlind2.x * _693))))) * _705);
    } else {
      _740 = _635;
      _741 = _642;
      _742 = _649;
    }
  } else {
    _740 = _357;
    _741 = _362;
    _742 = _367;
  }
  if (_etcParams.y > 1.0f) {
    _747 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _750 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _756 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_747, _750), float2(_747, _750))));  // [sem: expr_sat]
    _761 = (_756 * _740);
    _762 = (_756 * _741);
    _763 = (_756 * _742);
  } else {
    _761 = _740;
    _762 = _741;
    _763 = _742;
  }
  if (_387 && (_etcParams.z > 0.0f)) {
    _793 = select((_761 <= 0.0031308f), (_761 * 12.92f), (((pow(_761, 0.41666666f)) * 1.055f) + -0.055f));
    _794 = select((_762 <= 0.0031308f), (_762 * 12.92f), (((pow(_762, 0.41666666f)) * 1.055f) + -0.055f));
    _795 = select((_763 <= 0.0031308f), (_763 * 12.92f), (((pow(_763, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _793 = _761;
    _794 = _762;
    _795 = _763;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _798 = (float)((uint)((uint)(_368)));
    if (!(_798 < _viewDir.w)) {
      if (!(!(_798 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _809 = 0.0f;
        _810 = 0.0f;
        _811 = 0.0f;
      } else {
        _809 = _793;
        _810 = _794;
        _811 = _795;
      }
    } else {
      _809 = 0.0f;
      _810 = 0.0f;
      _811 = 0.0f;
    }
  } else {
    _809 = _793;
    _810 = _794;
    _811 = _795;
  }
  _815 = exp2(log2(_809 * 0.0001f) * 0.15930176f);
  _819 = exp2(log2(_810 * 0.0001f) * 0.15930176f);
  _823 = exp2(log2(_811 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_815 * 18.6875f) + 1.0f)) * ((_815 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_819 * 18.6875f) + 1.0f)) * ((_819 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_823 * 18.6875f) + 1.0f)) * ((_823 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _384;
  return SV_Target;
}
