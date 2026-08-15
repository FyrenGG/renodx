struct PostProcessSubspace_CDStruct {
  float _subspaceRatio;
  float4 _subspaceInfo;
  uint _subspaceTex;
  float _subspaceColorBlendRatio;
  uint _subspaceColor;
  uint _subspaceBlendColor;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessSubspace_CD {
  PostProcessSubspace_CDStruct BindlessParameters_PostProcessSubspace_CD;
};

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
  float _30;
  float4 _33;
  float _43;
  float _44;
  float _45;
  float _70;
  float _71;
  float _72;
  float _73;
  float _75;
  int _80;
  int _88;
  float4 _95;
  int _99;
  float _110;
  float _111;
  float _112;
  float _113;
  int _114;
  float _125;
  float _126;
  float _127;
  float _128;
  int _129;
  float _137;
  float _138;
  float _143;
  float _144;
  float _145;
  float _173;
  float _174;
  float _178;
  float _188;
  float _189;
  float _190;
  float _202;
  float _208;
  float _210;
  float _217;
  float _218;
  float _236;
  float _571;
  float _572;
  float _573;
  float _584;
  float _585;
  float _586;
  float _587;
  float _610;
  float _815;
  float _816;
  float _817;
  float _910;
  float _911;
  float _912;
  float _966;
  float _967;
  float _968;
  float _985;
  float _986;
  float _987;
  float _1017;
  float _1018;
  float _1019;
  float _1033;
  float _1034;
  float _1035;
  float _241;
  float _243;
  float _244;
  float _245;
  float _281;
  float _282;
  float _283;
  float _284;
  uint _292;
  uint _293;
  uint4 _295;
  float4 _298;
  float _316;
  float _317;
  float _318;
  float _320;
  float _321;
  float _322;
  float _323;
  float _326;
  float _327;
  float _330;
  float _331;
  float _335;
  float _337;
  float _338;
  float _339;
  float _340;
  float _342;
  float _345;
  float _346;
  float _347;
  float _348;
  float _357;
  float _361;
  float _365;
  float _367;
  float _377;
  float _378;
  float _379;
  float _395;
  float _396;
  float _397;
  float _398;
  float _404;
  float _416;
  int _421;
  int _429;
  float _432;
  float _435;
  float _437;
  float _462;
  float _463;
  float _464;
  int _465;
  int _473;
  float _476;
  float _479;
  float _481;
  int _509;
  float _517;
  float _530;
  float _533;
  float _553;
  float _569;
  float _579;
  float _594;
  float _595;
  float _596;
  uint _597;
  bool _613;
  float _619;
  float _668;
  float _669;
  float _670;
  float _672;
  float _679;
  float _680;
  float _681;
  float _700;
  float _701;
  float _702;
  float _703;
  float _704;
  float _705;
  float _706;
  float _707;
  float _708;
  float _754;
  float _755;
  float _756;
  float _757;
  float _758;
  float _759;
  float _760;
  float _777;
  float _778;
  float _779;
  float _780;
  float _786;
  float _789;
  float _796;
  float _797;
  float _798;
  float _827;
  float _852;
  float _853;
  float _854;
  float _873;
  float _874;
  float _875;
  float _881;
  float _885;
  float _886;
  float _887;
  float _888;
  float _893;
  float _918;
  float _922;
  float _923;
  float _924;
  float _925;
  float _955;
  float _975;
  float _976;
  float _980;
  float _1024;
  float _1045;
  float _1046;
  float _1047;
  _30 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _43 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f) * 10000.0f;
  _72 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f;
  _73 = TEXCOORD.x * 2.0f;
  _75 = TEXCOORD.y * 2.0f;
  _80 = WaveReadLaneFirst(_materialIndex);
  _88 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceTex);
  _95 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_88 < (uint)65000), _88, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_30 * _73), ((_time.x * 0.1f) + _75)));
  _99 = WaveReadLaneFirst(_materialIndex);
  _110 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _113 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _114 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _126 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _127 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _128 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceRatio);
  _138 = _137 * _128;
  _143 = _110 - _viewPos.x;
  _144 = _111 - _viewPos.y;
  _145 = _112 - _viewPos.z;
  _173 = mad((_viewProjRelative[3].z), _145, mad((_viewProjRelative[3].y), _144, ((_viewProjRelative[3].x) * _143))) + (_viewProjRelative[3].w);
  _174 = (mad((_viewProjRelative[0].z), _145, mad((_viewProjRelative[0].y), _144, ((_viewProjRelative[0].x) * _143))) + (_viewProjRelative[0].w)) / _173;
  _178 = 0.5f - (((mad((_viewProjRelative[1].z), _145, mad((_viewProjRelative[1].y), _144, ((_viewProjRelative[1].x) * _143))) + (_viewProjRelative[1].w)) / _173) * 0.5f);
  _188 = ((_view[0].x) * _138) + _143;
  _189 = ((_view[0].y) * _138) + _144;
  _190 = ((_view[0].z) * _138) + _145;
  _202 = mad((_viewProjRelative[3].z), _190, mad((_viewProjRelative[3].y), _189, (_188 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
  _208 = (0.5f - (((mad((_viewProjRelative[1].z), _190, mad((_viewProjRelative[1].y), _189, (_188 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _202) * 0.5f)) - _178;
  _210 = (_30 * 0.5f) * (((mad((_viewProjRelative[0].z), _190, mad((_viewProjRelative[0].y), _189, (_188 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _202) - _174);
  _217 = TEXCOORD.y - _178;
  _218 = ((TEXCOORD.x + -0.5f) - (_174 * 0.5f)) * _30;
  _236 = ((float)((bool)(dot(float3(_143, _144, _145), float3(_viewDir.x, _viewDir.y, _viewDir.z)) > 0.0f))) * saturate((1.0f - saturate(sqrt((_217 * _217) + (_218 * _218)) / max(0.001f, sqrt((_208 * _208) + (_210 * _210))))) * 5.0f);
  if (_236 > 0.0f) {
    _241 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _243 = _73 + -1.0f;
    _244 = 1.0f - _75;
    _245 = max(1e-07f, _241.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _281 = mad((_invViewProj[3].z), _245, mad((_invViewProj[3].y), _244, ((_invViewProj[3].x) * _243))) + (_invViewProj[3].w);
    _282 = (mad((_invViewProj[0].z), _245, mad((_invViewProj[0].y), _244, ((_invViewProj[0].x) * _243))) + (_invViewProj[0].w)) / _281;
    _283 = (mad((_invViewProj[1].z), _245, mad((_invViewProj[1].y), _244, ((_invViewProj[1].x) * _243))) + (_invViewProj[1].w)) / _281;
    _284 = (mad((_invViewProj[2].z), _245, mad((_invViewProj[2].y), _244, ((_invViewProj[2].x) * _243))) + (_invViewProj[2].w)) / _281;
    _292 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
    _293 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
    _295 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_292, _293, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _298 = __3__36__0__0__g_gbufferNormal.Load(int3(_292, _293, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _316 = (saturate(_298.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _317 = (saturate(_298.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _318 = (saturate(_298.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _320 = rsqrt(dot(float3(_316, _317, _318), float3(_316, _317, _318)));  // [sem: invLength]
    _321 = _320 * _316;
    _322 = _320 * _317;
    _323 = _318 * _320;
    _326 = (((float)((uint)((uint)(((uint)((uint)(_295.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _327 = (((float)((uint)((uint)(_295.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _330 = (_326 + _327) * 0.5f;
    _331 = (_326 - _327) * 0.5f;
    _335 = (1.0f - abs(_330)) - abs(_331);
    _337 = rsqrt(dot(float3(_330, _331, _335), float3(_330, _331, _335)));  // [sem: invLength]
    _338 = _337 * _330;
    _339 = _337 * _331;
    _340 = _337 * _335;
    _342 = select((_323 >= 0.0f), 1.0f, -1.0f);
    _345 = -0.0f - (1.0f / (_342 + _323));
    _346 = _322 * _345;
    _347 = _346 * _321;
    _348 = _342 * _321;
    _357 = mad(_340, _321, mad(_339, _347, ((((_348 * _321) * _345) + 1.0f) * _338)));
    _361 = mad(_340, _322, mad(_339, (_342 + (_346 * _322)), ((_338 * _342) * _347)));
    _365 = mad(_340, _323, mad(_339, (-0.0f - _322), (-0.0f - (_348 * _338))));
    _367 = rsqrt(dot(float3(_357, _361, _365), float3(_357, _361, _365)));  // [sem: invLength]
    _377 = _282 - _viewPos.x;
    _378 = _283 - _viewPos.y;
    _379 = _284 - _viewPos.z;
    _395 = 1.0f - saturate(dot(float3((_367 * _357), (_367 * _361), (_367 * _365)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _396 = _110 - _282;
    _397 = _111 - _283;
    _398 = _112 - _284;
    _404 = sqrt(((_397 * _397) + (_396 * _396)) + (_398 * _398));
    _416 = exp2((2.0f - (saturate(saturate(1.0f - (_404 / max(0.001f, (_138 * 3.0f)))) * 2.0f) * 1.8f)) * log2(_395));
    _421 = WaveReadLaneFirst(_materialIndex);
    _429 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_421 < (uint)170000), _421, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColor);
    _432 = (float)((uint)((uint)(((uint)((uint)(_429)) >> 16) & 255)));
    _435 = (float)((uint)((uint)(((uint)((uint)(_429)) >> 8) & 255)));
    _437 = (float)((uint)((uint)(_429 & 255)));
    _462 = select(((_432 * 0.003921569f) < 0.04045f), (_432 * 0.000303527f), exp2(log2((_432 * 0.003717127f) + 0.052132703f) * 2.4f));
    _463 = select(((_435 * 0.003921569f) < 0.04045f), (_435 * 0.000303527f), exp2(log2((_435 * 0.003717127f) + 0.052132703f) * 2.4f));
    _464 = select(((_437 * 0.003921569f) < 0.04045f), (_437 * 0.000303527f), exp2(log2((_437 * 0.003717127f) + 0.052132703f) * 2.4f));
    _465 = WaveReadLaneFirst(_materialIndex);
    _473 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_465 < (uint)170000), _465, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceBlendColor);
    _476 = (float)((uint)((uint)(((uint)((uint)(_473)) >> 16) & 255)));
    _479 = (float)((uint)((uint)(((uint)((uint)(_473)) >> 8) & 255)));
    _481 = (float)((uint)((uint)(_473 & 255)));
    _509 = WaveReadLaneFirst(_materialIndex);
    _517 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_509 < (uint)170000), _509, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColorBlendRatio);
    _530 = saturate(1.0f - (_404 / max(0.001f, _138)));  // [sem: expr_sat]
    _533 = saturate((_530 * _530) * 2.0f);  // [sem: expr_sat]
    if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
      _553 = (_395 * _395) * ((_533 * 0.45f) + 0.05f);
      _571 = _553;
      _572 = _553;
      _573 = _553;
    } else {
      if ((_241.x < 1e-07f) || (_241.x == 1.0f)) {
        _571 = (_95.x * 0.1f);
        _572 = (_95.y * 0.1f);
        _573 = (_95.z * 0.1f);
      } else {
        _569 = (((float4)(__3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f))).w) * ((_533 * 0.9f) + 0.1f);
        _571 = _569;
        _572 = _569;
        _573 = _569;
      }
    }
    _579 = max(0.001f, _exposure0.x);
    _584 = ((_571 * ((_517 * (select(((_476 * 0.003921569f) < 0.04045f), (_476 * 0.000303527f), exp2(log2((_476 * 0.003717127f) + 0.052132703f) * 2.4f)) - _462)) + _462)) / _579);
    _585 = ((_572 * ((_517 * (select(((_479 * 0.003921569f) < 0.04045f), (_479 * 0.000303527f), exp2(log2((_479 * 0.003717127f) + 0.052132703f) * 2.4f)) - _463)) + _463)) / _579);
    _586 = ((_573 * ((_517 * (select(((_481 * 0.003921569f) < 0.04045f), (_481 * 0.000303527f), exp2(log2((_481 * 0.003717127f) + 0.052132703f) * 2.4f)) - _464)) + _464)) / _579);
    _587 = ((((1.0f - _416) * saturate(((_138 - sqrt(((_143 * _143) + (_144 * _144)) + (_145 * _145))) + sqrt(((_378 * _378) + (_377 * _377)) + (_379 * _379))) * 5.0f)) + _416) * _236);
  } else {
    _584 = 0.0f;
    _585 = 0.0f;
    _586 = 0.0f;
    _587 = _236;
  }
  _594 = (_587 * (_584 - _70)) + _70;
  _595 = (_587 * (_585 - _71)) + _71;
  _596 = (_587 * (_586 - _72)) + _72;
  _597 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _610 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _597, 0)))).x) & 127)))) + 0.5f);
  } else {
    _610 = 1.0f;
  }
  _613 = (_localToneMappingParams.w > 0.0f);
  if (_613) {
    _619 = _userImageAdjust.z * _exposure0.x;
    _668 = exp2(log2(max(0.0f, (((_619 * max(0.0f, (((_594 * 1.70505f) - (_595 * 0.62179f)) - (_596 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _669 = exp2(log2(max(0.0f, (((max(0.0f, (((_595 * 1.1408f) - (_594 * 0.13026f)) - (_596 * 0.01055f))) * _619) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _670 = exp2(log2(max(0.0f, (((max(0.0f, (((_594 * -0.024f) - (_595 * 0.12897f)) + (_596 * 1.15297f))) * _619) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _672 = dot(float3(_668, _669, _670), float3(0.212671f, 0.71516f, 0.072169f));
    _679 = ((_668 - _672) * _powerParams.w) + _672;
    _680 = ((_669 - _672) * _powerParams.w) + _672;
    _681 = ((_670 - _672) * _powerParams.w) + _672;
    _700 = min(max(log2(mad(_681, 0.079223745f, mad(_680, 0.0784336f, (_679 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _701 = min(max(log2(mad(_681, 0.07916613f, mad(_680, 0.87846863f, (_679 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _702 = min(max(log2(mad(_681, 0.879143f, mad(_680, 0.0784336f, (_679 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _703 = _700 * 0.060606062f;
    _704 = _701 * 0.060606062f;
    _705 = _702 * 0.060606062f;
    _706 = _703 * _703;
    _707 = _704 * _704;
    _708 = _705 * _705;
    _754 = min(0.0f, (-0.0f - (((_700 * 0.0072181816f) + ((_706 * 0.4298f) + (((_706 * _706) * ((31.96f - (_700 * 2.4327273f)) + (_706 * 15.5f))) - ((_700 * 0.41624245f) * _706)))) + -0.00232f)));
    _755 = min(0.0f, (-0.0f - (((_701 * 0.0072181816f) + ((_707 * 0.4298f) + (((_707 * _707) * ((31.96f - (_701 * 2.4327273f)) + (_707 * 15.5f))) - ((_701 * 0.41624245f) * _707)))) + -0.00232f)));
    _756 = min(0.0f, (-0.0f - (((_702 * 0.0072181816f) + ((_708 * 0.4298f) + (((_708 * _708) * ((31.96f - (_702 * 2.4327273f)) + (_708 * 15.5f))) - ((_702 * 0.41624245f) * _708)))) + -0.00232f)));
    _757 = -0.0f - _754;
    _758 = -0.0f - _755;
    _759 = -0.0f - _756;
    _760 = dot(float3(_757, _758, _759), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _777 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _778 = -0.79999995f / _777;
      _779 = -1.2f / _777;
      _780 = 0.20000005f / _777;
      _786 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _789 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _796 = (_778 + 1.4f) + (_789 * (-0.39999998f - _778));
      _797 = (_779 + 1.6f) + (_789 * (-0.6f - _779));
      _798 = (_780 + 0.9f) + (_789 * (0.5f - _780));
      _815 = (lerp(_797, 1.2f, _786));  // [sem: blended]
      _816 = (lerp(_796, 1.0f, _786));  // [sem: blended]
      _817 = (lerp(_798, 1.4f, _786));  // [sem: blended]
    } else {
      _815 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _816 = 1.0f;  // [sem: blended]
      _817 = 1.4f;  // [sem: blended]
    }
    _827 = 1.0f - _815;
    _852 = ((exp2(log2(((saturate((_754 * _754) * _757) * _827) + _815) * _757) * _816) - _760) * _817) + _760;
    _853 = ((exp2(log2(((saturate((_755 * _755) * _758) * _827) + _815) * _758) * _816) - _760) * _817) + _760;
    _854 = ((exp2(log2(((saturate((_756 * _756) * _759) * _827) + _815) * _759) * _816) - _760) * _817) + _760;
    _873 = saturate(exp2(log2(mad(_854, -0.09902974f, mad(_853, -0.09802088f, (_852 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _874 = saturate(exp2(log2(mad(_854, -0.098961174f, mad(_853, 1.1519032f, (_852 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _875 = saturate(exp2(log2(mad(_854, 1.1510737f, mad(_853, -0.09804345f, (_852 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _881 = 1.0f - abs(_etcParams.w);
      _885 = saturate(_etcParams.w);  // [sem: expr_sat]
      _886 = (_881 * _873) + _885;
      _887 = (_881 * _874) + _885;
      _888 = (_881 * _875) + _885;
      if (_colorGradingParams.w > 0.0f) {
        _893 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _910 = (((max(0.0f, (1.0f - _886)) - _886) * _893) + _886);
        _911 = (((max(0.0f, (1.0f - _887)) - _887) * _893) + _887);
        _912 = (((max(0.0f, (1.0f - _888)) - _888) * _893) + _888);
      } else {
        _910 = _886;
        _911 = _887;
        _912 = _888;
      }
      _918 = _userImageAdjust.y + 1.0f;
      _922 = _userImageAdjust.x + 0.5f;
      _923 = ((_910 + -0.5f) * _918) + _922;
      _924 = ((_911 + -0.5f) * _918) + _922;
      _925 = ((_912 + -0.5f) * _918) + _922;
      _955 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _966 = exp2(log2(saturate(mad(_colorBlind0.z, _925, mad(_colorBlind0.y, _924, (_colorBlind0.x * _923))))) * _955);
      _967 = exp2(log2(saturate(mad(_colorBlind1.z, _925, mad(_colorBlind1.y, _924, (_colorBlind1.x * _923))))) * _955);
      _968 = exp2(log2(saturate(mad(_colorBlind2.z, _925, mad(_colorBlind2.y, _924, (_colorBlind2.x * _923))))) * _955);
    } else {
      _966 = _873;
      _967 = _874;
      _968 = _875;
    }
  } else {
    _966 = _594;
    _967 = _595;
    _968 = _596;
  }
  if (_etcParams.y > 1.0f) {
    _975 = abs(_73 + -1.0f);
    _976 = abs(_75 + -1.0f);
    _980 = saturate(1.0f - (dot(float2(_975, _976), float2(_975, _976)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _985 = (_980 * _966);
    _986 = (_980 * _967);
    _987 = (_980 * _968);
  } else {
    _985 = _966;
    _986 = _967;
    _987 = _968;
  }
  if (_613 && (_etcParams.z > 0.0f)) {
    _1017 = select((_985 <= 0.0031308f), (_985 * 12.92f), (((pow(_985, 0.41666666f)) * 1.055f) + -0.055f));
    _1018 = select((_986 <= 0.0031308f), (_986 * 12.92f), (((pow(_986, 0.41666666f)) * 1.055f) + -0.055f));
    _1019 = select((_987 <= 0.0031308f), (_987 * 12.92f), (((pow(_987, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1017 = _985;
    _1018 = _986;
    _1019 = _987;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1024 = (float)((uint)((uint)(_597)));
    if (!(_1024 < _viewDir.w)) {
      if (!(_1024 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1033 = _1017;
        _1034 = _1018;
        _1035 = _1019;
      } else {
        _1033 = 0.0f;
        _1034 = 0.0f;
        _1035 = 0.0f;
      }
    } else {
      _1033 = 0.0f;
      _1034 = 0.0f;
      _1035 = 0.0f;
    }
  } else {
    _1033 = _1017;
    _1034 = _1018;
    _1035 = _1019;
  }
  _1045 = exp2(log2(_1033 * 0.0001f) * 0.15930176f);
  _1046 = exp2(log2(_1034 * 0.0001f) * 0.15930176f);
  _1047 = exp2(log2(_1035 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1045 * 18.6875f) + 1.0f)) * ((_1045 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1046 * 18.6875f) + 1.0f)) * ((_1046 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1047 * 18.6875f) + 1.0f)) * ((_1047 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _610;
  return SV_Target;
}
