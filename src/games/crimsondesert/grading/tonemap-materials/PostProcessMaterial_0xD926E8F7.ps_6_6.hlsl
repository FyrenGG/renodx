struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

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
  float _19;
  float _20;
  float _21;
  float _24;
  float _26;
  float _38;
  float _48;
  float _58;
  float _68;
  float _70;
  float _71;
  float _72;
  float _73;
  int _76;
  int _84;
  float4 _91;
  int _96;
  int _104;
  float4 _115;
  int _120;
  int _128;
  float4 _141;
  float _144;
  float _145;
  int _148;
  int _156;
  float4 _167;
  int _172;
  int _180;
  float4 _193;
  float _197;
  float _199;
  float _202;
  float _205;
  float _209;
  float _213;
  float _215;
  int _218;
  int _226;
  float4 _239;
  float _244;
  float4 _256;
  float _269;
  float _275;
  float4 _284;
  float _297;
  float _298;
  float _302;
  float _304;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  int _311;
  float _438;
  float _643;
  float _644;
  float _645;
  float _738;
  float _739;
  float _740;
  float _794;
  float _795;
  float _796;
  float _812;
  float _813;
  float _814;
  float _844;
  float _845;
  float _846;
  float _863;
  float _864;
  float _865;
  float _312;
  float4 _364;
  float _369;
  float _371;
  float _373;
  int _374;
  float _382;
  float _383;
  float _386;
  float _415;
  float _418;
  float _421;
  float _424;
  uint _425;
  bool _441;
  float _447;
  float _466;
  float _482;
  float _498;
  float _499;
  float _503;
  float _506;
  float _509;
  float _516;
  float _523;
  float _530;
  float _531;
  float _532;
  float _533;
  float _534;
  float _535;
  float _536;
  float _552;
  float _568;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  float _605;
  float _606;
  float _607;
  float _608;
  float _611;
  float _614;
  float _618;
  float _622;
  float _626;
  float _646;
  float _658;
  float _670;
  float _682;
  float _689;
  float _696;
  float _703;
  float _709;
  float _710;
  float _712;
  float _714;
  float _716;
  float _721;
  float _742;
  float _744;
  float _747;
  float _750;
  float _753;
  float _759;
  float _799;
  float _801;
  float _807;
  float _849;
  float _860;
  float _861;
  float _869;
  float _873;
  float _877;
  int __loop_jump_target = -1;
  _19 = (TEXCOORD.x * 2.0f) + -1.0f;
  _20 = TEXCOORD.y * 2.0f;
  _21 = 1.0f - _20;
  _24 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _26 = max(1e-07f, _24.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _38 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _26, mad((_invViewProjRelative[3].y), _21, ((_invViewProjRelative[3].x) * _19)));
  _48 = -0.0f - ((mad((_invViewProjRelative[0].z), _26, mad((_invViewProjRelative[0].y), _21, ((_invViewProjRelative[0].x) * _19))) + (_invViewProjRelative[0].w)) / _38);
  _58 = -0.0f - ((mad((_invViewProjRelative[1].z), _26, mad((_invViewProjRelative[1].y), _21, ((_invViewProjRelative[1].x) * _19))) + (_invViewProjRelative[1].w)) / _38);
  _68 = -0.0f - ((mad((_invViewProjRelative[2].z), _26, mad((_invViewProjRelative[2].y), _21, ((_invViewProjRelative[2].x) * _19))) + (_invViewProjRelative[2].w)) / _38);
  _70 = rsqrt(dot(float3(_48, _58, _68), float3(_48, _58, _68)));  // [sem: invLength]
  _71 = _70 * _48;
  _72 = _70 * _58;
  _73 = _70 * _68;
  _76 = WaveReadLaneFirst(_materialIndex);
  _84 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _91 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_84 < (uint)65000), _84, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_73, _71));
  _96 = WaveReadLaneFirst(_materialIndex);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _115 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_104 < (uint)65000), _104, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_73, ((_time.x * 0.05f) + _72)));
  _120 = WaveReadLaneFirst(_materialIndex);
  _128 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _141 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_128 < (uint)65000), _128, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_73 * 2.0f), ((_72 - (_time.x * 0.1f)) * 2.0f)));
  _144 = _141.x + _115.x;
  _145 = _141.y + _115.y;
  _148 = WaveReadLaneFirst(_materialIndex);
  _156 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_148 < (uint)170000), _148, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _167 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_156 < (uint)65000), _156, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _72), _71));
  _172 = WaveReadLaneFirst(_materialIndex);
  _180 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_172 < (uint)170000), _172, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _193 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_180 < (uint)65000), _180, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _72) * 2.0f), (_71 * 2.0f)));
  _197 = abs(dot(float3(_71, _72, _73), float3(0.0f, 1.0f, 0.0f)));
  _199 = abs(dot(float3(_71, _72, _73), float3(0.0f, 0.0f, 1.0f)));
  _202 = (_197 * (_91.x - _144)) + _144;
  _205 = (_197 * (_91.y - _145)) + _145;
  _209 = (((_193.x + _167.x) - _202) * _199) + _202;
  _213 = (((_193.y + _167.y) - _205) * _199) + _205;
  _215 = saturate(_24.x * 35.0f);  // [sem: expr_sat]
  _218 = WaveReadLaneFirst(_materialIndex);
  _226 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _239 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_226 < (uint)65000), _226, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _244 = ((_239.x - _209) * _215) + _209;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _256 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((TEXCOORD.x + -0.001992157f) + (_244 * 0.004f)), ((TEXCOORD.y + -0.001992157f) + ((lerp(_213, _239.y, _215)) * 0.004f))));
  _269 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _275 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
  _284 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_269 * _customRenderPassSizeInvSize.x)), ((int)(_275 * _customRenderPassSizeInvSize.y)), 0));
  _297 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _284.x, mad((_projToPrevProj[3].y), _21, ((_projToPrevProj[3].x) * _19)));
  _298 = _244 + -0.4f;
  _302 = min(max(((_298 * 6.666667f) + -1.0f), -1.0f), 1.0f);
  _304 = (_298 * 0.020000001f) + -0.003f;
  _306 = _304;
  _307 = _304;
  _308 = 0.0f;
  _309 = 0.0f;
  _310 = 0.0f;
  _311 = 1;
  while(true) {
    _312 = (float)((int)(_311));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _364 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_312 * _306) * (((-0.5f - (_302 * 8.742278e-08f)) + (((((_projToPrevProj[0].w) + mad((_projToPrevProj[0].z), _284.x, mad((_projToPrevProj[0].y), _21, ((_projToPrevProj[0].x) * _19)))) / _297) - _19) * 2.5f)) + frac(frac(dot(float2(_269, _275), float2(0.06711056f, 0.00583715f))) * 52.982918f)))), (TEXCOORD.y - ((_312 * _307) * (((-0.5f - _302) + ((((mad((_projToPrevProj[1].z), _284.x, mad((_projToPrevProj[1].y), _21, ((_projToPrevProj[1].x) * _19))) + (_projToPrevProj[1].w)) / _297) - _21) * 2.5f)) + frac(frac(dot(float2((_269 + 32.665f), (_275 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f))))));
    _369 = (_364.x * 0.125f) + _308;
    _371 = (_364.y * 0.125f) + _309;
    _373 = (_364.z * 0.125f) + _310;
    _374 = (int)(_311) + (int)(1);
    if (!(_374 == 8)) {
      _860 = _306 * 0.9f;
      _861 = _307 * 0.9f;
      _306 = _860;
      _307 = _861;
      _308 = _369;
      _309 = _371;
      _310 = _373;
      _311 = _374;
      continue;
    }
    _382 = (pow(_256.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _383 = (pow(_256.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _386 = (pow(_256.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _415 = dot(float3((exp2(log2(max(0.0f, (_386 + -0.8359375f)) / (18.851562f - (_386 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_382 + -0.8359375f)) / (18.851562f - (_382 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_383 + -0.8359375f)) / (18.851562f - (_383 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f)) * 0.3f;
    _418 = ((_415 - _369) * 0.2f) + _369;
    _421 = ((_415 - _371) * 0.2f) + _371;
    _424 = ((_415 - _373) * 0.2f) + _373;
    _425 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _438 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _425, 0)))).x) & 127)))) + 0.5f);
    } else {
      _438 = 0.0f;
    }
    _441 = (_localToneMappingParams.w > 0.0f);
    if (_441) {
      _447 = _exposure0.x * _userImageAdjust.z;
      _466 = exp2(_powerParams.x * log2(max(0.0f, (((_447 * max(0.0f, (((_418 * 1.70505f) - (_421 * 0.62179f)) - (_424 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _482 = exp2(log2(max(0.0f, (((_slopeParams.y * _447) * max(0.0f, (((_421 * 1.1408f) - (_418 * 0.13026f)) - (_424 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _498 = exp2(log2(max(0.0f, (((_slopeParams.z * _447) * max(0.0f, (((_418 * -0.024f) - (_421 * 0.12897f)) + (_424 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _499 = dot(float3(_466, _482, _498), float3(0.212671f, 0.71516f, 0.072169f));
      _503 = ((_466 - _499) * _powerParams.w) + _499;
      _506 = ((_482 - _499) * _powerParams.w) + _499;
      _509 = ((_498 - _499) * _powerParams.w) + _499;
      _516 = min(max(log2(mad(_509, 0.079223745f, mad(_506, 0.0784336f, (_503 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _523 = min(max(log2(mad(_509, 0.07916613f, mad(_506, 0.87846863f, (_503 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _530 = min(max(log2(mad(_509, 0.879143f, mad(_506, 0.0784336f, (_503 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _531 = _516 * 0.060606062f;
      _532 = _523 * 0.060606062f;
      _533 = _530 * 0.060606062f;
      _534 = _531 * _531;
      _535 = _532 * _532;
      _536 = _533 * _533;
      _552 = min(0.0f, (-0.0f - (((_516 * 0.0072181816f) + ((_534 * 0.4298f) + (((_534 * _534) * ((31.96f - (_516 * 2.4327273f)) + (_534 * 15.5f))) - ((_516 * 0.41624245f) * _534)))) + -0.00232f)));
      _568 = min(0.0f, (-0.0f - (((_523 * 0.0072181816f) + ((_535 * 0.4298f) + (((_535 * _535) * ((31.96f - (_523 * 2.4327273f)) + (_535 * 15.5f))) - ((_523 * 0.41624245f) * _535)))) + -0.00232f)));
      _584 = min(0.0f, (-0.0f - (((_530 * 0.0072181816f) + ((_536 * 0.4298f) + (((_536 * _536) * ((31.96f - (_530 * 2.4327273f)) + (_536 * 15.5f))) - ((_530 * 0.41624245f) * _536)))) + -0.00232f)));
      _585 = -0.0f - _552;
      _586 = -0.0f - _568;
      _587 = -0.0f - _584;
      _588 = dot(float3(_585, _586, _587), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _605 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _606 = -0.79999995f / _605;
        _607 = -1.2f / _605;
        _608 = 0.20000005f / _605;
        _611 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _614 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _618 = (_606 + 1.4f) + (_614 * (-0.39999998f - _606));
        _622 = (_607 + 1.6f) + (_614 * (-0.6f - _607));
        _626 = (_608 + 0.9f) + (_614 * (0.5f - _608));
        _643 = (lerp(_622, 1.2f, _611));  // [sem: blended]
        _644 = (lerp(_618, 1.0f, _611));  // [sem: blended]
        _645 = (lerp(_626, 1.4f, _611));  // [sem: blended]
      } else {
        _643 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _644 = 1.0f;  // [sem: blended]
        _645 = 1.4f;  // [sem: blended]
      }
      _646 = 1.0f - _643;
      _658 = ((exp2(log2(((saturate((_552 * _552) * _585) * _646) + _643) * _585) * _644) - _588) * _645) + _588;
      _670 = ((exp2(log2(((saturate((_568 * _568) * _586) * _646) + _643) * _586) * _644) - _588) * _645) + _588;
      _682 = ((exp2(log2(((saturate((_584 * _584) * _587) * _646) + _643) * _587) * _644) - _588) * _645) + _588;
      _689 = saturate(exp2(log2(mad(_682, -0.09902974f, mad(_670, -0.09802088f, (_658 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _696 = saturate(exp2(log2(mad(_682, -0.098961174f, mad(_670, 1.1519032f, (_658 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _703 = saturate(exp2(log2(mad(_682, 1.1510737f, mad(_670, -0.09804345f, (_658 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _709 = 1.0f - abs(_etcParams.w);
        _710 = saturate(_etcParams.w);  // [sem: expr_sat]
        _712 = (_709 * _689) + _710;
        _714 = (_709 * _696) + _710;
        _716 = (_709 * _703) + _710;
        if (_colorGradingParams.w > 0.0f) {
          _721 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _738 = (((max(0.0f, (1.0f - _712)) - _712) * _721) + _712);
          _739 = (((max(0.0f, (1.0f - _714)) - _714) * _721) + _714);
          _740 = (((max(0.0f, (1.0f - _716)) - _716) * _721) + _716);
        } else {
          _738 = _712;
          _739 = _714;
          _740 = _716;
        }
        _742 = _userImageAdjust.y + 1.0f;
        _744 = _userImageAdjust.x + 0.5f;
        _747 = ((_738 + -0.5f) * _742) + _744;
        _750 = ((_739 + -0.5f) * _742) + _744;
        _753 = ((_740 + -0.5f) * _742) + _744;
        _759 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _794 = exp2(log2(saturate(mad(_colorBlind0.z, _753, mad(_colorBlind0.y, _750, (_colorBlind0.x * _747))))) * _759);
        _795 = exp2(log2(saturate(mad(_colorBlind1.z, _753, mad(_colorBlind1.y, _750, (_colorBlind1.x * _747))))) * _759);
        _796 = exp2(log2(saturate(mad(_colorBlind2.z, _753, mad(_colorBlind2.y, _750, (_colorBlind2.x * _747))))) * _759);
      } else {
        _794 = _689;
        _795 = _696;
        _796 = _703;
      }
    } else {
      _794 = _418;
      _795 = _421;
      _796 = _424;
    }
    if (_etcParams.y > 1.0f) {
      _799 = abs(_19);
      _801 = abs(_20 + -1.0f);
      _807 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_799, _801), float2(_799, _801))));  // [sem: expr_sat]
      _812 = (_807 * _794);
      _813 = (_807 * _795);
      _814 = (_807 * _796);
    } else {
      _812 = _794;
      _813 = _795;
      _814 = _796;
    }
    if (_441 && (_etcParams.z > 0.0f)) {
      _844 = select((_812 <= 0.0031308f), (_812 * 12.92f), (((pow(_812, 0.41666666f)) * 1.055f) + -0.055f));
      _845 = select((_813 <= 0.0031308f), (_813 * 12.92f), (((pow(_813, 0.41666666f)) * 1.055f) + -0.055f));
      _846 = select((_814 <= 0.0031308f), (_814 * 12.92f), (((pow(_814, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _844 = _812;
      _845 = _813;
      _846 = _814;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _849 = (float)((uint)((uint)(_425)));
      if (!(_849 < _viewDir.w)) {
        if (!(!(_849 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _863 = 0.0f;
          _864 = 0.0f;
          _865 = 0.0f;
        } else {
          _863 = _844;
          _864 = _845;
          _865 = _846;
        }
      } else {
        _863 = 0.0f;
        _864 = 0.0f;
        _865 = 0.0f;
      }
    } else {
      _863 = _844;
      _864 = _845;
      _865 = _846;
    }
    _869 = exp2(log2(_863 * 0.0001f) * 0.15930176f);
    _873 = exp2(log2(_864 * 0.0001f) * 0.15930176f);
    _877 = exp2(log2(_865 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_869 * 18.6875f) + 1.0f)) * ((_869 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_873 * 18.6875f) + 1.0f)) * ((_873 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_877 * 18.6875f) + 1.0f)) * ((_877 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _438;
    break;
  }
  return SV_Target;
}
