struct PostProcessSubspace_CDStruct {
  float _subspaceRatio;
  float4 _subspaceInfo;
  uint _subspaceTex;
  float _subspaceColorBlendRatio;
  uint _subspaceColor;
  uint _subspaceBlendColor;
};

struct BindlessParameters_PostProcessSubspace_CD {
  PostProcessSubspace_CDStruct BindlessParameters_PostProcessSubspace_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

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

typedef BindlessParameters_PostProcessSubspace_CD BindlessParameters_PostProcessSubspace_CD_t;
ConstantBuffer<BindlessParameters_PostProcessSubspace_CD_t> BindlessParameters_PostProcessSubspace_CD[] : register(b0, space100);

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
  float _28;
  float4 _31;
  float _35;
  float _36;
  int _39;
  int _47;
  float4 _59;
  int _65;
  float _73;
  float _77;
  float _81;
  float _85;
  int _88;
  float _96;
  float _100;
  float _104;
  float _108;
  int _111;
  float _119;
  float _120;
  float _123;
  float _125;
  float _127;
  float _139;
  float _148;
  float _159;
  float _163;
  float _167;
  float _171;
  float _175;
  float _183;
  float _191;
  float _192;
  float _196;
  float _218;
  float _503;
  float _504;
  float _505;
  float _572;
  float _573;
  float _574;
  float _575;
  float _598;
  float _803;
  float _804;
  float _805;
  float _898;
  float _899;
  float _900;
  float _954;
  float _955;
  float _956;
  float _973;
  float _974;
  float _975;
  float _1005;
  float _1006;
  float _1007;
  float _1021;
  float _1022;
  float _1023;
  float _223;
  float _225;
  float _226;
  float _227;
  float _239;
  float _248;
  float _257;
  float _266;
  uint _271;
  uint _275;
  uint4 _277;
  float4 _280;
  float _287;
  float _291;
  float _295;
  float _297;
  float _298;
  float _299;
  float _300;
  float _305;
  float _309;
  float _311;
  float _313;
  float _317;
  float _319;
  float _320;
  float _321;
  float _322;
  float _324;
  float _327;
  float _328;
  float _329;
  float _330;
  float _336;
  float _342;
  float _347;
  float _349;
  float _350;
  float _351;
  float _352;
  float _361;
  float _362;
  float _363;
  float _364;
  float _370;
  float _382;
  int _385;
  int _393;
  float _396;
  float _399;
  float _401;
  float _410;
  float _419;
  float _428;
  int _431;
  int _439;
  float _442;
  float _445;
  float _447;
  int _450;
  float _458;
  float _462;
  float _465;
  float _485;
  float _501;
  float _508;
  float _578;
  float _581;
  float _584;
  uint _585;
  bool _601;
  float _607;
  float _626;
  float _642;
  float _658;
  float _659;
  float _663;
  float _666;
  float _669;
  float _676;
  float _683;
  float _690;
  float _691;
  float _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _712;
  float _728;
  float _744;
  float _745;
  float _746;
  float _747;
  float _748;
  float _765;
  float _766;
  float _767;
  float _768;
  float _771;
  float _774;
  float _778;
  float _782;
  float _786;
  float _806;
  float _818;
  float _830;
  float _842;
  float _849;
  float _856;
  float _863;
  float _869;
  float _870;
  float _872;
  float _874;
  float _876;
  float _881;
  float _902;
  float _904;
  float _907;
  float _910;
  float _913;
  float _919;
  float _960;
  float _962;
  float _968;
  float _1010;
  _28 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = TEXCOORD.x * 2.0f;
  _36 = TEXCOORD.y * 2.0f;
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceTex);
  _59 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_47 < (uint)65000), _47, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_28 * _35), ((_time.x * 0.1f) + _36)));
  _65 = WaveReadLaneFirst(_materialIndex);
  _73 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_65 < (uint)170000), _65, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_65 < (uint)170000), _65, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_65 < (uint)170000), _65, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_65 < (uint)170000), _65, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _88 = WaveReadLaneFirst(_materialIndex);
  _96 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _100 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _111 = WaveReadLaneFirst(_materialIndex);
  _119 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceRatio);
  _120 = _119 * _108;
  _123 = _73 - _viewPos.x;
  _125 = _77 - _viewPos.y;
  _127 = _81 - _viewPos.z;
  _139 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _127, mad((_viewProjRelative[3].y), _125, ((_viewProjRelative[3].x) * _123)));
  _148 = (mad((_viewProjRelative[0].z), _127, mad((_viewProjRelative[0].y), _125, ((_viewProjRelative[0].x) * _123))) + (_viewProjRelative[0].w)) / _139;
  _159 = 0.5f - (((mad((_viewProjRelative[1].z), _127, mad((_viewProjRelative[1].y), _125, ((_viewProjRelative[1].x) * _123))) + (_viewProjRelative[1].w)) / _139) * 0.5f);
  _163 = ((_view[0].x) * _120) + _123;
  _167 = ((_view[0].y) * _120) + _125;
  _171 = ((_view[0].z) * _120) + _127;
  _175 = mad((_viewProjRelative[3].z), _171, mad((_viewProjRelative[3].y), _167, (_163 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
  _183 = (0.5f - (((mad((_viewProjRelative[1].z), _171, mad((_viewProjRelative[1].y), _167, (_163 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _175) * 0.5f)) - _159;
  _191 = (_28 * 0.5f) * (((mad((_viewProjRelative[0].z), _171, mad((_viewProjRelative[0].y), _167, (_163 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _175) - _148);
  _192 = TEXCOORD.y - _159;
  _196 = ((TEXCOORD.x + -0.5f) - (_148 * 0.5f)) * _28;
  // [sem: expr_sat]
  _218 = saturate((1.0f - saturate(sqrt((_192 * _192) + (_196 * _196)) / max(0.001f, sqrt((_191 * _191) + (_183 * _183))))) * 5.0f) * ((float)((bool)(dot(float3(_123, _125, _127), float3(_viewDir.x, _viewDir.y, _viewDir.z)) > 0.0f)));
  if (_218 > 0.0f) {
    _223 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _225 = _35 + -1.0f;
    _226 = 1.0f - _36;
    _227 = max(1e-07f, _223.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _239 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _227, mad((_invViewProj[3].y), _226, ((_invViewProj[3].x) * _225)));
    _248 = (mad((_invViewProj[0].z), _227, mad((_invViewProj[0].y), _226, ((_invViewProj[0].x) * _225))) + (_invViewProj[0].w)) / _239;
    _257 = (mad((_invViewProj[1].z), _227, mad((_invViewProj[1].y), _226, ((_invViewProj[1].x) * _225))) + (_invViewProj[1].w)) / _239;
    _266 = (mad((_invViewProj[2].z), _227, mad((_invViewProj[2].y), _226, ((_invViewProj[2].x) * _225))) + (_invViewProj[2].w)) / _239;
    _271 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
    _275 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
    _277 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_271, _275, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _280 = __3__36__0__0__g_gbufferNormal.Load(int3(_271, _275, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _287 = (saturate(_280.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _291 = (saturate(_280.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _295 = (saturate(_280.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _297 = rsqrt(dot(float3(_287, _291, _295), float3(_287, _291, _295)));  // [sem: invLength]
    _298 = _297 * _287;
    _299 = _297 * _291;
    _300 = _295 * _297;
    _305 = (((float)((uint)((uint)(((uint)((uint)(_277.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _309 = (((float)((uint)((uint)(_277.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _311 = (_305 + _309) * 0.5f;
    _313 = (_305 - _309) * 0.5f;
    _317 = (1.0f - abs(_311)) - abs(_313);
    _319 = rsqrt(dot(float3(_311, _313, _317), float3(_311, _313, _317)));  // [sem: invLength]
    _320 = _319 * _311;
    _321 = _319 * _313;
    _322 = _319 * _317;
    _324 = select((_300 >= 0.0f), 1.0f, -1.0f);
    _327 = -0.0f - (1.0f / (_324 + _300));
    _328 = _299 * _327;
    _329 = _328 * _298;
    _330 = _324 * _298;
    _336 = mad(_322, _298, mad(_321, _329, ((((_330 * _298) * _327) + 1.0f) * _320)));
    _342 = mad(_322, _299, mad(_321, ((_328 * _299) + _324), ((_320 * _324) * _329)));
    _347 = mad(_322, _300, mad(_321, (-0.0f - _299), (-0.0f - (_330 * _320))));
    _349 = rsqrt(dot(float3(_336, _342, _347), float3(_336, _342, _347)));  // [sem: invLength]
    _350 = _248 - _viewPos.x;
    _351 = _257 - _viewPos.y;
    _352 = _266 - _viewPos.z;
    _361 = 1.0f - saturate(dot(float3((_349 * _336), (_349 * _342), (_349 * _347)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _362 = _73 - _248;
    _363 = _77 - _257;
    _364 = _81 - _266;
    _370 = sqrt(((_363 * _363) + (_362 * _362)) + (_364 * _364));
    _382 = exp2((2.0f - (saturate(saturate(1.0f - (_370 / max(0.001f, (_120 * 3.0f)))) * 2.0f) * 1.8f)) * log2(_361));
    _385 = WaveReadLaneFirst(_materialIndex);
    _393 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColor);
    _396 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 16) & 255)));
    _399 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 8) & 255)));
    _401 = (float)((uint)((uint)(_393 & 255)));
    _410 = select(((_396 * 0.003921569f) < 0.04045f), (_396 * 0.000303527f), exp2(log2((_396 * 0.003717127f) + 0.052132703f) * 2.4f));
    _419 = select(((_399 * 0.003921569f) < 0.04045f), (_399 * 0.000303527f), exp2(log2((_399 * 0.003717127f) + 0.052132703f) * 2.4f));
    _428 = select(((_401 * 0.003921569f) < 0.04045f), (_401 * 0.000303527f), exp2(log2((_401 * 0.003717127f) + 0.052132703f) * 2.4f));
    _431 = WaveReadLaneFirst(_materialIndex);
    _439 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceBlendColor);
    _442 = (float)((uint)((uint)(((uint)((uint)(_439)) >> 16) & 255)));
    _445 = (float)((uint)((uint)(((uint)((uint)(_439)) >> 8) & 255)));
    _447 = (float)((uint)((uint)(_439 & 255)));
    _450 = WaveReadLaneFirst(_materialIndex);
    _458 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_450 < (uint)170000), _450, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColorBlendRatio);
    _462 = saturate(1.0f - (_370 / max(0.001f, _120)));  // [sem: expr_sat]
    _465 = saturate((_462 * _462) * 2.0f);  // [sem: expr_sat]
    if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
      _485 = (_361 * _361) * ((_465 * 0.45f) + 0.05f);
      _503 = _485;
      _504 = _485;
      _505 = _485;
    } else {
      if ((_223.x < 1e-07f) || (_223.x == 1.0f)) {
        _503 = (_59.x * 0.1f);
        _504 = (_59.y * 0.1f);
        _505 = (_59.z * 0.1f);
      } else {
        _501 = (((float4)(__3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f))).w) * ((_465 * 0.9f) + 0.1f);
        _503 = _501;
        _504 = _501;
        _505 = _501;
      }
    }
    _508 = max(0.001f, _exposure0.x);
    _572 = (((((select(((_442 * 0.003921569f) < 0.04045f), (_442 * 0.000303527f), exp2(log2((_442 * 0.003717127f) + 0.052132703f) * 2.4f)) - _410) * _458) + _410) * _503) / _508);
    _573 = (((((select(((_445 * 0.003921569f) < 0.04045f), (_445 * 0.000303527f), exp2(log2((_445 * 0.003717127f) + 0.052132703f) * 2.4f)) - _419) * _458) + _419) * _504) / _508);
    _574 = (((((select(((_447 * 0.003921569f) < 0.04045f), (_447 * 0.000303527f), exp2(log2((_447 * 0.003717127f) + 0.052132703f) * 2.4f)) - _428) * _458) + _428) * _505) / _508);
    _575 = (((saturate(((_120 - sqrt(((_125 * _125) + (_123 * _123)) + (_127 * _127))) + sqrt(((_351 * _351) + (_350 * _350)) + (_352 * _352))) * 5.0f) * (1.0f - _382)) + _382) * _218);
  } else {
    _572 = 0.0f;
    _573 = 0.0f;
    _574 = 0.0f;
    _575 = _218;
  }
  _578 = (_575 * (_572 - _31.x)) + _31.x;
  _581 = (_575 * (_573 - _31.y)) + _31.y;
  _584 = (_575 * (_574 - _31.z)) + _31.z;
  _585 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _598 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _585, 0)))).x) & 127)))) + 0.5f);
  } else {
    _598 = 1.0f;
  }
  _601 = (_localToneMappingParams.w > 0.0f);
  if (_601) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_578, _581, _584));
    _849 = _rndx_tonemapped_color.x;
    _856 = _rndx_tonemapped_color.y;
    _863 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _869 = 1.0f - abs(_etcParams.w);
      _870 = saturate(_etcParams.w);  // [sem: expr_sat]
      _872 = (_869 * _849) + _870;
      _874 = (_869 * _856) + _870;
      _876 = (_869 * _863) + _870;
      if (_colorGradingParams.w > 0.0f) {
        _881 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _898 = (((max(0.0f, (1.0f - _872)) - _872) * _881) + _872);
        _899 = (((max(0.0f, (1.0f - _874)) - _874) * _881) + _874);
        _900 = (((max(0.0f, (1.0f - _876)) - _876) * _881) + _876);
      } else {
        _898 = _872;
        _899 = _874;
        _900 = _876;
      }
      _902 = _userImageAdjust.y + 1.0f;
      _904 = _userImageAdjust.x + 0.5f;
      _907 = ((_898 + -0.5f) * _902) + _904;
      _910 = ((_899 + -0.5f) * _902) + _904;
      _913 = ((_900 + -0.5f) * _902) + _904;
      _919 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _954 = exp2(log2(saturate(mad(_colorBlind0.z, _913, mad(_colorBlind0.y, _910, (_colorBlind0.x * _907))))) * _919);
      _955 = exp2(log2(saturate(mad(_colorBlind1.z, _913, mad(_colorBlind1.y, _910, (_colorBlind1.x * _907))))) * _919);
      _956 = exp2(log2(saturate(mad(_colorBlind2.z, _913, mad(_colorBlind2.y, _910, (_colorBlind2.x * _907))))) * _919);
    } else {
      _954 = _849;
      _955 = _856;
      _956 = _863;
    }
  } else {
    _954 = _578;
    _955 = _581;
    _956 = _584;
  }
  if (_etcParams.y > 1.0f) {
    _960 = abs(_35 + -1.0f);
    _962 = abs(_36 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _968 = saturate(1.0f - (dot(float2(_960, _962), float2(_960, _962)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _973 = (_968 * _954);
    _974 = (_968 * _955);
    _975 = (_968 * _956);
  } else {
    _973 = _954;
    _974 = _955;
    _975 = _956;
  }
  if (_601 && (_etcParams.z > 0.0f)) {
    _1005 = select((_973 <= 0.0031308f), (_973 * 12.92f), (((pow(_973, 0.41666666f)) * 1.055f) + -0.055f));
    _1006 = select((_974 <= 0.0031308f), (_974 * 12.92f), (((pow(_974, 0.41666666f)) * 1.055f) + -0.055f));
    _1007 = select((_975 <= 0.0031308f), (_975 * 12.92f), (((pow(_975, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1005 = _973;
    _1006 = _974;
    _1007 = _975;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1010 = (float)((uint)((uint)(_585)));
    if (!(_1010 < _viewDir.w)) {
      if (!(!(_1010 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1021 = 0.0f;
        _1022 = 0.0f;
        _1023 = 0.0f;
      } else {
        _1021 = _1005;
        _1022 = _1006;
        _1023 = _1007;
      }
    } else {
      _1021 = 0.0f;
      _1022 = 0.0f;
      _1023 = 0.0f;
    }
  } else {
    _1021 = _1005;
    _1022 = _1006;
    _1023 = _1007;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1021, _1022, _1023), _sunDirection.y, _moonDirection.y);
    _1021 = _rndx_final_color.x;
    _1022 = _rndx_final_color.y;
    _1023 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1021;
  SV_Target.y = _1022;
  SV_Target.z = _1023;
  SV_Target.w = _598;
  return SV_Target;
}
