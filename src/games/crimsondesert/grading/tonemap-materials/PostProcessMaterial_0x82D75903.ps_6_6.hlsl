struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
};

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  float _23;
  float4 _26;
  float _32;
  float _35;
  float _38;
  float _46;
  float _54;
  float _62;
  int _65;
  float _73;
  bool _74;
  float _75;
  float _77;
  bool _176;
  float _179;
  bool _250;
  float _253;
  float _325;
  float _593;
  float _675;
  float _918;
  float _919;
  float _920;
  float _1006;
  float _1007;
  float _1008;
  float _1022;
  float _1227;
  float _1228;
  float _1229;
  float _1322;
  float _1323;
  float _1324;
  float _1378;
  float _1379;
  float _1380;
  float _1399;
  float _1400;
  float _1401;
  float _1431;
  float _1432;
  float _1433;
  float _1447;
  float _1448;
  float _1449;
  float _80;
  int _83;
  int _91;
  float4 _105;
  float _109;
  float _111;
  float _113;
  float _114;
  float _116;
  float _117;
  float _119;
  float _120;
  float _122;
  float _125;
  float _126;
  float _127;
  float _137;
  float _138;
  float _139;
  float _149;
  float _150;
  float _154;
  float _155;
  float _156;
  float _188;
  float _189;
  float _190;
  float _192;
  float _194;
  float _196;
  float _199;
  float _200;
  float _201;
  float _211;
  float _212;
  float _213;
  float _223;
  float _224;
  float _228;
  float _229;
  float _230;
  float _262;
  float _263;
  float _264;
  float _266;
  float _268;
  float _270;
  float _273;
  float _274;
  float _275;
  float _285;
  float _286;
  float _287;
  float _297;
  float _298;
  float _302;
  float _303;
  float _304;
  float _334;
  float _335;
  float _336;
  int _339;
  int _347;
  float _350;
  float _353;
  float _355;
  float _364;
  float _373;
  float _382;
  int _385;
  int _393;
  float _396;
  float _399;
  float _401;
  float _410;
  float _419;
  float _428;
  int _431;
  int _439;
  float _442;
  float _445;
  float _447;
  float _456;
  float _465;
  float _474;
  float4 _479;
  float _485;
  float _488;
  float _491;
  float _500;
  float _509;
  float _518;
  float _521;
  float _526;
  float _530;
  float _531;
  float _532;
  float _542;
  float _543;
  float _544;
  float _554;
  float _555;
  float _562;
  bool _564;
  float _566;
  float _567;
  float _572;
  float _602;
  float _603;
  float _606;
  float _608;
  float _610;
  float _612;
  float _613;
  float _614;
  float _624;
  float _625;
  float _626;
  float _636;
  float _637;
  float _644;
  bool _646;
  float _648;
  float _649;
  float _654;
  float _684;
  float _685;
  float _688;
  float _689;
  float _697;
  float _700;
  float _703;
  float _706;
  float _709;
  float _713;
  float _720;
  float _724;
  float _725;
  float _726;
  float _727;
  float _729;
  float _734;
  float _735;
  float _738;
  float _739;
  float _741;
  float _742;
  float _744;
  float _748;
  float _749;
  float _751;
  float _752;
  float _755;
  float _758;
  int _761;
  int _769;
  float4 _784;
  int _788;
  int _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _833;
  float _835;
  float _838;
  float _841;
  float _844;
  float _845;
  float _846;
  float _848;
  int _851;
  int _859;
  float4 _866;
  float _879;
  float _883;
  float _886;
  float _924;
  float _929;
  float _934;
  float _939;
  float _943;
  float _951;
  float _959;
  float _967;
  float _976;
  float _980;
  float _984;
  float _988;
  float _991;
  uint _1009;
  bool _1025;
  float _1031;
  float _1050;
  float _1066;
  float _1082;
  float _1083;
  float _1087;
  float _1090;
  float _1093;
  float _1100;
  float _1107;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  float _1136;
  float _1152;
  float _1168;
  float _1169;
  float _1170;
  float _1171;
  float _1172;
  float _1189;
  float _1190;
  float _1191;
  float _1192;
  float _1195;
  float _1198;
  float _1202;
  float _1206;
  float _1210;
  float _1230;
  float _1242;
  float _1254;
  float _1266;
  float _1273;
  float _1280;
  float _1287;
  float _1293;
  float _1294;
  float _1296;
  float _1298;
  float _1300;
  float _1305;
  float _1326;
  float _1328;
  float _1331;
  float _1334;
  float _1337;
  float _1343;
  float _1385;
  float _1388;
  float _1394;
  float _1436;
  float _1453;
  float _1457;
  float _1461;
  _23 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = (pow(_26.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_26.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_26.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f);
  _54 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f);
  _62 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f);
  _65 = WaveReadLaneFirst(_materialIndex);
  _73 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_65 < (uint)170000), _65, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  _74 = (_73 > 0.5f);
  _75 = _73 * 2.0f;
  _77 = select(_74, (2.0f - _75), _75);
  if (_77 > 0.0f) {
    _80 = _23 * TEXCOORD.x;
    _83 = WaveReadLaneFirst(_materialIndex);
    _91 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterNoiseTex);
    _105 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_91 < (uint)65000), _91, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_80 * 4.0f) - ((_77 * TEXCOORD.x) * rsqrt(TEXCOORD.x * TEXCOORD.x))), (TEXCOORD.y * 4.0f)));
    _109 = (_105.x * 0.01f) + -0.004980392f;
    _111 = (_105.y * 0.01f) + -0.004980392f;
    _113 = (_105.y * 0.04f) + -0.019921567f;
    _114 = saturate(_77);  // [sem: _77_sat]
    _116 = saturate(_114 * 2.0f);  // [sem: expr_sat]
    _117 = TEXCOORD.x + -0.5f;
    _119 = select(_74, -1.0f, 1.0f) + _117;
    _120 = TEXCOORD.y + -0.5f;
    _122 = (_109 * _116) + _120;
    _125 = ((_113 * _116) + _119) * _23;
    _126 = _125 * 32.0f;
    _127 = _122 * 32.0f;
    _137 = frac(sin(dot(float2((ceil(_126 + 0.5f) * 0.125f), (ceil(_127 + 0.5f) * 0.125f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _138 = round(_126);
    _139 = round(_127);
    _149 = saturate(((0.25f - (_114 * 3.0f)) + (sqrt((_139 * _139) + (_138 * _138)) * 0.03125f)) * 0.8f);  // [sem: expr_sat]
    _150 = 1.0f - _149;
    if (!(!(_150 >= 0.001f))) {
      _154 = _149 * 0.16666667f;
      _155 = _150 * 0.3125f;
      _156 = 32.0f - (_150 * 9.6875f);
      if (abs((((_156 * _125) - _138) * _155) * (1.0f - frac(_137 * 7.0f))) < _154) {
        _176 = (abs((((_156 * _122) - _139) * _155) * frac(_137 * 3.0f)) < _154);
      } else {
        _176 = false;
      }
      _179 = ((float)((bool)(_176)));
    } else {
      _179 = 1.0f;
    }
    _188 = saturate(1.0f - abs((saturate(_150 - ((_137 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _189 = _188 * _188;
    _190 = _189 * _189;
    _192 = saturate(_77 + -0.083333336f);  // [sem: expr_sat]
    _194 = saturate(_192 * 2.0f);  // [sem: expr_sat]
    _196 = (_194 * _109) + _120;
    _199 = ((_194 * _113) + _119) * _23;
    _200 = _199 * 16.0f;
    _201 = _196 * 16.0f;
    _211 = frac(sin(dot(float2((ceil(_200 + 0.5f) * 0.25f), (ceil(_201 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _212 = round(_200);
    _213 = round(_201);
    _223 = saturate(((0.25f - (_192 * 3.0f)) + (sqrt((_213 * _213) + (_212 * _212)) * 0.0625f)) * 0.8f);  // [sem: expr_sat]
    _224 = 1.0f - _223;
    if (!(!(_224 >= 0.001f))) {
      _228 = _223 * 0.16666667f;
      _229 = _224 * 0.3125f;
      _230 = 16.0f - (_224 * 4.6875f);
      if (abs((((_230 * _199) - _212) * _229) * (1.0f - frac(_211 * 7.0f))) < _228) {
        _250 = (abs((((_230 * _196) - _213) * _229) * frac(_211 * 3.0f)) < _228);
      } else {
        _250 = false;
      }
      _253 = ((float)((bool)(_250)));
    } else {
      _253 = 1.0f;
    }
    _262 = saturate(1.0f - abs((saturate(_224 - ((_211 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _263 = _262 * _262;
    _264 = _263 * _263;
    _266 = saturate(_77 + -0.16666667f);  // [sem: expr_sat]
    _268 = saturate(_266 * 2.0f);  // [sem: expr_sat]
    _270 = (_268 * _109) + _120;
    _273 = ((_268 * _113) + _119) * _23;
    _274 = _273 * 10.666667f;
    _275 = _270 * 10.666667f;
    _285 = frac(sin(dot(float2((ceil(_274 + 0.5f) * 0.375f), (ceil(_275 + 0.5f) * 0.375f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _286 = round(_274);
    _287 = round(_275);
    _297 = saturate(((0.25f - (_266 * 3.0f)) + (sqrt((_287 * _287) + (_286 * _286)) * 0.09375f)) * 0.8f);  // [sem: expr_sat]
    _298 = 1.0f - _297;
    if (!(!(_298 >= 0.001f))) {
      _302 = _297 * 0.16666667f;
      _303 = _298 * 0.3125f;
      _304 = 10.666667f - (_298 * 3.0208335f);
      if (abs((((_304 * _273) - _286) * _303) * (1.0f - frac(_285 * 7.0f))) < _302) {
        _325 = ((float)((bool)(abs((((_304 * _270) - _287) * _303) * frac(_285 * 3.0f)) < _302)));
      } else {
        _325 = 0.0f;
      }
    } else {
      _325 = 1.0f;
    }
    _334 = saturate(1.0f - abs((saturate(_298 - ((_285 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _335 = _334 * _334;
    _336 = _335 * _335;
    _339 = WaveReadLaneFirst(_materialIndex);
    _347 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_339 < (uint)170000), _339, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterBackgroundColor);
    _350 = (float)((uint)((uint)(((uint)((uint)(_347)) >> 16) & 255)));
    _353 = (float)((uint)((uint)(((uint)((uint)(_347)) >> 8) & 255)));
    _355 = (float)((uint)((uint)(_347 & 255)));
    _364 = select(((_350 * 0.003921569f) < 0.04045f), (_350 * 0.000303527f), exp2(log2((_350 * 0.003717127f) + 0.052132703f) * 2.4f));
    _373 = select(((_353 * 0.003921569f) < 0.04045f), (_353 * 0.000303527f), exp2(log2((_353 * 0.003717127f) + 0.052132703f) * 2.4f));
    _382 = select(((_355 * 0.003921569f) < 0.04045f), (_355 * 0.000303527f), exp2(log2((_355 * 0.003717127f) + 0.052132703f) * 2.4f));
    _385 = WaveReadLaneFirst(_materialIndex);
    _393 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardColor);
    _396 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 16) & 255)));
    _399 = (float)((uint)((uint)(((uint)((uint)(_393)) >> 8) & 255)));
    _401 = (float)((uint)((uint)(_393 & 255)));
    _410 = select(((_396 * 0.003921569f) < 0.04045f), (_396 * 0.000303527f), exp2(log2((_396 * 0.003717127f) + 0.052132703f) * 2.4f));
    _419 = select(((_399 * 0.003921569f) < 0.04045f), (_399 * 0.000303527f), exp2(log2((_399 * 0.003717127f) + 0.052132703f) * 2.4f));
    _428 = select(((_401 * 0.003921569f) < 0.04045f), (_401 * 0.000303527f), exp2(log2((_401 * 0.003717127f) + 0.052132703f) * 2.4f));
    _431 = WaveReadLaneFirst(_materialIndex);
    _439 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._sceneTintColor);
    _442 = (float)((uint)((uint)(((uint)((uint)(_439)) >> 16) & 255)));
    _445 = (float)((uint)((uint)(((uint)((uint)(_439)) >> 8) & 255)));
    _447 = (float)((uint)((uint)(_439 & 255)));
    _456 = select(((_442 * 0.003921569f) < 0.04045f), (_442 * 0.000303527f), exp2(log2((_442 * 0.003717127f) + 0.052132703f) * 2.4f));
    _465 = select(((_445 * 0.003921569f) < 0.04045f), (_445 * 0.000303527f), exp2(log2((_445 * 0.003717127f) + 0.052132703f) * 2.4f));
    _474 = select(((_447 * 0.003921569f) < 0.04045f), (_447 * 0.000303527f), exp2(log2((_447 * 0.003717127f) + 0.052132703f) * 2.4f));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _479 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_109 + TEXCOORD.x), (_111 + TEXCOORD.y)));
    _485 = (pow(_479.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _488 = (pow(_479.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _491 = (pow(_479.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _500 = exp2(log2(max(0.0f, (_485 + -0.8359375f)) / (18.851562f - (_485 * 18.6875f))) * 6.277395f) * 10000.0f;
    _509 = exp2(log2(max(0.0f, (_488 + -0.8359375f)) / (18.851562f - (_488 * 18.6875f))) * 6.277395f) * 10000.0f;
    _518 = exp2(log2(max(0.0f, (_491 + -0.8359375f)) / (18.851562f - (_491 * 18.6875f))) * 6.277395f) * 10000.0f;
    if (_77 > 0.2f) {
      _521 = _23 * _117;
      _526 = (_113 + (((0.5f - TEXCOORD.y) + _521) * 0.70710677f)) + _109;
      _530 = (_109 + ((_521 + _120) * 0.70710677f)) + _111;
      _531 = _526 * 16.0f;
      _532 = _530 * 16.0f;
      _542 = frac(sin(dot(float2((ceil(_531 + 0.5f) * 0.25f), (ceil(_532 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _543 = round(_531);
      _544 = round(_532);
      _554 = saturate(((0.8f - (_77 * 0.8f)) + (sqrt((_544 * _544) + (_543 * _543)) * 0.0625f)) * 1.25f);  // [sem: expr_sat]
      _555 = 1.0f - _554;
      if (!(!(_555 >= 0.001f))) {
        _562 = sin((_time.x * _542) + 0.8f);
        _564 = (frac(_542) > 0.5f);
        _566 = _554 * 0.16666667f;
        _567 = _555 * 0.2f;
        _572 = 16.0f - (_555 * 3.0f);
        if (abs(((1.0f - frac(_542 * 7.0f)) * _567) * (((_572 * _526) - _543) + select(_564, _562, 0.0f))) < _566) {
          _593 = ((float)((bool)(abs(((((_572 * _530) - _544) + select(_564, 0.0f, _562)) * _567) * frac(_542 * 3.0f)) < _566)));
        } else {
          _593 = 0.0f;
        }
      } else {
        _593 = 1.0f;
      }
      _602 = saturate(1.0f - abs((saturate(_555 - ((_542 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _603 = _602 * _602;
      _606 = (_603 * _603) * (_593 * 0.29999995f);
      _608 = (_606 * _364) + _364;
      _610 = (_606 * _373) + _373;
      _612 = (_606 * _382) + _382;
      _613 = _526 * 8.0f;
      _614 = _530 * 8.0f;
      _624 = frac(sin(dot(float2((ceil(_613 + 0.5f) * 0.5f), (ceil(_614 + 0.5f) * 0.5f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _625 = round(_613);
      _626 = round(_614);
      _636 = saturate(((1.25f - (_77 * 1.425f)) + (sqrt((_626 * _626) + (_625 * _625)) * 0.125f)) * 0.8f);  // [sem: expr_sat]
      _637 = 1.0f - _636;
      if (!(!(_637 >= 0.001f))) {
        _644 = sin((_time.x * _624) + 1.25f);
        _646 = (frac(_624) > 0.5f);
        _648 = _636 * 0.16666667f;
        _649 = _637 * 0.3125f;
        _654 = 8.0f - (_637 * 2.1875f);
        if (abs(((1.0f - frac(_624 * 7.0f)) * _649) * (((_654 * _526) - _625) + select(_646, _644, 0.0f))) < _648) {
          _675 = ((float)((bool)(abs(((((_654 * _530) - _626) + select(_646, 0.0f, _644)) * _649) * frac(_624 * 3.0f)) < _648)));
        } else {
          _675 = 0.0f;
        }
      } else {
        _675 = 1.0f;
      }
      _684 = saturate(1.0f - abs((saturate(_637 - ((_624 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _685 = _684 * _684;
      _688 = (_685 * _685) * (_675 * 0.6f);
      _689 = _120 * _120;
      _697 = 1.0f - (exp2(log2(sqrt((_521 * _521) + _689)) * 1.5f) * 0.75f);
      _700 = _697 * ((_688 * _608) + _608);
      _703 = _697 * ((_688 * _610) + _610);
      _706 = _697 * ((_688 * _612) + _612);
      _709 = saturate((_77 + -0.5f) * 2.0f);  // [sem: expr_sat]
      _713 = (_time.x * 0.015707964f) + 0.7853982f;
      _720 = saturate((exp2(log2(1.0f - _709) * 2.5f) + -0.05f) * 1.1111112f);  // [sem: expr_sat]
      _724 = (_720 * _720) * (3.0f - (_720 * 2.0f));
      _725 = _724 * 0.5f;
      _726 = 1.0f - _725;
      _727 = _724 * -0.25f;
      _729 = (_23 + -1.0f) * 0.5f;
      _734 = ((-0.5f - _727) + (_726 * _80)) - (_726 * _729);
      _735 = cos(_713);
      _738 = ((_726 * TEXCOORD.y) - _727) + -0.5f;
      _739 = sin(_713);
      _741 = (_time.x * 0.03141593f) + 1.5707964f;
      _742 = 0.6f - _725;
      _744 = (_724 * 0.25f) + -0.3f;
      _748 = ((_742 * _80) + _744) - (_742 * _729);
      _749 = cos(_741);
      _751 = (_742 * TEXCOORD.y) + _744;
      _752 = sin(_741);
      _755 = (_748 * _749) - (_751 * _752);
      _758 = (_748 * _752) + (_751 * _749);
      _761 = WaveReadLaneFirst(_materialIndex);
      _769 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_761 < (uint)170000), _761, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _784 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_769 < (uint)65000), _769, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(((0.5f - (_738 * _739)) + (_734 * _735)), (((_738 * _735) + 0.5f) + (_734 * _739))));
      _788 = WaveReadLaneFirst(_materialIndex);
      _796 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_788 < (uint)170000), _788, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _797 = abs(_755);
      _798 = _797 * 120.0f;
      _799 = abs(_758);
      _800 = _799 * 120.0f;
      // [sem: expr_sat]
      _833 = saturate((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_796 < (uint)65000), _796, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((_755 + 0.5f), (_758 + 0.5f))))).x) + (saturate(((saturate(58.0f - _798) * saturate(_798 + -54.0f)) * saturate(10.0f - (_799 * 20.0f))) + ((saturate(60.0f - _800) * saturate(_800 + -56.0f)) * saturate(10.0f - (_797 * 20.0f)))) * 0.5f));
      _835 = (_784.x * _784.x) * _709;
      _838 = (_835 * (_410 - _700)) + _700;
      _841 = (_835 * (_419 - _703)) + _703;
      _844 = (_835 * (_428 - _706)) + _706;
      _845 = _833 * _709;
      _846 = abs(_117);
      _848 = 1.0f - (_846 * 0.8f);
      _851 = WaveReadLaneFirst(_materialIndex);
      _859 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_851 < (uint)170000), _851, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._lensDirtTex);
      _866 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_859 < (uint)65000), _859, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_80, TEXCOORD.y));
      _879 = exp2(log2(saturate(sqrt(_689 + (_117 * _117)))) * 6.0f) * saturate(_846 * 2.0f);
      _883 = saturate(((_675 + _593) + _784.x) + _833);  // [sem: expr_sat]
      _886 = max(0.001f, _exposure0.x);
      _918 = ((((((((_845 * (_428 - _844)) + _844) * _848) - _382) + (_879 * _866.z)) * _883) + _382) / _886);
      _919 = ((((((((_845 * (_419 - _841)) + _841) * _848) - _373) + (_879 * _866.y)) * _883) + _373) / _886);
      _920 = ((((((((_845 * (_410 - _838)) + _838) * _848) - _364) + (_879 * _866.x)) * _883) + _364) / _886);
    } else {
      _918 = _382;
      _919 = _373;
      _920 = _364;
    }
    _924 = 1.0f - ((_336 * _336) * (_325 * 0.5f));
    _929 = ((((_500 * _456) - _920) * _325) + _920) * _924;
    _934 = ((((_509 * _465) - _919) * _325) + _919) * _924;
    _939 = ((((_518 * _474) - _918) * _325) + _918) * _924;
    _943 = 1.0f - ((_264 * _264) * (_253 * 0.5f));
    _951 = ((((_500 * (((_456 + -1.0f) * 0.5f) + 1.0f)) - _929) * _253) + _929) * _943;
    _959 = ((((_509 * (((_465 + -1.0f) * 0.5f) + 1.0f)) - _934) * _253) + _934) * _943;
    _967 = ((((_518 * (((_474 + -1.0f) * 0.5f) + 1.0f)) - _939) * _253) + _939) * _943;
    _976 = ((saturate(_77 * 4.0f) * 10000.0f) + 10000.0f) * (1.0f - ((_190 * _190) * (_179 * 0.5f)));
    _980 = (((_976 * _46) - _951) * _179) + _951;
    _984 = (((_976 * _54) - _959) * _179) + _959;
    _988 = (((_976 * _62) - _967) * _179) + _967;
    _991 = saturate((_77 * 15.0f) + -14.0f);  // [sem: expr_sat]
    _1006 = (lerp(_988, _918, _991));  // [sem: blended]
    _1007 = (lerp(_984, _919, _991));  // [sem: blended]
    _1008 = (lerp(_980, _920, _991));  // [sem: blended]
  } else {
    _1006 = (_62 * 10000.0f);  // [sem: blended]
    _1007 = (_54 * 10000.0f);  // [sem: blended]
    _1008 = (_46 * 10000.0f);  // [sem: blended]
  }
  _1009 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1022 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1009, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1022 = 1.0f;
  }
  _1025 = (_localToneMappingParams.w > 0.0f);
  if (_1025) {
    _1031 = _exposure0.x * _userImageAdjust.z;
    _1050 = exp2(_powerParams.x * log2(max(0.0f, (((_1031 * max(0.0f, (((_1007 * -0.62179f) - (_1006 * 0.08326f)) + (_1008 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _1066 = exp2(log2(max(0.0f, (((_slopeParams.y * _1031) * max(0.0f, (((_1007 * 1.1408f) - (_1006 * 0.01055f)) - (_1008 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _1082 = exp2(log2(max(0.0f, (((_slopeParams.z * _1031) * max(0.0f, (((_1006 * 1.15297f) - (_1007 * 0.12897f)) - (_1008 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _1083 = dot(float3(_1050, _1066, _1082), float3(0.212671f, 0.71516f, 0.072169f));
    _1087 = ((_1050 - _1083) * _powerParams.w) + _1083;
    _1090 = ((_1066 - _1083) * _powerParams.w) + _1083;
    _1093 = ((_1082 - _1083) * _powerParams.w) + _1083;
    _1100 = min(max(log2(mad(_1093, 0.079223745f, mad(_1090, 0.0784336f, (_1087 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1107 = min(max(log2(mad(_1093, 0.07916613f, mad(_1090, 0.87846863f, (_1087 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1114 = min(max(log2(mad(_1093, 0.879143f, mad(_1090, 0.0784336f, (_1087 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1115 = _1100 * 0.060606062f;
    _1116 = _1107 * 0.060606062f;
    _1117 = _1114 * 0.060606062f;
    _1118 = _1115 * _1115;
    _1119 = _1116 * _1116;
    _1120 = _1117 * _1117;
    _1136 = min(0.0f, (-0.0f - (((_1100 * 0.0072181816f) + ((_1118 * 0.4298f) + (((_1118 * _1118) * ((31.96f - (_1100 * 2.4327273f)) + (_1118 * 15.5f))) - ((_1100 * 0.41624245f) * _1118)))) + -0.00232f)));
    _1152 = min(0.0f, (-0.0f - (((_1107 * 0.0072181816f) + ((_1119 * 0.4298f) + (((_1119 * _1119) * ((31.96f - (_1107 * 2.4327273f)) + (_1119 * 15.5f))) - ((_1107 * 0.41624245f) * _1119)))) + -0.00232f)));
    _1168 = min(0.0f, (-0.0f - (((_1114 * 0.0072181816f) + ((_1120 * 0.4298f) + (((_1120 * _1120) * ((31.96f - (_1114 * 2.4327273f)) + (_1120 * 15.5f))) - ((_1114 * 0.41624245f) * _1120)))) + -0.00232f)));
    _1169 = -0.0f - _1136;
    _1170 = -0.0f - _1152;
    _1171 = -0.0f - _1168;
    _1172 = dot(float3(_1169, _1170, _1171), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1189 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1190 = -0.79999995f / _1189;
      _1191 = -1.2f / _1189;
      _1192 = 0.20000005f / _1189;
      _1195 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1198 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1202 = (_1190 + 1.4f) + (_1198 * (-0.39999998f - _1190));
      _1206 = (_1191 + 1.6f) + (_1198 * (-0.6f - _1191));
      _1210 = (_1192 + 0.9f) + (_1198 * (0.5f - _1192));
      _1227 = (lerp(_1210, 1.4f, _1195));  // [sem: blended]
      _1228 = (lerp(_1202, 1.0f, _1195));  // [sem: blended]
      _1229 = (lerp(_1206, 1.2f, _1195));  // [sem: blended]
    } else {
      _1227 = 1.4f;  // [sem: blended]
      _1228 = 1.0f;  // [sem: blended]
      _1229 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1230 = 1.0f - _1229;
    _1242 = ((exp2(log2(((saturate((_1136 * _1136) * _1169) * _1230) + _1229) * _1169) * _1228) - _1172) * _1227) + _1172;
    _1254 = ((exp2(log2(((saturate((_1152 * _1152) * _1170) * _1230) + _1229) * _1170) * _1228) - _1172) * _1227) + _1172;
    _1266 = ((exp2(log2(((saturate((_1168 * _1168) * _1171) * _1230) + _1229) * _1171) * _1228) - _1172) * _1227) + _1172;
    _1273 = saturate(exp2(log2(mad(_1266, -0.09902974f, mad(_1254, -0.09802088f, (_1242 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1280 = saturate(exp2(log2(mad(_1266, -0.098961174f, mad(_1254, 1.1519032f, (_1242 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1287 = saturate(exp2(log2(mad(_1266, 1.1510737f, mad(_1254, -0.09804345f, (_1242 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1293 = 1.0f - abs(_etcParams.w);
      _1294 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1296 = (_1293 * _1273) + _1294;
      _1298 = (_1293 * _1280) + _1294;
      _1300 = (_1293 * _1287) + _1294;
      if (_colorGradingParams.w > 0.0f) {
        _1305 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1322 = (((max(0.0f, (1.0f - _1296)) - _1296) * _1305) + _1296);
        _1323 = (((max(0.0f, (1.0f - _1298)) - _1298) * _1305) + _1298);
        _1324 = (((max(0.0f, (1.0f - _1300)) - _1300) * _1305) + _1300);
      } else {
        _1322 = _1296;
        _1323 = _1298;
        _1324 = _1300;
      }
      _1326 = _userImageAdjust.y + 1.0f;
      _1328 = _userImageAdjust.x + 0.5f;
      _1331 = ((_1322 + -0.5f) * _1326) + _1328;
      _1334 = ((_1323 + -0.5f) * _1326) + _1328;
      _1337 = ((_1324 + -0.5f) * _1326) + _1328;
      _1343 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1378 = exp2(log2(saturate(mad(_colorBlind0.z, _1337, mad(_colorBlind0.y, _1334, (_colorBlind0.x * _1331))))) * _1343);
      _1379 = exp2(log2(saturate(mad(_colorBlind1.z, _1337, mad(_colorBlind1.y, _1334, (_colorBlind1.x * _1331))))) * _1343);
      _1380 = exp2(log2(saturate(mad(_colorBlind2.z, _1337, mad(_colorBlind2.y, _1334, (_colorBlind2.x * _1331))))) * _1343);
    } else {
      _1378 = _1273;
      _1379 = _1280;
      _1380 = _1287;
    }
  } else {
    _1378 = _1008;
    _1379 = _1007;
    _1380 = _1006;
  }
  if (_etcParams.y > 1.0f) {
    _1385 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1388 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1394 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1385, _1388), float2(_1385, _1388))));  // [sem: expr_sat]
    _1399 = (_1394 * _1378);
    _1400 = (_1394 * _1379);
    _1401 = (_1394 * _1380);
  } else {
    _1399 = _1378;
    _1400 = _1379;
    _1401 = _1380;
  }
  if (_1025 && (_etcParams.z > 0.0f)) {
    _1431 = select((_1399 <= 0.0031308f), (_1399 * 12.92f), (((pow(_1399, 0.41666666f)) * 1.055f) + -0.055f));
    _1432 = select((_1400 <= 0.0031308f), (_1400 * 12.92f), (((pow(_1400, 0.41666666f)) * 1.055f) + -0.055f));
    _1433 = select((_1401 <= 0.0031308f), (_1401 * 12.92f), (((pow(_1401, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1431 = _1399;
    _1432 = _1400;
    _1433 = _1401;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1436 = (float)((uint)((uint)(_1009)));
    if (!(_1436 < _viewDir.w)) {
      if (!(!(_1436 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1447 = 0.0f;
        _1448 = 0.0f;
        _1449 = 0.0f;
      } else {
        _1447 = _1431;
        _1448 = _1432;
        _1449 = _1433;
      }
    } else {
      _1447 = 0.0f;
      _1448 = 0.0f;
      _1449 = 0.0f;
    }
  } else {
    _1447 = _1431;
    _1448 = _1432;
    _1449 = _1433;
  }
  _1453 = exp2(log2(_1447 * 0.0001f) * 0.15930176f);
  _1457 = exp2(log2(_1448 * 0.0001f) * 0.15930176f);
  _1461 = exp2(log2(_1449 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1453 * 18.6875f) + 1.0f)) * ((_1453 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1457 * 18.6875f) + 1.0f)) * ((_1457 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1461 * 18.6875f) + 1.0f)) * ((_1461 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1022;
  return SV_Target;
}
