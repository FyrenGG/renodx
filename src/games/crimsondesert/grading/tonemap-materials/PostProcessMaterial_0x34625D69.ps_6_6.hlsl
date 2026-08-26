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
  float _underWaterSaturation;
  float _causticsSplit;
  float _causticsStrength;
  uint _causticsTint;
  float _causticsSpeed;
  float _causticsLuminanceMaskStrength;
  float _causticsWorldScale;
  float _causticsSmallWorldScale;
  float _causticsSmallStrength;
};


Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_waterDepthTopDetail : register(t106, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t107, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t108, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t124, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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
  float4 _waterDepthDetailFieldSize : packoffset(c026.x);
  float4 _waterDepthDetailFieldTextureSize : packoffset(c027.x);
  column_major float4x4 _waterDepthDetailViewProjRelative : packoffset(c028.x);
  column_major float4x4 _waterDepthDetailViewProjRelativeInv : packoffset(c032.x);
  float4 _waterDepthDetailFrustumPlanes[6] : packoffset(c036.x);
  float4 _ripplePivot : packoffset(c042.x);
  float4 _rippleFieldSize : packoffset(c043.x);
  float4 _rippleFieldTextureSize : packoffset(c044.x);
  float4 _shallowWaterPivot : packoffset(c045.x);
  float4 _shallowWaterFieldSize : packoffset(c046.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c047.x);
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

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _461;
  float _462;
  float _463;
  float _603;
  bool _659;
  float _660;
  float _670;
  float _710;
  float _711;
  float _712;
  float _805;
  float _806;
  float _807;
  float _808;
  int _809;
  float _970;
  bool _1026;
  float _1027;
  float _1037;
  float _1052;
  float _1343;
  float _1344;
  float _1345;
  float _1393;
  float _1394;
  float _1395;
  float _1396;
  int _1397;
  float _1482;
  float _1483;
  float _1484;
  float _1498;
  float _1703;
  float _1704;
  float _1705;
  float _1798;
  float _1799;
  float _1800;
  float _1854;
  float _1855;
  float _1856;
  float _1875;
  float _1876;
  float _1877;
  float _1907;
  float _1908;
  float _1909;
  float _1923;
  float _1924;
  float _1925;
  int _51;
  float _68;
  float _70;
  float _71;
  int _99;
  float _107;
  float4 _118;
  float _128;
  float _129;
  float _130;
  float _155;
  float _156;
  float _157;
  int _158;
  float _166;
  float _167;
  float _169;
  float _170;
  float _175;
  float _185;
  float _188;
  float _190;
  float _218;
  float4 _232;
  float _242;
  float _243;
  float _244;
  float _272;
  float4 _274;
  float _284;
  float _285;
  float _286;
  float4 _312;
  float _322;
  float _323;
  float _324;
  float _349;
  float4 _351;
  float _361;
  float _362;
  float _363;
  float4 _389;
  float _399;
  float _400;
  float _401;
  bool _449;
  float _465;
  float _467;
  float _471;
  float _475;
  float _487;
  float _489;
  float _490;
  float _526;
  float _528;
  float _530;
  float _535;
  float _537;
  float _541;
  float _544;
  float _546;
  float _560;
  float _561;
  float _562;
  float _571;
  float _574;
  float _586;
  float _588;
  float _609;
  float _611;
  float _613;
  float _616;
  float _623;
  float _625;
  float _638;
  float _651;
  float _664;
  float _676;
  float _683;
  float _686;
  float _688;
  float _695;
  float _713;
  float _714;
  float _715;
  float _743;
  float _748;
  float _749;
  bool _750;
  float _755;
  float _756;
  float _760;
  float _761;
  float _762;
  float _763;
  float _767;
  float _771;
  int _787;
  float _795;
  float _800;
  float _810;
  int _815;
  float _823;
  float _825;
  float _828;
  float _829;
  int _831;
  float _839;
  float _842;
  float _854;
  float _856;
  float _857;
  float _893;
  float _895;
  float _897;
  float _902;
  float _904;
  float _908;
  float _911;
  float _913;
  float _927;
  float _928;
  float _929;
  float _938;
  float _941;
  float _953;
  float _955;
  float _976;
  float _978;
  float _980;
  float _983;
  float _990;
  float _992;
  float _1005;
  float _1018;
  float _1031;
  float _1043;
  float4 _1058;
  float _1068;
  float _1069;
  float _1070;
  float _1096;
  float _1100;
  float _1101;
  float _1102;
  float _1103;
  int _1104;
  float4 _1113;
  float _1123;
  float _1124;
  float _1125;
  float _1153;
  float4 _1155;
  float _1165;
  float _1166;
  float _1167;
  float4 _1193;
  float _1203;
  float _1204;
  float _1205;
  float _1230;
  float4 _1232;
  float _1242;
  float _1243;
  float _1244;
  float4 _1270;
  float _1280;
  float _1281;
  float _1282;
  float _1346;
  float _1347;
  float _1348;
  float _1376;
  float _1381;
  float _1382;
  bool _1383;
  float _1388;
  float _1389;
  float _1398;
  int _1399;
  float _1407;
  float _1410;
  int _1415;
  float _1423;
  float _1426;
  float4 _1429;
  float _1439;
  float _1440;
  float _1441;
  float _1466;
  float _1470;
  float _1471;
  float _1472;
  float _1473;
  int _1474;
  float _1477;
  uint _1485;
  bool _1501;
  float _1507;
  float _1556;
  float _1557;
  float _1558;
  float _1560;
  float _1567;
  float _1568;
  float _1569;
  float _1588;
  float _1589;
  float _1590;
  float _1591;
  float _1592;
  float _1593;
  float _1594;
  float _1595;
  float _1596;
  float _1642;
  float _1643;
  float _1644;
  float _1645;
  float _1646;
  float _1647;
  float _1648;
  float _1665;
  float _1666;
  float _1667;
  float _1668;
  float _1674;
  float _1677;
  float _1684;
  float _1685;
  float _1686;
  float _1715;
  float _1740;
  float _1741;
  float _1742;
  float _1761;
  float _1762;
  float _1763;
  float _1769;
  float _1773;
  float _1774;
  float _1775;
  float _1776;
  float _1781;
  float _1806;
  float _1810;
  float _1811;
  float _1812;
  float _1813;
  float _1843;
  float _1865;
  float _1866;
  float _1870;
  float _1914;
  float _1935;
  float _1936;
  float _1937;
  int __loop_jump_target = -1;
  if (_passIndex == 0) {
    _51 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
    if ((_51 != 107) && (!(((uint)((int)(_51) + (int)(-27)) < (uint)2) || ((_51 == 26) || ((uint)((int)(_51) + (int)(-105)) < (uint)2))))) {
      _68 = (TEXCOORD.x * 2.0f) + -1.0f;
      _70 = 1.0f - (TEXCOORD.y * 2.0f);
      _71 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      if (abs(((mad((_invViewProj[1].z), _71, mad((_invViewProj[1].y), _70, ((_invViewProj[1].x) * _68))) + (_invViewProj[1].w)) / (mad((_invViewProj[3].z), _71, mad((_invViewProj[3].y), _70, ((_invViewProj[3].x) * _68))) + (_invViewProj[3].w))) - _seaBaseline) < 1.0f) {
        _99 = WaveReadLaneFirst(_materialIndex);
        _107 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_99 < (uint)170000), _99, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._surfaceEdgeWidth);
        _118 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _128 = (pow(_118.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _129 = (pow(_118.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _130 = (pow(_118.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _155 = exp2(log2(max(0.0f, (_128 + -0.8359375f)) / (18.851562f - (_128 * 18.6875f))) * 6.277395f) * 10000.0f;
        _156 = exp2(log2(max(0.0f, (_129 + -0.8359375f)) / (18.851562f - (_129 * 18.6875f))) * 6.277395f) * 10000.0f;
        _157 = exp2(log2(max(0.0f, (_130 + -0.8359375f)) / (18.851562f - (_130 * 18.6875f))) * 6.277395f) * 10000.0f;
        _158 = WaveReadLaneFirst(_materialIndex);
        _166 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _167 = dot(float3(_155, _156, _157), float3(0.2126f, 0.7152f, 0.0722f));
        _169 = (_166 * 0.75f) + 1e-05f;
        _170 = _167 - _166;
        _175 = saturate((_170 + _169) / ((_166 * 1.5f) + 2e-05f));  // [sem: expr_sat]
        _185 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _188 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _190 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        _218 = (max(_170, ((_175 * _175) * _169)) / max(_167, 1e-05f)) * saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) / max(_107, 0.001f));
        _1482 = ((_218 * _155) * select(((_185 * 0.003921569f) < 0.04045f), (_185 * 0.000303527f), exp2(log2((_185 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1483 = ((_218 * _156) * select(((_188 * 0.003921569f) < 0.04045f), (_188 * 0.000303527f), exp2(log2((_188 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1484 = ((_218 * _157) * select(((_190 * 0.003921569f) < 0.04045f), (_190 * 0.000303527f), exp2(log2((_190 * 0.003717127f) + 0.052132703f) * 2.4f)));
      } else {
        _1482 = 0.0f;
        _1483 = 0.0f;
        _1484 = 0.0f;
      }
    } else {
      _1482 = 0.0f;
      _1483 = 0.0f;
      _1484 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _232 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _242 = (pow(_232.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _243 = (pow(_232.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _244 = (pow(_232.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _272 = _srcTargetSizeAndInv.z * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _274 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_272 + TEXCOORD.x), TEXCOORD.y));
      _284 = (pow(_274.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _285 = (pow(_274.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _286 = (pow(_274.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _312 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _272), TEXCOORD.y));
      _322 = (pow(_312.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _323 = (pow(_312.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _324 = (pow(_312.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _349 = _srcTargetSizeAndInv.z * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _351 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_349 + TEXCOORD.x), TEXCOORD.y));
      _361 = (pow(_351.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _362 = (pow(_351.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _363 = (pow(_351.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _389 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _349), TEXCOORD.y));
      _399 = (pow(_389.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _400 = (pow(_389.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _401 = (pow(_389.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _1482 = ((((exp2(log2(max(0.0f, (_322 + -0.8359375f)) / (18.851562f - (_322 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_284 + -0.8359375f)) / (18.851562f - (_284 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_242 + -0.8359375f)) / (18.851562f - (_242 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_399 + -0.8359375f)) / (18.851562f - (_399 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_361 + -0.8359375f)) / (18.851562f - (_361 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1483 = ((((exp2(log2(max(0.0f, (_323 + -0.8359375f)) / (18.851562f - (_323 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_285 + -0.8359375f)) / (18.851562f - (_285 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_243 + -0.8359375f)) / (18.851562f - (_243 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_400 + -0.8359375f)) / (18.851562f - (_400 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_362 + -0.8359375f)) / (18.851562f - (_362 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _1484 = ((((exp2(log2(max(0.0f, (_324 + -0.8359375f)) / (18.851562f - (_324 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_286 + -0.8359375f)) / (18.851562f - (_286 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_244 + -0.8359375f)) / (18.851562f - (_244 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_401 + -0.8359375f)) / (18.851562f - (_401 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_363 + -0.8359375f)) / (18.851562f - (_363 * 18.6875f))) * 6.277395f)) * 702.7027f));
    } else {
      if (_passIndex == 2) {
        _449 = (_sunDirection.y > 0.0f);
        if ((_449) || ((!(_449)) && (_sunDirection.y > _moonDirection.y))) {
          _461 = _sunDirection.x;
          _462 = _sunDirection.y;
          _463 = _sunDirection.z;
        } else {
          _461 = _moonDirection.x;
          _462 = _moonDirection.y;
          _463 = _moonDirection.z;
        }
        _465 = rsqrt(dot(float3(_461, _462, _463), float3(_461, _462, _463)));  // [sem: invLength]
        _467 = _465 * _462;
        _471 = saturate((_467 + -0.08f) * 3.7037039f);  // [sem: expr_sat]
        _475 = (_471 * _471) * (3.0f - (_471 * 2.0f));
        if ((TEXCOORD.x == saturate(TEXCOORD.x)) && (TEXCOORD.y == saturate(TEXCOORD.y))) {
          _487 = (TEXCOORD.x * 2.0f) + -1.0f;
          _489 = 1.0f - (TEXCOORD.y * 2.0f);
          _490 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
          _526 = mad((_invViewProj[3].z), _490, mad((_invViewProj[3].y), _489, ((_invViewProj[3].x) * _487))) + (_invViewProj[3].w);
          _528 = (mad((_invViewProj[1].z), _490, mad((_invViewProj[1].y), _489, ((_invViewProj[1].x) * _487))) + (_invViewProj[1].w)) / _526;
          _530 = _528 + 0.1f;
          _535 = ((mad((_invViewProj[0].z), _490, mad((_invViewProj[0].y), _489, ((_invViewProj[0].x) * _487))) + (_invViewProj[0].w)) / _526) - _viewPos.x;
          _537 = ((mad((_invViewProj[2].z), _490, mad((_invViewProj[2].y), _489, ((_invViewProj[2].x) * _487))) + (_invViewProj[2].w)) / _526) - _viewPos.z;
          _541 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
          _544 = abs(_535);
          _546 = abs(_537);
          if ((((_544 - _541) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_530 - _viewPos.y)) < 0.0f)) && ((_546 - _541) < 0.0f)) {
            _560 = _waterDepthFieldSize.w * _537;
            _561 = (_waterDepthFieldSize.z * _535) + 0.5f;
            _562 = _560 + 0.5f;
            if (!((_562 >= 1.0f) || ((_562 <= 0.0f) || ((_561 <= 0.0f) || (_561 >= 1.0f))))) {
              _571 = 0.5f - _560;
              // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
              _574 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_561, _571), 0.0f);
              _586 = _waterDepthMinMax.y - _waterDepthMinMax.x;
              _588 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
              if ((_544 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_546 < (_waterDepthDetailFieldSize.z * 0.5f))) {
                _603 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _535) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _537))), 0.0f)).x);
              } else {
                _603 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_561, _571), 0.0f)).x);
              }
              _609 = select((_603 < 1.0f), (_588 - (_603 * _586)), -10000.0f);
              _611 = select((_574.x < 1.0f), (_588 - (_586 * _574.x)), -10000.0f);
              // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
              _613 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_561, _571), 0.0f);
              // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
              _616 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_561, _571), 0.0f);
              _623 = select((_613.x < 1.0f), (_588 - (_613.x * _586)), -10000.0f);
              _625 = select((_616.x < 1.0f), (_588 - (_616.x * _586)), -10000.0f);
              if (((_530 >= _611) && (_530 < _609)) && ((_530 > _623) || (_530 < _625))) {
                _638 = select((_625 < _611), 0.0f, 1.0f) * select((_609 < _623), 0.0f, 1.0f);
                _651 = (_638 * ((_625 - _609) + ((_609 - _625) * select((_530 < _623), 0.0f, 1.0f)))) + _609;
                _659 = true;
                _660 = ((_530 - _651) - (((select((_609 < _625), 0.0f, 1.0f) * select((_623 < _609), 0.0f, 1.0f)) * (1.0f - _638)) * (_625 - _651)));
              } else {
                _659 = false;
                _660 = 0.0f;
              }
            } else {
              _659 = false;
              _660 = 0.0f;
            }
          } else {
            _659 = false;
            _660 = 0.0f;
          }
          if (_659) {
            _664 = saturate(abs(_660) * 1.3333334f);  // [sem: expr_sat]
            _670 = ((_664 * _664) * (3.0f - (_664 * 2.0f)));
          } else {
            _670 = 0.0f;
          }
          _676 = saturate(abs(_528 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
          _683 = saturate(max(_670, (1.0f - ((_676 * _676) * (3.0f - (_676 * 2.0f))))));  // [sem: expr_sat]
          if (!(_683 <= 0.0f)) {
            _686 = _528 - _viewPos.y;
            _688 = rsqrt(dot(float3(_535, _686, _537), float3(_535, _686, _537)));  // [sem: invLength]
            // [sem: expr_sat]
            _695 = saturate((dot(float3((_688 * _535), (_688 * _686), (_688 * _537)), float3((_465 * _461), _467, (_465 * _463))) * 0.5f) + 0.5f);
            if ((_449) || ((!(_449)) && (_sunDirection.y > _moonDirection.y))) {
              _710 = _sunDirection.x;
              _711 = _sunDirection.y;
              _712 = _sunDirection.z;
            } else {
              _710 = _moonDirection.x;
              _711 = _moonDirection.y;
              _712 = _moonDirection.z;
            }
            _713 = _710 * 10000.0f;
            _714 = _711 * 10000.0f;
            _715 = _712 * 10000.0f;
            _743 = mad((_viewProjRelative[3].z), _715, mad((_viewProjRelative[3].y), _714, ((_viewProjRelative[3].x) * _713))) + (_viewProjRelative[3].w);
            _748 = (((mad((_viewProjRelative[0].z), _715, mad((_viewProjRelative[0].y), _714, ((_viewProjRelative[0].x) * _713))) + (_viewProjRelative[0].w)) / _743) * 0.5f) + 0.5f;
            _749 = 0.5f - (((mad((_viewProjRelative[1].z), _715, mad((_viewProjRelative[1].y), _714, ((_viewProjRelative[1].x) * _713))) + (_viewProjRelative[1].w)) / _743) * 0.5f);
            _750 = (_743 <= 0.0f);
            _755 = TEXCOORD.x - select(_750, (-0.0f - _748), _748);
            _756 = TEXCOORD.y - select(_750, (-0.0f - _749), _749);
            _805 = 0.0f;
            _806 = 0.0f;
            _807 = 0.0f;
            _808 = 0.0f;
            _809 = 0;
            while(true) {
              _810 = (float)((int)(_809));
              _815 = WaveReadLaneFirst(_materialIndex);
              _823 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_815 < (uint)170000), _815, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
              _825 = _823 * (exp2(log2(_810 * 0.06666667f) * 1.1f) * rsqrt(dot(float2(_755, _756), float2(_755, _756))));
              _828 = TEXCOORD.x - (_825 * _755);
              _829 = TEXCOORD.y - (_825 * _756);
              _831 = WaveReadLaneFirst(_materialIndex);
              _839 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_831 < (uint)170000), _831, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftDecay);
              _842 = exp2((_810 * 0.9f) * log2(_839));
              if ((_828 == saturate(_828)) && (_829 == saturate(_829))) {
                _854 = (_828 * 2.0f) + -1.0f;
                _856 = 1.0f - (_829 * 2.0f);
                _857 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_828, _829))).x));
                _893 = mad((_invViewProj[3].z), _857, mad((_invViewProj[3].y), _856, ((_invViewProj[3].x) * _854))) + (_invViewProj[3].w);
                _895 = (mad((_invViewProj[1].z), _857, mad((_invViewProj[1].y), _856, ((_invViewProj[1].x) * _854))) + (_invViewProj[1].w)) / _893;
                _897 = _895 + 0.1f;
                _902 = ((mad((_invViewProj[0].z), _857, mad((_invViewProj[0].y), _856, ((_invViewProj[0].x) * _854))) + (_invViewProj[0].w)) / _893) - _viewPos.x;
                _904 = ((mad((_invViewProj[2].z), _857, mad((_invViewProj[2].y), _856, ((_invViewProj[2].x) * _854))) + (_invViewProj[2].w)) / _893) - _viewPos.z;
                _908 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
                _911 = abs(_902);
                _913 = abs(_904);
                if ((((_911 - _908) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_897 - _viewPos.y)) < 0.0f)) && ((_913 - _908) < 0.0f)) {
                  _927 = _waterDepthFieldSize.w * _904;
                  _928 = (_waterDepthFieldSize.z * _902) + 0.5f;
                  _929 = _927 + 0.5f;
                  if (!((_929 >= 1.0f) || ((_929 <= 0.0f) || ((_928 <= 0.0f) || (_928 >= 1.0f))))) {
                    _938 = 0.5f - _927;
                    // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                    _941 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_928, _938), 0.0f);
                    _953 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                    _955 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
                    if ((_911 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_913 < (_waterDepthDetailFieldSize.z * 0.5f))) {
                      _970 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _902) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _904))), 0.0f)).x);
                    } else {
                      _970 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_928, _938), 0.0f)).x);
                    }
                    _976 = select((_970 < 1.0f), (_955 - (_970 * _953)), -10000.0f);
                    _978 = select((_941.x < 1.0f), (_955 - (_953 * _941.x)), -10000.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                    _980 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_928, _938), 0.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                    _983 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_928, _938), 0.0f);
                    _990 = select((_980.x < 1.0f), (_955 - (_980.x * _953)), -10000.0f);
                    _992 = select((_983.x < 1.0f), (_955 - (_983.x * _953)), -10000.0f);
                    if (((_897 >= _978) && (_897 < _976)) && ((_897 > _990) || (_897 < _992))) {
                      _1005 = select((_992 < _978), 0.0f, 1.0f) * select((_976 < _990), 0.0f, 1.0f);
                      _1018 = (_1005 * ((_992 - _976) + ((_976 - _992) * select((_897 < _990), 0.0f, 1.0f)))) + _976;
                      _1026 = true;
                      _1027 = ((_897 - _1018) - (((select((_976 < _992), 0.0f, 1.0f) * select((_990 < _976), 0.0f, 1.0f)) * (1.0f - _1005)) * (_992 - _1018)));
                    } else {
                      _1026 = false;
                      _1027 = 0.0f;
                    }
                  } else {
                    _1026 = false;
                    _1027 = 0.0f;
                  }
                } else {
                  _1026 = false;
                  _1027 = 0.0f;
                }
                if (_1026) {
                  _1031 = saturate(abs(_1027) * 1.3333334f);  // [sem: expr_sat]
                  _1037 = ((_1031 * _1031) * (3.0f - (_1031 * 2.0f)));
                } else {
                  _1037 = 0.0f;
                }
                _1043 = saturate(abs(_895 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
                _1052 = saturate(max(_1037, (1.0f - ((_1043 * _1043) * (3.0f - (_1043 * 2.0f))))));  // [sem: expr_sat]
              } else {
                _1052 = 0.0f;  // [sem: expr_sat]
              }
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1058 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_828, _829));
              _1068 = (pow(_1058.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1069 = (pow(_1058.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1070 = (pow(_1058.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1096 = (_842 * 10000.0f) * (lerp(_683, _1052, 0.35f));
              _1100 = (exp2(log2(max(0.0f, (_1068 + -0.8359375f)) / (18.851562f - (_1068 * 18.6875f))) * 6.277395f) * _1096) + _805;
              _1101 = (exp2(log2(max(0.0f, (_1069 + -0.8359375f)) / (18.851562f - (_1069 * 18.6875f))) * 6.277395f) * _1096) + _806;
              _1102 = (exp2(log2(max(0.0f, (_1070 + -0.8359375f)) / (18.851562f - (_1070 * 18.6875f))) * 6.277395f) * _1096) + _807;
              _1103 = _842 + _808;
              _1104 = (int)(_809) + (int)(1);
              if (!(_1104 == 16)) {
                _805 = _1100;
                _806 = _1101;
                _807 = _1102;
                _808 = _1103;
                _809 = _1104;
                continue;
              }
              while(true) {
                _760 = max(_1103, 0.0001f);
                _761 = _1100 / _760;
                _762 = _1101 / _760;
                _763 = _1102 / _760;
                // [sem: expr_sat]
                _767 = saturate((dot(float3(_761, _762, _763), float3(0.2126f, 0.7152f, 0.0722f)) + -0.02f) * 10.000001f);
                _771 = (_767 * _767) * (3.0f - (_767 * 2.0f));
                _787 = WaveReadLaneFirst(_materialIndex);
                _795 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_787 < (uint)170000), _787, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
                _800 = ((((_475 * _475) * 1.25f) * _683) * (((_695 * _695) * 0.75f) + 0.5f)) * _795;
                _1482 = (_800 * exp2(log2(max((_771 * _761), 0.0f)) * 1.05f));
                _1483 = (_800 * exp2(log2(max((_771 * _762), 0.0f)) * 1.05f));
                _1484 = (_800 * exp2(log2(max((_771 * _763), 0.0f)) * 1.05f));
                break;
              }
              break;
            }
          } else {
            _1482 = 0.0f;
            _1483 = 0.0f;
            _1484 = 0.0f;
          }
        } else {
          _1482 = 0.0f;
          _1483 = 0.0f;
          _1484 = 0.0f;
        }
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1113 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _1123 = (pow(_1113.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1124 = (pow(_1113.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1125 = (pow(_1113.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1153 = _srcTargetSizeAndInv.z * 1.0384616f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1155 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1153 + TEXCOORD.x), TEXCOORD.y));
          _1165 = (pow(_1155.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1166 = (pow(_1155.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1167 = (pow(_1155.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1193 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1153), TEXCOORD.y));
          _1203 = (pow(_1193.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1204 = (pow(_1193.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1205 = (pow(_1193.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1230 = _srcTargetSizeAndInv.z * 2.4230769f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1232 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1230 + TEXCOORD.x), TEXCOORD.y));
          _1242 = (pow(_1232.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1243 = (pow(_1232.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1244 = (pow(_1232.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1270 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1230), TEXCOORD.y));
          _1280 = (pow(_1270.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1281 = (pow(_1270.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1282 = (pow(_1270.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1482 = ((((exp2(log2(max(0.0f, (_1203 + -0.8359375f)) / (18.851562f - (_1203 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1165 + -0.8359375f)) / (18.851562f - (_1165 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1123 + -0.8359375f)) / (18.851562f - (_1123 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_1280 + -0.8359375f)) / (18.851562f - (_1280 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1242 + -0.8359375f)) / (18.851562f - (_1242 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1483 = ((((exp2(log2(max(0.0f, (_1204 + -0.8359375f)) / (18.851562f - (_1204 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1166 + -0.8359375f)) / (18.851562f - (_1166 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1124 + -0.8359375f)) / (18.851562f - (_1124 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_1281 + -0.8359375f)) / (18.851562f - (_1281 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1243 + -0.8359375f)) / (18.851562f - (_1243 * 18.6875f))) * 6.277395f)) * 702.7027f));
          _1484 = ((((exp2(log2(max(0.0f, (_1205 + -0.8359375f)) / (18.851562f - (_1205 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1167 + -0.8359375f)) / (18.851562f - (_1167 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1125 + -0.8359375f)) / (18.851562f - (_1125 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_1282 + -0.8359375f)) / (18.851562f - (_1282 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1244 + -0.8359375f)) / (18.851562f - (_1244 * 18.6875f))) * 6.277395f)) * 702.7027f));
        } else {
          if ((_passIndex & -2) == 4) {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _1343 = _sunDirection.x;
              _1344 = _sunDirection.y;
              _1345 = _sunDirection.z;
            } else {
              _1343 = _moonDirection.x;
              _1344 = _moonDirection.y;
              _1345 = _moonDirection.z;
            }
            _1346 = _1343 * 10000.0f;
            _1347 = _1344 * 10000.0f;
            _1348 = _1345 * 10000.0f;
            _1376 = mad((_viewProjRelative[3].z), _1348, mad((_viewProjRelative[3].y), _1347, ((_viewProjRelative[3].x) * _1346))) + (_viewProjRelative[3].w);
            _1381 = (((mad((_viewProjRelative[0].z), _1348, mad((_viewProjRelative[0].y), _1347, ((_viewProjRelative[0].x) * _1346))) + (_viewProjRelative[0].w)) / _1376) * 0.5f) + 0.5f;
            _1382 = 0.5f - (((mad((_viewProjRelative[1].z), _1348, mad((_viewProjRelative[1].y), _1347, ((_viewProjRelative[1].x) * _1346))) + (_viewProjRelative[1].w)) / _1376) * 0.5f);
            _1383 = (_1376 <= 0.0f);
            _1388 = TEXCOORD.x - select(_1383, (-0.0f - _1381), _1381);
            _1389 = TEXCOORD.y - select(_1383, (-0.0f - _1382), _1382);
            _1393 = 0.0f;
            _1394 = 0.0f;
            _1395 = 0.0f;
            _1396 = 0.0f;
            _1397 = 0;
            while(true) {
              _1398 = (float)((int)(_1397));
              _1399 = WaveReadLaneFirst(_materialIndex);
              _1407 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1399 < (uint)170000), _1399, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurStrength);
              _1410 = _1407 * ((rsqrt(dot(float2(_1388, _1389), float2(_1388, _1389))) * 0.06666667f) * _1398);
              _1415 = WaveReadLaneFirst(_materialIndex);
              _1423 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1415 < (uint)170000), _1415, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurDecay);
              _1426 = (pow(_1423, _1398));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1429 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_1410 * _1388)), (TEXCOORD.y - (_1410 * _1389))));
              _1439 = (pow(_1429.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1440 = (pow(_1429.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1441 = (pow(_1429.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1466 = _1426 * 10000.0f;
              _1470 = (exp2(log2(max(0.0f, (_1439 + -0.8359375f)) / (18.851562f - (_1439 * 18.6875f))) * 6.277395f) * _1466) + _1393;
              _1471 = (exp2(log2(max(0.0f, (_1440 + -0.8359375f)) / (18.851562f - (_1440 * 18.6875f))) * 6.277395f) * _1466) + _1394;
              _1472 = (exp2(log2(max(0.0f, (_1441 + -0.8359375f)) / (18.851562f - (_1441 * 18.6875f))) * 6.277395f) * _1466) + _1395;
              _1473 = _1426 + _1396;
              _1474 = (int)(_1397) + (int)(1);
              if (!(_1474 == 16)) {
                _1393 = _1470;
                _1394 = _1471;
                _1395 = _1472;
                _1396 = _1473;
                _1397 = _1474;
                continue;
              }
              _1477 = max(_1473, 0.0001f);
              _1482 = (_1470 / _1477);
              _1483 = (_1471 / _1477);
              _1484 = (_1472 / _1477);
              break;
            }
          } else {
            _1482 = 0.0f;
            _1483 = 0.0f;
            _1484 = 0.0f;
          }
        }
      }
    }
  }
  _1485 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1498 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1485, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1498 = 1.0f;
  }
  _1501 = (_localToneMappingParams.w > 0.0f);
  if (_1501) {
    _1507 = _userImageAdjust.z * _exposure0.x;
    _1556 = exp2(log2(max(0.0f, (((_1507 * max(0.0f, (((_1482 * 1.70505f) - (_1483 * 0.62179f)) - (_1484 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1557 = exp2(log2(max(0.0f, (((max(0.0f, (((_1483 * 1.1408f) - (_1482 * 0.13026f)) - (_1484 * 0.01055f))) * _1507) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1558 = exp2(log2(max(0.0f, (((max(0.0f, (((_1482 * -0.024f) - (_1483 * 0.12897f)) + (_1484 * 1.15297f))) * _1507) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1560 = dot(float3(_1556, _1557, _1558), float3(0.212671f, 0.71516f, 0.072169f));
    _1567 = ((_1556 - _1560) * _powerParams.w) + _1560;
    _1568 = ((_1557 - _1560) * _powerParams.w) + _1560;
    _1569 = ((_1558 - _1560) * _powerParams.w) + _1560;
    _1588 = min(max(log2(mad(_1569, 0.079223745f, mad(_1568, 0.0784336f, (_1567 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1589 = min(max(log2(mad(_1569, 0.07916613f, mad(_1568, 0.87846863f, (_1567 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1590 = min(max(log2(mad(_1569, 0.879143f, mad(_1568, 0.0784336f, (_1567 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1591 = _1588 * 0.060606062f;
    _1592 = _1589 * 0.060606062f;
    _1593 = _1590 * 0.060606062f;
    _1594 = _1591 * _1591;
    _1595 = _1592 * _1592;
    _1596 = _1593 * _1593;
    _1642 = min(0.0f, (-0.0f - (((_1588 * 0.0072181816f) + ((_1594 * 0.4298f) + (((_1594 * _1594) * ((31.96f - (_1588 * 2.4327273f)) + (_1594 * 15.5f))) - ((_1588 * 0.41624245f) * _1594)))) + -0.00232f)));
    _1643 = min(0.0f, (-0.0f - (((_1589 * 0.0072181816f) + ((_1595 * 0.4298f) + (((_1595 * _1595) * ((31.96f - (_1589 * 2.4327273f)) + (_1595 * 15.5f))) - ((_1589 * 0.41624245f) * _1595)))) + -0.00232f)));
    _1644 = min(0.0f, (-0.0f - (((_1590 * 0.0072181816f) + ((_1596 * 0.4298f) + (((_1596 * _1596) * ((31.96f - (_1590 * 2.4327273f)) + (_1596 * 15.5f))) - ((_1590 * 0.41624245f) * _1596)))) + -0.00232f)));
    _1645 = -0.0f - _1642;
    _1646 = -0.0f - _1643;
    _1647 = -0.0f - _1644;
    _1648 = dot(float3(_1645, _1646, _1647), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1665 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1666 = -0.79999995f / _1665;
      _1667 = -1.2f / _1665;
      _1668 = 0.20000005f / _1665;
      _1674 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1677 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1684 = (_1666 + 1.4f) + (_1677 * (-0.39999998f - _1666));
      _1685 = (_1667 + 1.6f) + (_1677 * (-0.6f - _1667));
      _1686 = (_1668 + 0.9f) + (_1677 * (0.5f - _1668));
      _1703 = (lerp(_1685, 1.2f, _1674));  // [sem: blended]
      _1704 = (lerp(_1684, 1.0f, _1674));  // [sem: blended]
      _1705 = (lerp(_1686, 1.4f, _1674));  // [sem: blended]
    } else {
      _1703 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1704 = 1.0f;  // [sem: blended]
      _1705 = 1.4f;  // [sem: blended]
    }
    _1715 = 1.0f - _1703;
    _1740 = ((exp2(log2(((saturate((_1642 * _1642) * _1645) * _1715) + _1703) * _1645) * _1704) - _1648) * _1705) + _1648;
    _1741 = ((exp2(log2(((saturate((_1643 * _1643) * _1646) * _1715) + _1703) * _1646) * _1704) - _1648) * _1705) + _1648;
    _1742 = ((exp2(log2(((saturate((_1644 * _1644) * _1647) * _1715) + _1703) * _1647) * _1704) - _1648) * _1705) + _1648;
    _1761 = saturate(exp2(log2(mad(_1742, -0.09902974f, mad(_1741, -0.09802088f, (_1740 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1762 = saturate(exp2(log2(mad(_1742, -0.098961174f, mad(_1741, 1.1519032f, (_1740 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1763 = saturate(exp2(log2(mad(_1742, 1.1510737f, mad(_1741, -0.09804345f, (_1740 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1769 = 1.0f - abs(_etcParams.w);
      _1773 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1774 = (_1769 * _1761) + _1773;
      _1775 = (_1769 * _1762) + _1773;
      _1776 = (_1769 * _1763) + _1773;
      if (_colorGradingParams.w > 0.0f) {
        _1781 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1798 = (((max(0.0f, (1.0f - _1774)) - _1774) * _1781) + _1774);
        _1799 = (((max(0.0f, (1.0f - _1775)) - _1775) * _1781) + _1775);
        _1800 = (((max(0.0f, (1.0f - _1776)) - _1776) * _1781) + _1776);
      } else {
        _1798 = _1774;
        _1799 = _1775;
        _1800 = _1776;
      }
      _1806 = _userImageAdjust.y + 1.0f;
      _1810 = _userImageAdjust.x + 0.5f;
      _1811 = ((_1798 + -0.5f) * _1806) + _1810;
      _1812 = ((_1799 + -0.5f) * _1806) + _1810;
      _1813 = ((_1800 + -0.5f) * _1806) + _1810;
      _1843 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1854 = exp2(log2(saturate(mad(_colorBlind0.z, _1813, mad(_colorBlind0.y, _1812, (_colorBlind0.x * _1811))))) * _1843);
      _1855 = exp2(log2(saturate(mad(_colorBlind1.z, _1813, mad(_colorBlind1.y, _1812, (_colorBlind1.x * _1811))))) * _1843);
      _1856 = exp2(log2(saturate(mad(_colorBlind2.z, _1813, mad(_colorBlind2.y, _1812, (_colorBlind2.x * _1811))))) * _1843);
    } else {
      _1854 = _1761;
      _1855 = _1762;
      _1856 = _1763;
    }
  } else {
    _1854 = _1482;
    _1855 = _1483;
    _1856 = _1484;
  }
  if (_etcParams.y > 1.0f) {
    _1865 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1866 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1870 = saturate(1.0f - (dot(float2(_1865, _1866), float2(_1865, _1866)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1875 = (_1870 * _1854);
    _1876 = (_1870 * _1855);
    _1877 = (_1870 * _1856);
  } else {
    _1875 = _1854;
    _1876 = _1855;
    _1877 = _1856;
  }
  if (_1501 && (_etcParams.z > 0.0f)) {
    _1907 = select((_1875 <= 0.0031308f), (_1875 * 12.92f), (((pow(_1875, 0.41666666f)) * 1.055f) + -0.055f));
    _1908 = select((_1876 <= 0.0031308f), (_1876 * 12.92f), (((pow(_1876, 0.41666666f)) * 1.055f) + -0.055f));
    _1909 = select((_1877 <= 0.0031308f), (_1877 * 12.92f), (((pow(_1877, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1907 = _1875;
    _1908 = _1876;
    _1909 = _1877;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1914 = (float)((uint)((uint)(_1485)));
    if (!(_1914 < _viewDir.w)) {
      if (!(_1914 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1923 = _1907;
        _1924 = _1908;
        _1925 = _1909;
      } else {
        _1923 = 0.0f;
        _1924 = 0.0f;
        _1925 = 0.0f;
      }
    } else {
      _1923 = 0.0f;
      _1924 = 0.0f;
      _1925 = 0.0f;
    }
  } else {
    _1923 = _1907;
    _1924 = _1908;
    _1925 = _1909;
  }
  _1935 = exp2(log2(_1923 * 0.0001f) * 0.15930176f);
  _1936 = exp2(log2(_1924 * 0.0001f) * 0.15930176f);
  _1937 = exp2(log2(_1925 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1935 * 18.6875f) + 1.0f)) * ((_1935 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1936 * 18.6875f) + 1.0f)) * ((_1936 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1937 * 18.6875f) + 1.0f)) * ((_1937 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1498;
  return SV_Target;
}
