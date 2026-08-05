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
  float _37;
  float _40;
  float _43;
  float _52;
  float _61;
  float _70;
  float _71;
  float _72;
  int _75;
  int _83;
  float4 _95;
  int _101;
  float _109;
  float _113;
  float _117;
  float _121;
  int _124;
  float _132;
  float _136;
  float _140;
  float _144;
  int _147;
  float _155;
  float _156;
  float _159;
  float _161;
  float _163;
  float _175;
  float _184;
  float _195;
  float _199;
  float _203;
  float _207;
  float _211;
  float _219;
  float _227;
  float _228;
  float _232;
  float _254;
  float _539;
  float _540;
  float _541;
  float _608;
  float _609;
  float _610;
  float _611;
  float _634;
  float _839;
  float _840;
  float _841;
  float _934;
  float _935;
  float _936;
  float _990;
  float _991;
  float _992;
  float _1009;
  float _1010;
  float _1011;
  float _1041;
  float _1042;
  float _1043;
  float _1057;
  float _1058;
  float _1059;
  float _259;
  float _261;
  float _262;
  float _263;
  float _275;
  float _284;
  float _293;
  float _302;
  uint _307;
  uint _311;
  uint4 _313;
  float4 _316;
  float _323;
  float _327;
  float _331;
  float _333;
  float _334;
  float _335;
  float _336;
  float _341;
  float _345;
  float _347;
  float _349;
  float _353;
  float _355;
  float _356;
  float _357;
  float _358;
  float _360;
  float _363;
  float _364;
  float _365;
  float _366;
  float _372;
  float _378;
  float _383;
  float _385;
  float _386;
  float _387;
  float _388;
  float _397;
  float _398;
  float _399;
  float _400;
  float _406;
  float _418;
  int _421;
  int _429;
  float _432;
  float _435;
  float _437;
  float _446;
  float _455;
  float _464;
  int _467;
  int _475;
  float _478;
  float _481;
  float _483;
  int _486;
  float _494;
  float _498;
  float _501;
  float _521;
  float _537;
  float _544;
  float _614;
  float _617;
  float _620;
  uint _621;
  bool _637;
  float _643;
  float _662;
  float _678;
  float _694;
  float _695;
  float _699;
  float _702;
  float _705;
  float _712;
  float _719;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _748;
  float _764;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  float _801;
  float _802;
  float _803;
  float _804;
  float _807;
  float _810;
  float _814;
  float _818;
  float _822;
  float _842;
  float _854;
  float _866;
  float _878;
  float _885;
  float _892;
  float _899;
  float _905;
  float _906;
  float _908;
  float _910;
  float _912;
  float _917;
  float _938;
  float _940;
  float _943;
  float _946;
  float _949;
  float _955;
  float _996;
  float _998;
  float _1004;
  float _1046;
  float _1063;
  float _1067;
  float _1071;
  _28 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _61 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = TEXCOORD.x * 2.0f;
  _72 = TEXCOORD.y * 2.0f;
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceTex);
  _95 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_83 < (uint)65000), _83, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_28 * _71), ((_time.x * 0.1f) + _72)));
  _101 = WaveReadLaneFirst(_materialIndex);
  _109 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _124 = WaveReadLaneFirst(_materialIndex);
  _132 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_124 < (uint)170000), _124, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _136 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_124 < (uint)170000), _124, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _140 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_124 < (uint)170000), _124, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _144 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_124 < (uint)170000), _124, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceRatio);
  _156 = _155 * _144;
  _159 = _109 - _viewPos.x;
  _161 = _113 - _viewPos.y;
  _163 = _117 - _viewPos.z;
  _175 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _163, mad((_viewProjRelative[3].y), _161, ((_viewProjRelative[3].x) * _159)));
  _184 = (mad((_viewProjRelative[0].z), _163, mad((_viewProjRelative[0].y), _161, ((_viewProjRelative[0].x) * _159))) + (_viewProjRelative[0].w)) / _175;
  _195 = 0.5f - (((mad((_viewProjRelative[1].z), _163, mad((_viewProjRelative[1].y), _161, ((_viewProjRelative[1].x) * _159))) + (_viewProjRelative[1].w)) / _175) * 0.5f);
  _199 = ((_view[0].x) * _156) + _159;
  _203 = ((_view[0].y) * _156) + _161;
  _207 = ((_view[0].z) * _156) + _163;
  _211 = mad((_viewProjRelative[3].z), _207, mad((_viewProjRelative[3].y), _203, (_199 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
  _219 = (0.5f - (((mad((_viewProjRelative[1].z), _207, mad((_viewProjRelative[1].y), _203, (_199 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _211) * 0.5f)) - _195;
  _227 = (_28 * 0.5f) * (((mad((_viewProjRelative[0].z), _207, mad((_viewProjRelative[0].y), _203, (_199 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _211) - _184);
  _228 = TEXCOORD.y - _195;
  _232 = ((TEXCOORD.x + -0.5f) - (_184 * 0.5f)) * _28;
  // [sem: expr_sat]
  _254 = saturate((1.0f - saturate(sqrt((_228 * _228) + (_232 * _232)) / max(0.001f, sqrt((_227 * _227) + (_219 * _219))))) * 5.0f) * ((float)((bool)(dot(float3(_159, _161, _163), float3(_viewDir.x, _viewDir.y, _viewDir.z)) > 0.0f)));
  if (_254 > 0.0f) {
    _259 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _261 = _71 + -1.0f;
    _262 = 1.0f - _72;
    _263 = max(1e-07f, _259.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _275 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _263, mad((_invViewProj[3].y), _262, ((_invViewProj[3].x) * _261)));
    _284 = (mad((_invViewProj[0].z), _263, mad((_invViewProj[0].y), _262, ((_invViewProj[0].x) * _261))) + (_invViewProj[0].w)) / _275;
    _293 = (mad((_invViewProj[1].z), _263, mad((_invViewProj[1].y), _262, ((_invViewProj[1].x) * _261))) + (_invViewProj[1].w)) / _275;
    _302 = (mad((_invViewProj[2].z), _263, mad((_invViewProj[2].y), _262, ((_invViewProj[2].x) * _261))) + (_invViewProj[2].w)) / _275;
    _307 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
    _311 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
    _313 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_307, _311, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _316 = __3__36__0__0__g_gbufferNormal.Load(int3(_307, _311, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _323 = (saturate(_316.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _327 = (saturate(_316.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _331 = (saturate(_316.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _333 = rsqrt(dot(float3(_323, _327, _331), float3(_323, _327, _331)));  // [sem: invLength]
    _334 = _333 * _323;
    _335 = _333 * _327;
    _336 = _331 * _333;
    _341 = (((float)((uint)((uint)(((uint)((uint)(_313.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _345 = (((float)((uint)((uint)(_313.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _347 = (_341 + _345) * 0.5f;
    _349 = (_341 - _345) * 0.5f;
    _353 = (1.0f - abs(_347)) - abs(_349);
    _355 = rsqrt(dot(float3(_347, _349, _353), float3(_347, _349, _353)));  // [sem: invLength]
    _356 = _355 * _347;
    _357 = _355 * _349;
    _358 = _355 * _353;
    _360 = select((_336 >= 0.0f), 1.0f, -1.0f);
    _363 = -0.0f - (1.0f / (_360 + _336));
    _364 = _335 * _363;
    _365 = _364 * _334;
    _366 = _360 * _334;
    _372 = mad(_358, _334, mad(_357, _365, ((((_366 * _334) * _363) + 1.0f) * _356)));
    _378 = mad(_358, _335, mad(_357, ((_364 * _335) + _360), ((_356 * _360) * _365)));
    _383 = mad(_358, _336, mad(_357, (-0.0f - _335), (-0.0f - (_366 * _356))));
    _385 = rsqrt(dot(float3(_372, _378, _383), float3(_372, _378, _383)));  // [sem: invLength]
    _386 = _284 - _viewPos.x;
    _387 = _293 - _viewPos.y;
    _388 = _302 - _viewPos.z;
    _397 = 1.0f - saturate(dot(float3((_385 * _372), (_385 * _378), (_385 * _383)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _398 = _109 - _284;
    _399 = _113 - _293;
    _400 = _117 - _302;
    _406 = sqrt(((_399 * _399) + (_398 * _398)) + (_400 * _400));
    _418 = exp2((2.0f - (saturate(saturate(1.0f - (_406 / max(0.001f, (_156 * 3.0f)))) * 2.0f) * 1.8f)) * log2(_397));
    _421 = WaveReadLaneFirst(_materialIndex);
    _429 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_421 < (uint)170000), _421, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColor);
    _432 = (float)((uint)((uint)(((uint)((uint)(_429)) >> 16) & 255)));
    _435 = (float)((uint)((uint)(((uint)((uint)(_429)) >> 8) & 255)));
    _437 = (float)((uint)((uint)(_429 & 255)));
    _446 = select(((_432 * 0.003921569f) < 0.04045f), (_432 * 0.000303527f), exp2(log2((_432 * 0.003717127f) + 0.052132703f) * 2.4f));
    _455 = select(((_435 * 0.003921569f) < 0.04045f), (_435 * 0.000303527f), exp2(log2((_435 * 0.003717127f) + 0.052132703f) * 2.4f));
    _464 = select(((_437 * 0.003921569f) < 0.04045f), (_437 * 0.000303527f), exp2(log2((_437 * 0.003717127f) + 0.052132703f) * 2.4f));
    _467 = WaveReadLaneFirst(_materialIndex);
    _475 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_467 < (uint)170000), _467, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceBlendColor);
    _478 = (float)((uint)((uint)(((uint)((uint)(_475)) >> 16) & 255)));
    _481 = (float)((uint)((uint)(((uint)((uint)(_475)) >> 8) & 255)));
    _483 = (float)((uint)((uint)(_475 & 255)));
    _486 = WaveReadLaneFirst(_materialIndex);
    _494 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_486 < (uint)170000), _486, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColorBlendRatio);
    _498 = saturate(1.0f - (_406 / max(0.001f, _156)));  // [sem: expr_sat]
    _501 = saturate((_498 * _498) * 2.0f);  // [sem: expr_sat]
    if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
      _521 = (_397 * _397) * ((_501 * 0.45f) + 0.05f);
      _539 = _521;
      _540 = _521;
      _541 = _521;
    } else {
      if ((_259.x < 1e-07f) || (_259.x == 1.0f)) {
        _539 = (_95.x * 0.1f);
        _540 = (_95.y * 0.1f);
        _541 = (_95.z * 0.1f);
      } else {
        _537 = (((float4)(__3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f))).w) * ((_501 * 0.9f) + 0.1f);
        _539 = _537;
        _540 = _537;
        _541 = _537;
      }
    }
    _544 = max(0.001f, _exposure0.x);
    _608 = (((((select(((_478 * 0.003921569f) < 0.04045f), (_478 * 0.000303527f), exp2(log2((_478 * 0.003717127f) + 0.052132703f) * 2.4f)) - _446) * _494) + _446) * _539) / _544);
    _609 = (((((select(((_481 * 0.003921569f) < 0.04045f), (_481 * 0.000303527f), exp2(log2((_481 * 0.003717127f) + 0.052132703f) * 2.4f)) - _455) * _494) + _455) * _540) / _544);
    _610 = (((((select(((_483 * 0.003921569f) < 0.04045f), (_483 * 0.000303527f), exp2(log2((_483 * 0.003717127f) + 0.052132703f) * 2.4f)) - _464) * _494) + _464) * _541) / _544);
    _611 = (((saturate(((_156 - sqrt(((_161 * _161) + (_159 * _159)) + (_163 * _163))) + sqrt(((_387 * _387) + (_386 * _386)) + (_388 * _388))) * 5.0f) * (1.0f - _418)) + _418) * _254);
  } else {
    _608 = 0.0f;
    _609 = 0.0f;
    _610 = 0.0f;
    _611 = _254;
  }
  _614 = (_611 * (_608 - _52)) + _52;
  _617 = (_611 * (_609 - _61)) + _61;
  _620 = (_611 * (_610 - _70)) + _70;
  _621 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _634 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _621, 0)))).x) & 127)))) + 0.5f);
  } else {
    _634 = 1.0f;
  }
  _637 = (_localToneMappingParams.w > 0.0f);
  if (_637) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_614, _617, _620));
    _885 = _rndx_tonemapped_color.x;
    _892 = _rndx_tonemapped_color.y;
    _899 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _905 = 1.0f - abs(_etcParams.w);
      _906 = saturate(_etcParams.w);  // [sem: expr_sat]
      _908 = (_905 * _885) + _906;
      _910 = (_905 * _892) + _906;
      _912 = (_905 * _899) + _906;
      if (_colorGradingParams.w > 0.0f) {
        _917 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _934 = (((max(0.0f, (1.0f - _908)) - _908) * _917) + _908);
        _935 = (((max(0.0f, (1.0f - _910)) - _910) * _917) + _910);
        _936 = (((max(0.0f, (1.0f - _912)) - _912) * _917) + _912);
      } else {
        _934 = _908;
        _935 = _910;
        _936 = _912;
      }
      _938 = _userImageAdjust.y + 1.0f;
      _940 = _userImageAdjust.x + 0.5f;
      _943 = ((_934 + -0.5f) * _938) + _940;
      _946 = ((_935 + -0.5f) * _938) + _940;
      _949 = ((_936 + -0.5f) * _938) + _940;
      _955 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _990 = exp2(log2(saturate(mad(_colorBlind0.z, _949, mad(_colorBlind0.y, _946, (_colorBlind0.x * _943))))) * _955);
      _991 = exp2(log2(saturate(mad(_colorBlind1.z, _949, mad(_colorBlind1.y, _946, (_colorBlind1.x * _943))))) * _955);
      _992 = exp2(log2(saturate(mad(_colorBlind2.z, _949, mad(_colorBlind2.y, _946, (_colorBlind2.x * _943))))) * _955);
    } else {
      _990 = _885;
      _991 = _892;
      _992 = _899;
    }
  } else {
    _990 = _614;
    _991 = _617;
    _992 = _620;
  }
  if (_etcParams.y > 1.0f) {
    _996 = abs(_71 + -1.0f);
    _998 = abs(_72 + -1.0f);
    _1004 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_996, _998), float2(_996, _998))));  // [sem: expr_sat]
    _1009 = (_1004 * _990);
    _1010 = (_1004 * _991);
    _1011 = (_1004 * _992);
  } else {
    _1009 = _990;
    _1010 = _991;
    _1011 = _992;
  }
  if (_637 && (_etcParams.z > 0.0f)) {
    _1041 = select((_1009 <= 0.0031308f), (_1009 * 12.92f), (((pow(_1009, 0.41666666f)) * 1.055f) + -0.055f));
    _1042 = select((_1010 <= 0.0031308f), (_1010 * 12.92f), (((pow(_1010, 0.41666666f)) * 1.055f) + -0.055f));
    _1043 = select((_1011 <= 0.0031308f), (_1011 * 12.92f), (((pow(_1011, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1041 = _1009;
    _1042 = _1010;
    _1043 = _1011;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1046 = (float)((uint)((uint)(_621)));
    if (!(_1046 < _viewDir.w)) {
      if (!(!(_1046 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1057 = 0.0f;
        _1058 = 0.0f;
        _1059 = 0.0f;
      } else {
        _1057 = _1041;
        _1058 = _1042;
        _1059 = _1043;
      }
    } else {
      _1057 = 0.0f;
      _1058 = 0.0f;
      _1059 = 0.0f;
    }
  } else {
    _1057 = _1041;
    _1058 = _1042;
    _1059 = _1043;
  }
  _1063 = exp2(log2(_1057 * 0.0001f) * 0.15930176f);
  _1067 = exp2(log2(_1058 * 0.0001f) * 0.15930176f);
  _1071 = exp2(log2(_1059 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1063 * 18.6875f) + 1.0f)) * ((_1063 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1067 * 18.6875f) + 1.0f)) * ((_1067 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1071 * 18.6875f) + 1.0f)) * ((_1071 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _634;
  return SV_Target;
}
