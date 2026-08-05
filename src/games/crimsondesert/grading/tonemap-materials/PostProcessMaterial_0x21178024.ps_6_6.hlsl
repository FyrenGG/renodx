struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  uint _heatHazeLookupTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
  float _surfaceEdgeWidth;
  float _wobbleScale;
  float _wobbleSpeed;
  float _wobbleStrength;
  float _hazeStrength;
  float _hazeScale;
  float _hazeSpeed;
  float _chromaticAberrationStrength;
  float _chromaticAberrationFalloff;
  uint _underWaterTintColor;
  float _causticsSplit;
  float _causticsStrength;
  uint _causticsTint;
  float _causticsSpeed;
  float _causticsLuminanceMaskStrength;
  float _causticsWorldScale;
  float _causticsSmallWorldScale;
  float _causticsSmallStrength;
};

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};


Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t111, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t112, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t113, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__35__0__0__WaterConstantBuffer : register(b2, space35) {
  float4 _waterDepthFieldSize : packoffset(c000.x);
  float4 _waterDepthFieldTextureSize : packoffset(c001.x);
  float4 _waterDepthMinMax : packoffset(c002.x);
  column_major float4x4 _waterDepthViewProjRelative : packoffset(c003.x);
  column_major float4x4 _waterDepthViewProjRelativeInv : packoffset(c007.x);
  float4 _waterDepthFrustumPlanes[6] : packoffset(c011.x);
  float4 _waterReadbackTextureSize : packoffset(c017.x);
  column_major float4x4 _waterReadbackViewProjRelative : packoffset(c018.x);
  column_major float4x4 _waterReadbackViewProjRelativeInv : packoffset(c022.x);
  float4 _ripplePivot : packoffset(c026.x);
  float4 _rippleFieldSize : packoffset(c027.x);
  float4 _rippleFieldTextureSize : packoffset(c028.x);
  float4 _shallowWaterPivot : packoffset(c029.x);
  float4 _shallowWaterFieldSize : packoffset(c030.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c031.x);
};

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float _seaBaselinePrev : packoffset(c000.y);
  float _seaBaselineLow : packoffset(c000.z);
  float _seaDryBaseLine : packoffset(c000.w);
  float _cascadeSize1 : packoffset(c001.x);
  float _cascadeSize2 : packoffset(c001.y);
  float _cascadeSize3 : packoffset(c001.z);
  float _cascadeSize4 : packoffset(c001.w);
  float _cascadeAmplitude1 : packoffset(c002.x);
  float _cascadeAmplitude2 : packoffset(c002.y);
  float _cascadeAmplitude3 : packoffset(c002.z);
  float _cascadeAmplitude4 : packoffset(c002.w);
  float _choppyScale : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  float _underWaterMossRate : packoffset(c003.z);
  float _underWaterMossScale : packoffset(c003.w);
  uint _scatteringAlbedo : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float _mossHeightDepth : packoffset(c004.z);
  float _mossFadeRange : packoffset(c004.w);
  float _dirDependency : packoffset(c005.x);
  float _underWaterFroxelExtinctionNearScale : packoffset(c005.y);
  float _underWaterFroxelExtinctionFarScale : packoffset(c005.z);
  float _underWaterFroxelExtinctionStartDistance : packoffset(c005.w);
  float4 _underWaterTintParams0 : packoffset(c006.x);
  float4 _underWaterTintParams1 : packoffset(c007.x);
  uint _applyOceanWave : packoffset(c008.x);
  float _seaWaveTime : packoffset(c008.y);
  uint2 _seaConstantdummy : packoffset(c008.z);
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

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  bool _2;
  float _462;
  float _463;
  float _464;
  float _590;
  float _591;
  float _651;
  float _691;
  float _692;
  float _693;
  int _739;
  float _740;
  float _741;
  float _742;
  float _743;
  float _898;
  float _899;
  float _959;
  float _974;
  float _1300;
  float _1301;
  float _1302;
  int _1348;
  float _1349;
  float _1350;
  float _1351;
  float _1352;
  int _1438;
  float _1439;
  float _1440;
  float _1441;
  float _1442;
  float _1469;
  float _1470;
  float _1471;
  float _1485;
  float _1690;
  float _1691;
  float _1692;
  float _1785;
  float _1786;
  float _1787;
  float _1841;
  float _1842;
  float _1843;
  float _1862;
  float _1863;
  float _1864;
  float _1894;
  float _1895;
  float _1896;
  float _1910;
  float _1911;
  float _1912;
  int _50;
  float _62;
  float _64;
  float _69;
  int _98;
  float _106;
  float4 _109;
  float _115;
  float _118;
  float _121;
  float _130;
  float _139;
  float _148;
  int _151;
  float _159;
  float _160;
  float _162;
  float _163;
  float _168;
  float _173;
  float _176;
  float _178;
  float _192;
  float4 _231;
  float _237;
  float _240;
  float _243;
  float _246;
  float4 _248;
  float _254;
  float _257;
  float _260;
  float4 _262;
  float _268;
  float _271;
  float _274;
  float _275;
  float4 _277;
  float _283;
  float _286;
  float _289;
  float4 _291;
  float _297;
  float _300;
  float _303;
  bool _450;
  float _466;
  float _467;
  float _470;
  float _474;
  float _482;
  float _484;
  float _489;
  float _501;
  float _510;
  float _511;
  float _523;
  float _534;
  float _538;
  float _557;
  float _560;
  float _561;
  float _570;
  float _573;
  float _576;
  float _581;
  float _583;
  float _592;
  float _596;
  float _598;
  float _601;
  float _606;
  float _610;
  float _623;
  float _631;
  float _645;
  float _657;
  float _664;
  float _668;
  float _670;
  float _679;
  float _694;
  float _695;
  float _696;
  float _708;
  float _719;
  float _730;
  bool _731;
  float _734;
  float _737;
  float _744;
  int _747;
  float _755;
  float _763;
  float _765;
  float _767;
  int _770;
  float _778;
  float _782;
  float _790;
  float _792;
  float _797;
  float _809;
  float _818;
  float _819;
  float _831;
  float _842;
  float _846;
  float _865;
  float _868;
  float _869;
  float _878;
  float _881;
  float _884;
  float _889;
  float _891;
  float _900;
  float _904;
  float _906;
  float _909;
  float _914;
  float _918;
  float _931;
  float _939;
  float _953;
  float _965;
  float4 _977;
  float _983;
  float _986;
  float _989;
  float _994;
  float _1004;
  float _1014;
  float _1024;
  float _1025;
  int _1026;
  float _1037;
  float _1038;
  float _1039;
  float _1040;
  float _1044;
  float _1048;
  int _1051;
  float _1059;
  float _1060;
  float4 _1066;
  float _1072;
  float _1075;
  float _1078;
  float _1081;
  float4 _1083;
  float _1089;
  float _1092;
  float _1095;
  float4 _1097;
  float _1103;
  float _1106;
  float _1109;
  float _1110;
  float4 _1112;
  float _1118;
  float _1121;
  float _1124;
  float4 _1126;
  float _1132;
  float _1135;
  float _1138;
  float _1303;
  float _1304;
  float _1305;
  float _1317;
  float _1328;
  float _1339;
  bool _1340;
  float _1343;
  float _1346;
  float _1353;
  int _1356;
  float _1364;
  float _1369;
  int _1372;
  float _1380;
  float _1383;
  float4 _1390;
  float _1396;
  float _1399;
  float _1402;
  float _1403;
  float _1413;
  float _1423;
  float _1433;
  float _1434;
  int _1435;
  float _1444;
  uint _1472;
  bool _1488;
  float _1494;
  float _1513;
  float _1529;
  float _1545;
  float _1546;
  float _1550;
  float _1553;
  float _1556;
  float _1563;
  float _1570;
  float _1577;
  float _1578;
  float _1579;
  float _1580;
  float _1581;
  float _1582;
  float _1583;
  float _1599;
  float _1615;
  float _1631;
  float _1632;
  float _1633;
  float _1634;
  float _1635;
  float _1652;
  float _1653;
  float _1654;
  float _1655;
  float _1658;
  float _1661;
  float _1665;
  float _1669;
  float _1673;
  float _1693;
  float _1705;
  float _1717;
  float _1729;
  float _1736;
  float _1743;
  float _1750;
  float _1756;
  float _1757;
  float _1759;
  float _1761;
  float _1763;
  float _1768;
  float _1789;
  float _1791;
  float _1794;
  float _1797;
  float _1800;
  float _1806;
  float _1848;
  float _1851;
  float _1857;
  float _1899;
  float _1916;
  float _1920;
  float _1924;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  if (_passIndex == 0) {
    _50 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
    if (!(((uint)((int)(_50) + (int)(-105)) < (uint)2) || ((_50 == 26) || ((_50 == 107) || ((uint)((int)(_50) + (int)(-27)) < (uint)2))))) {
      _62 = (TEXCOORD.x * 2.0f) + -1.0f;
      _64 = 1.0f - (TEXCOORD.y * 2.0f);
      _69 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      if (abs((((_invViewProj[1].w) + mad((_invViewProj[1].z), _69, mad((_invViewProj[1].y), _64, ((_invViewProj[1].x) * _62)))) / (mad((_invViewProj[3].z), _69, mad((_invViewProj[3].y), _64, ((_invViewProj[3].x) * _62))) + (_invViewProj[3].w))) - _seaBaseline) < 1.0f) {
        _98 = WaveReadLaneFirst(_materialIndex);
        _106 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._surfaceEdgeWidth);
        _109 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _115 = (pow(_109.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _118 = (pow(_109.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _121 = (pow(_109.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _130 = exp2(log2(max(0.0f, (_115 + -0.8359375f)) / (18.851562f - (_115 * 18.6875f))) * 6.277395f) * 10000.0f;
        _139 = exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.851562f - (_118 * 18.6875f))) * 6.277395f) * 10000.0f;
        _148 = exp2(log2(max(0.0f, (_121 + -0.8359375f)) / (18.851562f - (_121 * 18.6875f))) * 6.277395f) * 10000.0f;
        _151 = WaveReadLaneFirst(_materialIndex);
        _159 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _160 = dot(float3(_130, _139, _148), float3(0.2126f, 0.7152f, 0.0722f));
        _162 = (_159 * 0.75f) + 1e-05f;
        _163 = _160 - _159;
        _168 = saturate((_163 + _162) / ((_159 * 1.5f) + 2e-05f));  // [sem: expr_sat]
        _173 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _176 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _178 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        // [sem: expr_sat]
        _192 = saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) / max(_106, 0.001f)) * (max(_163, ((_168 * _168) * _162)) / max(_160, 1e-05f));
        _1469 = ((_192 * _148) * select(((_178 * 0.003921569f) < 0.04045f), (_178 * 0.000303527f), exp2(log2((_178 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1470 = ((_192 * _139) * select(((_176 * 0.003921569f) < 0.04045f), (_176 * 0.000303527f), exp2(log2((_176 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1471 = ((_192 * _130) * select(((_173 * 0.003921569f) < 0.04045f), (_173 * 0.000303527f), exp2(log2((_173 * 0.003717127f) + 0.052132703f) * 2.4f)));
      } else {
        _1469 = 0.0f;
        _1470 = 0.0f;
        _1471 = 0.0f;
      }
    } else {
      _1469 = 0.0f;
      _1470 = 0.0f;
      _1471 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _231 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _237 = (pow(_231.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _240 = (pow(_231.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _243 = (pow(_231.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _246 = _srcTargetSizeAndInv.z * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _248 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_246 + TEXCOORD.x), TEXCOORD.y));
      _254 = (pow(_248.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _257 = (pow(_248.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _260 = (pow(_248.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _262 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _246), TEXCOORD.y));
      _268 = (pow(_262.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _271 = (pow(_262.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _274 = (pow(_262.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _275 = _srcTargetSizeAndInv.z * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _277 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_275 + TEXCOORD.x), TEXCOORD.y));
      _283 = (pow(_277.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _286 = (pow(_277.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _289 = (pow(_277.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _291 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _275), TEXCOORD.y));
      _297 = (pow(_291.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _300 = (pow(_291.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _303 = (pow(_291.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _1469 = (((exp2(log2(max(0.0f, (_243 + -0.8359375f)) / (18.851562f - (_243 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_260 + -0.8359375f)) / (18.851562f - (_260 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_274 + -0.8359375f)) / (18.851562f - (_274 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_289 + -0.8359375f)) / (18.851562f - (_289 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_303 + -0.8359375f)) / (18.851562f - (_303 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1470 = (((exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.851562f - (_240 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_257 + -0.8359375f)) / (18.851562f - (_257 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_271 + -0.8359375f)) / (18.851562f - (_271 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_286 + -0.8359375f)) / (18.851562f - (_286 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_300 + -0.8359375f)) / (18.851562f - (_300 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1471 = (((exp2(log2(max(0.0f, (_237 + -0.8359375f)) / (18.851562f - (_237 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_268 + -0.8359375f)) / (18.851562f - (_268 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_283 + -0.8359375f)) / (18.851562f - (_283 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_297 + -0.8359375f)) / (18.851562f - (_297 * 18.6875f))) * 6.277395f)) * 702.7027f));
    } else {
      if (_passIndex == 2) {
        _450 = (_sunDirection.y > 0.0f);
        if ((_450) || ((!(_450)) && (_sunDirection.y > _moonDirection.y))) {
          _462 = _sunDirection.z;
          _463 = _sunDirection.y;
          _464 = _sunDirection.x;
        } else {
          _462 = _moonDirection.z;
          _463 = _moonDirection.y;
          _464 = _moonDirection.x;
        }
        _466 = rsqrt(dot(float3(_464, _463, _462), float3(_464, _463, _462)));  // [sem: invLength]
        _467 = _466 * _463;
        _470 = saturate((_467 + -0.08f) * 3.7037039f);  // [sem: expr_sat]
        _474 = (_470 * _470) * (3.0f - (_470 * 2.0f));
        if (TEXCOORD.x == saturate(TEXCOORD.x)) {
          if (TEXCOORD.y == saturate(TEXCOORD.y)) {
            _482 = (TEXCOORD.x * 2.0f) + -1.0f;
            _484 = 1.0f - (TEXCOORD.y * 2.0f);
            _489 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
            _501 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _489, mad((_invViewProj[3].y), _484, ((_invViewProj[3].x) * _482)));
            _510 = (mad((_invViewProj[1].z), _489, mad((_invViewProj[1].y), _484, ((_invViewProj[1].x) * _482))) + (_invViewProj[1].w)) / _501;
            _511 = _510 + 0.1f;
            _523 = ((mad((_invViewProj[0].z), _489, mad((_invViewProj[0].y), _484, ((_invViewProj[0].x) * _482))) + (_invViewProj[0].w)) / _501) - _viewPos.x;
            _534 = ((mad((_invViewProj[2].z), _489, mad((_invViewProj[2].y), _484, ((_invViewProj[2].x) * _482))) + (_invViewProj[2].w)) / _501) - _viewPos.z;
            _538 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
            if ((abs(_523) - _538) < 0.0f) {
              if (((1.0f - _waterDepthMinMax.z) + abs(_511 - _viewPos.y)) < 0.0f) {
                if ((abs(_534) - _538) < 0.0f) {
                  _557 = _waterDepthFieldSize.w * _534;
                  _560 = (_waterDepthFieldSize.z * _523) + 0.5f;
                  _561 = _557 + 0.5f;
                  if (!((_560 >= 1.0f) || ((_560 <= 0.0f) || ((_561 >= 1.0f) || (_561 <= 0.0f))))) {
                    _570 = 0.5f - _557;
                    // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
                    _573 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_560, _570), 0.0f);
                    // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                    _576 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_560, _570), 0.0f);
                    _581 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                    if (_573.x < 1.0f) {
                      _583 = _waterDepthMinMax.z + _viewPos.y;
                      _590 = ((_583 - _waterDepthMinMax.x) - (_573.x * _581));
                      _591 = _583;
                    } else {
                      _590 = -10000.0f;
                      _591 = (_waterDepthMinMax.z + _viewPos.y);
                    }
                    _592 = _591 - _waterDepthMinMax.x;
                    _596 = select((_576.x < 1.0f), (_592 - (_581 * _576.x)), -10000.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                    _598 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_560, _570), 0.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                    _601 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_560, _570), 0.0f);
                    _606 = select((_598.x < 1.0f), (_592 - (_598.x * _581)), -10000.0f);
                    _610 = select((_601.x < 1.0f), (_592 - (_601.x * _581)), -10000.0f);
                    if ((_511 < _590) && (_511 >= _596)) {
                      if ((_511 > _606) || (_511 < _610)) {
                        _623 = select((_610 < _596), 0.0f, 1.0f) * select((_590 < _606), 0.0f, 1.0f);
                        _631 = (_623 * ((_610 - _590) + ((_590 - _610) * select((_511 < _606), 0.0f, 1.0f)))) + _590;
                        // [sem: expr_sat]
                        _645 = saturate(abs((_511 - _631) - (((select((_590 < _610), 0.0f, 1.0f) * select((_606 < _590), 0.0f, 1.0f)) * (1.0f - _623)) * (_610 - _631))) * 1.3333334f);
                        _651 = ((_645 * _645) * (3.0f - (_645 * 2.0f)));
                      } else {
                        _651 = 0.0f;
                      }
                    } else {
                      _651 = 0.0f;
                    }
                  } else {
                    _651 = 0.0f;
                  }
                } else {
                  _651 = 0.0f;
                }
              } else {
                _651 = 0.0f;
              }
            } else {
              _651 = 0.0f;
            }
            _657 = saturate(abs(_510 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
            _664 = saturate(max(_651, (1.0f - ((_657 * _657) * (3.0f - (_657 * 2.0f))))));  // [sem: expr_sat]
            if (!(_664 <= 0.0f)) {
              _668 = _510 - _viewPos.y;
              _670 = rsqrt(dot(float3(_523, _668, _534), float3(_523, _668, _534)));  // [sem: invLength]
              // [sem: expr_sat]
              _679 = saturate((dot(float3((_670 * _523), (_670 * _668), (_670 * _534)), float3((_466 * _464), _467, (_466 * _462))) * 0.5f) + 0.5f);
              if ((_450) || ((!(_450)) && (_sunDirection.y > _moonDirection.y))) {
                _691 = _sunDirection.z;
                _692 = _sunDirection.y;
                _693 = _sunDirection.x;
              } else {
                _691 = _moonDirection.z;
                _692 = _moonDirection.y;
                _693 = _moonDirection.x;
              }
              _694 = _693 * 10000.0f;
              _695 = _692 * 10000.0f;
              _696 = _691 * 10000.0f;
              _708 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _696, mad((_viewProjRelative[3].y), _695, ((_viewProjRelative[3].x) * _694)));
              _719 = (((mad((_viewProjRelative[0].z), _696, mad((_viewProjRelative[0].y), _695, ((_viewProjRelative[0].x) * _694))) + (_viewProjRelative[0].w)) / _708) * 0.5f) + 0.5f;
              _730 = 0.5f - (((mad((_viewProjRelative[1].z), _696, mad((_viewProjRelative[1].y), _695, ((_viewProjRelative[1].x) * _694))) + (_viewProjRelative[1].w)) / _708) * 0.5f);
              _731 = (_708 <= 0.0f);
              _734 = TEXCOORD.x - select(_731, (-0.0f - _719), _719);
              _737 = TEXCOORD.y - select(_731, (-0.0f - _730), _730);
              _739 = 0;
              _740 = 0.0f;
              _741 = 0.0f;
              _742 = 0.0f;
              _743 = 0.0f;
              while(true) {
                _744 = (float)((int)(_739));
                _747 = WaveReadLaneFirst(_materialIndex);
                _755 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_747 < (uint)170000), _747, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
                _763 = (exp2(log2(_744 * 0.06666667f) * 1.1f) * _755) * rsqrt(dot(float2(_734, _737), float2(_734, _737)));
                _765 = TEXCOORD.x - (_763 * _734);
                _767 = TEXCOORD.y - (_763 * _737);
                _770 = WaveReadLaneFirst(_materialIndex);
                _778 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_770 < (uint)170000), _770, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftDecay);
                _782 = exp2((_744 * 0.9f) * log2(_778));
                if (_765 == saturate(_765)) {
                  if (_767 == saturate(_767)) {
                    _790 = (_765 * 2.0f) + -1.0f;
                    _792 = 1.0f - (_767 * 2.0f);
                    _797 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_765, _767))).x));
                    _809 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _797, mad((_invViewProj[3].y), _792, ((_invViewProj[3].x) * _790)));
                    _818 = (mad((_invViewProj[1].z), _797, mad((_invViewProj[1].y), _792, ((_invViewProj[1].x) * _790))) + (_invViewProj[1].w)) / _809;
                    _819 = _818 + 0.1f;
                    _831 = ((mad((_invViewProj[0].z), _797, mad((_invViewProj[0].y), _792, ((_invViewProj[0].x) * _790))) + (_invViewProj[0].w)) / _809) - _viewPos.x;
                    _842 = ((mad((_invViewProj[2].z), _797, mad((_invViewProj[2].y), _792, ((_invViewProj[2].x) * _790))) + (_invViewProj[2].w)) / _809) - _viewPos.z;
                    _846 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
                    if ((abs(_831) - _846) < 0.0f) {
                      if (((1.0f - _waterDepthMinMax.z) + abs(_819 - _viewPos.y)) < 0.0f) {
                        if ((abs(_842) - _846) < 0.0f) {
                          _865 = _waterDepthFieldSize.w * _842;
                          _868 = (_waterDepthFieldSize.z * _831) + 0.5f;
                          _869 = _865 + 0.5f;
                          if (!((_868 >= 1.0f) || ((_868 <= 0.0f) || ((_869 >= 1.0f) || (_869 <= 0.0f))))) {
                            _878 = 0.5f - _865;
                            // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
                            _881 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_868, _878), 0.0f);
                            // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                            _884 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_868, _878), 0.0f);
                            _889 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                            if (_881.x < 1.0f) {
                              _891 = _waterDepthMinMax.z + _viewPos.y;
                              _898 = ((_891 - _waterDepthMinMax.x) - (_881.x * _889));
                              _899 = _891;
                            } else {
                              _898 = -10000.0f;
                              _899 = (_waterDepthMinMax.z + _viewPos.y);
                            }
                            _900 = _899 - _waterDepthMinMax.x;
                            _904 = select((_884.x < 1.0f), (_900 - (_889 * _884.x)), -10000.0f);
                            // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                            _906 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_868, _878), 0.0f);
                            // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                            _909 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_868, _878), 0.0f);
                            _914 = select((_906.x < 1.0f), (_900 - (_906.x * _889)), -10000.0f);
                            _918 = select((_909.x < 1.0f), (_900 - (_909.x * _889)), -10000.0f);
                            if ((_819 < _898) && (_819 >= _904)) {
                              if ((_819 > _914) || (_819 < _918)) {
                                _931 = select((_918 < _904), 0.0f, 1.0f) * select((_898 < _914), 0.0f, 1.0f);
                                _939 = (_931 * ((_918 - _898) + ((_898 - _918) * select((_819 < _914), 0.0f, 1.0f)))) + _898;
                                // [sem: expr_sat]
                                _953 = saturate(abs((_819 - _939) - (((select((_898 < _918), 0.0f, 1.0f) * select((_914 < _898), 0.0f, 1.0f)) * (1.0f - _931)) * (_918 - _939))) * 1.3333334f);
                                _959 = ((_953 * _953) * (3.0f - (_953 * 2.0f)));
                              } else {
                                _959 = 0.0f;
                              }
                            } else {
                              _959 = 0.0f;
                            }
                          } else {
                            _959 = 0.0f;
                          }
                        } else {
                          _959 = 0.0f;
                        }
                      } else {
                        _959 = 0.0f;
                      }
                    } else {
                      _959 = 0.0f;
                    }
                    _965 = saturate(abs(_818 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
                    _974 = saturate(max(_959, (1.0f - ((_965 * _965) * (3.0f - (_965 * 2.0f))))));  // [sem: expr_sat]
                  } else {
                    _974 = 0.0f;  // [sem: expr_sat]
                  }
                } else {
                  _974 = 0.0f;  // [sem: expr_sat]
                }
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _977 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_765, _767));
                _983 = (pow(_977.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _986 = (pow(_977.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _989 = (pow(_977.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _994 = (_782 * 10000.0f) * (lerp(_664, _974, 0.35f));
                _1004 = (exp2(log2(max(0.0f, (_983 + -0.8359375f)) / (18.851562f - (_983 * 18.6875f))) * 6.277395f) * _994) + _743;
                _1014 = (exp2(log2(max(0.0f, (_986 + -0.8359375f)) / (18.851562f - (_986 * 18.6875f))) * 6.277395f) * _994) + _742;
                _1024 = (exp2(log2(max(0.0f, (_989 + -0.8359375f)) / (18.851562f - (_989 * 18.6875f))) * 6.277395f) * _994) + _741;
                _1025 = _782 + _740;
                _1026 = (int)(_739) + (int)(1);
                if (!(_1026 == 16)) {
                  _739 = _1026;
                  _740 = _1025;
                  _741 = _1024;
                  _742 = _1014;
                  _743 = _1004;
                  continue;
                }
                while(true) {
                  _1037 = max(_1025, 0.0001f);
                  _1038 = _1004 / _1037;
                  _1039 = _1014 / _1037;
                  _1040 = _1024 / _1037;
                  // [sem: expr_sat]
                  _1044 = saturate((dot(float3(_1038, _1039, _1040), float3(0.2126f, 0.7152f, 0.0722f)) + -0.02f) * 10.000001f);
                  _1048 = (_1044 * _1044) * (3.0f - (_1044 * 2.0f));
                  _1051 = WaveReadLaneFirst(_materialIndex);
                  _1059 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1051 < (uint)170000), _1051, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
                  _1060 = ((((_474 * _474) * 1.25f) * _664) * (((_679 * _679) * 0.75f) + 0.5f)) * _1059;
                  if (!_2) {
                    continue;
                  }
                  _1469 = (exp2(log2(max((_1048 * _1040), 0.0f)) * 1.05f) * _1060);
                  _1470 = (exp2(log2(max((_1048 * _1039), 0.0f)) * 1.05f) * _1060);
                  _1471 = (exp2(log2(max((_1048 * _1038), 0.0f)) * 1.05f) * _1060);
                  break;
                }
                break;
              }
            } else {
              _1469 = 0.0f;
              _1470 = 0.0f;
              _1471 = 0.0f;
            }
          } else {
            _1469 = 0.0f;
            _1470 = 0.0f;
            _1471 = 0.0f;
          }
        } else {
          _1469 = 0.0f;
          _1470 = 0.0f;
          _1471 = 0.0f;
        }
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1066 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _1072 = (pow(_1066.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1075 = (pow(_1066.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1078 = (pow(_1066.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1081 = _srcTargetSizeAndInv.z * 1.0384616f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1083 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1081 + TEXCOORD.x), TEXCOORD.y));
          _1089 = (pow(_1083.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1092 = (pow(_1083.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1095 = (pow(_1083.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1097 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1081), TEXCOORD.y));
          _1103 = (pow(_1097.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1106 = (pow(_1097.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1109 = (pow(_1097.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1110 = _srcTargetSizeAndInv.z * 2.4230769f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1112 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1110 + TEXCOORD.x), TEXCOORD.y));
          _1118 = (pow(_1112.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1121 = (pow(_1112.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1124 = (pow(_1112.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1126 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1110), TEXCOORD.y));
          _1132 = (pow(_1126.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1135 = (pow(_1126.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1138 = (pow(_1126.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1469 = (((exp2(log2(max(0.0f, (_1078 + -0.8359375f)) / (18.851562f - (_1078 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1095 + -0.8359375f)) / (18.851562f - (_1095 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1109 + -0.8359375f)) / (18.851562f - (_1109 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1124 + -0.8359375f)) / (18.851562f - (_1124 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1138 + -0.8359375f)) / (18.851562f - (_1138 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1470 = (((exp2(log2(max(0.0f, (_1075 + -0.8359375f)) / (18.851562f - (_1075 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1092 + -0.8359375f)) / (18.851562f - (_1092 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1106 + -0.8359375f)) / (18.851562f - (_1106 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1121 + -0.8359375f)) / (18.851562f - (_1121 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1135 + -0.8359375f)) / (18.851562f - (_1135 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1471 = (((exp2(log2(max(0.0f, (_1072 + -0.8359375f)) / (18.851562f - (_1072 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_1089 + -0.8359375f)) / (18.851562f - (_1089 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1103 + -0.8359375f)) / (18.851562f - (_1103 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_1118 + -0.8359375f)) / (18.851562f - (_1118 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1132 + -0.8359375f)) / (18.851562f - (_1132 * 18.6875f))) * 6.277395f)) * 702.7027f));
        } else {
          if ((_passIndex & -2) == 4) {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _1300 = _sunDirection.z;
              _1301 = _sunDirection.y;
              _1302 = _sunDirection.x;
            } else {
              _1300 = _moonDirection.z;
              _1301 = _moonDirection.y;
              _1302 = _moonDirection.x;
            }
            _1303 = _1302 * 10000.0f;
            _1304 = _1301 * 10000.0f;
            _1305 = _1300 * 10000.0f;
            _1317 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _1305, mad((_viewProjRelative[3].y), _1304, ((_viewProjRelative[3].x) * _1303)));
            _1328 = (((mad((_viewProjRelative[0].z), _1305, mad((_viewProjRelative[0].y), _1304, ((_viewProjRelative[0].x) * _1303))) + (_viewProjRelative[0].w)) / _1317) * 0.5f) + 0.5f;
            _1339 = 0.5f - (((mad((_viewProjRelative[1].z), _1305, mad((_viewProjRelative[1].y), _1304, ((_viewProjRelative[1].x) * _1303))) + (_viewProjRelative[1].w)) / _1317) * 0.5f);
            _1340 = (_1317 <= 0.0f);
            _1343 = TEXCOORD.x - select(_1340, (-0.0f - _1328), _1328);
            _1346 = TEXCOORD.y - select(_1340, (-0.0f - _1339), _1339);
            _1348 = 0;
            _1349 = 0.0f;
            _1350 = 0.0f;
            _1351 = 0.0f;
            _1352 = 0.0f;
            while(true) {
              _1353 = (float)((int)(_1348));
              _1356 = WaveReadLaneFirst(_materialIndex);
              _1364 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1356 < (uint)170000), _1356, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurStrength);
              _1369 = ((_1353 * 0.06666667f) * _1364) * rsqrt(dot(float2(_1343, _1346), float2(_1343, _1346)));
              _1372 = WaveReadLaneFirst(_materialIndex);
              _1380 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1372 < (uint)170000), _1372, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurDecay);
              _1383 = (pow(_1380, _1353));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1390 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_1369 * _1343)), (TEXCOORD.y - (_1369 * _1346))));
              _1396 = (pow(_1390.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1399 = (pow(_1390.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1402 = (pow(_1390.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1403 = _1383 * 10000.0f;
              _1413 = (exp2(log2(max(0.0f, (_1396 + -0.8359375f)) / (18.851562f - (_1396 * 18.6875f))) * 6.277395f) * _1403) + _1351;
              _1423 = (exp2(log2(max(0.0f, (_1399 + -0.8359375f)) / (18.851562f - (_1399 * 18.6875f))) * 6.277395f) * _1403) + _1350;
              _1433 = (exp2(log2(max(0.0f, (_1402 + -0.8359375f)) / (18.851562f - (_1402 * 18.6875f))) * 6.277395f) * _1403) + _1349;
              _1434 = _1383 + _1352;
              _1435 = (int)(_1348) + (int)(1);
              if (!(_1435 == 16)) {
                _1438 = _1435;
                _1439 = _1433;
                _1440 = _1423;
                _1441 = _1413;
                _1442 = _1434;
                while(true) {
                  _1348 = _1438;
                  _1349 = _1439;
                  _1350 = _1440;
                  _1351 = _1441;
                  _1352 = _1442;
                  __loop_jump_target = 1347;
                  break;
                  break;
                }
                if (__loop_jump_target == 1347) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              }
              _1444 = max(_1434, 0.0001f);
              if (!_2) {
                _1438 = _1348;
                _1439 = _1349;
                _1440 = _1350;
                _1441 = _1351;
                _1442 = _1352;
                while(true) {
                  _1348 = _1438;
                  _1349 = _1439;
                  _1350 = _1440;
                  _1351 = _1441;
                  _1352 = _1442;
                  __loop_jump_target = 1347;
                  break;
                  break;
                }
                if (__loop_jump_target == 1347) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              }
              _1469 = (_1433 / _1444);
              _1470 = (_1423 / _1444);
              _1471 = (_1413 / _1444);
              break;
            }
          } else {
            _1469 = 0.0f;
            _1470 = 0.0f;
            _1471 = 0.0f;
          }
        }
      }
    }
  }
  _1472 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1485 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1472, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1485 = 1.0f;
  }
  _1488 = (_localToneMappingParams.w > 0.0f);
  if (_1488) {
    _1494 = _exposure0.x * _userImageAdjust.z;
    _1513 = exp2(_powerParams.x * log2(max(0.0f, (((_1494 * max(0.0f, (((_1470 * -0.62179f) - (_1469 * 0.08326f)) + (_1471 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _1529 = exp2(log2(max(0.0f, (((_slopeParams.y * _1494) * max(0.0f, (((_1470 * 1.1408f) - (_1469 * 0.01055f)) - (_1471 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _1545 = exp2(log2(max(0.0f, (((_slopeParams.z * _1494) * max(0.0f, (((_1469 * 1.15297f) - (_1470 * 0.12897f)) - (_1471 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _1546 = dot(float3(_1513, _1529, _1545), float3(0.212671f, 0.71516f, 0.072169f));
    _1550 = ((_1513 - _1546) * _powerParams.w) + _1546;
    _1553 = ((_1529 - _1546) * _powerParams.w) + _1546;
    _1556 = ((_1545 - _1546) * _powerParams.w) + _1546;
    _1563 = min(max(log2(mad(_1556, 0.079223745f, mad(_1553, 0.0784336f, (_1550 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1570 = min(max(log2(mad(_1556, 0.07916613f, mad(_1553, 0.87846863f, (_1550 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1577 = min(max(log2(mad(_1556, 0.879143f, mad(_1553, 0.0784336f, (_1550 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1578 = _1563 * 0.060606062f;
    _1579 = _1570 * 0.060606062f;
    _1580 = _1577 * 0.060606062f;
    _1581 = _1578 * _1578;
    _1582 = _1579 * _1579;
    _1583 = _1580 * _1580;
    _1599 = min(0.0f, (-0.0f - (((_1563 * 0.0072181816f) + ((_1581 * 0.4298f) + (((_1581 * _1581) * ((31.96f - (_1563 * 2.4327273f)) + (_1581 * 15.5f))) - ((_1563 * 0.41624245f) * _1581)))) + -0.00232f)));
    _1615 = min(0.0f, (-0.0f - (((_1570 * 0.0072181816f) + ((_1582 * 0.4298f) + (((_1582 * _1582) * ((31.96f - (_1570 * 2.4327273f)) + (_1582 * 15.5f))) - ((_1570 * 0.41624245f) * _1582)))) + -0.00232f)));
    _1631 = min(0.0f, (-0.0f - (((_1577 * 0.0072181816f) + ((_1583 * 0.4298f) + (((_1583 * _1583) * ((31.96f - (_1577 * 2.4327273f)) + (_1583 * 15.5f))) - ((_1577 * 0.41624245f) * _1583)))) + -0.00232f)));
    _1632 = -0.0f - _1599;
    _1633 = -0.0f - _1615;
    _1634 = -0.0f - _1631;
    _1635 = dot(float3(_1632, _1633, _1634), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1652 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1653 = -0.79999995f / _1652;
      _1654 = -1.2f / _1652;
      _1655 = 0.20000005f / _1652;
      _1658 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1661 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1665 = (_1653 + 1.4f) + (_1661 * (-0.39999998f - _1653));
      _1669 = (_1654 + 1.6f) + (_1661 * (-0.6f - _1654));
      _1673 = (_1655 + 0.9f) + (_1661 * (0.5f - _1655));
      _1690 = (lerp(_1673, 1.4f, _1658));  // [sem: blended]
      _1691 = (lerp(_1665, 1.0f, _1658));  // [sem: blended]
      _1692 = (lerp(_1669, 1.2f, _1658));  // [sem: blended]
    } else {
      _1690 = 1.4f;  // [sem: blended]
      _1691 = 1.0f;  // [sem: blended]
      _1692 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1693 = 1.0f - _1692;
    _1705 = ((exp2(log2(((saturate((_1599 * _1599) * _1632) * _1693) + _1692) * _1632) * _1691) - _1635) * _1690) + _1635;
    _1717 = ((exp2(log2(((saturate((_1615 * _1615) * _1633) * _1693) + _1692) * _1633) * _1691) - _1635) * _1690) + _1635;
    _1729 = ((exp2(log2(((saturate((_1631 * _1631) * _1634) * _1693) + _1692) * _1634) * _1691) - _1635) * _1690) + _1635;
    _1736 = saturate(exp2(log2(mad(_1729, -0.09902974f, mad(_1717, -0.09802088f, (_1705 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1743 = saturate(exp2(log2(mad(_1729, -0.098961174f, mad(_1717, 1.1519032f, (_1705 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1750 = saturate(exp2(log2(mad(_1729, 1.1510737f, mad(_1717, -0.09804345f, (_1705 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1756 = 1.0f - abs(_etcParams.w);
      _1757 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1759 = (_1756 * _1736) + _1757;
      _1761 = (_1756 * _1743) + _1757;
      _1763 = (_1756 * _1750) + _1757;
      if (_colorGradingParams.w > 0.0f) {
        _1768 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1785 = (((max(0.0f, (1.0f - _1763)) - _1763) * _1768) + _1763);
        _1786 = (((max(0.0f, (1.0f - _1761)) - _1761) * _1768) + _1761);
        _1787 = (((max(0.0f, (1.0f - _1759)) - _1759) * _1768) + _1759);
      } else {
        _1785 = _1763;
        _1786 = _1761;
        _1787 = _1759;
      }
      _1789 = _userImageAdjust.y + 1.0f;
      _1791 = _userImageAdjust.x + 0.5f;
      _1794 = ((_1787 + -0.5f) * _1789) + _1791;
      _1797 = ((_1786 + -0.5f) * _1789) + _1791;
      _1800 = ((_1785 + -0.5f) * _1789) + _1791;
      _1806 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1841 = exp2(log2(saturate(mad(_colorBlind2.z, _1800, mad(_colorBlind2.y, _1797, (_colorBlind2.x * _1794))))) * _1806);
      _1842 = exp2(log2(saturate(mad(_colorBlind1.z, _1800, mad(_colorBlind1.y, _1797, (_colorBlind1.x * _1794))))) * _1806);
      _1843 = exp2(log2(saturate(mad(_colorBlind0.z, _1800, mad(_colorBlind0.y, _1797, (_colorBlind0.x * _1794))))) * _1806);
    } else {
      _1841 = _1750;
      _1842 = _1743;
      _1843 = _1736;
    }
  } else {
    _1841 = _1469;
    _1842 = _1470;
    _1843 = _1471;
  }
  if (_etcParams.y > 1.0f) {
    _1848 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1851 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1857 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1848, _1851), float2(_1848, _1851))));  // [sem: expr_sat]
    _1862 = (_1857 * _1841);
    _1863 = (_1857 * _1842);
    _1864 = (_1857 * _1843);
  } else {
    _1862 = _1841;
    _1863 = _1842;
    _1864 = _1843;
  }
  if (_1488 && (_etcParams.z > 0.0f)) {
    _1894 = select((_1862 <= 0.0031308f), (_1862 * 12.92f), (((pow(_1862, 0.41666666f)) * 1.055f) + -0.055f));
    _1895 = select((_1863 <= 0.0031308f), (_1863 * 12.92f), (((pow(_1863, 0.41666666f)) * 1.055f) + -0.055f));
    _1896 = select((_1864 <= 0.0031308f), (_1864 * 12.92f), (((pow(_1864, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1894 = _1862;
    _1895 = _1863;
    _1896 = _1864;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1899 = (float)((uint)((uint)(_1472)));
    if (!(_1899 < _viewDir.w)) {
      if (!(!(_1899 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1910 = 0.0f;
        _1911 = 0.0f;
        _1912 = 0.0f;
      } else {
        _1910 = _1896;
        _1911 = _1895;
        _1912 = _1894;
      }
    } else {
      _1910 = 0.0f;
      _1911 = 0.0f;
      _1912 = 0.0f;
    }
  } else {
    _1910 = _1896;
    _1911 = _1895;
    _1912 = _1894;
  }
  _1916 = exp2(log2(_1910 * 0.0001f) * 0.15930176f);
  _1920 = exp2(log2(_1911 * 0.0001f) * 0.15930176f);
  _1924 = exp2(log2(_1912 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1916 * 18.6875f) + 1.0f)) * ((_1916 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1920 * 18.6875f) + 1.0f)) * ((_1920 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1924 * 18.6875f) + 1.0f)) * ((_1924 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1485;
  return SV_Target;
}
