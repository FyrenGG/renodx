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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
  float _38;
  float _39;
  float _40;
  float _62;
  float _63;
  float _64;
  int _68;
  float _76;
  bool _77;
  float _78;
  float _80;
  float _179;
  float _252;
  float _325;
  float _604;
  float _687;
  float _926;
  float _927;
  float _928;
  float _994;
  float _995;
  float _996;
  float _1010;
  float _1215;
  float _1216;
  float _1217;
  float _1310;
  float _1311;
  float _1312;
  float _1366;
  float _1367;
  float _1368;
  float _1387;
  float _1388;
  float _1389;
  float _1419;
  float _1420;
  float _1421;
  float _1435;
  float _1436;
  float _1437;
  float _83;
  int _91;
  int _99;
  float4 _106;
  float _110;
  float _112;
  float _114;
  float _115;
  float _117;
  float _121;
  float _122;
  float _124;
  float _125;
  float _126;
  float _127;
  float _128;
  float _138;
  float _139;
  float _140;
  float _150;
  float _151;
  float _154;
  float _166;
  float _167;
  float _188;
  float _189;
  float _190;
  float _192;
  float _194;
  float _198;
  float _199;
  float _200;
  float _201;
  float _211;
  float _212;
  float _213;
  float _223;
  float _224;
  float _227;
  float _239;
  float _240;
  float _261;
  float _262;
  float _263;
  float _265;
  float _267;
  float _271;
  float _272;
  float _273;
  float _274;
  float _284;
  float _285;
  float _286;
  float _296;
  float _297;
  float _300;
  float _312;
  float _313;
  float _334;
  float _335;
  float _336;
  int _337;
  int _345;
  float _348;
  float _351;
  float _353;
  float _378;
  float _379;
  float _380;
  int _381;
  int _389;
  float _392;
  float _395;
  float _397;
  float _422;
  float _423;
  float _424;
  int _425;
  int _433;
  float _436;
  float _439;
  float _441;
  float _466;
  float _467;
  float _468;
  float4 _473;
  float _483;
  float _484;
  float _485;
  float _510;
  float _511;
  float _512;
  float _531;
  float _539;
  float _541;
  float _542;
  float _543;
  float _553;
  float _554;
  float _555;
  float _564;
  float _565;
  float _572;
  bool _574;
  float _577;
  float _591;
  float _592;
  float _613;
  float _614;
  float _617;
  float _621;
  float _622;
  float _623;
  float _625;
  float _626;
  float _636;
  float _637;
  float _638;
  float _647;
  float _648;
  float _655;
  bool _657;
  float _660;
  float _674;
  float _675;
  float _696;
  float _697;
  float _700;
  float _708;
  float _715;
  float _716;
  float _717;
  float _718;
  float _721;
  float _725;
  float _732;
  float _736;
  float _737;
  float _738;
  float _741;
  float _744;
  float _748;
  float _749;
  float _751;
  float _752;
  float _761;
  float _762;
  float _765;
  float _771;
  float _772;
  float _774;
  float _775;
  float _777;
  float _780;
  int _783;
  int _791;
  float4 _798;
  int _800;
  int _808;
  float _817;
  float _818;
  float _824;
  float _829;
  float _843;
  float _845;
  float _852;
  float _853;
  float _854;
  float _855;
  float _865;
  float _867;
  int _871;
  int _879;
  float4 _886;
  float _899;
  float _906;
  float _921;
  float _944;
  float _945;
  float _946;
  float _947;
  float _960;
  float _961;
  float _962;
  float _963;
  float _968;
  float _978;
  float _979;
  float _980;
  float _983;
  uint _997;
  bool _1013;
  float _1019;
  float _1068;
  float _1069;
  float _1070;
  float _1072;
  float _1079;
  float _1080;
  float _1081;
  float _1100;
  float _1101;
  float _1102;
  float _1103;
  float _1104;
  float _1105;
  float _1106;
  float _1107;
  float _1108;
  float _1154;
  float _1155;
  float _1156;
  float _1157;
  float _1158;
  float _1159;
  float _1160;
  float _1177;
  float _1178;
  float _1179;
  float _1180;
  float _1186;
  float _1189;
  float _1196;
  float _1197;
  float _1198;
  float _1227;
  float _1252;
  float _1253;
  float _1254;
  float _1273;
  float _1274;
  float _1275;
  float _1281;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1293;
  float _1318;
  float _1322;
  float _1323;
  float _1324;
  float _1325;
  float _1355;
  float _1377;
  float _1378;
  float _1382;
  float _1426;
  float _1447;
  float _1448;
  float _1449;
  _25 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _38 = (pow(_28.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (pow(_28.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_28.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _62 = exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f);
  _63 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f);
  _64 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f);
  _68 = WaveReadLaneFirst(_materialIndex);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  _77 = (_76 > 0.5f);
  _78 = _76 * 2.0f;
  _80 = select(_77, (2.0f - _78), _78);
  if (_80 > 0.0f) {
    _83 = _25 * TEXCOORD.x;
    _91 = WaveReadLaneFirst(_materialIndex);
    _99 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterNoiseTex);
    _106 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_99 < (uint)65000), _99, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_83 * 4.0f) - ((_80 * TEXCOORD.x) * rsqrt(TEXCOORD.x * TEXCOORD.x))), (TEXCOORD.y * 4.0f)));
    _110 = (_106.x * 0.01f) + -0.004980392f;
    _112 = (_106.y * 0.01f) + -0.004980392f;
    _114 = (_106.y * 0.04f) + -0.019921567f;
    _115 = saturate(_80);  // [sem: _80_sat]
    _117 = saturate(_115 * 2.0f);  // [sem: expr_sat]
    _121 = TEXCOORD.x + -0.5f;
    _122 = select(_77, -1.0f, 1.0f) + _121;
    _124 = TEXCOORD.y + -0.5f;
    _125 = (_110 * _117) + _124;
    _126 = ((_114 * _117) + _122) * _25;
    _127 = _126 * 32.0f;
    _128 = _125 * 32.0f;
    _138 = frac(sin(dot(float2((ceil(_127 + 0.5f) * 0.125f), (ceil(_128 + 0.5f) * 0.125f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _139 = round(_127);
    _140 = round(_128);
    _150 = saturate(((0.25f - (_115 * 3.0f)) + (sqrt((_140 * _140) + (_139 * _139)) * 0.03125f)) * 0.8f);  // [sem: expr_sat]
    _151 = 1.0f - _150;
    if (!(!(_151 >= 0.001f))) {
      _154 = _151 * -9.6875f;
      _166 = _150 * 0.16666667f;
      _167 = _151 * 0.3125f;
      _179 = ((float)((bool)((abs((_167 * ((_126 * (_154 + 32.0f)) - _139)) * (1.0f - frac(_138 * 7.0f))) < _166) && (abs((_167 * ((_125 * (_154 + 32.0f)) - _140)) * frac(_138 * 3.0f)) < _166))));
    } else {
      _179 = 1.0f;
    }
    _188 = saturate(1.0f - abs((saturate(_151 - ((_138 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _189 = _188 * _188;
    _190 = _189 * _189;
    _192 = saturate(_80 + -0.083333336f);  // [sem: expr_sat]
    _194 = saturate(_192 * 2.0f);  // [sem: expr_sat]
    _198 = (_194 * _110) + _124;
    _199 = ((_194 * _114) + _122) * _25;
    _200 = _199 * 16.0f;
    _201 = _198 * 16.0f;
    _211 = frac(sin(dot(float2((ceil(_200 + 0.5f) * 0.25f), (ceil(_201 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _212 = round(_200);
    _213 = round(_201);
    _223 = saturate(((0.25f - (_192 * 3.0f)) + (sqrt((_213 * _213) + (_212 * _212)) * 0.0625f)) * 0.8f);  // [sem: expr_sat]
    _224 = 1.0f - _223;
    if (!(!(_224 >= 0.001f))) {
      _227 = _224 * -4.6875f;
      _239 = _223 * 0.16666667f;
      _240 = _224 * 0.3125f;
      _252 = ((float)((bool)((abs((_240 * ((_199 * (_227 + 16.0f)) - _212)) * (1.0f - frac(_211 * 7.0f))) < _239) && (abs((_240 * ((_198 * (_227 + 16.0f)) - _213)) * frac(_211 * 3.0f)) < _239))));
    } else {
      _252 = 1.0f;
    }
    _261 = saturate(1.0f - abs((saturate(_224 - ((_211 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _262 = _261 * _261;
    _263 = _262 * _262;
    _265 = saturate(_80 + -0.16666667f);  // [sem: expr_sat]
    _267 = saturate(_265 * 2.0f);  // [sem: expr_sat]
    _271 = (_267 * _110) + _124;
    _272 = ((_267 * _114) + _122) * _25;
    _273 = _272 * 10.666667f;
    _274 = _271 * 10.666667f;
    _284 = frac(sin(dot(float2((ceil(_273 + 0.5f) * 0.375f), (ceil(_274 + 0.5f) * 0.375f)), float2(12.9898f, 78.233f))) * 43758.547f);
    _285 = round(_273);
    _286 = round(_274);
    _296 = saturate(((0.25f - (_265 * 3.0f)) + (sqrt((_286 * _286) + (_285 * _285)) * 0.09375f)) * 0.8f);  // [sem: expr_sat]
    _297 = 1.0f - _296;
    if (!(!(_297 >= 0.001f))) {
      _300 = _297 * -3.0208335f;
      _312 = _296 * 0.16666667f;
      _313 = _297 * 0.3125f;
      _325 = ((float)((bool)((abs((_313 * ((_272 * (_300 + 10.666667f)) - _285)) * (1.0f - frac(_284 * 7.0f))) < _312) && (abs((_313 * ((_271 * (_300 + 10.666667f)) - _286)) * frac(_284 * 3.0f)) < _312))));
    } else {
      _325 = 1.0f;
    }
    _334 = saturate(1.0f - abs((saturate(_297 - ((_284 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
    _335 = _334 * _334;
    _336 = _335 * _335;
    _337 = WaveReadLaneFirst(_materialIndex);
    _345 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_337 < (uint)170000), _337, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterBackgroundColor);
    _348 = (float)((uint)((uint)(((uint)((uint)(_345)) >> 16) & 255)));
    _351 = (float)((uint)((uint)(((uint)((uint)(_345)) >> 8) & 255)));
    _353 = (float)((uint)((uint)(_345 & 255)));
    _378 = select(((_348 * 0.003921569f) < 0.04045f), (_348 * 0.000303527f), exp2(log2((_348 * 0.003717127f) + 0.052132703f) * 2.4f));
    _379 = select(((_351 * 0.003921569f) < 0.04045f), (_351 * 0.000303527f), exp2(log2((_351 * 0.003717127f) + 0.052132703f) * 2.4f));
    _380 = select(((_353 * 0.003921569f) < 0.04045f), (_353 * 0.000303527f), exp2(log2((_353 * 0.003717127f) + 0.052132703f) * 2.4f));
    _381 = WaveReadLaneFirst(_materialIndex);
    _389 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_381 < (uint)170000), _381, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardColor);
    _392 = (float)((uint)((uint)(((uint)((uint)(_389)) >> 16) & 255)));
    _395 = (float)((uint)((uint)(((uint)((uint)(_389)) >> 8) & 255)));
    _397 = (float)((uint)((uint)(_389 & 255)));
    _422 = select(((_392 * 0.003921569f) < 0.04045f), (_392 * 0.000303527f), exp2(log2((_392 * 0.003717127f) + 0.052132703f) * 2.4f));
    _423 = select(((_395 * 0.003921569f) < 0.04045f), (_395 * 0.000303527f), exp2(log2((_395 * 0.003717127f) + 0.052132703f) * 2.4f));
    _424 = select(((_397 * 0.003921569f) < 0.04045f), (_397 * 0.000303527f), exp2(log2((_397 * 0.003717127f) + 0.052132703f) * 2.4f));
    _425 = WaveReadLaneFirst(_materialIndex);
    _433 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_425 < (uint)170000), _425, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._sceneTintColor);
    _436 = (float)((uint)((uint)(((uint)((uint)(_433)) >> 16) & 255)));
    _439 = (float)((uint)((uint)(((uint)((uint)(_433)) >> 8) & 255)));
    _441 = (float)((uint)((uint)(_433 & 255)));
    _466 = select(((_436 * 0.003921569f) < 0.04045f), (_436 * 0.000303527f), exp2(log2((_436 * 0.003717127f) + 0.052132703f) * 2.4f));
    _467 = select(((_439 * 0.003921569f) < 0.04045f), (_439 * 0.000303527f), exp2(log2((_439 * 0.003717127f) + 0.052132703f) * 2.4f));
    _468 = select(((_441 * 0.003921569f) < 0.04045f), (_441 * 0.000303527f), exp2(log2((_441 * 0.003717127f) + 0.052132703f) * 2.4f));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _473 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_110 + TEXCOORD.x), (_112 + TEXCOORD.y)));
    _483 = (pow(_473.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _484 = (pow(_473.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _485 = (pow(_473.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _510 = exp2(log2(max(0.0f, (_483 + -0.8359375f)) / (18.851562f - (_483 * 18.6875f))) * 6.277395f) * 10000.0f;
    _511 = exp2(log2(max(0.0f, (_484 + -0.8359375f)) / (18.851562f - (_484 * 18.6875f))) * 6.277395f) * 10000.0f;
    _512 = exp2(log2(max(0.0f, (_485 + -0.8359375f)) / (18.851562f - (_485 * 18.6875f))) * 6.277395f) * 10000.0f;
    if (_80 > 0.2f) {
      _531 = _25 * _121;
      _539 = ((((0.5f - TEXCOORD.y) + _531) * 0.70710677f) + _114) + _110;
      _541 = (((_531 + _124) * 0.70710677f) + _110) + _112;
      _542 = _539 * 16.0f;
      _543 = _541 * 16.0f;
      _553 = frac(sin(dot(float2((ceil(_542 + 0.5f) * 0.25f), (ceil(_543 + 0.5f) * 0.25f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _554 = round(_542);
      _555 = round(_543);
      _564 = saturate(((0.8f - (_80 * 0.8f)) + (sqrt((_555 * _555) + (_554 * _554)) * 0.0625f)) * 1.25f);  // [sem: expr_sat]
      _565 = 1.0f - _564;
      if (!(!(_565 >= 0.001f))) {
        _572 = sin((_time.x * _553) + 0.8f);
        _574 = (frac(_553) > 0.5f);
        _577 = _565 * -3.0f;
        _591 = _564 * 0.16666667f;
        _592 = _565 * 0.2f;
        _604 = ((float)((bool)((abs(((1.0f - frac(_553 * 7.0f)) * _592) * (((_539 * (_577 + 16.0f)) - _554) + select(_574, _572, 0.0f))) < _591) && (abs((frac(_553 * 3.0f) * _592) * (((_541 * (_577 + 16.0f)) - _555) + select(_574, 0.0f, _572))) < _591))));
      } else {
        _604 = 1.0f;
      }
      _613 = saturate(1.0f - abs((saturate(_565 - ((_553 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _614 = _613 * _613;
      _617 = (_604 * 0.29999995f) * (_614 * _614);
      _621 = (_617 * _378) + _378;
      _622 = (_617 * _379) + _379;
      _623 = (_617 * _380) + _380;
      _625 = _539 * 8.0f;
      _626 = _541 * 8.0f;
      _636 = frac(sin(dot(float2((ceil(_625 + 0.5f) * 0.5f), (ceil(_626 + 0.5f) * 0.5f)), float2(12.9898f, 78.233f))) * 43758.547f);
      _637 = round(_625);
      _638 = round(_626);
      _647 = saturate(((1.25f - (_80 * 1.425f)) + (sqrt((_638 * _638) + (_637 * _637)) * 0.125f)) * 0.8f);  // [sem: expr_sat]
      _648 = 1.0f - _647;
      if (!(!(_648 >= 0.001f))) {
        _655 = sin((_time.x * _636) + 1.25f);
        _657 = (frac(_636) > 0.5f);
        _660 = _648 * -2.1875f;
        _674 = _647 * 0.16666667f;
        _675 = _648 * 0.3125f;
        _687 = ((float)((bool)((abs(((1.0f - frac(_636 * 7.0f)) * _675) * (((_539 * (_660 + 8.0f)) - _637) + select(_657, _655, 0.0f))) < _674) && (abs((frac(_636 * 3.0f) * _675) * (((_541 * (_660 + 8.0f)) - _638) + select(_657, 0.0f, _655))) < _674))));
      } else {
        _687 = 1.0f;
      }
      _696 = saturate(1.0f - abs((saturate(_648 - ((_636 + -0.5f) * 0.125f)) * 3.0f) + -2.0f));  // [sem: expr_sat]
      _697 = _696 * _696;
      _700 = (_687 * 0.6f) * (_697 * _697);
      _708 = _124 * _124;
      _715 = 1.0f - (exp2(log2(sqrt((_531 * _531) + _708)) * 1.5f) * 0.75f);
      _716 = ((_700 * _621) + _621) * _715;
      _717 = ((_700 * _622) + _622) * _715;
      _718 = ((_700 * _623) + _623) * _715;
      _721 = saturate((_80 + -0.5f) * 2.0f);  // [sem: expr_sat]
      _725 = (_time.x * 0.015707964f) + 0.7853982f;
      _732 = saturate((exp2(log2(1.0f - _721) * 2.5f) + -0.05f) * 1.1111112f);  // [sem: expr_sat]
      _736 = (_732 * _732) * (3.0f - (_732 * 2.0f));
      _737 = _736 * 0.5f;
      _738 = 1.0f - _737;
      _741 = _736 * -0.25f;
      _744 = (_25 + -1.0f) * 0.5f;
      _748 = ((-0.5f - _741) + (_738 * _83)) - (_738 * _744);
      _749 = cos(_725);
      _751 = ((_738 * TEXCOORD.y) - _741) + -0.5f;
      _752 = sin(_725);
      _761 = (_time.x * 0.03141593f) + 1.5707964f;
      _762 = 0.6f - _737;
      _765 = _736 * 0.25f;
      _771 = ((_765 + -0.3f) + (_762 * _83)) - (_762 * _744);
      _772 = cos(_761);
      _774 = ((_762 * TEXCOORD.y) - (-0.2f - _765)) + -0.5f;
      _775 = sin(_761);
      _777 = (_771 * _772) - (_774 * _775);
      _780 = (_771 * _775) + (_774 * _772);
      _783 = WaveReadLaneFirst(_materialIndex);
      _791 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_783 < (uint)170000), _783, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _798 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_791 < (uint)65000), _791, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(((0.5f - (_751 * _752)) + (_748 * _749)), (((_751 * _749) + 0.5f) + (_748 * _752))));
      _800 = WaveReadLaneFirst(_materialIndex);
      _808 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_800 < (uint)170000), _800, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterCardTex);
      _817 = abs(_777);
      _818 = _817 * 120.0f;
      _824 = abs(_780);
      _829 = _824 * 120.0f;
      // [sem: expr_sat]
      _843 = saturate((saturate(((saturate(_829 + -56.0f) * saturate(60.0f - _829)) * saturate(10.0f - (_817 * 20.0f))) + ((saturate(_818 + -54.0f) * saturate(58.0f - _818)) * saturate(10.0f - (_824 * 20.0f)))) * 0.5f) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_808 < (uint)65000), _808, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((_777 + 0.5f), (_780 + 0.5f))))).x));
      _845 = (_798.x * _798.x) * _721;
      _852 = (_845 * (_422 - _716)) + _716;
      _853 = (_845 * (_423 - _717)) + _717;
      _854 = (_845 * (_424 - _718)) + _718;
      _855 = _843 * _721;
      _865 = abs(_121);
      _867 = 1.0f - (_865 * 0.8f);
      _871 = WaveReadLaneFirst(_materialIndex);
      _879 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_871 < (uint)170000), _871, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._lensDirtTex);
      _886 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_879 < (uint)65000), _879, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_83, TEXCOORD.y));
      _899 = saturate(_865 * 2.0f) * exp2(log2(saturate(sqrt(_708 + (_121 * _121)))) * 6.0f);  // [sem: expr_sat]
      _906 = saturate(((_687 + _604) + _798.x) + _843);  // [sem: expr_sat]
      _921 = max(0.001f, _exposure0.x);
      _926 = ((((((((_855 * (_422 - _852)) + _852) * _867) - _378) + (_899 * _886.x)) * _906) + _378) / _921);
      _927 = ((((((((_855 * (_423 - _853)) + _853) * _867) - _379) + (_899 * _886.y)) * _906) + _379) / _921);
      _928 = ((((((((_855 * (_424 - _854)) + _854) * _867) - _380) + (_899 * _886.z)) * _906) + _380) / _921);
    } else {
      _926 = _378;
      _927 = _379;
      _928 = _380;
    }
    _944 = 1.0f - ((_336 * _336) * (_325 * 0.5f));
    _945 = ((((_510 * _466) - _926) * _325) + _926) * _944;
    _946 = ((((_511 * _467) - _927) * _325) + _927) * _944;
    _947 = ((((_512 * _468) - _928) * _325) + _928) * _944;
    _960 = 1.0f - ((_263 * _263) * (_252 * 0.5f));
    _961 = ((((_510 * (((_466 + -1.0f) * 0.5f) + 1.0f)) - _945) * _252) + _945) * _960;
    _962 = ((((_511 * (((_467 + -1.0f) * 0.5f) + 1.0f)) - _946) * _252) + _946) * _960;
    _963 = ((((_512 * (((_468 + -1.0f) * 0.5f) + 1.0f)) - _947) * _252) + _947) * _960;
    _968 = ((saturate(_80 * 4.0f) * 10000.0f) + 10000.0f) * (1.0f - ((_190 * _190) * (_179 * 0.5f)));
    _978 = (((_968 * _62) - _961) * _179) + _961;
    _979 = (((_968 * _63) - _962) * _179) + _962;
    _980 = (((_968 * _64) - _963) * _179) + _963;
    _983 = saturate((_80 * 15.0f) + -14.0f);  // [sem: expr_sat]
    _994 = (lerp(_978, _926, _983));  // [sem: blended]
    _995 = (lerp(_979, _927, _983));  // [sem: blended]
    _996 = (lerp(_980, _928, _983));  // [sem: blended]
  } else {
    _994 = (_62 * 10000.0f);  // [sem: blended]
    _995 = (_63 * 10000.0f);  // [sem: blended]
    _996 = (_64 * 10000.0f);  // [sem: blended]
  }
  _997 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1010 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _997, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1010 = 1.0f;
  }
  _1013 = (_localToneMappingParams.w > 0.0f);
  if (_1013) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_994, _995, _996));
    _1273 = _rndx_tonemapped_color.x;
    _1274 = _rndx_tonemapped_color.y;
    _1275 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1281 = 1.0f - abs(_etcParams.w);
      _1285 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1286 = (_1281 * _1273) + _1285;
      _1287 = (_1281 * _1274) + _1285;
      _1288 = (_1281 * _1275) + _1285;
      if (_colorGradingParams.w > 0.0f) {
        _1293 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1310 = (((max(0.0f, (1.0f - _1286)) - _1286) * _1293) + _1286);
        _1311 = (((max(0.0f, (1.0f - _1287)) - _1287) * _1293) + _1287);
        _1312 = (((max(0.0f, (1.0f - _1288)) - _1288) * _1293) + _1288);
      } else {
        _1310 = _1286;
        _1311 = _1287;
        _1312 = _1288;
      }
      _1318 = _userImageAdjust.y + 1.0f;
      _1322 = _userImageAdjust.x + 0.5f;
      _1323 = ((_1310 + -0.5f) * _1318) + _1322;
      _1324 = ((_1311 + -0.5f) * _1318) + _1322;
      _1325 = ((_1312 + -0.5f) * _1318) + _1322;
      _1355 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1366 = exp2(log2(saturate(mad(_colorBlind0.z, _1325, mad(_colorBlind0.y, _1324, (_colorBlind0.x * _1323))))) * _1355);
      _1367 = exp2(log2(saturate(mad(_colorBlind1.z, _1325, mad(_colorBlind1.y, _1324, (_colorBlind1.x * _1323))))) * _1355);
      _1368 = exp2(log2(saturate(mad(_colorBlind2.z, _1325, mad(_colorBlind2.y, _1324, (_colorBlind2.x * _1323))))) * _1355);
    } else {
      _1366 = _1273;
      _1367 = _1274;
      _1368 = _1275;
    }
  } else {
    _1366 = _994;
    _1367 = _995;
    _1368 = _996;
  }
  if (_etcParams.y > 1.0f) {
    _1377 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1378 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1382 = saturate(1.0f - (dot(float2(_1377, _1378), float2(_1377, _1378)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1387 = (_1382 * _1366);
    _1388 = (_1382 * _1367);
    _1389 = (_1382 * _1368);
  } else {
    _1387 = _1366;
    _1388 = _1367;
    _1389 = _1368;
  }
  if (_1013 && (_etcParams.z > 0.0f)) {
    _1419 = select((_1387 <= 0.0031308f), (_1387 * 12.92f), (((pow(_1387, 0.41666666f)) * 1.055f) + -0.055f));
    _1420 = select((_1388 <= 0.0031308f), (_1388 * 12.92f), (((pow(_1388, 0.41666666f)) * 1.055f) + -0.055f));
    _1421 = select((_1389 <= 0.0031308f), (_1389 * 12.92f), (((pow(_1389, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1419 = _1387;
    _1420 = _1388;
    _1421 = _1389;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1426 = (float)((uint)((uint)(_997)));
    if (!(_1426 < _viewDir.w)) {
      if (!(_1426 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1435 = _1419;
        _1436 = _1420;
        _1437 = _1421;
      } else {
        _1435 = 0.0f;
        _1436 = 0.0f;
        _1437 = 0.0f;
      }
    } else {
      _1435 = 0.0f;
      _1436 = 0.0f;
      _1437 = 0.0f;
    }
  } else {
    _1435 = _1419;
    _1436 = _1420;
    _1437 = _1421;
  }
  _1447 = exp2(log2(_1435 * 0.0001f) * 0.15930176f);
  _1448 = exp2(log2(_1436 * 0.0001f) * 0.15930176f);
  _1449 = exp2(log2(_1437 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1447 * 18.6875f) + 1.0f)) * ((_1447 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1448 * 18.6875f) + 1.0f)) * ((_1448 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1449 * 18.6875f) + 1.0f)) * ((_1449 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1010;
  return SV_Target;
}
