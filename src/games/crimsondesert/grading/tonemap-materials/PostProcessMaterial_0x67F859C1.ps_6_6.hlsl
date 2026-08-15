struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _725;
  float _726;
  float _727;
  float _741;
  float _946;
  float _947;
  float _948;
  float _1041;
  float _1042;
  float _1043;
  float _1097;
  float _1098;
  float _1099;
  float _1118;
  float _1119;
  float _1120;
  float _1150;
  float _1151;
  float _1152;
  float _1166;
  float _1167;
  float _1168;
  uint2 _29;
  bool _57;
  float _59;
  int _66;
  float _74;
  float4 _77;
  float _84;
  float _85;
  float _103;
  float _104;
  float4 _106;
  float _113;
  float _114;
  float4 _133;
  float _140;
  float _141;
  float _159;
  float4 _161;
  float _168;
  float _169;
  float4 _188;
  float _195;
  float _196;
  int _232;
  float _240;
  float4 _243;
  float _250;
  float _251;
  float _269;
  float _270;
  float4 _272;
  float _279;
  float _280;
  float4 _299;
  float _306;
  float _307;
  float _325;
  float4 _327;
  float _334;
  float _335;
  float4 _354;
  float _361;
  float _362;
  int _398;
  float _406;
  float4 _409;
  float _416;
  float _417;
  float _435;
  float _436;
  float4 _438;
  float _445;
  float _446;
  float4 _465;
  float _472;
  float _473;
  float _491;
  float4 _493;
  float _500;
  float _501;
  float4 _520;
  float _527;
  float _528;
  int _564;
  float _572;
  float4 _575;
  float _582;
  float _583;
  float _601;
  float _602;
  float4 _604;
  float _611;
  float _612;
  float4 _631;
  float _638;
  float _639;
  float _657;
  float4 _659;
  float _666;
  float _667;
  float4 _686;
  float _693;
  float _694;
  uint _728;
  bool _744;
  float _750;
  float _799;
  float _800;
  float _801;
  float _803;
  float _810;
  float _811;
  float _812;
  float _831;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _885;
  float _886;
  float _887;
  float _888;
  float _889;
  float _890;
  float _891;
  float _908;
  float _909;
  float _910;
  float _911;
  float _917;
  float _920;
  float _927;
  float _928;
  float _929;
  float _958;
  float _983;
  float _984;
  float _985;
  float _1004;
  float _1005;
  float _1006;
  float _1012;
  float _1016;
  float _1017;
  float _1018;
  float _1019;
  float _1024;
  float _1049;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  float _1086;
  float _1108;
  float _1109;
  float _1113;
  float _1157;
  float _1178;
  float _1179;
  float _1180;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_29.x, _29.y);
    _57 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_29.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_29.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30);
    _59 = select(_57, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x), 0.0f);
    _725 = select(_57, 1.0f, 0.0f);
    _726 = _59;
    _727 = _59;
  } else {
    if (_passIndex == 1) {
      _66 = WaveReadLaneFirst(_materialIndex);
      _74 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _77 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _84 = (pow(_77.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _85 = (pow(_77.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _103 = _74 * (1.0f / _destTargetSizAndInv.x);
      _104 = _103 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _106 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_104 + TEXCOORD.x), TEXCOORD.y));
      _113 = (pow(_106.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _114 = (pow(_106.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _133 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _104), TEXCOORD.y));
      _140 = (pow(_133.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _141 = (pow(_133.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _159 = _103 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _161 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_159 + TEXCOORD.x), TEXCOORD.y));
      _168 = (pow(_161.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _169 = (pow(_161.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _188 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _159), TEXCOORD.y));
      _195 = (pow(_188.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _196 = (pow(_188.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _725 = ((((exp2(log2(max(0.0f, (_140 + -0.8359375f)) / (18.851562f - (_140 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_113 + -0.8359375f)) / (18.851562f - (_113 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_84 + -0.8359375f)) / (18.851562f - (_84 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_195 + -0.8359375f)) / (18.851562f - (_195 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_168 + -0.8359375f)) / (18.851562f - (_168 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _726 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_85 + -0.8359375f)) / (18.851562f - (_85 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_114 + -0.8359375f)) / (18.851562f - (_114 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_141 + -0.8359375f)) / (18.851562f - (_141 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_169 + -0.8359375f)) / (18.851562f - (_169 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_196 + -0.8359375f)) / (18.851562f - (_196 * 18.6875f))) * 6.277395f) * 10000.0f));
      _727 = 0.0f;
    } else {
      if (_passIndex == 2) {
        _232 = WaveReadLaneFirst(_materialIndex);
        _240 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_232 < (uint)170000), _232, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _243 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _250 = (pow(_243.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _251 = (pow(_243.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _269 = _240 * (1.0f / _destTargetSizAndInv.y);
        _270 = _269 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _272 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_270 + TEXCOORD.y)));
        _279 = (pow(_272.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _280 = (pow(_272.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _299 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _270)));
        _306 = (pow(_299.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _307 = (pow(_299.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _325 = _269 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _327 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_325 + TEXCOORD.y)));
        _334 = (pow(_327.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _335 = (pow(_327.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _354 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _325)));
        _361 = (pow(_354.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _362 = (pow(_354.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _725 = ((((exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.851562f - (_306 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_279 + -0.8359375f)) / (18.851562f - (_279 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_250 + -0.8359375f)) / (18.851562f - (_250 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_361 + -0.8359375f)) / (18.851562f - (_361 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_334 + -0.8359375f)) / (18.851562f - (_334 * 18.6875f))) * 6.277395f)) * 702.7027f));
        _726 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_251 + -0.8359375f)) / (18.851562f - (_251 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_280 + -0.8359375f)) / (18.851562f - (_280 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.851562f - (_307 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_335 + -0.8359375f)) / (18.851562f - (_335 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_362 + -0.8359375f)) / (18.851562f - (_362 * 18.6875f))) * 6.277395f) * 10000.0f));
        _727 = 0.0f;
      } else {
        if (_passIndex == 3) {
          _398 = WaveReadLaneFirst(_materialIndex);
          _406 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_398 < (uint)170000), _398, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _409 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _416 = (pow(_409.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _417 = (pow(_409.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _435 = _406 * (1.0f / _destTargetSizAndInv.x);
          _436 = _435 * 1.3846154f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _438 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_436 + TEXCOORD.x), TEXCOORD.y));
          _445 = (pow(_438.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _446 = (pow(_438.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _465 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _436), TEXCOORD.y));
          _472 = (pow(_465.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _473 = (pow(_465.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _491 = _435 * 3.2307692f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _493 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_491 + TEXCOORD.x), TEXCOORD.y));
          _500 = (pow(_493.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _501 = (pow(_493.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _520 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _491), TEXCOORD.y));
          _527 = (pow(_520.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _528 = (pow(_520.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _725 = ((((exp2(log2(max(0.0f, (_472 + -0.8359375f)) / (18.851562f - (_472 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_445 + -0.8359375f)) / (18.851562f - (_445 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_416 + -0.8359375f)) / (18.851562f - (_416 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_527 + -0.8359375f)) / (18.851562f - (_527 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_500 + -0.8359375f)) / (18.851562f - (_500 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _726 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_417 + -0.8359375f)) / (18.851562f - (_417 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_446 + -0.8359375f)) / (18.851562f - (_446 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_473 + -0.8359375f)) / (18.851562f - (_473 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_501 + -0.8359375f)) / (18.851562f - (_501 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_528 + -0.8359375f)) / (18.851562f - (_528 * 18.6875f))) * 6.277395f) * 10000.0f));
          _727 = 0.0f;
        } else {
          if (_passIndex == 4) {
            _564 = WaveReadLaneFirst(_materialIndex);
            _572 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_564 < (uint)170000), _564, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _575 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _582 = (pow(_575.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _583 = (pow(_575.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _601 = _572 * (1.0f / _destTargetSizAndInv.y);
            _602 = _601 * 1.3846154f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _604 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_602 + TEXCOORD.y)));
            _611 = (pow(_604.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _612 = (pow(_604.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _631 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _602)));
            _638 = (pow(_631.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _639 = (pow(_631.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _657 = _601 * 3.2307692f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _659 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_657 + TEXCOORD.y)));
            _666 = (pow(_659.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _667 = (pow(_659.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _686 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _657)));
            _693 = (pow(_686.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _694 = (pow(_686.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _725 = ((((exp2(log2(max(0.0f, (_638 + -0.8359375f)) / (18.851562f - (_638 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_611 + -0.8359375f)) / (18.851562f - (_611 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_582 + -0.8359375f)) / (18.851562f - (_582 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_693 + -0.8359375f)) / (18.851562f - (_693 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_666 + -0.8359375f)) / (18.851562f - (_666 * 18.6875f))) * 6.277395f)) * 702.7027f));
            _726 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_583 + -0.8359375f)) / (18.851562f - (_583 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_612 + -0.8359375f)) / (18.851562f - (_612 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_639 + -0.8359375f)) / (18.851562f - (_639 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_667 + -0.8359375f)) / (18.851562f - (_667 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_694 + -0.8359375f)) / (18.851562f - (_694 * 18.6875f))) * 6.277395f) * 10000.0f));
            _727 = 0.0f;
          } else {
            _725 = 0.0f;
            _726 = 0.0f;
            _727 = 0.0f;
          }
        }
      }
    }
  }
  _728 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _741 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _728, 0)))).x) & 127)))) + 0.5f);
  } else {
    _741 = 1.0f;
  }
  _744 = (_localToneMappingParams.w > 0.0f);
  if (_744) {
    _750 = _userImageAdjust.z * _exposure0.x;
    _799 = exp2(log2(max(0.0f, (((_750 * max(0.0f, (((_725 * 1.70505f) - (_726 * 0.62179f)) - (_727 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _800 = exp2(log2(max(0.0f, (((max(0.0f, (((_726 * 1.1408f) - (_725 * 0.13026f)) - (_727 * 0.01055f))) * _750) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _801 = exp2(log2(max(0.0f, (((max(0.0f, (((_725 * -0.024f) - (_726 * 0.12897f)) + (_727 * 1.15297f))) * _750) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _803 = dot(float3(_799, _800, _801), float3(0.212671f, 0.71516f, 0.072169f));
    _810 = ((_799 - _803) * _powerParams.w) + _803;
    _811 = ((_800 - _803) * _powerParams.w) + _803;
    _812 = ((_801 - _803) * _powerParams.w) + _803;
    _831 = min(max(log2(mad(_812, 0.079223745f, mad(_811, 0.0784336f, (_810 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _832 = min(max(log2(mad(_812, 0.07916613f, mad(_811, 0.87846863f, (_810 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _833 = min(max(log2(mad(_812, 0.879143f, mad(_811, 0.0784336f, (_810 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _834 = _831 * 0.060606062f;
    _835 = _832 * 0.060606062f;
    _836 = _833 * 0.060606062f;
    _837 = _834 * _834;
    _838 = _835 * _835;
    _839 = _836 * _836;
    _885 = min(0.0f, (-0.0f - (((_831 * 0.0072181816f) + ((_837 * 0.4298f) + (((_837 * _837) * ((31.96f - (_831 * 2.4327273f)) + (_837 * 15.5f))) - ((_831 * 0.41624245f) * _837)))) + -0.00232f)));
    _886 = min(0.0f, (-0.0f - (((_832 * 0.0072181816f) + ((_838 * 0.4298f) + (((_838 * _838) * ((31.96f - (_832 * 2.4327273f)) + (_838 * 15.5f))) - ((_832 * 0.41624245f) * _838)))) + -0.00232f)));
    _887 = min(0.0f, (-0.0f - (((_833 * 0.0072181816f) + ((_839 * 0.4298f) + (((_839 * _839) * ((31.96f - (_833 * 2.4327273f)) + (_839 * 15.5f))) - ((_833 * 0.41624245f) * _839)))) + -0.00232f)));
    _888 = -0.0f - _885;
    _889 = -0.0f - _886;
    _890 = -0.0f - _887;
    _891 = dot(float3(_888, _889, _890), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _908 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _909 = -0.79999995f / _908;
      _910 = -1.2f / _908;
      _911 = 0.20000005f / _908;
      _917 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _920 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _927 = (_909 + 1.4f) + (_920 * (-0.39999998f - _909));
      _928 = (_910 + 1.6f) + (_920 * (-0.6f - _910));
      _929 = (_911 + 0.9f) + (_920 * (0.5f - _911));
      _946 = (lerp(_928, 1.2f, _917));  // [sem: blended]
      _947 = (lerp(_927, 1.0f, _917));  // [sem: blended]
      _948 = (lerp(_929, 1.4f, _917));  // [sem: blended]
    } else {
      _946 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _947 = 1.0f;  // [sem: blended]
      _948 = 1.4f;  // [sem: blended]
    }
    _958 = 1.0f - _946;
    _983 = ((exp2(log2(((saturate((_885 * _885) * _888) * _958) + _946) * _888) * _947) - _891) * _948) + _891;
    _984 = ((exp2(log2(((saturate((_886 * _886) * _889) * _958) + _946) * _889) * _947) - _891) * _948) + _891;
    _985 = ((exp2(log2(((saturate((_887 * _887) * _890) * _958) + _946) * _890) * _947) - _891) * _948) + _891;
    _1004 = saturate(exp2(log2(mad(_985, -0.09902974f, mad(_984, -0.09802088f, (_983 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1005 = saturate(exp2(log2(mad(_985, -0.098961174f, mad(_984, 1.1519032f, (_983 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1006 = saturate(exp2(log2(mad(_985, 1.1510737f, mad(_984, -0.09804345f, (_983 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1012 = 1.0f - abs(_etcParams.w);
      _1016 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1017 = (_1012 * _1004) + _1016;
      _1018 = (_1012 * _1005) + _1016;
      _1019 = (_1012 * _1006) + _1016;
      if (_colorGradingParams.w > 0.0f) {
        _1024 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1041 = (((max(0.0f, (1.0f - _1017)) - _1017) * _1024) + _1017);
        _1042 = (((max(0.0f, (1.0f - _1018)) - _1018) * _1024) + _1018);
        _1043 = (((max(0.0f, (1.0f - _1019)) - _1019) * _1024) + _1019);
      } else {
        _1041 = _1017;
        _1042 = _1018;
        _1043 = _1019;
      }
      _1049 = _userImageAdjust.y + 1.0f;
      _1053 = _userImageAdjust.x + 0.5f;
      _1054 = ((_1041 + -0.5f) * _1049) + _1053;
      _1055 = ((_1042 + -0.5f) * _1049) + _1053;
      _1056 = ((_1043 + -0.5f) * _1049) + _1053;
      _1086 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1097 = exp2(log2(saturate(mad(_colorBlind0.z, _1056, mad(_colorBlind0.y, _1055, (_colorBlind0.x * _1054))))) * _1086);
      _1098 = exp2(log2(saturate(mad(_colorBlind1.z, _1056, mad(_colorBlind1.y, _1055, (_colorBlind1.x * _1054))))) * _1086);
      _1099 = exp2(log2(saturate(mad(_colorBlind2.z, _1056, mad(_colorBlind2.y, _1055, (_colorBlind2.x * _1054))))) * _1086);
    } else {
      _1097 = _1004;
      _1098 = _1005;
      _1099 = _1006;
    }
  } else {
    _1097 = _725;
    _1098 = _726;
    _1099 = _727;
  }
  if (_etcParams.y > 1.0f) {
    _1108 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1109 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1113 = saturate(1.0f - (dot(float2(_1108, _1109), float2(_1108, _1109)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1118 = (_1113 * _1097);
    _1119 = (_1113 * _1098);
    _1120 = (_1113 * _1099);
  } else {
    _1118 = _1097;
    _1119 = _1098;
    _1120 = _1099;
  }
  if (_744 && (_etcParams.z > 0.0f)) {
    _1150 = select((_1118 <= 0.0031308f), (_1118 * 12.92f), (((pow(_1118, 0.41666666f)) * 1.055f) + -0.055f));
    _1151 = select((_1119 <= 0.0031308f), (_1119 * 12.92f), (((pow(_1119, 0.41666666f)) * 1.055f) + -0.055f));
    _1152 = select((_1120 <= 0.0031308f), (_1120 * 12.92f), (((pow(_1120, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1150 = _1118;
    _1151 = _1119;
    _1152 = _1120;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1157 = (float)((uint)((uint)(_728)));
    if (!(_1157 < _viewDir.w)) {
      if (!(_1157 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1166 = _1150;
        _1167 = _1151;
        _1168 = _1152;
      } else {
        _1166 = 0.0f;
        _1167 = 0.0f;
        _1168 = 0.0f;
      }
    } else {
      _1166 = 0.0f;
      _1167 = 0.0f;
      _1168 = 0.0f;
    }
  } else {
    _1166 = _1150;
    _1167 = _1151;
    _1168 = _1152;
  }
  _1178 = exp2(log2(_1166 * 0.0001f) * 0.15930176f);
  _1179 = exp2(log2(_1167 * 0.0001f) * 0.15930176f);
  _1180 = exp2(log2(_1168 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1178 * 18.6875f) + 1.0f)) * ((_1178 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1179 * 18.6875f) + 1.0f)) * ((_1179 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1180 * 18.6875f) + 1.0f)) * ((_1180 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _741;
  return SV_Target;
}
