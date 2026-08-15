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
  float _37;
  float _39;
  int _44;
  int _52;
  float4 _59;
  int _63;
  float _74;
  float _75;
  float _76;
  float _77;
  int _78;
  float _89;
  float _90;
  float _91;
  float _92;
  int _93;
  float _101;
  float _102;
  float _107;
  float _108;
  float _109;
  float _137;
  float _138;
  float _142;
  float _152;
  float _153;
  float _154;
  float _166;
  float _172;
  float _174;
  float _181;
  float _182;
  float _200;
  float _535;
  float _536;
  float _537;
  float _548;
  float _549;
  float _550;
  float _551;
  float _574;
  float _779;
  float _780;
  float _781;
  float _874;
  float _875;
  float _876;
  float _930;
  float _931;
  float _932;
  float _949;
  float _950;
  float _951;
  float _981;
  float _982;
  float _983;
  float _997;
  float _998;
  float _999;
  float _205;
  float _207;
  float _208;
  float _209;
  float _245;
  float _246;
  float _247;
  float _248;
  uint _256;
  uint _257;
  uint4 _259;
  float4 _262;
  float _280;
  float _281;
  float _282;
  float _284;
  float _285;
  float _286;
  float _287;
  float _290;
  float _291;
  float _294;
  float _295;
  float _299;
  float _301;
  float _302;
  float _303;
  float _304;
  float _306;
  float _309;
  float _310;
  float _311;
  float _312;
  float _321;
  float _325;
  float _329;
  float _331;
  float _341;
  float _342;
  float _343;
  float _359;
  float _360;
  float _361;
  float _362;
  float _368;
  float _380;
  int _385;
  int _393;
  float _396;
  float _399;
  float _401;
  float _426;
  float _427;
  float _428;
  int _429;
  int _437;
  float _440;
  float _443;
  float _445;
  int _473;
  float _481;
  float _494;
  float _497;
  float _517;
  float _533;
  float _543;
  float _558;
  float _559;
  float _560;
  uint _561;
  bool _577;
  float _583;
  float _632;
  float _633;
  float _634;
  float _636;
  float _643;
  float _644;
  float _645;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _718;
  float _719;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _741;
  float _742;
  float _743;
  float _744;
  float _750;
  float _753;
  float _760;
  float _761;
  float _762;
  float _791;
  float _816;
  float _817;
  float _818;
  float _837;
  float _838;
  float _839;
  float _845;
  float _849;
  float _850;
  float _851;
  float _852;
  float _857;
  float _882;
  float _886;
  float _887;
  float _888;
  float _889;
  float _919;
  float _939;
  float _940;
  float _944;
  float _988;
  _30 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = TEXCOORD.x * 2.0f;
  _39 = TEXCOORD.y * 2.0f;
  _44 = WaveReadLaneFirst(_materialIndex);
  _52 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceTex);
  _59 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_52 < (uint)65000), _52, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_30 * _37), ((_time.x * 0.1f) + _39)));
  _63 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _78 = WaveReadLaneFirst(_materialIndex);
  _89 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.x);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.y);
  _91 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.z);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceInfo.w);
  _93 = WaveReadLaneFirst(_materialIndex);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceRatio);
  _102 = _101 * _92;
  _107 = _74 - _viewPos.x;
  _108 = _75 - _viewPos.y;
  _109 = _76 - _viewPos.z;
  _137 = mad((_viewProjRelative[3].z), _109, mad((_viewProjRelative[3].y), _108, ((_viewProjRelative[3].x) * _107))) + (_viewProjRelative[3].w);
  _138 = (mad((_viewProjRelative[0].z), _109, mad((_viewProjRelative[0].y), _108, ((_viewProjRelative[0].x) * _107))) + (_viewProjRelative[0].w)) / _137;
  _142 = 0.5f - (((mad((_viewProjRelative[1].z), _109, mad((_viewProjRelative[1].y), _108, ((_viewProjRelative[1].x) * _107))) + (_viewProjRelative[1].w)) / _137) * 0.5f);
  _152 = ((_view[0].x) * _102) + _107;
  _153 = ((_view[0].y) * _102) + _108;
  _154 = ((_view[0].z) * _102) + _109;
  _166 = mad((_viewProjRelative[3].z), _154, mad((_viewProjRelative[3].y), _153, (_152 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
  _172 = (0.5f - (((mad((_viewProjRelative[1].z), _154, mad((_viewProjRelative[1].y), _153, (_152 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _166) * 0.5f)) - _142;
  _174 = (_30 * 0.5f) * (((mad((_viewProjRelative[0].z), _154, mad((_viewProjRelative[0].y), _153, (_152 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _166) - _138);
  _181 = TEXCOORD.y - _142;
  _182 = ((TEXCOORD.x + -0.5f) - (_138 * 0.5f)) * _30;
  _200 = ((float)((bool)(dot(float3(_107, _108, _109), float3(_viewDir.x, _viewDir.y, _viewDir.z)) > 0.0f))) * saturate((1.0f - saturate(sqrt((_181 * _181) + (_182 * _182)) / max(0.001f, sqrt((_172 * _172) + (_174 * _174))))) * 5.0f);
  if (_200 > 0.0f) {
    _205 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _207 = _37 + -1.0f;
    _208 = 1.0f - _39;
    _209 = max(1e-07f, _205.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _245 = mad((_invViewProj[3].z), _209, mad((_invViewProj[3].y), _208, ((_invViewProj[3].x) * _207))) + (_invViewProj[3].w);
    _246 = (mad((_invViewProj[0].z), _209, mad((_invViewProj[0].y), _208, ((_invViewProj[0].x) * _207))) + (_invViewProj[0].w)) / _245;
    _247 = (mad((_invViewProj[1].z), _209, mad((_invViewProj[1].y), _208, ((_invViewProj[1].x) * _207))) + (_invViewProj[1].w)) / _245;
    _248 = (mad((_invViewProj[2].z), _209, mad((_invViewProj[2].y), _208, ((_invViewProj[2].x) * _207))) + (_invViewProj[2].w)) / _245;
    _256 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
    _257 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
    _259 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_256, _257, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _262 = __3__36__0__0__g_gbufferNormal.Load(int3(_256, _257, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _280 = (saturate(_262.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _281 = (saturate(_262.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _282 = (saturate(_262.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _284 = rsqrt(dot(float3(_280, _281, _282), float3(_280, _281, _282)));  // [sem: invLength]
    _285 = _284 * _280;
    _286 = _284 * _281;
    _287 = _282 * _284;
    _290 = (((float)((uint)((uint)(((uint)((uint)(_259.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _291 = (((float)((uint)((uint)(_259.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _294 = (_290 + _291) * 0.5f;
    _295 = (_290 - _291) * 0.5f;
    _299 = (1.0f - abs(_294)) - abs(_295);
    _301 = rsqrt(dot(float3(_294, _295, _299), float3(_294, _295, _299)));  // [sem: invLength]
    _302 = _301 * _294;
    _303 = _301 * _295;
    _304 = _301 * _299;
    _306 = select((_287 >= 0.0f), 1.0f, -1.0f);
    _309 = -0.0f - (1.0f / (_306 + _287));
    _310 = _286 * _309;
    _311 = _310 * _285;
    _312 = _306 * _285;
    _321 = mad(_304, _285, mad(_303, _311, ((((_312 * _285) * _309) + 1.0f) * _302)));
    _325 = mad(_304, _286, mad(_303, (_306 + (_310 * _286)), ((_302 * _306) * _311)));
    _329 = mad(_304, _287, mad(_303, (-0.0f - _286), (-0.0f - (_312 * _302))));
    _331 = rsqrt(dot(float3(_321, _325, _329), float3(_321, _325, _329)));  // [sem: invLength]
    _341 = _246 - _viewPos.x;
    _342 = _247 - _viewPos.y;
    _343 = _248 - _viewPos.z;
    _359 = 1.0f - saturate(dot(float3((_331 * _321), (_331 * _325), (_331 * _329)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _360 = _74 - _246;
    _361 = _75 - _247;
    _362 = _76 - _248;
    _368 = sqrt(((_361 * _361) + (_360 * _360)) + (_362 * _362));
    _380 = exp2((2.0f - (saturate(saturate(1.0f - (_368 / max(0.001f, (_102 * 3.0f)))) * 2.0f) * 1.8f)) * log2(_359));
    _385 = WaveReadLaneFirst(_materialIndex);
    _393 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColor);
    _396 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 16) & 255)));
    _399 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 8) & 255)));
    _401 = (float)((uint)((uint)(_393 & 255)));
    _426 = select(((_396 * 0.003921569f) < 0.04045f), (_396 * 0.000303527f), exp2(log2((_396 * 0.003717127f) + 0.052132703f) * 2.4f));
    _427 = select(((_399 * 0.003921569f) < 0.04045f), (_399 * 0.000303527f), exp2(log2((_399 * 0.003717127f) + 0.052132703f) * 2.4f));
    _428 = select(((_401 * 0.003921569f) < 0.04045f), (_401 * 0.000303527f), exp2(log2((_401 * 0.003717127f) + 0.052132703f) * 2.4f));
    _429 = WaveReadLaneFirst(_materialIndex);
    _437 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_429 < (uint)170000), _429, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceBlendColor);
    _440 = (float)((uint)((uint)(((uint)((uint)(_437)) >> 16) & 255)));
    _443 = (float)((uint)((uint)(((uint)((uint)(_437)) >> 8) & 255)));
    _445 = (float)((uint)((uint)(_437 & 255)));
    _473 = WaveReadLaneFirst(_materialIndex);
    _481 = WaveReadLaneFirst(BindlessParameters_PostProcessSubspace_CD[((int)((uint)((uint)(select(((uint)_473 < (uint)170000), _473, 0))) + (uint)(0)))].BindlessParameters_PostProcessSubspace_CD._subspaceColorBlendRatio);
    _494 = saturate(1.0f - (_368 / max(0.001f, _102)));  // [sem: expr_sat]
    _497 = saturate((_494 * _494) * 2.0f);  // [sem: expr_sat]
    if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
      _517 = (_359 * _359) * ((_497 * 0.45f) + 0.05f);
      _535 = _517;
      _536 = _517;
      _537 = _517;
    } else {
      if ((_205.x < 1e-07f) || (_205.x == 1.0f)) {
        _535 = (_59.x * 0.1f);
        _536 = (_59.y * 0.1f);
        _537 = (_59.z * 0.1f);
      } else {
        _533 = (((float4)(__3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f))).w) * ((_497 * 0.9f) + 0.1f);
        _535 = _533;
        _536 = _533;
        _537 = _533;
      }
    }
    _543 = max(0.001f, _exposure0.x);
    _548 = ((_535 * ((_481 * (select(((_440 * 0.003921569f) < 0.04045f), (_440 * 0.000303527f), exp2(log2((_440 * 0.003717127f) + 0.052132703f) * 2.4f)) - _426)) + _426)) / _543);
    _549 = ((_536 * ((_481 * (select(((_443 * 0.003921569f) < 0.04045f), (_443 * 0.000303527f), exp2(log2((_443 * 0.003717127f) + 0.052132703f) * 2.4f)) - _427)) + _427)) / _543);
    _550 = ((_537 * ((_481 * (select(((_445 * 0.003921569f) < 0.04045f), (_445 * 0.000303527f), exp2(log2((_445 * 0.003717127f) + 0.052132703f) * 2.4f)) - _428)) + _428)) / _543);
    _551 = ((((1.0f - _380) * saturate(((_102 - sqrt(((_107 * _107) + (_108 * _108)) + (_109 * _109))) + sqrt(((_342 * _342) + (_341 * _341)) + (_343 * _343))) * 5.0f)) + _380) * _200);
  } else {
    _548 = 0.0f;
    _549 = 0.0f;
    _550 = 0.0f;
    _551 = _200;
  }
  _558 = (_551 * (_548 - _33.x)) + _33.x;
  _559 = (_551 * (_549 - _33.y)) + _33.y;
  _560 = (_551 * (_550 - _33.z)) + _33.z;
  _561 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _574 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _561, 0)))).x) & 127)))) + 0.5f);
  } else {
    _574 = 1.0f;
  }
  _577 = (_localToneMappingParams.w > 0.0f);
  if (_577) {
    _583 = _userImageAdjust.z * _exposure0.x;
    _632 = exp2(log2(max(0.0f, (((_583 * max(0.0f, (((_558 * 1.70505f) - (_559 * 0.62179f)) - (_560 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _633 = exp2(log2(max(0.0f, (((max(0.0f, (((_559 * 1.1408f) - (_558 * 0.13026f)) - (_560 * 0.01055f))) * _583) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _634 = exp2(log2(max(0.0f, (((max(0.0f, (((_558 * -0.024f) - (_559 * 0.12897f)) + (_560 * 1.15297f))) * _583) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _636 = dot(float3(_632, _633, _634), float3(0.212671f, 0.71516f, 0.072169f));
    _643 = ((_632 - _636) * _powerParams.w) + _636;
    _644 = ((_633 - _636) * _powerParams.w) + _636;
    _645 = ((_634 - _636) * _powerParams.w) + _636;
    _664 = min(max(log2(mad(_645, 0.079223745f, mad(_644, 0.0784336f, (_643 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _665 = min(max(log2(mad(_645, 0.07916613f, mad(_644, 0.87846863f, (_643 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _666 = min(max(log2(mad(_645, 0.879143f, mad(_644, 0.0784336f, (_643 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _667 = _664 * 0.060606062f;
    _668 = _665 * 0.060606062f;
    _669 = _666 * 0.060606062f;
    _670 = _667 * _667;
    _671 = _668 * _668;
    _672 = _669 * _669;
    _718 = min(0.0f, (-0.0f - (((_664 * 0.0072181816f) + ((_670 * 0.4298f) + (((_670 * _670) * ((31.96f - (_664 * 2.4327273f)) + (_670 * 15.5f))) - ((_664 * 0.41624245f) * _670)))) + -0.00232f)));
    _719 = min(0.0f, (-0.0f - (((_665 * 0.0072181816f) + ((_671 * 0.4298f) + (((_671 * _671) * ((31.96f - (_665 * 2.4327273f)) + (_671 * 15.5f))) - ((_665 * 0.41624245f) * _671)))) + -0.00232f)));
    _720 = min(0.0f, (-0.0f - (((_666 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_666 * 2.4327273f)) + (_672 * 15.5f))) - ((_666 * 0.41624245f) * _672)))) + -0.00232f)));
    _721 = -0.0f - _718;
    _722 = -0.0f - _719;
    _723 = -0.0f - _720;
    _724 = dot(float3(_721, _722, _723), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _741 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _742 = -0.79999995f / _741;
      _743 = -1.2f / _741;
      _744 = 0.20000005f / _741;
      _750 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _753 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _760 = (_742 + 1.4f) + (_753 * (-0.39999998f - _742));
      _761 = (_743 + 1.6f) + (_753 * (-0.6f - _743));
      _762 = (_744 + 0.9f) + (_753 * (0.5f - _744));
      _779 = (lerp(_761, 1.2f, _750));  // [sem: blended]
      _780 = (lerp(_760, 1.0f, _750));  // [sem: blended]
      _781 = (lerp(_762, 1.4f, _750));  // [sem: blended]
    } else {
      _779 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _780 = 1.0f;  // [sem: blended]
      _781 = 1.4f;  // [sem: blended]
    }
    _791 = 1.0f - _779;
    _816 = ((exp2(log2(((saturate((_718 * _718) * _721) * _791) + _779) * _721) * _780) - _724) * _781) + _724;
    _817 = ((exp2(log2(((saturate((_719 * _719) * _722) * _791) + _779) * _722) * _780) - _724) * _781) + _724;
    _818 = ((exp2(log2(((saturate((_720 * _720) * _723) * _791) + _779) * _723) * _780) - _724) * _781) + _724;
    _837 = saturate(exp2(log2(mad(_818, -0.09902974f, mad(_817, -0.09802088f, (_816 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _838 = saturate(exp2(log2(mad(_818, -0.098961174f, mad(_817, 1.1519032f, (_816 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _839 = saturate(exp2(log2(mad(_818, 1.1510737f, mad(_817, -0.09804345f, (_816 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _845 = 1.0f - abs(_etcParams.w);
      _849 = saturate(_etcParams.w);  // [sem: expr_sat]
      _850 = (_845 * _837) + _849;
      _851 = (_845 * _838) + _849;
      _852 = (_845 * _839) + _849;
      if (_colorGradingParams.w > 0.0f) {
        _857 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _874 = (((max(0.0f, (1.0f - _850)) - _850) * _857) + _850);
        _875 = (((max(0.0f, (1.0f - _851)) - _851) * _857) + _851);
        _876 = (((max(0.0f, (1.0f - _852)) - _852) * _857) + _852);
      } else {
        _874 = _850;
        _875 = _851;
        _876 = _852;
      }
      _882 = _userImageAdjust.y + 1.0f;
      _886 = _userImageAdjust.x + 0.5f;
      _887 = ((_874 + -0.5f) * _882) + _886;
      _888 = ((_875 + -0.5f) * _882) + _886;
      _889 = ((_876 + -0.5f) * _882) + _886;
      _919 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _930 = exp2(log2(saturate(mad(_colorBlind0.z, _889, mad(_colorBlind0.y, _888, (_colorBlind0.x * _887))))) * _919);
      _931 = exp2(log2(saturate(mad(_colorBlind1.z, _889, mad(_colorBlind1.y, _888, (_colorBlind1.x * _887))))) * _919);
      _932 = exp2(log2(saturate(mad(_colorBlind2.z, _889, mad(_colorBlind2.y, _888, (_colorBlind2.x * _887))))) * _919);
    } else {
      _930 = _837;
      _931 = _838;
      _932 = _839;
    }
  } else {
    _930 = _558;
    _931 = _559;
    _932 = _560;
  }
  if (_etcParams.y > 1.0f) {
    _939 = abs(_37 + -1.0f);
    _940 = abs(_39 + -1.0f);
    _944 = saturate(1.0f - (dot(float2(_939, _940), float2(_939, _940)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _949 = (_944 * _930);
    _950 = (_944 * _931);
    _951 = (_944 * _932);
  } else {
    _949 = _930;
    _950 = _931;
    _951 = _932;
  }
  if (_577 && (_etcParams.z > 0.0f)) {
    _981 = select((_949 <= 0.0031308f), (_949 * 12.92f), (((pow(_949, 0.41666666f)) * 1.055f) + -0.055f));
    _982 = select((_950 <= 0.0031308f), (_950 * 12.92f), (((pow(_950, 0.41666666f)) * 1.055f) + -0.055f));
    _983 = select((_951 <= 0.0031308f), (_951 * 12.92f), (((pow(_951, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _981 = _949;
    _982 = _950;
    _983 = _951;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _988 = (float)((uint)((uint)(_561)));
    if (!(_988 < _viewDir.w)) {
      if (!(_988 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _997 = _981;
        _998 = _982;
        _999 = _983;
      } else {
        _997 = 0.0f;
        _998 = 0.0f;
        _999 = 0.0f;
      }
    } else {
      _997 = 0.0f;
      _998 = 0.0f;
      _999 = 0.0f;
    }
  } else {
    _997 = _981;
    _998 = _982;
    _999 = _983;
  }
  SV_Target.x = _997;
  SV_Target.y = _998;
  SV_Target.z = _999;
  SV_Target.w = _574;
  return SV_Target;
}
