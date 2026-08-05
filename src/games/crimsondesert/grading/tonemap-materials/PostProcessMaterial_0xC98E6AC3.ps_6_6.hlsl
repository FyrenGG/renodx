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
  int _32;
  float _40;
  bool _41;
  float _42;
  float _44;
  bool _143;
  float _146;
  bool _217;
  float _220;
  float _292;
  float _526;
  float _608;
  float _851;
  float _852;
  float _853;
  float _936;
  float _937;
  float _938;
  float _952;
  float _1157;
  float _1158;
  float _1159;
  float _1252;
  float _1253;
  float _1254;
  float _1308;
  float _1309;
  float _1310;
  float _1329;
  float _1330;
  float _1331;
  float _1361;
  float _1362;
  float _1363;
  float _1377;
  float _1378;
  float _1379;
  float _47;
  int _50;
  int _58;
  float4 _72;
  float _76;
  float _78;
  float _80;
  float _81;
  float _83;
  float _84;
  float _86;
  float _87;
  float _89;
  float _92;
  float _93;
  float _94;
  float _104;
  float _105;
  float _106;
  float _116;
  float _117;
  float _121;
  float _122;
  float _123;
  float _155;
  float _156;
  float _157;
  float _159;
  float _161;
  float _163;
  float _166;
  float _167;
  float _168;
  float _178;
  float _179;
  float _180;
  float _190;
  float _191;
  float _195;
  float _196;
  float _197;
  float _229;
  float _230;
  float _231;
  float _233;
  float _235;
  float _237;
  float _240;
  float _241;
  float _242;
  float _252;
  float _253;
  float _254;
  float _264;
  float _265;
  float _269;
  float _270;
  float _271;
  float _301;
  float _302;
  float _303;
  int _306;
  int _314;
  float _317;
  float _320;
  float _322;
  float _331;
  float _340;
  float _349;
  int _352;
  int _360;
  float _363;
  float _366;
  float _368;
  float _377;
  float _386;
  float _395;
  int _398;
  int _406;
  float _409;
  float _412;
  float _414;
  float _423;
  float _432;
  float _441;
  float4 _446;
  float _451;
  float _454;
  float _459;
  float _463;
  float _464;
  float _465;
  float _475;
  float _476;
  float _477;
  float _487;
  float _488;
  float _495;
  bool _497;
  float _499;
  float _500;
  float _505;
  float _535;
  float _536;
  float _539;
  float _541;
  float _543;
  float _545;
  float _546;
  float _547;
  float _557;
  float _558;
  float _559;
  float _569;
  float _570;
  float _577;
  bool _579;
  float _581;
  float _582;
  float _587;
  float _617;
  float _618;
  float _621;
  float _622;
  float _630;
  float _633;
  float _636;
  float _639;
  float _642;
  float _646;
  float _653;
  float _657;
  float _658;
  float _659;
  float _660;
  float _662;
  float _667;
  float _668;
  float _671;
  float _672;
  float _674;
  float _675;
  float _677;
  float _681;
  float _682;
  float _684;
  float _685;
  float _688;
  float _691;
  int _694;
  int _702;
  float4 _717;
  int _721;
  int _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _766;
  float _768;
  float _771;
  float _774;
  float _777;
  float _778;
  float _779;
  float _781;
  int _784;
  int _792;
  float4 _799;
  float _812;
  float _816;
  float _819;
  float _857;
  float _862;
  float _867;
  float _872;
  float _876;
  float _884;
  float _892;
  float _900;
  float _904;
  float _910;
  float _916;
  float _922;
  float _925;
  uint _939;
  bool _955;
  float _961;
  float _980;
  float _996;
  float _1012;
  float _1013;
  float _1017;
  float _1020;
  float _1023;
  float _1030;
  float _1037;
  float _1044;
  float _1045;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  float _1050;
  float _1066;
  float _1082;
  float _1098;
  float _1099;
  float _1100;
  float _1101;
  float _1102;
  float _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1125;
  float _1128;
  float _1132;
  float _1136;
  float _1140;
  float _1160;
  float _1172;
  float _1184;
  float _1196;
  float _1203;
  float _1210;
  float _1217;
  float _1223;
  float _1224;
  float _1226;
  float _1228;
  float _1230;
  float _1235;
  float _1256;
  float _1258;
  float _1261;
  float _1264;
  float _1267;
  float _1273;
  float _1315;
  float _1318;
  float _1324;
  float _1366;
  _23 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  _41 = (_40 > 0.5f);
  _42 = _40 * 2.0f;
  _44 = select(_41, (2.0f - _42), _42);
  if (_44 > 0.0f) {
    _47 = _23 * TEXCOORD.x;
    _50 = WaveReadLaneFirst(_materialIndex);
    _58 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterNoiseTex);
    _72 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_58 < (uint)65000), _58, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_47 * 4.0f) - ((_44 * TEXCOORD.x) * rsqrt(TEXCOORD.x * TEXCOORD.x))), (TEXCOORD.y * 4.0f)));
    _76 = (_72.x * 0.01f) + -0.004980392f;
    _78 = (_72.y * 0.01f) + -0.004980392f;
    _80 = (_72.y * 0.04f) + -0.019921567f;
    _81 = saturate(_44);  // [sem: _44_sat]
    _83 = saturate(_81 * 2.0f);  // [sem: expr_sat]
    _84 = TEXCOORD.x + -0.5f;
    _86 = select(_41, -1.0f, 1.0f) + _84;
    _87 = TEXCOORD.y + -0.5f;
    _89 = (_76 * _83) + _87;
    _92 = ((_80 * _83) + _86) * _23;
    _93 = _92 * 32.0f;
    _94 = _89 * 32.0f;
    _104 = frac(sin(dot(float2((ceil(_93 + 0.5f) * 0.125f), (ceil(_94 + 0.5f) * 0.125f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _105 = round(_93);
    _106 = round(_94);
    _116 = saturate(((0.25f - (_81 * 3.0f)) + (sqrt((_106 * _106) + (_105 * _105)) * 0.03125f)) * 0.8f);  // [sem: expr_sat]
    _117 = 1.0f - _116;
    if (!(!(_117 >= 0.001f))) {
      _121 = _116 * 0.16666667f;
      _122 = _117 * 0.3125f;
      _123 = 32.0f - (_117 * 9.6875f);
      if (abs((((_123 * _92) - _105) * _122) * (1.0f - frac(_104 * 7.0f))) < _121) {
        _143 = (abs((((_123 * _89) - _106) * _122) * frac(_104 * 3.0f)) < _121);
      } else {
        _143 = false;
      }
      _146 = ((float)((bool)(_143)));
    } else {
      _146 = 1.0f;
    }
    _155 = saturate(1.0f - abs((saturate(_117 - ((_104 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _156 = _155 * _155;
    _157 = _156 * _156;
    _159 = saturate(_44 + -0.083333336f);  // [sem: expr_sat]
    _161 = saturate(_159 * 2.0f);  // [sem: expr_sat]
    _163 = (_161 * _76) + _87;
    _166 = ((_161 * _80) + _86) * _23;
    _167 = _166 * 16.0f;
    _168 = _163 * 16.0f;
    _178 = frac(sin(dot(float2((ceil(_167 + 0.5f) * 0.25f), (ceil(_168 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _179 = round(_167);
    _180 = round(_168);
    _190 = saturate(((0.25f - (_159 * 3.0f)) + (sqrt((_180 * _180) + (_179 * _179)) * 0.0625f)) * 0.8f);  // [sem: expr_sat]
    _191 = 1.0f - _190;
    if (!(!(_191 >= 0.001f))) {
      _195 = _190 * 0.16666667f;
      _196 = _191 * 0.3125f;
      _197 = 16.0f - (_191 * 4.6875f);
      if (abs((((_197 * _166) - _179) * _196) * (1.0f - frac(_178 * 7.0f))) < _195) {
        _217 = (abs((((_197 * _163) - _180) * _196) * frac(_178 * 3.0f)) < _195);
      } else {
        _217 = false;
      }
      _220 = ((float)((bool)(_217)));
    } else {
      _220 = 1.0f;
    }
    _229 = saturate(1.0f - abs((saturate(_191 - ((_178 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _230 = _229 * _229;
    _231 = _230 * _230;
    _233 = saturate(_44 + -0.16666667f);  // [sem: expr_sat]
    _235 = saturate(_233 * 2.0f);  // [sem: expr_sat]
    _237 = (_235 * _76) + _87;
    _240 = ((_235 * _80) + _86) * _23;
    _241 = _240 * 10.666667f;
    _242 = _237 * 10.666667f;
    _252 = frac(sin(dot(float2((ceil(_241 + 0.5f) * 0.375f), (ceil(_242 + 0.5f) * 0.375f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _253 = round(_241);
    _254 = round(_242);
    _264 = saturate(((0.25f - (_233 * 3.0f)) + (sqrt((_254 * _254) + (_253 * _253)) * 0.09375f)) * 0.8f);  // [sem: expr_sat]
    _265 = 1.0f - _264;
    if (!(!(_265 >= 0.001f))) {
      _269 = _264 * 0.16666667f;
      _270 = _265 * 0.3125f;
      _271 = 10.666667f - (_265 * 3.0208335f);
      if (abs((((_271 * _240) - _253) * _270) * (1.0f - frac(_252 * 7.0f))) < _269) {
        _292 = ((float)((bool)(abs((((_271 * _237) - _254) * _270) * frac(_252 * 3.0f)) < _269)));
      } else {
        _292 = 0.0f;
      }
    } else {
      _292 = 1.0f;
    }
    _301 = saturate(1.0f - abs((saturate(_265 - ((_252 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _302 = _301 * _301;
    _303 = _302 * _302;
    _306 = WaveReadLaneFirst(_materialIndex);
    _314 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterBackgroundColor);
    _317 = (float)((uint)((uint)(((uint)((uint)(_314)) >> 16) & 255)));
    _320 = (float)((uint)((uint)(((uint)((uint)(_314)) >> 8) & 255)));
    _322 = (float)((uint)((uint)(_314 & 255)));
    _331 = select(((_317 * 0.003921569f) < 0.04045f), (_317 * 0.000303527f), exp2(log2((_317 * 0.003717127f) + 0.052132703f) * 2.4f));
    _340 = select(((_320 * 0.003921569f) < 0.04045f), (_320 * 0.000303527f), exp2(log2((_320 * 0.003717127f) + 0.052132703f) * 2.4f));
    _349 = select(((_322 * 0.003921569f) < 0.04045f), (_322 * 0.000303527f), exp2(log2((_322 * 0.003717127f) + 0.052132703f) * 2.4f));
    _352 = WaveReadLaneFirst(_materialIndex);
    _360 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_352 < (uint)170000), _352, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardColor);
    _363 = (float)((uint)((uint)(((uint)((uint)(_360)) >> 16) & 255)));
    _366 = (float)((uint)((uint)(((uint)((uint)(_360)) >> 8) & 255)));
    _368 = (float)((uint)((uint)(_360 & 255)));
    _377 = select(((_363 * 0.003921569f) < 0.04045f), (_363 * 0.000303527f), exp2(log2((_363 * 0.003717127f) + 0.052132703f) * 2.4f));
    _386 = select(((_366 * 0.003921569f) < 0.04045f), (_366 * 0.000303527f), exp2(log2((_366 * 0.003717127f) + 0.052132703f) * 2.4f));
    _395 = select(((_368 * 0.003921569f) < 0.04045f), (_368 * 0.000303527f), exp2(log2((_368 * 0.003717127f) + 0.052132703f) * 2.4f));
    _398 = WaveReadLaneFirst(_materialIndex);
    _406 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_398 < (uint)170000), _398, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._sceneTintColor);
    _409 = (float)((uint)((uint)(((uint)((uint)(_406)) >> 16) & 255)));
    _412 = (float)((uint)((uint)(((uint)((uint)(_406)) >> 8) & 255)));
    _414 = (float)((uint)((uint)(_406 & 255)));
    _423 = select(((_409 * 0.003921569f) < 0.04045f), (_409 * 0.000303527f), exp2(log2((_409 * 0.003717127f) + 0.052132703f) * 2.4f));
    _432 = select(((_412 * 0.003921569f) < 0.04045f), (_412 * 0.000303527f), exp2(log2((_412 * 0.003717127f) + 0.052132703f) * 2.4f));
    _441 = select(((_414 * 0.003921569f) < 0.04045f), (_414 * 0.000303527f), exp2(log2((_414 * 0.003717127f) + 0.052132703f) * 2.4f));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _446 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_76 + TEXCOORD.x), (_78 + TEXCOORD.y)));
    _451 = saturate(_44 * 4.0f);  // [sem: expr_sat]
    if (_44 > 0.2f) {
      _454 = _23 * _84;
      _459 = (_80 + (((0.5f - TEXCOORD.y) + _454) * 0.70710677f)) + _76;
      _463 = (_76 + ((_454 + _87) * 0.70710677f)) + _78;
      _464 = _459 * 16.0f;
      _465 = _463 * 16.0f;
      _475 = frac(sin(dot(float2((ceil(_464 + 0.5f) * 0.25f), (ceil(_465 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _476 = round(_464);
      _477 = round(_465);
      _487 = saturate(((0.8f - (_44 * 0.8f)) + (sqrt((_477 * _477) + (_476 * _476)) * 0.0625f)) * 1.25f);  // [sem: expr_sat]
      _488 = 1.0f - _487;
      if (!(!(_488 >= 0.001f))) {
        _495 = sin((_time.x * _475) + 0.8f);
        _497 = (frac(_475) > 0.5f);
        _499 = _487 * 0.16666667f;
        _500 = _488 * 0.2f;
        _505 = 16.0f - (_488 * 3.0f);
        if (abs(((1.0f - frac(_475 * 7.0f)) * _500) * (((_505 * _459) - _476) + select(_497, _495, 0.0f))) < _499) {
          _526 = ((float)((bool)(abs(((((_505 * _463) - _477) + select(_497, 0.0f, _495)) * _500) * frac(_475 * 3.0f)) < _499)));
        } else {
          _526 = 0.0f;
        }
      } else {
        _526 = 1.0f;
      }
      _535 = saturate(1.0f - abs((saturate(_488 - ((_475 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _536 = _535 * _535;
      _539 = (_536 * _536) * (_526 * 0.29999995f);
      _541 = (_539 * _331) + _331;
      _543 = (_539 * _340) + _340;
      _545 = (_539 * _349) + _349;
      _546 = _459 * 8.0f;
      _547 = _463 * 8.0f;
      _557 = frac(sin(dot(float2((ceil(_546 + 0.5f) * 0.5f), (ceil(_547 + 0.5f) * 0.5f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _558 = round(_546);
      _559 = round(_547);
      _569 = saturate(((1.25f - (_44 * 1.425f)) + (sqrt((_559 * _559) + (_558 * _558)) * 0.125f)) * 0.8f);  // [sem: expr_sat]
      _570 = 1.0f - _569;
      if (!(!(_570 >= 0.001f))) {
        _577 = sin((_time.x * _557) + 1.25f);
        _579 = (frac(_557) > 0.5f);
        _581 = _569 * 0.16666667f;
        _582 = _570 * 0.3125f;
        _587 = 8.0f - (_570 * 2.1875f);
        if (abs(((1.0f - frac(_557 * 7.0f)) * _582) * (((_587 * _459) - _558) + select(_579, _577, 0.0f))) < _581) {
          _608 = ((float)((bool)(abs(((((_587 * _463) - _559) + select(_579, 0.0f, _577)) * _582) * frac(_557 * 3.0f)) < _581)));
        } else {
          _608 = 0.0f;
        }
      } else {
        _608 = 1.0f;
      }
      _617 = saturate(1.0f - abs((saturate(_570 - ((_557 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _618 = _617 * _617;
      _621 = (_618 * _618) * (_608 * 0.6f);
      _622 = _87 * _87;
      _630 = 1.0f - (exp2(log2(sqrt((_454 * _454) + _622)) * 1.5f) * 0.75f);
      _633 = _630 * ((_621 * _541) + _541);
      _636 = _630 * ((_621 * _543) + _543);
      _639 = _630 * ((_621 * _545) + _545);
      _642 = saturate((_44 + -0.5f) * 2.0f);  // [sem: expr_sat]
      _646 = (_time.x * 0.015707964f) + 0.7853982f;
      _653 = saturate((exp2(log2(1.0f - _642) * 2.5f) + -0.05f) * 1.1111112f);  // [sem: expr_sat]
      _657 = (_653 * _653) * (3.0f - (_653 * 2.0f));
      _658 = _657 * 0.5f;
      _659 = 1.0f - _658;
      _660 = _657 * -0.25f;
      _662 = (_23 + -1.0f) * 0.5f;
      _667 = ((-0.5f - _660) + (_659 * _47)) - (_659 * _662);
      _668 = cos(_646);
      _671 = ((_659 * TEXCOORD.y) - _660) + -0.5f;
      _672 = sin(_646);
      _674 = (_time.x * 0.03141593f) + 1.5707964f;
      _675 = 0.6f - _658;
      _677 = (_657 * 0.25f) + -0.3f;
      _681 = ((_675 * _47) + _677) - (_675 * _662);
      _682 = cos(_674);
      _684 = (_675 * TEXCOORD.y) + _677;
      _685 = sin(_674);
      _688 = (_681 * _682) - (_684 * _685);
      _691 = (_681 * _685) + (_684 * _682);
      _694 = WaveReadLaneFirst(_materialIndex);
      _702 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_694 < (uint)170000), _694, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _717 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_702 < (uint)65000), _702, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(((0.5f - (_671 * _672)) + (_667 * _668)), (((_671 * _668) + 0.5f) + (_667 * _672))));
      _721 = WaveReadLaneFirst(_materialIndex);
      _729 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_721 < (uint)170000), _721, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _730 = abs(_688);
      _731 = _730 * 120.0f;
      _732 = abs(_691);
      _733 = _732 * 120.0f;
      // [sem: expr_sat]
      _766 = saturate((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_729 < (uint)65000), _729, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((_688 + 0.5f), (_691 + 0.5f))))).x) + (saturate(((saturate(58.0f - _731) * saturate(_731 + -54.0f)) * saturate(10.0f - (_732 * 20.0f))) + ((saturate(60.0f - _733) * saturate(_733 + -56.0f)) * saturate(10.0f - (_730 * 20.0f)))) * 0.5f));
      _768 = (_717.x * _717.x) * _642;
      _771 = (_768 * (_377 - _633)) + _633;
      _774 = (_768 * (_386 - _636)) + _636;
      _777 = (_768 * (_395 - _639)) + _639;
      _778 = _766 * _642;
      _779 = abs(_84);
      _781 = 1.0f - (_779 * 0.8f);
      _784 = WaveReadLaneFirst(_materialIndex);
      _792 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_784 < (uint)170000), _784, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._lensDirtTex);
      _799 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_792 < (uint)65000), _792, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_47, TEXCOORD.y));
      _812 = exp2(log2(saturate(sqrt(_622 + (_84 * _84)))) * 6.0f) * saturate(_779 * 2.0f);
      _816 = saturate(((_608 + _526) + _717.x) + _766);  // [sem: expr_sat]
      _819 = max(0.001f, _exposure0.x);
      _851 = ((((((((_778 * (_395 - _777)) + _777) * _781) - _349) + (_812 * _799.z)) * _816) + _349) / _819);
      _852 = ((((((((_778 * (_386 - _774)) + _774) * _781) - _340) + (_812 * _799.y)) * _816) + _340) / _819);
      _853 = ((((((((_778 * (_377 - _771)) + _771) * _781) - _331) + (_812 * _799.x)) * _816) + _331) / _819);
    } else {
      _851 = _349;
      _852 = _340;
      _853 = _331;
    }
    _857 = 1.0f - ((_303 * _303) * (_292 * 0.5f));
    _862 = ((((_446.x * _423) - _853) * _292) + _853) * _857;
    _867 = ((((_446.y * _432) - _852) * _292) + _852) * _857;
    _872 = ((((_446.z * _441) - _851) * _292) + _851) * _857;
    _876 = 1.0f - ((_231 * _231) * (_220 * 0.5f));
    _884 = ((((_446.x * (((_423 + -1.0f) * 0.5f) + 1.0f)) - _862) * _220) + _862) * _876;
    _892 = ((((_446.y * (((_432 + -1.0f) * 0.5f) + 1.0f)) - _867) * _220) + _867) * _876;
    _900 = ((((_446.z * (((_441 + -1.0f) * 0.5f) + 1.0f)) - _872) * _220) + _872) * _876;
    _904 = 1.0f - ((_157 * _157) * (_146 * 0.5f));
    _910 = (((((_451 * _26.x) + _26.x) * _904) - _884) * _146) + _884;
    _916 = (((((_451 * _26.y) + _26.y) * _904) - _892) * _146) + _892;
    _922 = (((((_451 * _26.z) + _26.z) * _904) - _900) * _146) + _900;
    _925 = saturate((_44 * 15.0f) + -14.0f);  // [sem: expr_sat]
    _936 = (lerp(_922, _851, _925));  // [sem: blended]
    _937 = (lerp(_916, _852, _925));  // [sem: blended]
    _938 = (lerp(_910, _853, _925));  // [sem: blended]
  } else {
    _936 = _26.z;  // [sem: blended]
    _937 = _26.y;  // [sem: blended]
    _938 = _26.x;  // [sem: blended]
  }
  _939 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _952 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _939, 0)))).x) & 127)))) + 0.5f);
  } else {
    _952 = 1.0f;
  }
  _955 = (_localToneMappingParams.w > 0.0f);
  if (_955) {
    _961 = _exposure0.x * _userImageAdjust.z;
    _980 = exp2(_powerParams.x * log2(max(0.0f, (((_961 * max(0.0f, (((_937 * -0.62179f) - (_936 * 0.08326f)) + (_938 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _996 = exp2(log2(max(0.0f, (((_slopeParams.y * _961) * max(0.0f, (((_937 * 1.1408f) - (_936 * 0.01055f)) - (_938 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _1012 = exp2(log2(max(0.0f, (((_slopeParams.z * _961) * max(0.0f, (((_936 * 1.15297f) - (_937 * 0.12897f)) - (_938 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _1013 = dot(float3(_980, _996, _1012), float3(0.212671f, 0.71516f, 0.072169f));
    _1017 = ((_980 - _1013) * _powerParams.w) + _1013;
    _1020 = ((_996 - _1013) * _powerParams.w) + _1013;
    _1023 = ((_1012 - _1013) * _powerParams.w) + _1013;
    _1030 = min(max(log2(mad(_1023, 0.079223745f, mad(_1020, 0.0784336f, (_1017 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1037 = min(max(log2(mad(_1023, 0.07916613f, mad(_1020, 0.87846863f, (_1017 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1044 = min(max(log2(mad(_1023, 0.879143f, mad(_1020, 0.0784336f, (_1017 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1045 = _1030 * 0.060606062f;
    _1046 = _1037 * 0.060606062f;
    _1047 = _1044 * 0.060606062f;
    _1048 = _1045 * _1045;
    _1049 = _1046 * _1046;
    _1050 = _1047 * _1047;
    _1066 = min(0.0f, (-0.0f - (((_1030 * 0.0072181816f) + ((_1048 * 0.4298f) + (((_1048 * _1048) * ((31.96f - (_1030 * 2.4327273f)) + (_1048 * 15.5f))) - ((_1030 * 0.41624245f) * _1048)))) + -0.00232f)));
    _1082 = min(0.0f, (-0.0f - (((_1037 * 0.0072181816f) + ((_1049 * 0.4298f) + (((_1049 * _1049) * ((31.96f - (_1037 * 2.4327273f)) + (_1049 * 15.5f))) - ((_1037 * 0.41624245f) * _1049)))) + -0.00232f)));
    _1098 = min(0.0f, (-0.0f - (((_1044 * 0.0072181816f) + ((_1050 * 0.4298f) + (((_1050 * _1050) * ((31.96f - (_1044 * 2.4327273f)) + (_1050 * 15.5f))) - ((_1044 * 0.41624245f) * _1050)))) + -0.00232f)));
    _1099 = -0.0f - _1066;
    _1100 = -0.0f - _1082;
    _1101 = -0.0f - _1098;
    _1102 = dot(float3(_1099, _1100, _1101), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1119 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1120 = -0.79999995f / _1119;
      _1121 = -1.2f / _1119;
      _1122 = 0.20000005f / _1119;
      _1125 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1128 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1132 = (_1120 + 1.4f) + (_1128 * (-0.39999998f - _1120));
      _1136 = (_1121 + 1.6f) + (_1128 * (-0.6f - _1121));
      _1140 = (_1122 + 0.9f) + (_1128 * (0.5f - _1122));
      _1157 = (lerp(_1140, 1.4f, _1125));  // [sem: blended]
      _1158 = (lerp(_1132, 1.0f, _1125));  // [sem: blended]
      _1159 = (lerp(_1136, 1.2f, _1125));  // [sem: blended]
    } else {
      _1157 = 1.4f;  // [sem: blended]
      _1158 = 1.0f;  // [sem: blended]
      _1159 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1160 = 1.0f - _1159;
    _1172 = ((exp2(log2(((saturate((_1066 * _1066) * _1099) * _1160) + _1159) * _1099) * _1158) - _1102) * _1157) + _1102;
    _1184 = ((exp2(log2(((saturate((_1082 * _1082) * _1100) * _1160) + _1159) * _1100) * _1158) - _1102) * _1157) + _1102;
    _1196 = ((exp2(log2(((saturate((_1098 * _1098) * _1101) * _1160) + _1159) * _1101) * _1158) - _1102) * _1157) + _1102;
    _1203 = saturate(exp2(log2(mad(_1196, -0.09902974f, mad(_1184, -0.09802088f, (_1172 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1210 = saturate(exp2(log2(mad(_1196, -0.098961174f, mad(_1184, 1.1519032f, (_1172 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1217 = saturate(exp2(log2(mad(_1196, 1.1510737f, mad(_1184, -0.09804345f, (_1172 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1223 = 1.0f - abs(_etcParams.w);
      _1224 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1226 = (_1223 * _1203) + _1224;
      _1228 = (_1223 * _1210) + _1224;
      _1230 = (_1223 * _1217) + _1224;
      if (_colorGradingParams.w > 0.0f) {
        _1235 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1252 = (((max(0.0f, (1.0f - _1230)) - _1230) * _1235) + _1230);
        _1253 = (((max(0.0f, (1.0f - _1228)) - _1228) * _1235) + _1228);
        _1254 = (((max(0.0f, (1.0f - _1226)) - _1226) * _1235) + _1226);
      } else {
        _1252 = _1230;
        _1253 = _1228;
        _1254 = _1226;
      }
      _1256 = _userImageAdjust.y + 1.0f;
      _1258 = _userImageAdjust.x + 0.5f;
      _1261 = ((_1254 + -0.5f) * _1256) + _1258;
      _1264 = ((_1253 + -0.5f) * _1256) + _1258;
      _1267 = ((_1252 + -0.5f) * _1256) + _1258;
      _1273 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1308 = exp2(log2(saturate(mad(_colorBlind2.z, _1267, mad(_colorBlind2.y, _1264, (_colorBlind2.x * _1261))))) * _1273);
      _1309 = exp2(log2(saturate(mad(_colorBlind1.z, _1267, mad(_colorBlind1.y, _1264, (_colorBlind1.x * _1261))))) * _1273);
      _1310 = exp2(log2(saturate(mad(_colorBlind0.z, _1267, mad(_colorBlind0.y, _1264, (_colorBlind0.x * _1261))))) * _1273);
    } else {
      _1308 = _1217;
      _1309 = _1210;
      _1310 = _1203;
    }
  } else {
    _1308 = _936;
    _1309 = _937;
    _1310 = _938;
  }
  if (_etcParams.y > 1.0f) {
    _1315 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1318 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1324 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1315, _1318), float2(_1315, _1318))));  // [sem: expr_sat]
    _1329 = (_1324 * _1310);
    _1330 = (_1324 * _1309);
    _1331 = (_1324 * _1308);
  } else {
    _1329 = _1310;
    _1330 = _1309;
    _1331 = _1308;
  }
  if (_955 && (_etcParams.z > 0.0f)) {
    _1361 = select((_1329 <= 0.0031308f), (_1329 * 12.92f), (((pow(_1329, 0.41666666f)) * 1.055f) + -0.055f));
    _1362 = select((_1330 <= 0.0031308f), (_1330 * 12.92f), (((pow(_1330, 0.41666666f)) * 1.055f) + -0.055f));
    _1363 = select((_1331 <= 0.0031308f), (_1331 * 12.92f), (((pow(_1331, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1361 = _1329;
    _1362 = _1330;
    _1363 = _1331;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1366 = (float)((uint)((uint)(_939)));
    if (!(_1366 < _viewDir.w)) {
      if (!(!(_1366 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1377 = 0.0f;
        _1378 = 0.0f;
        _1379 = 0.0f;
      } else {
        _1377 = _1361;
        _1378 = _1362;
        _1379 = _1363;
      }
    } else {
      _1377 = 0.0f;
      _1378 = 0.0f;
      _1379 = 0.0f;
    }
  } else {
    _1377 = _1361;
    _1378 = _1362;
    _1379 = _1363;
  }
  SV_Target.x = _1377;
  SV_Target.y = _1378;
  SV_Target.z = _1379;
  SV_Target.w = _952;
  return SV_Target;
}
