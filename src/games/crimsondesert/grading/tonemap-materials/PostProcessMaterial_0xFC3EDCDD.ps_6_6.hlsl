struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  float _727;
  float _728;
  float _729;
  float _743;
  float _948;
  float _949;
  float _950;
  float _1043;
  float _1044;
  float _1045;
  float _1099;
  float _1100;
  float _1101;
  float _1120;
  float _1121;
  float _1122;
  float _1152;
  float _1153;
  float _1154;
  float _1168;
  float _1169;
  float _1170;
  uint2 _27;
  bool _45;
  float _56;
  int _62;
  float _70;
  float4 _73;
  float _78;
  float _81;
  float _85;
  float _86;
  float4 _88;
  float _93;
  float _96;
  float4 _98;
  float _103;
  float _106;
  float _107;
  float4 _109;
  float _114;
  float _117;
  float4 _119;
  float _124;
  float _127;
  int _229;
  float _237;
  float4 _240;
  float _245;
  float _248;
  float _252;
  float _253;
  float4 _255;
  float _260;
  float _263;
  float4 _265;
  float _270;
  float _273;
  float _274;
  float4 _276;
  float _281;
  float _284;
  float4 _286;
  float _291;
  float _294;
  int _396;
  float _404;
  float4 _407;
  float _412;
  float _415;
  float _419;
  float _420;
  float4 _422;
  float _427;
  float _430;
  float4 _432;
  float _437;
  float _440;
  float _441;
  float4 _443;
  float _448;
  float _451;
  float4 _453;
  float _458;
  float _461;
  int _563;
  float _571;
  float4 _574;
  float _579;
  float _582;
  float _586;
  float _587;
  float4 _589;
  float _594;
  float _597;
  float4 _599;
  float _604;
  float _607;
  float _608;
  float4 _610;
  float _615;
  float _618;
  float4 _620;
  float _625;
  float _628;
  uint _730;
  bool _746;
  float _752;
  float _771;
  float _787;
  float _803;
  float _804;
  float _808;
  float _811;
  float _814;
  float _821;
  float _828;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  float _841;
  float _857;
  float _873;
  float _889;
  float _890;
  float _891;
  float _892;
  float _893;
  float _910;
  float _911;
  float _912;
  float _913;
  float _916;
  float _919;
  float _923;
  float _927;
  float _931;
  float _951;
  float _963;
  float _975;
  float _987;
  float _994;
  float _1001;
  float _1008;
  float _1014;
  float _1015;
  float _1017;
  float _1019;
  float _1021;
  float _1026;
  float _1047;
  float _1049;
  float _1052;
  float _1055;
  float _1058;
  float _1064;
  float _1106;
  float _1109;
  float _1115;
  float _1157;
  float _1174;
  float _1178;
  float _1182;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_27.x, _27.y);
    _45 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_27.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_27.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30);
    _56 = select(_45, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x), 0.0f);
    _727 = _56;
    _728 = _56;
    _729 = select(_45, 1.0f, 0.0f);
  } else {
    if (_passIndex == 1) {
      _62 = WaveReadLaneFirst(_materialIndex);
      _70 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _73 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _78 = (pow(_73.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _81 = (pow(_73.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _85 = (1.0f / _destTargetSizAndInv.x) * _70;
      _86 = _85 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _88 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_86 + TEXCOORD.x), TEXCOORD.y));
      _93 = (pow(_88.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _96 = (pow(_88.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _98 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _86), TEXCOORD.y));
      _103 = (pow(_98.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _106 = (pow(_98.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _107 = _85 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _109 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_107 + TEXCOORD.x), TEXCOORD.y));
      _114 = (pow(_109.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _117 = (pow(_109.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _119 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _107), TEXCOORD.y));
      _124 = (pow(_119.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _127 = (pow(_119.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _727 = 0.0f;
      _728 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_81 + -0.8359375f)) / (18.851562f - (_81 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_96 + -0.8359375f)) / (18.851562f - (_96 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_106 + -0.8359375f)) / (18.851562f - (_106 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_117 + -0.8359375f)) / (18.851562f - (_117 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_127 + -0.8359375f)) / (18.851562f - (_127 * 18.6875f))) * 6.277395f) * 10000.0f));
      _729 = (((exp2(log2(max(0.0f, (_78 + -0.8359375f)) / (18.851562f - (_78 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_93 + -0.8359375f)) / (18.851562f - (_93 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.851562f - (_103 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_114 + -0.8359375f)) / (18.851562f - (_114 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_124 + -0.8359375f)) / (18.851562f - (_124 * 18.6875f))) * 6.277395f)) * 702.7027f));
    } else {
      if (_passIndex == 2) {
        _229 = WaveReadLaneFirst(_materialIndex);
        _237 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_229 < (uint)170000), _229, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _240 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _245 = (pow(_240.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _248 = (pow(_240.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _252 = (1.0f / _destTargetSizAndInv.y) * _237;
        _253 = _252 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _255 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_253 + TEXCOORD.y)));
        _260 = (pow(_255.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _263 = (pow(_255.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _265 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _253)));
        _270 = (pow(_265.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _273 = (pow(_265.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _274 = _252 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _276 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_274 + TEXCOORD.y)));
        _281 = (pow(_276.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _284 = (pow(_276.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _286 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _274)));
        _291 = (pow(_286.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _294 = (pow(_286.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _727 = 0.0f;
        _728 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_248 + -0.8359375f)) / (18.851562f - (_248 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_263 + -0.8359375f)) / (18.851562f - (_263 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_273 + -0.8359375f)) / (18.851562f - (_273 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_284 + -0.8359375f)) / (18.851562f - (_284 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_294 + -0.8359375f)) / (18.851562f - (_294 * 18.6875f))) * 6.277395f) * 10000.0f));
        _729 = (((exp2(log2(max(0.0f, (_245 + -0.8359375f)) / (18.851562f - (_245 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_260 + -0.8359375f)) / (18.851562f - (_260 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_270 + -0.8359375f)) / (18.851562f - (_270 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_281 + -0.8359375f)) / (18.851562f - (_281 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_291 + -0.8359375f)) / (18.851562f - (_291 * 18.6875f))) * 6.277395f)) * 702.7027f));
      } else {
        if (_passIndex == 3) {
          _396 = WaveReadLaneFirst(_materialIndex);
          _404 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_396 < (uint)170000), _396, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _407 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _412 = (pow(_407.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _415 = (pow(_407.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _419 = (1.0f / _destTargetSizAndInv.x) * _404;
          _420 = _419 * 1.3846154f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _422 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_420 + TEXCOORD.x), TEXCOORD.y));
          _427 = (pow(_422.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _430 = (pow(_422.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _432 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _420), TEXCOORD.y));
          _437 = (pow(_432.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _440 = (pow(_432.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _441 = _419 * 3.2307692f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _443 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_441 + TEXCOORD.x), TEXCOORD.y));
          _448 = (pow(_443.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _451 = (pow(_443.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _453 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _441), TEXCOORD.y));
          _458 = (pow(_453.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _461 = (pow(_453.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _727 = 0.0f;
          _728 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_415 + -0.8359375f)) / (18.851562f - (_415 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_430 + -0.8359375f)) / (18.851562f - (_430 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_440 + -0.8359375f)) / (18.851562f - (_440 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_451 + -0.8359375f)) / (18.851562f - (_451 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_461 + -0.8359375f)) / (18.851562f - (_461 * 18.6875f))) * 6.277395f) * 10000.0f));
          _729 = (((exp2(log2(max(0.0f, (_412 + -0.8359375f)) / (18.851562f - (_412 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_427 + -0.8359375f)) / (18.851562f - (_427 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_437 + -0.8359375f)) / (18.851562f - (_437 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_448 + -0.8359375f)) / (18.851562f - (_448 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_458 + -0.8359375f)) / (18.851562f - (_458 * 18.6875f))) * 6.277395f)) * 702.7027f));
        } else {
          if (_passIndex == 4) {
            _563 = WaveReadLaneFirst(_materialIndex);
            _571 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_563 < (uint)170000), _563, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineSize);
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _574 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _579 = (pow(_574.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _582 = (pow(_574.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _586 = (1.0f / _destTargetSizAndInv.y) * _571;
            _587 = _586 * 1.3846154f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _589 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_587 + TEXCOORD.y)));
            _594 = (pow(_589.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _597 = (pow(_589.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _599 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _587)));
            _604 = (pow(_599.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _607 = (pow(_599.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _608 = _586 * 3.2307692f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _610 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_608 + TEXCOORD.y)));
            _615 = (pow(_610.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _618 = (pow(_610.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _620 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _608)));
            _625 = (pow(_620.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _628 = (pow(_620.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _727 = 0.0f;
            _728 = max(max(max(max(max(0.0f, (exp2(log2(max(0.0f, (_582 + -0.8359375f)) / (18.851562f - (_582 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_597 + -0.8359375f)) / (18.851562f - (_597 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_607 + -0.8359375f)) / (18.851562f - (_607 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_618 + -0.8359375f)) / (18.851562f - (_618 * 18.6875f))) * 6.277395f) * 10000.0f)), (exp2(log2(max(0.0f, (_628 + -0.8359375f)) / (18.851562f - (_628 * 18.6875f))) * 6.277395f) * 10000.0f));
            _729 = (((exp2(log2(max(0.0f, (_579 + -0.8359375f)) / (18.851562f - (_579 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_594 + -0.8359375f)) / (18.851562f - (_594 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_604 + -0.8359375f)) / (18.851562f - (_604 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_615 + -0.8359375f)) / (18.851562f - (_615 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_625 + -0.8359375f)) / (18.851562f - (_625 * 18.6875f))) * 6.277395f)) * 702.7027f));
          } else {
            _727 = 0.0f;
            _728 = 0.0f;
            _729 = 0.0f;
          }
        }
      }
    }
  }
  _730 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _743 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _730, 0)))).x) & 127)))) + 0.5f);
  } else {
    _743 = 1.0f;
  }
  _746 = (_localToneMappingParams.w > 0.0f);
  if (_746) {
    _752 = _exposure0.x * _userImageAdjust.z;
    _771 = exp2(_powerParams.x * log2(max(0.0f, (((_752 * max(0.0f, (((_728 * -0.62179f) - (_727 * 0.08326f)) + (_729 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _787 = exp2(log2(max(0.0f, (((_slopeParams.y * _752) * max(0.0f, (((_728 * 1.1408f) - (_727 * 0.01055f)) - (_729 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _803 = exp2(log2(max(0.0f, (((_slopeParams.z * _752) * max(0.0f, (((_727 * 1.15297f) - (_728 * 0.12897f)) - (_729 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _804 = dot(float3(_771, _787, _803), float3(0.212671f, 0.71516f, 0.072169f));
    _808 = ((_771 - _804) * _powerParams.w) + _804;
    _811 = ((_787 - _804) * _powerParams.w) + _804;
    _814 = ((_803 - _804) * _powerParams.w) + _804;
    _821 = min(max(log2(mad(_814, 0.079223745f, mad(_811, 0.0784336f, (_808 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _828 = min(max(log2(mad(_814, 0.07916613f, mad(_811, 0.87846863f, (_808 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _835 = min(max(log2(mad(_814, 0.879143f, mad(_811, 0.0784336f, (_808 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _836 = _821 * 0.060606062f;
    _837 = _828 * 0.060606062f;
    _838 = _835 * 0.060606062f;
    _839 = _836 * _836;
    _840 = _837 * _837;
    _841 = _838 * _838;
    _857 = min(0.0f, (-0.0f - (((_821 * 0.0072181816f) + ((_839 * 0.4298f) + (((_839 * _839) * ((31.96f - (_821 * 2.4327273f)) + (_839 * 15.5f))) - ((_821 * 0.41624245f) * _839)))) + -0.00232f)));
    _873 = min(0.0f, (-0.0f - (((_828 * 0.0072181816f) + ((_840 * 0.4298f) + (((_840 * _840) * ((31.96f - (_828 * 2.4327273f)) + (_840 * 15.5f))) - ((_828 * 0.41624245f) * _840)))) + -0.00232f)));
    _889 = min(0.0f, (-0.0f - (((_835 * 0.0072181816f) + ((_841 * 0.4298f) + (((_841 * _841) * ((31.96f - (_835 * 2.4327273f)) + (_841 * 15.5f))) - ((_835 * 0.41624245f) * _841)))) + -0.00232f)));
    _890 = -0.0f - _857;
    _891 = -0.0f - _873;
    _892 = -0.0f - _889;
    _893 = dot(float3(_890, _891, _892), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _910 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _911 = -0.79999995f / _910;
      _912 = -1.2f / _910;
      _913 = 0.20000005f / _910;
      _916 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _919 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _923 = (_911 + 1.4f) + (_919 * (-0.39999998f - _911));
      _927 = (_912 + 1.6f) + (_919 * (-0.6f - _912));
      _931 = (_913 + 0.9f) + (_919 * (0.5f - _913));
      _948 = (lerp(_931, 1.4f, _916));  // [sem: blended]
      _949 = (lerp(_923, 1.0f, _916));  // [sem: blended]
      _950 = (lerp(_927, 1.2f, _916));  // [sem: blended]
    } else {
      _948 = 1.4f;  // [sem: blended]
      _949 = 1.0f;  // [sem: blended]
      _950 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _951 = 1.0f - _950;
    _963 = ((exp2(log2(((saturate((_857 * _857) * _890) * _951) + _950) * _890) * _949) - _893) * _948) + _893;
    _975 = ((exp2(log2(((saturate((_873 * _873) * _891) * _951) + _950) * _891) * _949) - _893) * _948) + _893;
    _987 = ((exp2(log2(((saturate((_889 * _889) * _892) * _951) + _950) * _892) * _949) - _893) * _948) + _893;
    _994 = saturate(exp2(log2(mad(_987, -0.09902974f, mad(_975, -0.09802088f, (_963 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1001 = saturate(exp2(log2(mad(_987, -0.098961174f, mad(_975, 1.1519032f, (_963 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1008 = saturate(exp2(log2(mad(_987, 1.1510737f, mad(_975, -0.09804345f, (_963 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1014 = 1.0f - abs(_etcParams.w);
      _1015 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1017 = (_1014 * _994) + _1015;
      _1019 = (_1014 * _1001) + _1015;
      _1021 = (_1014 * _1008) + _1015;
      if (_colorGradingParams.w > 0.0f) {
        _1026 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1043 = (((max(0.0f, (1.0f - _1021)) - _1021) * _1026) + _1021);
        _1044 = (((max(0.0f, (1.0f - _1019)) - _1019) * _1026) + _1019);
        _1045 = (((max(0.0f, (1.0f - _1017)) - _1017) * _1026) + _1017);
      } else {
        _1043 = _1021;
        _1044 = _1019;
        _1045 = _1017;
      }
      _1047 = _userImageAdjust.y + 1.0f;
      _1049 = _userImageAdjust.x + 0.5f;
      _1052 = ((_1045 + -0.5f) * _1047) + _1049;
      _1055 = ((_1044 + -0.5f) * _1047) + _1049;
      _1058 = ((_1043 + -0.5f) * _1047) + _1049;
      _1064 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1099 = exp2(log2(saturate(mad(_colorBlind2.z, _1058, mad(_colorBlind2.y, _1055, (_colorBlind2.x * _1052))))) * _1064);
      _1100 = exp2(log2(saturate(mad(_colorBlind1.z, _1058, mad(_colorBlind1.y, _1055, (_colorBlind1.x * _1052))))) * _1064);
      _1101 = exp2(log2(saturate(mad(_colorBlind0.z, _1058, mad(_colorBlind0.y, _1055, (_colorBlind0.x * _1052))))) * _1064);
    } else {
      _1099 = _1008;
      _1100 = _1001;
      _1101 = _994;
    }
  } else {
    _1099 = _727;
    _1100 = _728;
    _1101 = _729;
  }
  if (_etcParams.y > 1.0f) {
    _1106 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1109 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1115 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1106, _1109), float2(_1106, _1109))));  // [sem: expr_sat]
    _1120 = (_1115 * _1099);
    _1121 = (_1115 * _1100);
    _1122 = (_1115 * _1101);
  } else {
    _1120 = _1099;
    _1121 = _1100;
    _1122 = _1101;
  }
  if (_746 && (_etcParams.z > 0.0f)) {
    _1152 = select((_1120 <= 0.0031308f), (_1120 * 12.92f), (((pow(_1120, 0.41666666f)) * 1.055f) + -0.055f));
    _1153 = select((_1121 <= 0.0031308f), (_1121 * 12.92f), (((pow(_1121, 0.41666666f)) * 1.055f) + -0.055f));
    _1154 = select((_1122 <= 0.0031308f), (_1122 * 12.92f), (((pow(_1122, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1152 = _1120;
    _1153 = _1121;
    _1154 = _1122;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1157 = (float)((uint)((uint)(_730)));
    if (!(_1157 < _viewDir.w)) {
      if (!(!(_1157 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1168 = 0.0f;
        _1169 = 0.0f;
        _1170 = 0.0f;
      } else {
        _1168 = _1153;
        _1169 = _1154;
        _1170 = _1152;
      }
    } else {
      _1168 = 0.0f;
      _1169 = 0.0f;
      _1170 = 0.0f;
    }
  } else {
    _1168 = _1153;
    _1169 = _1154;
    _1170 = _1152;
  }
  _1174 = exp2(log2(_1169 * 0.0001f) * 0.15930176f);
  _1178 = exp2(log2(_1168 * 0.0001f) * 0.15930176f);
  _1182 = exp2(log2(_1170 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1174 * 18.6875f) + 1.0f)) * ((_1174 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1178 * 18.6875f) + 1.0f)) * ((_1178 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1182 * 18.6875f) + 1.0f)) * ((_1182 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _743;
  return SV_Target;
}
