struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};

typedef BindlessParameters_PostProcessTransition_CD BindlessParameters_PostProcessTransition_CD_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_CD_t> BindlessParameters_PostProcessTransition_CD[] : register(b0, space100);

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
  float _25;
  float4 _28;
  int _32;
  float _40;
  bool _41;
  float _42;
  float _44;
  float _143;
  float _216;
  float _289;
  float _536;
  float _619;
  float _858;
  float _859;
  float _860;
  float _925;
  float _926;
  float _927;
  float _941;
  float _1146;
  float _1147;
  float _1148;
  float _1241;
  float _1242;
  float _1243;
  float _1297;
  float _1298;
  float _1299;
  float _1318;
  float _1319;
  float _1320;
  float _1350;
  float _1351;
  float _1352;
  float _1366;
  float _1367;
  float _1368;
  float _47;
  int _55;
  int _63;
  float4 _70;
  float _74;
  float _76;
  float _78;
  float _79;
  float _81;
  float _85;
  float _86;
  float _88;
  float _89;
  float _90;
  float _91;
  float _92;
  float _102;
  float _103;
  float _104;
  float _114;
  float _115;
  float _118;
  float _130;
  float _131;
  float _152;
  float _153;
  float _154;
  float _156;
  float _158;
  float _162;
  float _163;
  float _164;
  float _165;
  float _175;
  float _176;
  float _177;
  float _187;
  float _188;
  float _191;
  float _203;
  float _204;
  float _225;
  float _226;
  float _227;
  float _229;
  float _231;
  float _235;
  float _236;
  float _237;
  float _238;
  float _248;
  float _249;
  float _250;
  float _260;
  float _261;
  float _264;
  float _276;
  float _277;
  float _298;
  float _299;
  float _300;
  int _301;
  int _309;
  float _312;
  float _315;
  float _317;
  float _342;
  float _343;
  float _344;
  int _345;
  int _353;
  float _356;
  float _359;
  float _361;
  float _386;
  float _387;
  float _388;
  int _389;
  int _397;
  float _400;
  float _403;
  float _405;
  float _430;
  float _431;
  float _432;
  float4 _437;
  float _454;
  float _463;
  float _471;
  float _473;
  float _474;
  float _475;
  float _485;
  float _486;
  float _487;
  float _496;
  float _497;
  float _504;
  bool _506;
  float _509;
  float _523;
  float _524;
  float _545;
  float _546;
  float _549;
  float _553;
  float _554;
  float _555;
  float _557;
  float _558;
  float _568;
  float _569;
  float _570;
  float _579;
  float _580;
  float _587;
  bool _589;
  float _592;
  float _606;
  float _607;
  float _628;
  float _629;
  float _632;
  float _640;
  float _647;
  float _648;
  float _649;
  float _650;
  float _653;
  float _657;
  float _664;
  float _668;
  float _669;
  float _670;
  float _673;
  float _676;
  float _680;
  float _681;
  float _683;
  float _684;
  float _693;
  float _694;
  float _697;
  float _703;
  float _704;
  float _706;
  float _707;
  float _709;
  float _712;
  int _715;
  int _723;
  float4 _730;
  int _732;
  int _740;
  float _749;
  float _750;
  float _756;
  float _761;
  float _775;
  float _777;
  float _784;
  float _785;
  float _786;
  float _787;
  float _797;
  float _799;
  int _803;
  int _811;
  float4 _818;
  float _831;
  float _838;
  float _853;
  float _876;
  float _877;
  float _878;
  float _879;
  float _892;
  float _893;
  float _894;
  float _895;
  float _899;
  float _909;
  float _910;
  float _911;
  float _914;
  uint _928;
  bool _944;
  float _950;
  float _999;
  float _1000;
  float _1001;
  float _1003;
  float _1010;
  float _1011;
  float _1012;
  float _1031;
  float _1032;
  float _1033;
  float _1034;
  float _1035;
  float _1036;
  float _1037;
  float _1038;
  float _1039;
  float _1085;
  float _1086;
  float _1087;
  float _1088;
  float _1089;
  float _1090;
  float _1091;
  float _1108;
  float _1109;
  float _1110;
  float _1111;
  float _1117;
  float _1120;
  float _1127;
  float _1128;
  float _1129;
  float _1158;
  float _1183;
  float _1184;
  float _1185;
  float _1204;
  float _1205;
  float _1206;
  float _1212;
  float _1216;
  float _1217;
  float _1218;
  float _1219;
  float _1224;
  float _1249;
  float _1253;
  float _1254;
  float _1255;
  float _1256;
  float _1286;
  float _1308;
  float _1309;
  float _1313;
  float _1357;
  _25 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  _41 = (_40 > 0.5f);
  _42 = _40 * 2.0f;
  _44 = select(_41, (2.0f - _42), _42);
  if (_44 > 0.0f) {
    _47 = _25 * TEXCOORD.x;
    _55 = WaveReadLaneFirst(_materialIndex);
    _63 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterNoiseTex);
    _70 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_63 < (uint)65000), _63, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_47 * 4.0f) - ((_44 * TEXCOORD.x) * rsqrt(TEXCOORD.x * TEXCOORD.x))), (TEXCOORD.y * 4.0f)));
    _74 = (_70.x * 0.01f) + -0.004980392f;
    _76 = (_70.y * 0.01f) + -0.004980392f;
    _78 = (_70.y * 0.04f) + -0.019921567f;
    _79 = saturate(_44);  // [sem: _44_sat]
    _81 = saturate(_79 * 2.0f);  // [sem: expr_sat]
    _85 = TEXCOORD.x + -0.5f;
    _86 = select(_41, -1.0f, 1.0f) + _85;
    _88 = TEXCOORD.y + -0.5f;
    _89 = (_74 * _81) + _88;
    _90 = ((_78 * _81) + _86) * _25;
    _91 = _90 * 32.0f;
    _92 = _89 * 32.0f;
    _102 = frac(sin(dot(float2((ceil(_91 + 0.5f) * 0.125f), (ceil(_92 + 0.5f) * 0.125f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _103 = round(_91);
    _104 = round(_92);
    _114 = saturate(((0.25f - (_79 * 3.0f)) + (sqrt((_104 * _104) + (_103 * _103)) * 0.03125f)) * 0.8f);  // [sem: expr_sat]
    _115 = 1.0f - _114;
    if (!(!(_115 >= 0.001f))) {
      _118 = _115 * -9.6875f;
      _130 = _114 * 0.16666667f;
      _131 = _115 * 0.3125f;
      _143 = ((float)((bool)((abs((_131 * ((_90 * (_118 + 32.0f)) - _103)) * (1.0f - frac(_102 * 7.0f))) < _130) && (abs((_131 * ((_89 * (_118 + 32.0f)) - _104)) * frac(_102 * 3.0f)) < _130))));
    } else {
      _143 = 1.0f;
    }
    _152 = saturate(1.0f - abs((saturate(_115 - ((_102 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _153 = _152 * _152;
    _154 = _153 * _153;
    _156 = saturate(_44 + -0.083333336f);  // [sem: expr_sat]
    _158 = saturate(_156 * 2.0f);  // [sem: expr_sat]
    _162 = (_158 * _74) + _88;
    _163 = ((_158 * _78) + _86) * _25;
    _164 = _163 * 16.0f;
    _165 = _162 * 16.0f;
    _175 = frac(sin(dot(float2((ceil(_164 + 0.5f) * 0.25f), (ceil(_165 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _176 = round(_164);
    _177 = round(_165);
    _187 = saturate(((0.25f - (_156 * 3.0f)) + (sqrt((_177 * _177) + (_176 * _176)) * 0.0625f)) * 0.8f);  // [sem: expr_sat]
    _188 = 1.0f - _187;
    if (!(!(_188 >= 0.001f))) {
      _191 = _188 * -4.6875f;
      _203 = _187 * 0.16666667f;
      _204 = _188 * 0.3125f;
      _216 = ((float)((bool)((abs((_204 * ((_163 * (_191 + 16.0f)) - _176)) * (1.0f - frac(_175 * 7.0f))) < _203) && (abs((_204 * ((_162 * (_191 + 16.0f)) - _177)) * frac(_175 * 3.0f)) < _203))));
    } else {
      _216 = 1.0f;
    }
    _225 = saturate(1.0f - abs((saturate(_188 - ((_175 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _226 = _225 * _225;
    _227 = _226 * _226;
    _229 = saturate(_44 + -0.16666667f);  // [sem: expr_sat]
    _231 = saturate(_229 * 2.0f);  // [sem: expr_sat]
    _235 = (_231 * _74) + _88;
    _236 = ((_231 * _78) + _86) * _25;
    _237 = _236 * 10.666667f;
    _238 = _235 * 10.666667f;
    _248 = frac(sin(dot(float2((ceil(_237 + 0.5f) * 0.375f), (ceil(_238 + 0.5f) * 0.375f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _249 = round(_237);
    _250 = round(_238);
    _260 = saturate(((0.25f - (_229 * 3.0f)) + (sqrt((_250 * _250) + (_249 * _249)) * 0.09375f)) * 0.8f);  // [sem: expr_sat]
    _261 = 1.0f - _260;
    if (!(!(_261 >= 0.001f))) {
      _264 = _261 * -3.0208335f;
      _276 = _260 * 0.16666667f;
      _277 = _261 * 0.3125f;
      _289 = ((float)((bool)((abs((_277 * ((_236 * (_264 + 10.666667f)) - _249)) * (1.0f - frac(_248 * 7.0f))) < _276) && (abs((_277 * ((_235 * (_264 + 10.666667f)) - _250)) * frac(_248 * 3.0f)) < _276))));
    } else {
      _289 = 1.0f;
    }
    _298 = saturate(1.0f - abs((saturate(_261 - ((_248 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _299 = _298 * _298;
    _300 = _299 * _299;
    _301 = WaveReadLaneFirst(_materialIndex);
    _309 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_301 < (uint)170000), _301, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterBackgroundColor);
    _312 = (float)((uint)((uint)(((uint)((uint)(_309)) >> 16) & 255)));
    _315 = (float)((uint)((uint)(((uint)((uint)(_309)) >> 8) & 255)));
    _317 = (float)((uint)((uint)(_309 & 255)));
    _342 = select(((_312 * 0.003921569f) < 0.04045f), (_312 * 0.000303527f), exp2(log2((_312 * 0.003717127f) + 0.052132703f) * 2.4f));
    _343 = select(((_315 * 0.003921569f) < 0.04045f), (_315 * 0.000303527f), exp2(log2((_315 * 0.003717127f) + 0.052132703f) * 2.4f));
    _344 = select(((_317 * 0.003921569f) < 0.04045f), (_317 * 0.000303527f), exp2(log2((_317 * 0.003717127f) + 0.052132703f) * 2.4f));
    _345 = WaveReadLaneFirst(_materialIndex);
    _353 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_345 < (uint)170000), _345, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardColor);
    _356 = (float)((uint)((uint)(((uint)((uint)(_353)) >> 16) & 255)));
    _359 = (float)((uint)((uint)(((uint)((uint)(_353)) >> 8) & 255)));
    _361 = (float)((uint)((uint)(_353 & 255)));
    _386 = select(((_356 * 0.003921569f) < 0.04045f), (_356 * 0.000303527f), exp2(log2((_356 * 0.003717127f) + 0.052132703f) * 2.4f));
    _387 = select(((_359 * 0.003921569f) < 0.04045f), (_359 * 0.000303527f), exp2(log2((_359 * 0.003717127f) + 0.052132703f) * 2.4f));
    _388 = select(((_361 * 0.003921569f) < 0.04045f), (_361 * 0.000303527f), exp2(log2((_361 * 0.003717127f) + 0.052132703f) * 2.4f));
    _389 = WaveReadLaneFirst(_materialIndex);
    _397 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_389 < (uint)170000), _389, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._sceneTintColor);
    _400 = (float)((uint)((uint)(((uint)((uint)(_397)) >> 16) & 255)));
    _403 = (float)((uint)((uint)(((uint)((uint)(_397)) >> 8) & 255)));
    _405 = (float)((uint)((uint)(_397 & 255)));
    _430 = select(((_400 * 0.003921569f) < 0.04045f), (_400 * 0.000303527f), exp2(log2((_400 * 0.003717127f) + 0.052132703f) * 2.4f));
    _431 = select(((_403 * 0.003921569f) < 0.04045f), (_403 * 0.000303527f), exp2(log2((_403 * 0.003717127f) + 0.052132703f) * 2.4f));
    _432 = select(((_405 * 0.003921569f) < 0.04045f), (_405 * 0.000303527f), exp2(log2((_405 * 0.003717127f) + 0.052132703f) * 2.4f));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _437 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_74 + TEXCOORD.x), (_76 + TEXCOORD.y)));
    _454 = saturate(_44 * 4.0f);  // [sem: expr_sat]
    if (_44 > 0.2f) {
      _463 = _25 * _85;
      _471 = ((((0.5f - TEXCOORD.y) + _463) * 0.70710677f) + _78) + _74;
      _473 = (((_463 + _88) * 0.70710677f) + _74) + _76;
      _474 = _471 * 16.0f;
      _475 = _473 * 16.0f;
      _485 = frac(sin(dot(float2((ceil(_474 + 0.5f) * 0.25f), (ceil(_475 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _486 = round(_474);
      _487 = round(_475);
      _496 = saturate(((0.8f - (_44 * 0.8f)) + (sqrt((_487 * _487) + (_486 * _486)) * 0.0625f)) * 1.25f);  // [sem: expr_sat]
      _497 = 1.0f - _496;
      if (!(!(_497 >= 0.001f))) {
        _504 = sin((_time.x * _485) + 0.8f);
        _506 = (frac(_485) > 0.5f);
        _509 = _497 * -3.0f;
        _523 = _496 * 0.16666667f;
        _524 = _497 * 0.2f;
        _536 = ((float)((bool)((abs(((1.0f - frac(_485 * 7.0f)) * _524) * (((_471 * (_509 + 16.0f)) - _486) + select(_506, _504, 0.0f))) < _523) && (abs((frac(_485 * 3.0f) * _524) * (((_473 * (_509 + 16.0f)) - _487) + select(_506, 0.0f, _504))) < _523))));
      } else {
        _536 = 1.0f;
      }
      _545 = saturate(1.0f - abs((saturate(_497 - ((_485 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _546 = _545 * _545;
      _549 = (_536 * 0.29999995f) * (_546 * _546);
      _553 = (_549 * _342) + _342;
      _554 = (_549 * _343) + _343;
      _555 = (_549 * _344) + _344;
      _557 = _471 * 8.0f;
      _558 = _473 * 8.0f;
      _568 = frac(sin(dot(float2((ceil(_557 + 0.5f) * 0.5f), (ceil(_558 + 0.5f) * 0.5f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _569 = round(_557);
      _570 = round(_558);
      _579 = saturate(((1.25f - (_44 * 1.425f)) + (sqrt((_570 * _570) + (_569 * _569)) * 0.125f)) * 0.8f);  // [sem: expr_sat]
      _580 = 1.0f - _579;
      if (!(!(_580 >= 0.001f))) {
        _587 = sin((_time.x * _568) + 1.25f);
        _589 = (frac(_568) > 0.5f);
        _592 = _580 * -2.1875f;
        _606 = _579 * 0.16666667f;
        _607 = _580 * 0.3125f;
        _619 = ((float)((bool)((abs(((1.0f - frac(_568 * 7.0f)) * _607) * (((_471 * (_592 + 8.0f)) - _569) + select(_589, _587, 0.0f))) < _606) && (abs((frac(_568 * 3.0f) * _607) * (((_473 * (_592 + 8.0f)) - _570) + select(_589, 0.0f, _587))) < _606))));
      } else {
        _619 = 1.0f;
      }
      _628 = saturate(1.0f - abs((saturate(_580 - ((_568 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _629 = _628 * _628;
      _632 = (_619 * 0.6f) * (_629 * _629);
      _640 = _88 * _88;
      _647 = 1.0f - (exp2(log2(sqrt((_463 * _463) + _640)) * 1.5f) * 0.75f);
      _648 = ((_632 * _553) + _553) * _647;
      _649 = ((_632 * _554) + _554) * _647;
      _650 = ((_632 * _555) + _555) * _647;
      _653 = saturate((_44 + -0.5f) * 2.0f);  // [sem: expr_sat]
      _657 = (_time.x * 0.015707964f) + 0.7853982f;
      _664 = saturate((exp2(log2(1.0f - _653) * 2.5f) + -0.05f) * 1.1111112f);  // [sem: expr_sat]
      _668 = (_664 * _664) * (3.0f - (_664 * 2.0f));
      _669 = _668 * 0.5f;
      _670 = 1.0f - _669;
      _673 = _668 * -0.25f;
      _676 = (_25 + -1.0f) * 0.5f;
      _680 = ((-0.5f - _673) + (_670 * _47)) - (_670 * _676);
      _681 = cos(_657);
      _683 = ((_670 * TEXCOORD.y) - _673) + -0.5f;
      _684 = sin(_657);
      _693 = (_time.x * 0.03141593f) + 1.5707964f;
      _694 = 0.6f - _669;
      _697 = _668 * 0.25f;
      _703 = ((_697 + -0.3f) + (_694 * _47)) - (_694 * _676);
      _704 = cos(_693);
      _706 = ((_694 * TEXCOORD.y) - (-0.2f - _697)) + -0.5f;
      _707 = sin(_693);
      _709 = (_703 * _704) - (_706 * _707);
      _712 = (_703 * _707) + (_706 * _704);
      _715 = WaveReadLaneFirst(_materialIndex);
      _723 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_715 < (uint)170000), _715, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _730 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_723 < (uint)65000), _723, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(((0.5f - (_683 * _684)) + (_680 * _681)), (((_683 * _681) + 0.5f) + (_680 * _684))));
      _732 = WaveReadLaneFirst(_materialIndex);
      _740 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_732 < (uint)170000), _732, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _749 = abs(_709);
      _750 = _749 * 120.0f;
      _756 = abs(_712);
      _761 = _756 * 120.0f;
      // [sem: expr_sat]
      _775 = saturate((saturate(((saturate(_761 + -56.0f) * saturate(60.0f - _761)) * saturate(10.0f - (_749 * 20.0f))) + ((saturate(_750 + -54.0f) * saturate(58.0f - _750)) * saturate(10.0f - (_756 * 20.0f)))) * 0.5f) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_740 < (uint)65000), _740, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((_709 + 0.5f), (_712 + 0.5f))))).x));
      _777 = (_730.x * _730.x) * _653;
      _784 = (_777 * (_386 - _648)) + _648;
      _785 = (_777 * (_387 - _649)) + _649;
      _786 = (_777 * (_388 - _650)) + _650;
      _787 = _775 * _653;
      _797 = abs(_85);
      _799 = 1.0f - (_797 * 0.8f);
      _803 = WaveReadLaneFirst(_materialIndex);
      _811 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_803 < (uint)170000), _803, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._lensDirtTex);
      _818 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_811 < (uint)65000), _811, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_47, TEXCOORD.y));
      _831 = saturate(_797 * 2.0f) * exp2(log2(saturate(sqrt(_640 + (_85 * _85)))) * 6.0f);  // [sem: expr_sat]
      _838 = saturate(((_619 + _536) + _730.x) + _775);  // [sem: expr_sat]
      _853 = max(0.001f, _exposure0.x);
      _858 = ((((((((_787 * (_386 - _784)) + _784) * _799) - _342) + (_831 * _818.x)) * _838) + _342) / _853);
      _859 = ((((((((_787 * (_387 - _785)) + _785) * _799) - _343) + (_831 * _818.y)) * _838) + _343) / _853);
      _860 = ((((((((_787 * (_388 - _786)) + _786) * _799) - _344) + (_831 * _818.z)) * _838) + _344) / _853);
    } else {
      _858 = _342;
      _859 = _343;
      _860 = _344;
    }
    _876 = 1.0f - ((_300 * _300) * (_289 * 0.5f));
    _877 = ((((_437.x * _430) - _858) * _289) + _858) * _876;
    _878 = ((((_437.y * _431) - _859) * _289) + _859) * _876;
    _879 = ((((_437.z * _432) - _860) * _289) + _860) * _876;
    _892 = 1.0f - ((_227 * _227) * (_216 * 0.5f));
    _893 = ((((_437.x * (((_430 + -1.0f) * 0.5f) + 1.0f)) - _877) * _216) + _877) * _892;
    _894 = ((((_437.y * (((_431 + -1.0f) * 0.5f) + 1.0f)) - _878) * _216) + _878) * _892;
    _895 = ((((_437.z * (((_432 + -1.0f) * 0.5f) + 1.0f)) - _879) * _216) + _879) * _892;
    _899 = 1.0f - ((_154 * _154) * (_143 * 0.5f));
    _909 = (((((_454 * _28.x) + _28.x) * _899) - _893) * _143) + _893;
    _910 = (((((_454 * _28.y) + _28.y) * _899) - _894) * _143) + _894;
    _911 = (((((_454 * _28.z) + _28.z) * _899) - _895) * _143) + _895;
    _914 = saturate((_44 * 15.0f) + -14.0f);  // [sem: expr_sat]
    _925 = (lerp(_909, _858, _914));  // [sem: blended]
    _926 = (lerp(_910, _859, _914));  // [sem: blended]
    _927 = (lerp(_911, _860, _914));  // [sem: blended]
  } else {
    _925 = _28.x;  // [sem: blended]
    _926 = _28.y;  // [sem: blended]
    _927 = _28.z;  // [sem: blended]
  }
  _928 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _941 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _928, 0)))).x) & 127)))) + 0.5f);
  } else {
    _941 = 1.0f;
  }
  _944 = (_localToneMappingParams.w > 0.0f);
  if (_944) {
    _950 = _userImageAdjust.z * _exposure0.x;
    _999 = exp2(log2(max(0.0f, (((_950 * max(0.0f, (((_925 * 1.70505f) - (_926 * 0.62179f)) - (_927 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1000 = exp2(log2(max(0.0f, (((max(0.0f, (((_926 * 1.1408f) - (_925 * 0.13026f)) - (_927 * 0.01055f))) * _950) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1001 = exp2(log2(max(0.0f, (((max(0.0f, (((_925 * -0.024f) - (_926 * 0.12897f)) + (_927 * 1.15297f))) * _950) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1003 = dot(float3(_999, _1000, _1001), float3(0.212671f, 0.71516f, 0.072169f));
    _1010 = ((_999 - _1003) * _powerParams.w) + _1003;
    _1011 = ((_1000 - _1003) * _powerParams.w) + _1003;
    _1012 = ((_1001 - _1003) * _powerParams.w) + _1003;
    _1031 = min(max(log2(mad(_1012, 0.079223745f, mad(_1011, 0.0784336f, (_1010 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1032 = min(max(log2(mad(_1012, 0.07916613f, mad(_1011, 0.87846863f, (_1010 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1033 = min(max(log2(mad(_1012, 0.879143f, mad(_1011, 0.0784336f, (_1010 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1034 = _1031 * 0.060606062f;
    _1035 = _1032 * 0.060606062f;
    _1036 = _1033 * 0.060606062f;
    _1037 = _1034 * _1034;
    _1038 = _1035 * _1035;
    _1039 = _1036 * _1036;
    _1085 = min(0.0f, (-0.0f - (((_1031 * 0.0072181816f) + ((_1037 * 0.4298f) + (((_1037 * _1037) * ((31.96f - (_1031 * 2.4327273f)) + (_1037 * 15.5f))) - ((_1031 * 0.41624245f) * _1037)))) + -0.00232f)));
    _1086 = min(0.0f, (-0.0f - (((_1032 * 0.0072181816f) + ((_1038 * 0.4298f) + (((_1038 * _1038) * ((31.96f - (_1032 * 2.4327273f)) + (_1038 * 15.5f))) - ((_1032 * 0.41624245f) * _1038)))) + -0.00232f)));
    _1087 = min(0.0f, (-0.0f - (((_1033 * 0.0072181816f) + ((_1039 * 0.4298f) + (((_1039 * _1039) * ((31.96f - (_1033 * 2.4327273f)) + (_1039 * 15.5f))) - ((_1033 * 0.41624245f) * _1039)))) + -0.00232f)));
    _1088 = -0.0f - _1085;
    _1089 = -0.0f - _1086;
    _1090 = -0.0f - _1087;
    _1091 = dot(float3(_1088, _1089, _1090), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1108 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1109 = -0.79999995f / _1108;
      _1110 = -1.2f / _1108;
      _1111 = 0.20000005f / _1108;
      _1117 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1120 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1127 = (_1109 + 1.4f) + (_1120 * (-0.39999998f - _1109));
      _1128 = (_1110 + 1.6f) + (_1120 * (-0.6f - _1110));
      _1129 = (_1111 + 0.9f) + (_1120 * (0.5f - _1111));
      _1146 = (lerp(_1128, 1.2f, _1117));  // [sem: blended]
      _1147 = (lerp(_1127, 1.0f, _1117));  // [sem: blended]
      _1148 = (lerp(_1129, 1.4f, _1117));  // [sem: blended]
    } else {
      _1146 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1147 = 1.0f;  // [sem: blended]
      _1148 = 1.4f;  // [sem: blended]
    }
    _1158 = 1.0f - _1146;
    _1183 = ((exp2(log2(((saturate((_1085 * _1085) * _1088) * _1158) + _1146) * _1088) * _1147) - _1091) * _1148) + _1091;
    _1184 = ((exp2(log2(((saturate((_1086 * _1086) * _1089) * _1158) + _1146) * _1089) * _1147) - _1091) * _1148) + _1091;
    _1185 = ((exp2(log2(((saturate((_1087 * _1087) * _1090) * _1158) + _1146) * _1090) * _1147) - _1091) * _1148) + _1091;
    _1204 = saturate(exp2(log2(mad(_1185, -0.09902974f, mad(_1184, -0.09802088f, (_1183 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1205 = saturate(exp2(log2(mad(_1185, -0.098961174f, mad(_1184, 1.1519032f, (_1183 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1206 = saturate(exp2(log2(mad(_1185, 1.1510737f, mad(_1184, -0.09804345f, (_1183 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1212 = 1.0f - abs(_etcParams.w);
      _1216 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1217 = (_1212 * _1204) + _1216;
      _1218 = (_1212 * _1205) + _1216;
      _1219 = (_1212 * _1206) + _1216;
      if (_colorGradingParams.w > 0.0f) {
        _1224 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1241 = (((max(0.0f, (1.0f - _1217)) - _1217) * _1224) + _1217);
        _1242 = (((max(0.0f, (1.0f - _1218)) - _1218) * _1224) + _1218);
        _1243 = (((max(0.0f, (1.0f - _1219)) - _1219) * _1224) + _1219);
      } else {
        _1241 = _1217;
        _1242 = _1218;
        _1243 = _1219;
      }
      _1249 = _userImageAdjust.y + 1.0f;
      _1253 = _userImageAdjust.x + 0.5f;
      _1254 = ((_1241 + -0.5f) * _1249) + _1253;
      _1255 = ((_1242 + -0.5f) * _1249) + _1253;
      _1256 = ((_1243 + -0.5f) * _1249) + _1253;
      _1286 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1297 = exp2(log2(saturate(mad(_colorBlind0.z, _1256, mad(_colorBlind0.y, _1255, (_colorBlind0.x * _1254))))) * _1286);
      _1298 = exp2(log2(saturate(mad(_colorBlind1.z, _1256, mad(_colorBlind1.y, _1255, (_colorBlind1.x * _1254))))) * _1286);
      _1299 = exp2(log2(saturate(mad(_colorBlind2.z, _1256, mad(_colorBlind2.y, _1255, (_colorBlind2.x * _1254))))) * _1286);
    } else {
      _1297 = _1204;
      _1298 = _1205;
      _1299 = _1206;
    }
  } else {
    _1297 = _925;
    _1298 = _926;
    _1299 = _927;
  }
  if (_etcParams.y > 1.0f) {
    _1308 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1309 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1313 = saturate(1.0f - (dot(float2(_1308, _1309), float2(_1308, _1309)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1318 = (_1313 * _1297);
    _1319 = (_1313 * _1298);
    _1320 = (_1313 * _1299);
  } else {
    _1318 = _1297;
    _1319 = _1298;
    _1320 = _1299;
  }
  if (_944 && (_etcParams.z > 0.0f)) {
    _1350 = select((_1318 <= 0.0031308f), (_1318 * 12.92f), (((pow(_1318, 0.41666666f)) * 1.055f) + -0.055f));
    _1351 = select((_1319 <= 0.0031308f), (_1319 * 12.92f), (((pow(_1319, 0.41666666f)) * 1.055f) + -0.055f));
    _1352 = select((_1320 <= 0.0031308f), (_1320 * 12.92f), (((pow(_1320, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1350 = _1318;
    _1351 = _1319;
    _1352 = _1320;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1357 = (float)((uint)((uint)(_928)));
    if (!(_1357 < _viewDir.w)) {
      if (!(_1357 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1366 = _1350;
        _1367 = _1351;
        _1368 = _1352;
      } else {
        _1366 = 0.0f;
        _1367 = 0.0f;
        _1368 = 0.0f;
      }
    } else {
      _1366 = 0.0f;
      _1367 = 0.0f;
      _1368 = 0.0f;
    }
  } else {
    _1366 = _1350;
    _1367 = _1351;
    _1368 = _1352;
  }
  SV_Target.x = _1366;
  SV_Target.y = _1367;
  SV_Target.z = _1368;
  SV_Target.w = _941;
  return SV_Target;
}
