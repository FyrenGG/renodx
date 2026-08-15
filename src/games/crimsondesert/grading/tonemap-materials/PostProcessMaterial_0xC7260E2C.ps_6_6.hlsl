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
  float _260;
  float _261;
  float _262;
  float _402;
  bool _458;
  float _459;
  float _469;
  float _509;
  float _510;
  float _511;
  float _604;
  float _605;
  float _606;
  float _607;
  int _608;
  float _769;
  bool _825;
  float _826;
  float _836;
  float _851;
  float _943;
  float _944;
  float _945;
  float _993;
  float _994;
  float _995;
  float _996;
  int _997;
  float _1048;
  float _1049;
  float _1050;
  float _1064;
  float _1269;
  float _1270;
  float _1271;
  float _1364;
  float _1365;
  float _1366;
  float _1420;
  float _1421;
  float _1422;
  float _1441;
  float _1442;
  float _1443;
  float _1473;
  float _1474;
  float _1475;
  float _1489;
  float _1490;
  float _1491;
  int _51;
  float _68;
  float _70;
  float _71;
  int _99;
  float _107;
  float4 _118;
  int _122;
  float _130;
  float _131;
  float _133;
  float _134;
  float _139;
  float _149;
  float _152;
  float _154;
  float _182;
  float4 _196;
  float _203;
  float4 _205;
  float4 _210;
  float _214;
  float4 _216;
  float4 _221;
  bool _248;
  float _264;
  float _266;
  float _270;
  float _274;
  float _286;
  float _288;
  float _289;
  float _325;
  float _327;
  float _329;
  float _334;
  float _336;
  float _340;
  float _343;
  float _345;
  float _359;
  float _360;
  float _361;
  float _370;
  float _373;
  float _385;
  float _387;
  float _408;
  float _410;
  float _412;
  float _415;
  float _422;
  float _424;
  float _437;
  float _450;
  float _463;
  float _475;
  float _482;
  float _485;
  float _487;
  float _494;
  float _512;
  float _513;
  float _514;
  float _542;
  float _547;
  float _548;
  bool _549;
  float _554;
  float _555;
  float _559;
  float _560;
  float _561;
  float _562;
  float _566;
  float _570;
  int _586;
  float _594;
  float _599;
  float _609;
  int _614;
  float _622;
  float _624;
  float _627;
  float _628;
  int _630;
  float _638;
  float _641;
  float _653;
  float _655;
  float _656;
  float _692;
  float _694;
  float _696;
  float _701;
  float _703;
  float _707;
  float _710;
  float _712;
  float _726;
  float _727;
  float _728;
  float _737;
  float _740;
  float _752;
  float _754;
  float _775;
  float _777;
  float _779;
  float _782;
  float _789;
  float _791;
  float _804;
  float _817;
  float _830;
  float _842;
  float4 _857;
  float _861;
  float _865;
  float _866;
  float _867;
  float _868;
  int _869;
  float4 _878;
  float _885;
  float4 _887;
  float4 _892;
  float _896;
  float4 _898;
  float4 _903;
  float _946;
  float _947;
  float _948;
  float _976;
  float _981;
  float _982;
  bool _983;
  float _988;
  float _989;
  float _998;
  int _999;
  float _1007;
  float _1010;
  int _1015;
  float _1023;
  float _1026;
  float4 _1029;
  float _1036;
  float _1037;
  float _1038;
  float _1039;
  int _1040;
  float _1043;
  uint _1051;
  bool _1067;
  float _1073;
  float _1122;
  float _1123;
  float _1124;
  float _1126;
  float _1133;
  float _1134;
  float _1135;
  float _1154;
  float _1155;
  float _1156;
  float _1157;
  float _1158;
  float _1159;
  float _1160;
  float _1161;
  float _1162;
  float _1208;
  float _1209;
  float _1210;
  float _1211;
  float _1212;
  float _1213;
  float _1214;
  float _1231;
  float _1232;
  float _1233;
  float _1234;
  float _1240;
  float _1243;
  float _1250;
  float _1251;
  float _1252;
  float _1281;
  float _1306;
  float _1307;
  float _1308;
  float _1327;
  float _1328;
  float _1329;
  float _1335;
  float _1339;
  float _1340;
  float _1341;
  float _1342;
  float _1347;
  float _1372;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1409;
  float _1431;
  float _1432;
  float _1436;
  float _1480;
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
        _122 = WaveReadLaneFirst(_materialIndex);
        _130 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _131 = dot(float3(_118.x, _118.y, _118.z), float3(0.2126f, 0.7152f, 0.0722f));
        _133 = (_130 * 0.75f) + 1e-05f;
        _134 = _131 - _130;
        _139 = saturate((_134 + _133) / ((_130 * 1.5f) + 2e-05f));  // [sem: expr_sat]
        _149 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _152 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _154 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        _182 = (max(_134, ((_139 * _139) * _133)) / max(_131, 1e-05f)) * saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) / max(_107, 0.001f));
        _1048 = ((_182 * _118.x) * select(((_149 * 0.003921569f) < 0.04045f), (_149 * 0.000303527f), exp2(log2((_149 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1049 = ((_182 * _118.y) * select(((_152 * 0.003921569f) < 0.04045f), (_152 * 0.000303527f), exp2(log2((_152 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1050 = ((_182 * _118.z) * select(((_154 * 0.003921569f) < 0.04045f), (_154 * 0.000303527f), exp2(log2((_154 * 0.003717127f) + 0.052132703f) * 2.4f)));
      } else {
        _1048 = 0.0f;
        _1049 = 0.0f;
        _1050 = 0.0f;
      }
    } else {
      _1048 = 0.0f;
      _1049 = 0.0f;
      _1050 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _196 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _203 = _srcTargetSizeAndInv.z * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _205 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_203 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _210 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _203), TEXCOORD.y));
      _214 = _srcTargetSizeAndInv.z * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _216 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_214 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _221 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _214), TEXCOORD.y));
      _1048 = ((((_210.x + _205.x) * 0.31621623f) + (_196.x * 0.22702703f)) + ((_221.x + _216.x) * 0.07027027f));
      _1049 = ((((_210.y + _205.y) * 0.31621623f) + (_196.y * 0.22702703f)) + ((_221.y + _216.y) * 0.07027027f));
      _1050 = ((((_210.z + _205.z) * 0.31621623f) + (_196.z * 0.22702703f)) + ((_221.z + _216.z) * 0.07027027f));
    } else {
      if (_passIndex == 2) {
        _248 = (_sunDirection.y > 0.0f);
        if ((_248) || ((!(_248)) && (_sunDirection.y > _moonDirection.y))) {
          _260 = _sunDirection.x;
          _261 = _sunDirection.y;
          _262 = _sunDirection.z;
        } else {
          _260 = _moonDirection.x;
          _261 = _moonDirection.y;
          _262 = _moonDirection.z;
        }
        _264 = rsqrt(dot(float3(_260, _261, _262), float3(_260, _261, _262)));  // [sem: invLength]
        _266 = _264 * _261;
        _270 = saturate((_266 + -0.08f) * 3.7037039f);  // [sem: expr_sat]
        _274 = (_270 * _270) * (3.0f - (_270 * 2.0f));
        if ((TEXCOORD.x == saturate(TEXCOORD.x)) && (TEXCOORD.y == saturate(TEXCOORD.y))) {
          _286 = (TEXCOORD.x * 2.0f) + -1.0f;
          _288 = 1.0f - (TEXCOORD.y * 2.0f);
          _289 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
          _325 = mad((_invViewProj[3].z), _289, mad((_invViewProj[3].y), _288, ((_invViewProj[3].x) * _286))) + (_invViewProj[3].w);
          _327 = (mad((_invViewProj[1].z), _289, mad((_invViewProj[1].y), _288, ((_invViewProj[1].x) * _286))) + (_invViewProj[1].w)) / _325;
          _329 = _327 + 0.1f;
          _334 = ((mad((_invViewProj[0].z), _289, mad((_invViewProj[0].y), _288, ((_invViewProj[0].x) * _286))) + (_invViewProj[0].w)) / _325) - _viewPos.x;
          _336 = ((mad((_invViewProj[2].z), _289, mad((_invViewProj[2].y), _288, ((_invViewProj[2].x) * _286))) + (_invViewProj[2].w)) / _325) - _viewPos.z;
          _340 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
          _343 = abs(_334);
          _345 = abs(_336);
          if ((((_343 - _340) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_329 - _viewPos.y)) < 0.0f)) && ((_345 - _340) < 0.0f)) {
            _359 = _waterDepthFieldSize.w * _336;
            _360 = (_waterDepthFieldSize.z * _334) + 0.5f;
            _361 = _359 + 0.5f;
            if (!((_361 >= 1.0f) || ((_361 <= 0.0f) || ((_360 <= 0.0f) || (_360 >= 1.0f))))) {
              _370 = 0.5f - _359;
              // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
              _373 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_360, _370), 0.0f);
              _385 = _waterDepthMinMax.y - _waterDepthMinMax.x;
              _387 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
              if ((_343 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_345 < (_waterDepthDetailFieldSize.z * 0.5f))) {
                _402 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _334) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _336))), 0.0f)).x);
              } else {
                _402 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_360, _370), 0.0f)).x);
              }
              _408 = select((_402 < 1.0f), (_387 - (_402 * _385)), -10000.0f);
              _410 = select((_373.x < 1.0f), (_387 - (_385 * _373.x)), -10000.0f);
              // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
              _412 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_360, _370), 0.0f);
              // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
              _415 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_360, _370), 0.0f);
              _422 = select((_412.x < 1.0f), (_387 - (_412.x * _385)), -10000.0f);
              _424 = select((_415.x < 1.0f), (_387 - (_415.x * _385)), -10000.0f);
              if (((_329 >= _410) && (_329 < _408)) && ((_329 > _422) || (_329 < _424))) {
                _437 = select((_424 < _410), 0.0f, 1.0f) * select((_408 < _422), 0.0f, 1.0f);
                _450 = (_437 * ((_424 - _408) + ((_408 - _424) * select((_329 < _422), 0.0f, 1.0f)))) + _408;
                _458 = true;
                _459 = ((_329 - _450) - (((select((_408 < _424), 0.0f, 1.0f) * select((_422 < _408), 0.0f, 1.0f)) * (1.0f - _437)) * (_424 - _450)));
              } else {
                _458 = false;
                _459 = 0.0f;
              }
            } else {
              _458 = false;
              _459 = 0.0f;
            }
          } else {
            _458 = false;
            _459 = 0.0f;
          }
          if (_458) {
            _463 = saturate(abs(_459) * 1.3333334f);  // [sem: expr_sat]
            _469 = ((_463 * _463) * (3.0f - (_463 * 2.0f)));
          } else {
            _469 = 0.0f;
          }
          _475 = saturate(abs(_327 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
          _482 = saturate(max(_469, (1.0f - ((_475 * _475) * (3.0f - (_475 * 2.0f))))));  // [sem: expr_sat]
          if (!(_482 <= 0.0f)) {
            _485 = _327 - _viewPos.y;
            _487 = rsqrt(dot(float3(_334, _485, _336), float3(_334, _485, _336)));  // [sem: invLength]
            // [sem: expr_sat]
            _494 = saturate((dot(float3((_487 * _334), (_487 * _485), (_487 * _336)), float3((_264 * _260), _266, (_264 * _262))) * 0.5f) + 0.5f);
            if ((_248) || ((!(_248)) && (_sunDirection.y > _moonDirection.y))) {
              _509 = _sunDirection.x;
              _510 = _sunDirection.y;
              _511 = _sunDirection.z;
            } else {
              _509 = _moonDirection.x;
              _510 = _moonDirection.y;
              _511 = _moonDirection.z;
            }
            _512 = _509 * 10000.0f;
            _513 = _510 * 10000.0f;
            _514 = _511 * 10000.0f;
            _542 = mad((_viewProjRelative[3].z), _514, mad((_viewProjRelative[3].y), _513, ((_viewProjRelative[3].x) * _512))) + (_viewProjRelative[3].w);
            _547 = (((mad((_viewProjRelative[0].z), _514, mad((_viewProjRelative[0].y), _513, ((_viewProjRelative[0].x) * _512))) + (_viewProjRelative[0].w)) / _542) * 0.5f) + 0.5f;
            _548 = 0.5f - (((mad((_viewProjRelative[1].z), _514, mad((_viewProjRelative[1].y), _513, ((_viewProjRelative[1].x) * _512))) + (_viewProjRelative[1].w)) / _542) * 0.5f);
            _549 = (_542 <= 0.0f);
            _554 = TEXCOORD.x - select(_549, (-0.0f - _547), _547);
            _555 = TEXCOORD.y - select(_549, (-0.0f - _548), _548);
            _604 = 0.0f;
            _605 = 0.0f;
            _606 = 0.0f;
            _607 = 0.0f;
            _608 = 0;
            while(true) {
              _609 = (float)((int)(_608));
              _614 = WaveReadLaneFirst(_materialIndex);
              _622 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_614 < (uint)170000), _614, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
              _624 = _622 * (exp2(log2(_609 * 0.06666667f) * 1.1f) * rsqrt(dot(float2(_554, _555), float2(_554, _555))));
              _627 = TEXCOORD.x - (_624 * _554);
              _628 = TEXCOORD.y - (_624 * _555);
              _630 = WaveReadLaneFirst(_materialIndex);
              _638 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_630 < (uint)170000), _630, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftDecay);
              _641 = exp2((_609 * 0.9f) * log2(_638));
              if ((_627 == saturate(_627)) && (_628 == saturate(_628))) {
                _653 = (_627 * 2.0f) + -1.0f;
                _655 = 1.0f - (_628 * 2.0f);
                _656 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_627, _628))).x));
                _692 = mad((_invViewProj[3].z), _656, mad((_invViewProj[3].y), _655, ((_invViewProj[3].x) * _653))) + (_invViewProj[3].w);
                _694 = (mad((_invViewProj[1].z), _656, mad((_invViewProj[1].y), _655, ((_invViewProj[1].x) * _653))) + (_invViewProj[1].w)) / _692;
                _696 = _694 + 0.1f;
                _701 = ((mad((_invViewProj[0].z), _656, mad((_invViewProj[0].y), _655, ((_invViewProj[0].x) * _653))) + (_invViewProj[0].w)) / _692) - _viewPos.x;
                _703 = ((mad((_invViewProj[2].z), _656, mad((_invViewProj[2].y), _655, ((_invViewProj[2].x) * _653))) + (_invViewProj[2].w)) / _692) - _viewPos.z;
                _707 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
                _710 = abs(_701);
                _712 = abs(_703);
                if ((((_710 - _707) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_696 - _viewPos.y)) < 0.0f)) && ((_712 - _707) < 0.0f)) {
                  _726 = _waterDepthFieldSize.w * _703;
                  _727 = (_waterDepthFieldSize.z * _701) + 0.5f;
                  _728 = _726 + 0.5f;
                  if (!((_728 >= 1.0f) || ((_728 <= 0.0f) || ((_727 <= 0.0f) || (_727 >= 1.0f))))) {
                    _737 = 0.5f - _726;
                    // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                    _740 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_727, _737), 0.0f);
                    _752 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                    _754 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
                    if ((_710 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_712 < (_waterDepthDetailFieldSize.z * 0.5f))) {
                      _769 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _701) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _703))), 0.0f)).x);
                    } else {
                      _769 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_727, _737), 0.0f)).x);
                    }
                    _775 = select((_769 < 1.0f), (_754 - (_769 * _752)), -10000.0f);
                    _777 = select((_740.x < 1.0f), (_754 - (_752 * _740.x)), -10000.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                    _779 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_727, _737), 0.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                    _782 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_727, _737), 0.0f);
                    _789 = select((_779.x < 1.0f), (_754 - (_779.x * _752)), -10000.0f);
                    _791 = select((_782.x < 1.0f), (_754 - (_782.x * _752)), -10000.0f);
                    if (((_696 >= _777) && (_696 < _775)) && ((_696 > _789) || (_696 < _791))) {
                      _804 = select((_791 < _777), 0.0f, 1.0f) * select((_775 < _789), 0.0f, 1.0f);
                      _817 = (_804 * ((_791 - _775) + ((_775 - _791) * select((_696 < _789), 0.0f, 1.0f)))) + _775;
                      _825 = true;
                      _826 = ((_696 - _817) - (((select((_775 < _791), 0.0f, 1.0f) * select((_789 < _775), 0.0f, 1.0f)) * (1.0f - _804)) * (_791 - _817)));
                    } else {
                      _825 = false;
                      _826 = 0.0f;
                    }
                  } else {
                    _825 = false;
                    _826 = 0.0f;
                  }
                } else {
                  _825 = false;
                  _826 = 0.0f;
                }
                if (_825) {
                  _830 = saturate(abs(_826) * 1.3333334f);  // [sem: expr_sat]
                  _836 = ((_830 * _830) * (3.0f - (_830 * 2.0f)));
                } else {
                  _836 = 0.0f;
                }
                _842 = saturate(abs(_694 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
                _851 = saturate(max(_836, (1.0f - ((_842 * _842) * (3.0f - (_842 * 2.0f))))));  // [sem: expr_sat]
              } else {
                _851 = 0.0f;  // [sem: expr_sat]
              }
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _857 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_627, _628));
              _861 = (lerp(_482, _851, 0.35f)) * _641;  // [sem: blended]
              _865 = (_857.x * _861) + _604;
              _866 = (_857.y * _861) + _605;
              _867 = (_857.z * _861) + _606;
              _868 = _641 + _607;
              _869 = (int)(_608) + (int)(1);
              if (!(_869 == 16)) {
                _604 = _865;
                _605 = _866;
                _606 = _867;
                _607 = _868;
                _608 = _869;
                continue;
              }
              while(true) {
                _559 = max(_868, 0.0001f);
                _560 = _865 / _559;
                _561 = _866 / _559;
                _562 = _867 / _559;
                // [sem: expr_sat]
                _566 = saturate((dot(float3(_560, _561, _562), float3(0.2126f, 0.7152f, 0.0722f)) + -0.02f) * 10.000001f);
                _570 = (_566 * _566) * (3.0f - (_566 * 2.0f));
                _586 = WaveReadLaneFirst(_materialIndex);
                _594 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_586 < (uint)170000), _586, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
                _599 = ((((_274 * _274) * 1.25f) * _482) * (((_494 * _494) * 0.75f) + 0.5f)) * _594;
                _1048 = (_599 * exp2(log2(max((_570 * _560), 0.0f)) * 1.05f));
                _1049 = (_599 * exp2(log2(max((_570 * _561), 0.0f)) * 1.05f));
                _1050 = (_599 * exp2(log2(max((_570 * _562), 0.0f)) * 1.05f));
                break;
              }
              break;
            }
          } else {
            _1048 = 0.0f;
            _1049 = 0.0f;
            _1050 = 0.0f;
          }
        } else {
          _1048 = 0.0f;
          _1049 = 0.0f;
          _1050 = 0.0f;
        }
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _878 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _885 = _srcTargetSizeAndInv.z * 1.0384616f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _887 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_885 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _892 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _885), TEXCOORD.y));
          _896 = _srcTargetSizeAndInv.z * 2.4230769f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _898 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_896 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _903 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _896), TEXCOORD.y));
          _1048 = ((((_892.x + _887.x) * 0.31621623f) + (_878.x * 0.22702703f)) + ((_903.x + _898.x) * 0.07027027f));
          _1049 = ((((_892.y + _887.y) * 0.31621623f) + (_878.y * 0.22702703f)) + ((_903.y + _898.y) * 0.07027027f));
          _1050 = ((((_892.z + _887.z) * 0.31621623f) + (_878.z * 0.22702703f)) + ((_903.z + _898.z) * 0.07027027f));
        } else {
          if ((_passIndex & -2) == 4) {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _943 = _sunDirection.x;
              _944 = _sunDirection.y;
              _945 = _sunDirection.z;
            } else {
              _943 = _moonDirection.x;
              _944 = _moonDirection.y;
              _945 = _moonDirection.z;
            }
            _946 = _943 * 10000.0f;
            _947 = _944 * 10000.0f;
            _948 = _945 * 10000.0f;
            _976 = mad((_viewProjRelative[3].z), _948, mad((_viewProjRelative[3].y), _947, ((_viewProjRelative[3].x) * _946))) + (_viewProjRelative[3].w);
            _981 = (((mad((_viewProjRelative[0].z), _948, mad((_viewProjRelative[0].y), _947, ((_viewProjRelative[0].x) * _946))) + (_viewProjRelative[0].w)) / _976) * 0.5f) + 0.5f;
            _982 = 0.5f - (((mad((_viewProjRelative[1].z), _948, mad((_viewProjRelative[1].y), _947, ((_viewProjRelative[1].x) * _946))) + (_viewProjRelative[1].w)) / _976) * 0.5f);
            _983 = (_976 <= 0.0f);
            _988 = TEXCOORD.x - select(_983, (-0.0f - _981), _981);
            _989 = TEXCOORD.y - select(_983, (-0.0f - _982), _982);
            _993 = 0.0f;
            _994 = 0.0f;
            _995 = 0.0f;
            _996 = 0.0f;
            _997 = 0;
            while(true) {
              _998 = (float)((int)(_997));
              _999 = WaveReadLaneFirst(_materialIndex);
              _1007 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_999 < (uint)170000), _999, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurStrength);
              _1010 = _1007 * ((rsqrt(dot(float2(_988, _989), float2(_988, _989))) * 0.06666667f) * _998);
              _1015 = WaveReadLaneFirst(_materialIndex);
              _1023 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1015 < (uint)170000), _1015, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurDecay);
              _1026 = (pow(_1023, _998));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1029 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_1010 * _988)), (TEXCOORD.y - (_1010 * _989))));
              _1036 = (_1029.x * _1026) + _993;
              _1037 = (_1029.y * _1026) + _994;
              _1038 = (_1029.z * _1026) + _995;
              _1039 = _1026 + _996;
              _1040 = (int)(_997) + (int)(1);
              if (!(_1040 == 16)) {
                _993 = _1036;
                _994 = _1037;
                _995 = _1038;
                _996 = _1039;
                _997 = _1040;
                continue;
              }
              _1043 = max(_1039, 0.0001f);
              _1048 = (_1036 / _1043);
              _1049 = (_1037 / _1043);
              _1050 = (_1038 / _1043);
              break;
            }
          } else {
            _1048 = 0.0f;
            _1049 = 0.0f;
            _1050 = 0.0f;
          }
        }
      }
    }
  }
  _1051 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1064 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1051, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1064 = 1.0f;
  }
  _1067 = (_localToneMappingParams.w > 0.0f);
  if (_1067) {
    _1073 = _userImageAdjust.z * _exposure0.x;
    _1122 = exp2(log2(max(0.0f, (((_1073 * max(0.0f, (((_1048 * 1.70505f) - (_1049 * 0.62179f)) - (_1050 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1123 = exp2(log2(max(0.0f, (((max(0.0f, (((_1049 * 1.1408f) - (_1048 * 0.13026f)) - (_1050 * 0.01055f))) * _1073) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1124 = exp2(log2(max(0.0f, (((max(0.0f, (((_1048 * -0.024f) - (_1049 * 0.12897f)) + (_1050 * 1.15297f))) * _1073) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1126 = dot(float3(_1122, _1123, _1124), float3(0.212671f, 0.71516f, 0.072169f));
    _1133 = ((_1122 - _1126) * _powerParams.w) + _1126;
    _1134 = ((_1123 - _1126) * _powerParams.w) + _1126;
    _1135 = ((_1124 - _1126) * _powerParams.w) + _1126;
    _1154 = min(max(log2(mad(_1135, 0.079223745f, mad(_1134, 0.0784336f, (_1133 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1155 = min(max(log2(mad(_1135, 0.07916613f, mad(_1134, 0.87846863f, (_1133 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1156 = min(max(log2(mad(_1135, 0.879143f, mad(_1134, 0.0784336f, (_1133 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1157 = _1154 * 0.060606062f;
    _1158 = _1155 * 0.060606062f;
    _1159 = _1156 * 0.060606062f;
    _1160 = _1157 * _1157;
    _1161 = _1158 * _1158;
    _1162 = _1159 * _1159;
    _1208 = min(0.0f, (-0.0f - (((_1154 * 0.0072181816f) + ((_1160 * 0.4298f) + (((_1160 * _1160) * ((31.96f - (_1154 * 2.4327273f)) + (_1160 * 15.5f))) - ((_1154 * 0.41624245f) * _1160)))) + -0.00232f)));
    _1209 = min(0.0f, (-0.0f - (((_1155 * 0.0072181816f) + ((_1161 * 0.4298f) + (((_1161 * _1161) * ((31.96f - (_1155 * 2.4327273f)) + (_1161 * 15.5f))) - ((_1155 * 0.41624245f) * _1161)))) + -0.00232f)));
    _1210 = min(0.0f, (-0.0f - (((_1156 * 0.0072181816f) + ((_1162 * 0.4298f) + (((_1162 * _1162) * ((31.96f - (_1156 * 2.4327273f)) + (_1162 * 15.5f))) - ((_1156 * 0.41624245f) * _1162)))) + -0.00232f)));
    _1211 = -0.0f - _1208;
    _1212 = -0.0f - _1209;
    _1213 = -0.0f - _1210;
    _1214 = dot(float3(_1211, _1212, _1213), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1231 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1232 = -0.79999995f / _1231;
      _1233 = -1.2f / _1231;
      _1234 = 0.20000005f / _1231;
      _1240 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1243 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1250 = (_1232 + 1.4f) + (_1243 * (-0.39999998f - _1232));
      _1251 = (_1233 + 1.6f) + (_1243 * (-0.6f - _1233));
      _1252 = (_1234 + 0.9f) + (_1243 * (0.5f - _1234));
      _1269 = (lerp(_1251, 1.2f, _1240));  // [sem: blended]
      _1270 = (lerp(_1250, 1.0f, _1240));  // [sem: blended]
      _1271 = (lerp(_1252, 1.4f, _1240));  // [sem: blended]
    } else {
      _1269 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1270 = 1.0f;  // [sem: blended]
      _1271 = 1.4f;  // [sem: blended]
    }
    _1281 = 1.0f - _1269;
    _1306 = ((exp2(log2(((saturate((_1208 * _1208) * _1211) * _1281) + _1269) * _1211) * _1270) - _1214) * _1271) + _1214;
    _1307 = ((exp2(log2(((saturate((_1209 * _1209) * _1212) * _1281) + _1269) * _1212) * _1270) - _1214) * _1271) + _1214;
    _1308 = ((exp2(log2(((saturate((_1210 * _1210) * _1213) * _1281) + _1269) * _1213) * _1270) - _1214) * _1271) + _1214;
    _1327 = saturate(exp2(log2(mad(_1308, -0.09902974f, mad(_1307, -0.09802088f, (_1306 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1328 = saturate(exp2(log2(mad(_1308, -0.098961174f, mad(_1307, 1.1519032f, (_1306 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1329 = saturate(exp2(log2(mad(_1308, 1.1510737f, mad(_1307, -0.09804345f, (_1306 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1335 = 1.0f - abs(_etcParams.w);
      _1339 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1340 = (_1335 * _1327) + _1339;
      _1341 = (_1335 * _1328) + _1339;
      _1342 = (_1335 * _1329) + _1339;
      if (_colorGradingParams.w > 0.0f) {
        _1347 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1364 = (((max(0.0f, (1.0f - _1340)) - _1340) * _1347) + _1340);
        _1365 = (((max(0.0f, (1.0f - _1341)) - _1341) * _1347) + _1341);
        _1366 = (((max(0.0f, (1.0f - _1342)) - _1342) * _1347) + _1342);
      } else {
        _1364 = _1340;
        _1365 = _1341;
        _1366 = _1342;
      }
      _1372 = _userImageAdjust.y + 1.0f;
      _1376 = _userImageAdjust.x + 0.5f;
      _1377 = ((_1364 + -0.5f) * _1372) + _1376;
      _1378 = ((_1365 + -0.5f) * _1372) + _1376;
      _1379 = ((_1366 + -0.5f) * _1372) + _1376;
      _1409 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1420 = exp2(log2(saturate(mad(_colorBlind0.z, _1379, mad(_colorBlind0.y, _1378, (_colorBlind0.x * _1377))))) * _1409);
      _1421 = exp2(log2(saturate(mad(_colorBlind1.z, _1379, mad(_colorBlind1.y, _1378, (_colorBlind1.x * _1377))))) * _1409);
      _1422 = exp2(log2(saturate(mad(_colorBlind2.z, _1379, mad(_colorBlind2.y, _1378, (_colorBlind2.x * _1377))))) * _1409);
    } else {
      _1420 = _1327;
      _1421 = _1328;
      _1422 = _1329;
    }
  } else {
    _1420 = _1048;
    _1421 = _1049;
    _1422 = _1050;
  }
  if (_etcParams.y > 1.0f) {
    _1431 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1432 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1436 = saturate(1.0f - (dot(float2(_1431, _1432), float2(_1431, _1432)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1441 = (_1436 * _1420);
    _1442 = (_1436 * _1421);
    _1443 = (_1436 * _1422);
  } else {
    _1441 = _1420;
    _1442 = _1421;
    _1443 = _1422;
  }
  if (_1067 && (_etcParams.z > 0.0f)) {
    _1473 = select((_1441 <= 0.0031308f), (_1441 * 12.92f), (((pow(_1441, 0.41666666f)) * 1.055f) + -0.055f));
    _1474 = select((_1442 <= 0.0031308f), (_1442 * 12.92f), (((pow(_1442, 0.41666666f)) * 1.055f) + -0.055f));
    _1475 = select((_1443 <= 0.0031308f), (_1443 * 12.92f), (((pow(_1443, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1473 = _1441;
    _1474 = _1442;
    _1475 = _1443;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1480 = (float)((uint)((uint)(_1051)));
    if (!(_1480 < _viewDir.w)) {
      if (!(_1480 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1489 = _1473;
        _1490 = _1474;
        _1491 = _1475;
      } else {
        _1489 = 0.0f;
        _1490 = 0.0f;
        _1491 = 0.0f;
      }
    } else {
      _1489 = 0.0f;
      _1490 = 0.0f;
      _1491 = 0.0f;
    }
  } else {
    _1489 = _1473;
    _1490 = _1474;
    _1491 = _1475;
  }
  SV_Target.x = _1489;
  SV_Target.y = _1490;
  SV_Target.z = _1491;
  SV_Target.w = _1064;
  return SV_Target;
}
