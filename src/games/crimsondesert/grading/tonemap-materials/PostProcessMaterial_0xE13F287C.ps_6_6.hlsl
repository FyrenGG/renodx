struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _headPosition : packoffset(c002.x);
  float3 _targetFocusPosition : packoffset(c003.x);
  float _hpPercentage : packoffset(c003.w);
  uint _skinnedMeshNoiseTexture : packoffset(c004.x);
  float _highLightForVision : packoffset(c004.y);
  float _highLightForVisionRemoteCatch : packoffset(c004.z);
  float _characterHighlight : packoffset(c004.w);
  uint _specialModeType : packoffset(c005.x);
  float _visionRadius : packoffset(c005.y);
  float _interactionTime : packoffset(c005.z);
  float3 _questGuideWorldPosition : packoffset(c006.x);
  float3 _detectModeUp : packoffset(c007.x);
  float3 _detectModeLook : packoffset(c008.x);
  float3 _detectModePosition : packoffset(c009.x);
  float2 _detectModeLightProfileOffset : packoffset(c010.x);
  uint _detectModeLightProfileIndex : packoffset(c010.z);
  float _detectModeAngle : packoffset(c010.w);
  float _detectModeRadius : packoffset(c011.x);
  uint _useHatMode : packoffset(c011.y);
  uint4 _oreVeinBitMask : packoffset(c012.x);
  uint _oreVeinDissolveIndex : packoffset(c013.x);
  float _oreVeinDissolveRatio : packoffset(c013.y);
  float _hideStateRatio : packoffset(c013.z);
  float3 _hazardAlertPosition : packoffset(c014.x);
  float _wantedRegionRatio : packoffset(c014.w);
  float _wantedRegionOpacity : packoffset(c015.x);
  float _wantedRegionRadius : packoffset(c015.y);
  float3 _wantedRegionPosition : packoffset(c016.x);
  float _elementActivateDuration : packoffset(c016.w);
  float _temperatureWarning : packoffset(c017.x);
  float _electrocutionWarning : packoffset(c017.y);
  float _fleeCount : packoffset(c017.z);
  float _followLearning : packoffset(c017.w);
  float4 _enemyAlert1 : packoffset(c018.x);
  float4 _enemyAlert2 : packoffset(c019.x);
  float _pullingEffectAttractionOffRadius : packoffset(c020.x);
  float _pullingEffectPushFromCharacter : packoffset(c020.y);
  float _pullingEffectPushScale : packoffset(c020.z);
  float _pullingEffectAttractionScale : packoffset(c020.w);
  float _pullingEffectExternalScale : packoffset(c021.x);
  float _pullingEffectVectorFieldScale : packoffset(c021.y);
  float _pullingEffectHeightOffset : packoffset(c021.z);
  float _housingPreviewState : packoffset(c021.w);
  float _customEffectOpacity : packoffset(c022.x);
  uint _renderPassInteraction : packoffset(c022.y);
  uint _renderPassSelfPlayer : packoffset(c022.z);
  uint _renderPassEnemy : packoffset(c022.w);
  uint _renderPassTargetFocus : packoffset(c023.x);
  uint _renderPassLearning : packoffset(c023.y);
  uint _renderPassTest : packoffset(c023.z);
  uint _enableChromaticAberration : packoffset(c023.w);
  uint _renderPassDetectObjective : packoffset(c024.x);
  uint _renderPassDetectItem : packoffset(c024.y);
  uint _renderPassDetectGimmick : packoffset(c024.z);
  uint _renderPassDetectRemoteCatch : packoffset(c024.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c025.x);
  uint _renderPassDetectLift : packoffset(c025.y);
  uint _renderPassKnowledgeNPC : packoffset(c025.z);
  uint _renderPassKnowledgeGain : packoffset(c025.w);
  uint _renderPassAnamorphicMural : packoffset(c026.x);
  uint _renderPassMemoryBackground : packoffset(c026.y);
  uint _renderPassMemory : packoffset(c026.z);
  uint _renderPassEnemyBoss : packoffset(c026.w);
  uint _renderPassAimHighlight : packoffset(c027.x);
  float4 _aimHighlightPosition : packoffset(c028.x);
  uint _renderPassNPCGhost : packoffset(c029.x);
  uint _renderPassHousing : packoffset(c029.y);
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  float _29;
  int _30;
  float _38;
  float _44;
  float _45;
  float _46;
  float _47;
  float _48;
  float _49;
  float _50;
  float _51;
  bool _52;
  float _60;
  float _97;
  float _98;
  float _1013;
  float _1014;
  float _1015;
  int _1016;
  float _1358;
  float _1381;
  float _1403;
  float _1424;
  float _1446;
  float _1465;
  float _1484;
  float _1503;
  float _1568;
  float _1569;
  float _1570;
  int _1571;
  float _1813;
  float _1814;
  float _1815;
  float _1816;
  float _1830;
  float _2035;
  float _2036;
  float _2037;
  float _2130;
  float _2131;
  float _2132;
  float _2186;
  float _2187;
  float _2188;
  float _2207;
  float _2208;
  float _2209;
  float _2239;
  float _2240;
  float _2241;
  float _2255;
  float _2256;
  float _2257;
  float _62;
  float _64;
  float _72;
  float _80;
  float _81;
  float _83;
  float _91;
  int _100;
  float _108;
  bool _109;
  float _112;
  float _113;
  float _114;
  float _154;
  float _157;
  float _158;
  float _160;
  int _190;
  int _198;
  int _204;
  int _212;
  float4 _219;
  int _224;
  float _232;
  float _233;
  float _234;
  int _235;
  int _243;
  float _244;
  float _246;
  float _247;
  float _248;
  float _252;
  float _254;
  float _258;
  float _259;
  float _262;
  float _263;
  float _266;
  float _267;
  float _271;
  float _276;
  float _278;
  bool _281;
  bool _282;
  bool _283;
  bool _284;
  float _310;
  bool _313;
  bool _314;
  bool _315;
  bool _316;
  float _329;
  float _334;
  float _335;
  float _345;
  float _346;
  float _361;
  float _365;
  float _367;
  float _368;
  float _372;
  int _386;
  int _394;
  float _395;
  float _396;
  float _400;
  float _405;
  float _407;
  bool _410;
  bool _411;
  bool _412;
  bool _413;
  float _439;
  bool _442;
  bool _443;
  bool _444;
  bool _445;
  float _458;
  float _463;
  float _464;
  float _481;
  float _485;
  float _493;
  float _495;
  int _496;
  int _504;
  float _508;
  float _511;
  float _512;
  float _515;
  float _516;
  float _519;
  float _522;
  float _523;
  float _524;
  float _532;
  float _533;
  float _534;
  float _536;
  float _539;
  float _540;
  float _542;
  float _545;
  float _549;
  float _550;
  float _561;
  float _564;
  float _586;
  float _590;
  float _598;
  float _603;
  int _604;
  int _612;
  float _615;
  float _616;
  float _619;
  float _622;
  float _623;
  float _624;
  float _632;
  float _633;
  float _634;
  float _636;
  float _639;
  float _640;
  float _642;
  float _645;
  float _649;
  float _650;
  float _661;
  float _664;
  float _688;
  float _689;
  float _693;
  float _701;
  float _703;
  int _704;
  int _712;
  float _715;
  float _716;
  float _719;
  float _722;
  float _723;
  float _724;
  float _732;
  float _733;
  float _734;
  float _736;
  float _739;
  float _740;
  float _742;
  float _745;
  float _749;
  float _750;
  float _761;
  float _764;
  float _786;
  float _790;
  float _798;
  float _801;
  float _804;
  int _805;
  int _813;
  float _816;
  float _817;
  float _820;
  float _823;
  float _824;
  float _825;
  float _833;
  float _834;
  float _835;
  float _837;
  float _840;
  float _841;
  float _843;
  float _846;
  float _850;
  float _851;
  float _862;
  float _865;
  float _887;
  float _891;
  float _899;
  float _902;
  float _904;
  int _905;
  int _913;
  float _916;
  float _917;
  float _920;
  float _923;
  float _924;
  float _925;
  float _933;
  float _934;
  float _935;
  float _937;
  float _940;
  float _941;
  float _943;
  float _946;
  float _950;
  float _951;
  float _962;
  float _965;
  float _990;
  float _993;
  float _998;
  int _1017;
  float _1018;
  float _1027;
  float _1031;
  float _1039;
  float _1048;
  float _1070;
  float _1071;
  float _1072;
  float _1073;
  int _1074;
  int _1082;
  float _1085;
  float _1086;
  float _1089;
  float _1092;
  float _1093;
  float _1094;
  float _1102;
  float _1103;
  float _1104;
  float _1106;
  float _1109;
  float _1110;
  float _1112;
  float _1115;
  float _1121;
  float _1122;
  float _1133;
  float _1136;
  float _1154;
  float _1155;
  int _1156;
  int _1164;
  float _1167;
  float _1168;
  float _1171;
  float _1174;
  float _1175;
  float _1176;
  float _1184;
  float _1185;
  float _1186;
  float _1188;
  float _1191;
  float _1192;
  float _1194;
  float _1197;
  float _1203;
  float _1204;
  float _1215;
  float _1218;
  float _1240;
  float _1241;
  float _1242;
  float _1243;
  float _1260;
  int _1264;
  float _1272;
  int _1273;
  int _1281;
  float _1283;
  float _1307;
  float _1308;
  float _1322;
  float _1323;
  float _1324;
  float _1325;
  uint2 _1327;
  float _1336;
  float _1337;
  int _1340;
  int _1341;
  int _1364;
  float _1384;
  int _1386;
  int _1407;
  float _1427;
  int _1429;
  int _1525;
  float _1533;
  int _1534;
  float _1542;
  float _1547;
  float _1556;
  float _1563;
  int _1578;
  float _1579;
  float _1584;
  float _1587;
  float _1591;
  float _1599;
  float _1601;
  float _1613;
  float _1621;
  float _1622;
  int _1624;
  int _1632;
  float _1635;
  float _1636;
  float _1639;
  float _1642;
  float _1643;
  float _1644;
  float _1652;
  float _1653;
  float _1654;
  float _1656;
  float _1659;
  float _1660;
  float _1662;
  float _1665;
  float _1667;
  float _1672;
  float _1674;
  float _1685;
  float _1688;
  float _1708;
  float _1709;
  float _1714;
  float _1718;
  int _1720;
  int _1728;
  float _1731;
  float _1732;
  float _1735;
  float _1738;
  float _1739;
  float _1740;
  float _1748;
  float _1749;
  float _1750;
  float _1752;
  float _1755;
  float _1756;
  float _1758;
  float _1761;
  float _1763;
  float _1768;
  float _1770;
  float _1781;
  float _1784;
  float _1804;
  float _1808;
  float _1809;
  float _1810;
  uint _1817;
  bool _1833;
  float _1839;
  float _1888;
  float _1889;
  float _1890;
  float _1892;
  float _1899;
  float _1900;
  float _1901;
  float _1920;
  float _1921;
  float _1922;
  float _1923;
  float _1924;
  float _1925;
  float _1926;
  float _1927;
  float _1928;
  float _1974;
  float _1975;
  float _1976;
  float _1977;
  float _1978;
  float _1979;
  float _1980;
  float _1997;
  float _1998;
  float _1999;
  float _2000;
  float _2006;
  float _2009;
  float _2016;
  float _2017;
  float _2018;
  float _2047;
  float _2072;
  float _2073;
  float _2074;
  float _2093;
  float _2094;
  float _2095;
  float _2101;
  float _2105;
  float _2106;
  float _2107;
  float _2108;
  float _2113;
  float _2138;
  float _2142;
  float _2143;
  float _2144;
  float _2145;
  float _2175;
  float _2197;
  float _2198;
  float _2202;
  float _2246;
  float _2267;
  float _2268;
  float _2269;
  int __loop_jump_target = -1;
  _29 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _44 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _45 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _46 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _47 = 0.5f / _46;
  _48 = _44 + -0.5f;
  _49 = _45 - _47;
  _50 = dot(float2(_48, _49), float2(_48, _49));
  _51 = sqrt(_50);
  _52 = (_38 > 0.0f);
  if (_52) {
    _60 = sqrt(dot(float2(0.5f, _47), float2(0.5f, _47)));
  } else {
    if (!(_46 < 1.0f)) {
      _60 = _47;
    } else {
      _60 = 0.5f;
    }
  }
  if (_52) {
    _62 = rsqrt(_50);  // [sem: rsqrt_val]
    _64 = tan(_51 * _38);
    _72 = tan(_60 * _38);
    _97 = (((((_60 * _48) * _62) * _64) / _72) + 0.5f);
    _98 = (((((_60 * _49) * _62) * _64) / _72) + _47);
  } else {
    if (_38 < 0.0f) {
      _80 = rsqrt(_50);  // [sem: rsqrt_val]
      _81 = _38 * -10.0f;
      _83 = atan(_51 * _81);
      _91 = atan(_60 * _81);
      _97 = (((((_60 * _48) * _80) * _83) / _91) + 0.5f);
      _98 = (((((_60 * _49) * _80) * _83) / _91) + _47);
    } else {
      _97 = _44;
      _98 = _45;
    }
  }
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _109 = (_108 == 1.0f);
  _112 = select(_109, _97, TEXCOORD.x) + -0.5f;
  _113 = select(_109, (_98 * _46), TEXCOORD.y) + -0.5f;
  _114 = _112 * _29;
  _154 = mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, ((_viewProj[3].x) * _questGuideWorldPosition.x))) + (_viewProj[3].w);
  _157 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, ((_viewProj[2].x) * _questGuideWorldPosition.x))) + (_viewProj[2].w)) / _154;
  _158 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, ((_viewProj[1].x) * _questGuideWorldPosition.x))) + (_viewProj[1].w)) / _154) * -0.5f;
  _160 = (_29 * 0.5f) * ((mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, ((_viewProj[0].x) * _questGuideWorldPosition.x))) + (_viewProj[0].w)) / _154);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_158 >= 1.05f) || ((_158 <= -1.5f) || ((_160 >= 1.6f) || ((_157 < 0.0f) || (_160 <= -1.6f)))))) {
      _190 = WaveReadLaneFirst(_materialIndex);
      _198 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_190 < (uint)170000), _190, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _204 = WaveReadLaneFirst(_materialIndex);
      _212 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_204 < (uint)170000), _204, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensColorTableTexture);
      _219 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_212 < (uint)65000), _212, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((sqrt((_112 * _112) + (_113 * _113)) * 2.0f), 0.5f));
      _224 = WaveReadLaneFirst(_materialIndex);
      _232 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_224 < (uint)170000), _224, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
      _233 = -0.0f - _160;
      _234 = -0.0f - _158;
      _235 = WaveReadLaneFirst(_materialIndex);
      _243 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _244 = -0.0f - _114;
      _246 = rsqrt(dot(float3(_113, _244, 0.0f), float3(_113, _244, 0.0f)));  // [sem: invLength]
      _247 = _246 * _113;
      _248 = _246 * _244;
      _252 = sqrt((_113 * _113) + (_114 * _114));
      _254 = cos(_252 * 1.5f);
      _258 = 1.0f - _254;
      _259 = _258 * dot(float3(_247, _248, 0.0f), float3(_233, _234, 0.0f));
      _262 = (_259 * _247) + (_254 * _233);
      _263 = (_259 * _248) + (_254 * _234);
      _266 = _114 - (_262 * 0.56666666f);
      _267 = _113 - (_263 * 0.56666666f);
      _271 = sqrt((_266 * _266) + (_267 * _267));
      _276 = (pow(_271, 0.5f));
      _278 = atan(_267 / _266);
      _281 = (_266 < 0.0f);
      _282 = (_266 == 0.0f);
      _283 = (_267 >= 0.0f);
      _284 = (_267 < 0.0f);
      _310 = atan((-0.0f - _267) / (-0.0f - _266));
      _313 = (_266 > -0.0f);
      _314 = (_266 == -0.0f);
      _315 = (_267 <= -0.0f);
      _316 = (_267 > -0.0f);
      _329 = _time.x * 2.0f;
      _334 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_282 && _283), 18.849556f, select((_282 && _284), -18.849556f, (select((_281 && _284), (_278 + -3.1415927f), select((_281 && _283), (_278 + 3.1415927f), _278)) * 12.0f))), (((_time.x * 0.2f) + _276) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_314 && _315), 18.849556f, select((_314 && _316), -18.849556f, (select((_313 && _316), (_310 + -3.1415927f), select((_313 && _315), (_310 + 3.1415927f), _310)) * 12.0f))) + _329), (_329 + (_276 * 12.0f)))))).x));
      _335 = _334 * _334;
      _345 = _266 - _262;
      _346 = _267 - _263;
      _361 = log2(1.0f - saturate(exp2(log2(sqrt((_262 * _262) + (_263 * _263))) * 0.5f)));
      _365 = TEXCOORD.x * 0.1f;
      _367 = (_time.x * 1.6800001f) + _365;
      _368 = _367 + 16.800001f;
      _372 = frac(sin(floor(_368)) * 43758.547f);
      _386 = WaveReadLaneFirst(_materialIndex);
      _394 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _395 = _262 + _114;
      _396 = _263 + _113;
      _400 = sqrt((_395 * _395) + (_396 * _396));
      _405 = (pow(_400, 0.5f));
      _407 = atan(_396 / _395);
      _410 = (_395 < 0.0f);
      _411 = (_395 == 0.0f);
      _412 = (_396 >= 0.0f);
      _413 = (_396 < 0.0f);
      _439 = atan((-0.0f - _396) / (-0.0f - _395));
      _442 = (_395 > -0.0f);
      _443 = (_395 == -0.0f);
      _444 = (_396 <= -0.0f);
      _445 = (_396 > -0.0f);
      _458 = _time.x * 2.0f;
      _463 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_394 < (uint)65000), _394, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_411 && _412), 18.849556f, select((_411 && _413), -18.849556f, (select((_410 && _413), (_407 + -3.1415927f), select((_410 && _412), (_407 + 3.1415927f), _407)) * 12.0f))), (((_time.x * 0.2f) + _405) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_394 < (uint)65000), _394, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_443 && _444), 18.849556f, select((_443 && _445), -18.849556f, (select((_442 && _445), (_439 + -3.1415927f), select((_442 && _444), (_439 + 3.1415927f), _439)) * 12.0f))) + _458), (_458 + (_405 * 12.0f)))))).x));
      _464 = _463 * _463;
      _481 = _367 + 4.59375f;
      _485 = frac(sin(floor(_481)) * 43758.547f);
      _493 = (frac(_481) * (frac(sin(ceil(_481)) * 43758.547f) - _485)) + _485;
      _495 = (_493 * 0.050000012f) + 0.45f;
      _496 = WaveReadLaneFirst(_materialIndex);
      _504 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_496 < (uint)170000), _496, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _508 = dot(float3(_247, _248, 0.0f), float3(_160, _158, 0.0f)) * _258;
      _511 = (_508 * _247) + (_254 * _160);
      _512 = (_508 * _248) + (_254 * _158);
      _515 = _114 - (_511 * _495);
      _516 = _113 - (_512 * _495);
      _519 = (_515 * 0.9553365f) + (_516 * 0.29552022f);
      _522 = (_516 * 0.9553365f) - (_515 * 0.29552022f);
      _523 = _511 - _519;
      _524 = _512 - _522;
      _532 = saturate(exp2(log2(sqrt((_523 * _523) + (_524 * _524))) * 15.0f));  // [sem: expr_sat]
      _533 = abs(_519);
      _534 = abs(_522);
      _536 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_533, _534)), 0.0f);
      _539 = (_536 * 1.847759f) + _533;
      _540 = _534 - (_536 * 0.76536685f);
      _542 = min(dot(float2(0.9238795f, 0.38268343f), float2(_539, _540)), 0.0f);
      _545 = _539 - (_542 * 1.847759f);
      _549 = _545 - min(max(_545, -0.060060967f), 0.060060967f);
      _550 = (_540 - (_542 * 0.76536685f)) + -0.145f;
      _561 = ((float)((int)((int)((int)(uint)((int)(_550 > 0.0f))) - (int)((int)(uint)((int)(_550 < 0.0f)))))) * sqrt((_549 * _549) + (_550 * _550));
      _564 = saturate(abs(_561) * 200.0f);  // [sem: expr_sat]
      _586 = _367 + 4.4625006f;
      _590 = frac(sin(floor(_586)) * 43758.547f);
      _598 = (frac(_586) * (frac(sin(ceil(_586)) * 43758.547f) - _590)) + _590;
      _603 = (_598 * 0.08000002f) + 0.71999997f;
      _604 = WaveReadLaneFirst(_materialIndex);
      _612 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_604 < (uint)170000), _604, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _615 = _114 - (_603 * _511);
      _616 = _113 - (_603 * _512);
      _619 = (_615 * 0.9553365f) + (_616 * 0.29552022f);
      _622 = (_616 * 0.9553365f) - (_615 * 0.29552022f);
      _623 = _511 - _619;
      _624 = _512 - _622;
      _632 = saturate(exp2(log2(sqrt((_623 * _623) + (_624 * _624))) * 15.0f));  // [sem: expr_sat]
      _633 = abs(_619);
      _634 = abs(_622);
      _636 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_633, _634)), 0.0f);
      _639 = (_636 * 1.847759f) + _633;
      _640 = _634 - (_636 * 0.76536685f);
      _642 = min(dot(float2(0.9238795f, 0.38268343f), float2(_639, _640)), 0.0f);
      _645 = _639 - (_642 * 1.847759f);
      _649 = _645 - min(max(_645, -0.08491378f), 0.08491378f);
      _650 = (_640 - (_642 * 0.76536685f)) + -0.205f;
      _661 = ((float)((int)((int)((int)(uint)((int)(_650 > 0.0f))) - (int)((int)(uint)((int)(_650 < 0.0f)))))) * sqrt((_649 * _649) + (_650 * _650));
      _664 = saturate(abs(_661) * 200.0f);  // [sem: expr_sat]
      _688 = (saturate(saturate(exp2(log2(saturate(1.0f - _661)) * (5.0f / ((_598 * 0.008000002f) + 0.072f)))) - _632) + (saturate((1.0f - _632) - saturate((_664 * _664) * (3.0f - (_664 * 2.0f)))) * 0.4f)) * ((_493 * 0.9f) + 0.1f);
      _689 = _367 + 1.7308595f;
      _693 = frac(sin(floor(_689)) * 43758.547f);
      _701 = (frac(_689) * (frac(sin(ceil(_689)) * 43758.547f) - _693)) + _693;
      _703 = 1.5f - (_701 * 0.15000004f);
      _704 = WaveReadLaneFirst(_materialIndex);
      _712 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_704 < (uint)170000), _704, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _715 = _114 - (_703 * _262);
      _716 = _113 - (_703 * _263);
      _719 = (_715 * 0.9553365f) + (_716 * 0.29552022f);
      _722 = (_716 * 0.9553365f) - (_715 * 0.29552022f);
      _723 = _262 - _719;
      _724 = _263 - _722;
      _732 = saturate(exp2(log2(sqrt((_723 * _723) + (_724 * _724))) * 15.0f));  // [sem: expr_sat]
      _733 = abs(_719);
      _734 = abs(_722);
      _736 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_733, _734)), 0.0f);
      _739 = (_736 * 1.847759f) + _733;
      _740 = _734 - (_736 * 0.76536685f);
      _742 = min(dot(float2(0.9238795f, 0.38268343f), float2(_739, _740)), 0.0f);
      _745 = _739 - (_742 * 1.847759f);
      _749 = _745 - min(max(_745, -0.12633514f), 0.12633514f);
      _750 = (_740 - (_742 * 0.76536685f)) + -0.305f;
      _761 = ((float)((int)((int)((int)(uint)((int)(_750 > 0.0f))) - (int)((int)(uint)((int)(_750 < 0.0f)))))) * sqrt((_749 * _749) + (_750 * _750));
      _764 = saturate(abs(_761) * 200.0f);  // [sem: expr_sat]
      _786 = _367 + 4.8562503f;
      _790 = frac(sin(floor(_786)) * 43758.547f);
      _798 = (frac(_786) * (frac(sin(ceil(_786)) * 43758.547f) - _790)) + _790;
      _801 = ((_798 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _761)) * (5.0f / (0.15f - (_701 * 0.015000003f))))) - _732) + (saturate((1.0f - _732) - saturate((_764 * _764) * (3.0f - (_764 * 2.0f)))) * 0.4f));
      _804 = 0.5f - (_798 * 0.050000012f);
      _805 = WaveReadLaneFirst(_materialIndex);
      _813 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_805 < (uint)170000), _805, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _816 = _114 - (_804 * _262);
      _817 = _113 - (_804 * _263);
      _820 = (_816 * 0.9553365f) + (_817 * 0.29552022f);
      _823 = (_817 * 0.9553365f) - (_816 * 0.29552022f);
      _824 = _262 - _820;
      _825 = _263 - _823;
      _833 = saturate(exp2(log2(sqrt((_824 * _824) + (_825 * _825))) * 15.0f));  // [sem: expr_sat]
      _834 = abs(_820);
      _835 = abs(_823);
      _837 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_834, _835)), 0.0f);
      _840 = (_837 * 1.847759f) + _834;
      _841 = _835 - (_837 * 0.76536685f);
      _843 = min(dot(float2(0.9238795f, 0.38268343f), float2(_840, _841)), 0.0f);
      _846 = _840 - (_843 * 1.847759f);
      _850 = _846 - min(max(_846, -0.08491378f), 0.08491378f);
      _851 = (_841 - (_843 * 0.76536685f)) + -0.205f;
      _862 = ((float)((int)((int)((int)(uint)((int)(_851 > 0.0f))) - (int)((int)(uint)((int)(_851 < 0.0f)))))) * sqrt((_850 * _850) + (_851 * _851));
      _865 = saturate(abs(_862) * 200.0f);  // [sem: expr_sat]
      _887 = _367 + 1.1156251f;
      _891 = frac(sin(floor(_887)) * 43758.547f);
      _899 = (frac(_887) * (frac(sin(ceil(_887)) * 43758.547f) - _891)) + _891;
      _902 = ((_899 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _862)) * (5.0f / (0.05f - (_798 * 0.0050000013f))))) - _833) + (saturate((1.0f - _833) - saturate((_865 * _865) * (3.0f - (_865 * 2.0f)))) * 0.4f));
      _904 = 0.2f - (_899 * 0.020000005f);
      _905 = WaveReadLaneFirst(_materialIndex);
      _913 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_905 < (uint)170000), _905, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _916 = _114 - (_904 * _262);
      _917 = _113 - (_904 * _263);
      _920 = (_916 * 0.9553365f) + (_917 * 0.29552022f);
      _923 = (_917 * 0.9553365f) - (_916 * 0.29552022f);
      _924 = _262 - _920;
      _925 = _263 - _923;
      _933 = saturate(exp2(log2(sqrt((_924 * _924) + (_925 * _925))) * 15.0f));  // [sem: expr_sat]
      _934 = abs(_920);
      _935 = abs(_923);
      _937 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_934, _935)), 0.0f);
      _940 = (_937 * 1.847759f) + _934;
      _941 = _935 - (_937 * 0.76536685f);
      _943 = min(dot(float2(0.9238795f, 0.38268343f), float2(_940, _941)), 0.0f);
      _946 = _940 - (_943 * 1.847759f);
      _950 = _946 - min(max(_946, -0.06834524f), 0.06834524f);
      _951 = (_941 - (_943 * 0.76536685f)) + -0.165f;
      _962 = ((float)((int)((int)((int)(uint)((int)(_951 > 0.0f))) - (int)((int)(uint)((int)(_951 < 0.0f)))))) * sqrt((_950 * _950) + (_951 * _951));
      _965 = saturate(abs(_962) * 200.0f);  // [sem: expr_sat]
      _990 = ((saturate(saturate(exp2(log2(saturate(1.0f - _962)) * (1.0f / (0.020000001f - (_899 * 0.0020000006f))))) - _933) + (saturate((1.0f - _933) - saturate((_965 * _965) * (3.0f - (_965 * 2.0f)))) * 0.4f)) * ((_701 * 0.9f) + 0.1f)) + (((_598 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _561)) * (5.0f / ((_493 * 0.0050000013f) + 0.044999998f)))) - _532) + (saturate((1.0f - _532) - saturate((_564 * _564) * (3.0f - (_564 * 2.0f)))) * 0.4f)));
      _993 = _902 + _688;
      _998 = _219.w * 0.08f;
      _1013 = 0.0f;
      _1014 = 0.0f;
      _1015 = 0.0f;
      _1016 = 0;
      while(true) {
        _1017 = (int)(_1016) + (int)(1);
        _1018 = (float)((int)(_1017));
        _1027 = ((_time.x * 2.52f) * frac(sin((float)((int)(_1016))) * 43758.547f)) + _365;
        _1031 = frac(sin(floor(_1027)) * 43758.547f);
        _1039 = (frac(_1027) * (frac(sin(ceil(_1027)) * 43758.547f) - _1031)) + _1031;
        _1048 = (_1039 * 0.16f) + 0.64000005f;
        _1070 = _1018 * 0.07f;
        _1071 = (((frac(sin(_1018 * 10.0f) * 43758.547f) + -1.0f) * _1048) + 1.0f) * _1070;
        _1072 = _1018 * 0.001f;
        _1073 = (((frac(sin(_1018 * 2000.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _1072;
        _1074 = WaveReadLaneFirst(_materialIndex);
        _1082 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1085 = _114 - (_1071 * _160);
        _1086 = _113 - (_1071 * _158);
        _1089 = (_1085 * 0.9553365f) + (_1086 * 0.29552022f);
        _1092 = (_1086 * 0.9553365f) - (_1085 * 0.29552022f);
        _1093 = _160 - _1089;
        _1094 = _158 - _1092;
        _1102 = saturate(exp2(log2(sqrt((_1093 * _1093) + (_1094 * _1094))) * 15.0f));  // [sem: expr_sat]
        _1103 = abs(_1089);
        _1104 = abs(_1092);
        _1106 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1103, _1104)), 0.0f);
        _1109 = (_1106 * 1.847759f) + _1103;
        _1110 = _1104 - (_1106 * 0.76536685f);
        _1112 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1109, _1110)), 0.0f);
        _1115 = _1109 - (_1112 * 1.847759f);
        _1121 = _1115 - min(max(_1115, (_1073 * -0.41421357f)), (_1073 * 0.41421357f));
        _1122 = (_1110 - (_1112 * 0.76536685f)) - _1073;
        _1133 = ((float)((int)((int)((int)(uint)((int)(_1122 > 0.0f))) - (int)((int)(uint)((int)(_1122 < 0.0f)))))) * sqrt((_1121 * _1121) + (_1122 * _1122));
        _1136 = saturate(abs(_1133) * 200.0f);  // [sem: expr_sat]
        _1154 = (((frac(sin(_1018 * 5.0f) * 43758.547f) + -1.0f) * _1048) + 1.0f) * _1070;
        _1155 = (((frac(sin(_1018 * 20.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _1072;
        _1156 = WaveReadLaneFirst(_materialIndex);
        _1164 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1156 < (uint)170000), _1156, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1167 = _114 - (_1154 * _233);
        _1168 = _113 - (_1154 * _234);
        _1171 = (_1167 * 0.9553365f) + (_1168 * 0.29552022f);
        _1174 = (_1168 * 0.9553365f) - (_1167 * 0.29552022f);
        _1175 = _233 - _1171;
        _1176 = _234 - _1174;
        _1184 = saturate(exp2(log2(sqrt((_1175 * _1175) + (_1176 * _1176))) * 15.0f));  // [sem: expr_sat]
        _1185 = abs(_1171);
        _1186 = abs(_1174);
        _1188 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1185, _1186)), 0.0f);
        _1191 = (_1188 * 1.847759f) + _1185;
        _1192 = _1186 - (_1188 * 0.76536685f);
        _1194 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1191, _1192)), 0.0f);
        _1197 = _1191 - (_1194 * 1.847759f);
        _1203 = _1197 - min(max(_1197, (_1155 * -0.41421357f)), (_1155 * 0.41421357f));
        _1204 = (_1192 - (_1194 * 0.76536685f)) - _1155;
        _1215 = ((float)((int)((int)((int)(uint)((int)(_1204 > 0.0f))) - (int)((int)(uint)((int)(_1204 < 0.0f)))))) * sqrt((_1203 * _1203) + (_1204 * _1204));
        _1218 = saturate(abs(_1215) * 200.0f);  // [sem: expr_sat]
        _1240 = ((saturate(saturate(exp2(log2(saturate(1.0f - _1215)) * (100.0f / _1154))) - _1184) + saturate(saturate(exp2(log2(saturate(1.0f - _1133)) * (100.0f / _1071))) - _1102)) + ((saturate((1.0f - _1184) - saturate((_1218 * _1218) * (3.0f - (_1218 * 2.0f)))) + saturate((1.0f - _1102) - saturate((_1136 * _1136) * (3.0f - (_1136 * 2.0f))))) * 0.4f)) * _1039;
        _1241 = _1240 + _1013;
        _1242 = _1240 + _1014;
        _1243 = _1240 + _1015;
        if (!(_1017 == 20)) {
          _1013 = _1241;
          _1014 = _1242;
          _1015 = _1243;
          _1016 = _1017;
          continue;
        }
        while(true) {
          _1568 = 0.0f;
          _1569 = 0.0f;
          _1570 = 0.0f;
          _1571 = 0;
          while(true) {
            _1578 = (int)(_1571) + (int)(1);
            _1579 = (float)((int)(_1578));
            _1584 = frac(sin(_1579 * 300.0f) * 43758.547f) + -1.0f;
            _1587 = ((_time.x * 2.52f) * frac(sin((float)((int)(_1571))) * 43758.547f)) + _365;
            _1591 = frac(sin(floor(_1587)) * 43758.547f);
            _1599 = (frac(_1587) * (frac(sin(ceil(_1587)) * 43758.547f) - _1591)) + _1591;
            _1601 = (_1599 * 0.03750001f) + 0.7125f;
            _1613 = frac(sin(_1579 * 170.0f) * 43758.547f) + -1.0f;
            _1621 = _1579 * 0.15f;
            _1622 = ((_1601 * (frac(sin(_1579 * 110.0f) * 43758.547f) + -1.0f)) + 1.0f) * _1621;
            _1624 = WaveReadLaneFirst(_materialIndex);
            _1632 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1624 < (uint)170000), _1624, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _1635 = _114 - (_1622 * _511);
            _1636 = _113 - (_1622 * _512);
            _1639 = (_1635 * 0.9553365f) + (_1636 * 0.29552022f);
            _1642 = (_1636 * 0.9553365f) - (_1635 * 0.29552022f);
            _1643 = _511 - _1639;
            _1644 = _512 - _1642;
            _1652 = saturate(exp2(log2(sqrt((_1643 * _1643) + (_1644 * _1644))) * 15.0f));  // [sem: expr_sat]
            _1653 = abs(_1639);
            _1654 = abs(_1642);
            _1656 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1653, _1654)), 0.0f);
            _1659 = (_1656 * 1.847759f) + _1653;
            _1660 = _1654 - (_1656 * 0.76536685f);
            _1662 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1659, _1660)), 0.0f);
            _1665 = _1659 - (_1662 * 1.847759f);
            _1667 = _1584 * 0.012426407f;
            _1672 = _1665 - min(max(_1665, (-0.020710679f - _1667)), (_1667 + 0.020710679f));
            _1674 = (_1660 - (_1662 * 0.76536685f)) + (-0.05f - (_1584 * 0.030000001f));
            _1685 = ((float)((int)((int)((int)(uint)((int)(_1674 > 0.0f))) - (int)((int)(uint)((int)(_1674 < 0.0f)))))) * sqrt((_1672 * _1672) + (_1674 * _1674));
            _1688 = saturate(abs(_1685) * 200.0f);  // [sem: expr_sat]
            _1708 = _1579 * 0.1f;
            _1709 = (saturate(saturate(exp2(log2(saturate(1.0f - _1685)) * (300.0f / _1622))) - _1652) + (saturate((1.0f - _1652) - saturate((_1688 * _1688) * (3.0f - (_1688 * 2.0f)))) * 0.4f)) * _1708;
            _1714 = (_1599 * 0.5f) + 0.5f;
            _1718 = (((frac(sin(_1579 * 15.0f) * 43758.547f) + -1.0f) * _1601) + 1.0f) * _1621;
            _1720 = WaveReadLaneFirst(_materialIndex);
            _1728 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1720 < (uint)170000), _1720, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _1731 = _114 - (_1718 * _262);
            _1732 = _113 - (_1718 * _263);
            _1735 = (_1731 * 0.9553365f) + (_1732 * 0.29552022f);
            _1738 = (_1732 * 0.9553365f) - (_1731 * 0.29552022f);
            _1739 = _262 - _1735;
            _1740 = _263 - _1738;
            _1748 = saturate(exp2(log2(sqrt((_1739 * _1739) + (_1740 * _1740))) * 15.0f));  // [sem: expr_sat]
            _1749 = abs(_1735);
            _1750 = abs(_1738);
            _1752 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1749, _1750)), 0.0f);
            _1755 = (_1752 * 1.847759f) + _1749;
            _1756 = _1750 - (_1752 * 0.76536685f);
            _1758 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1755, _1756)), 0.0f);
            _1761 = _1755 - (_1758 * 1.847759f);
            _1763 = _1613 * 0.012426407f;
            _1768 = _1761 - min(max(_1761, (-0.020710679f - _1763)), (_1763 + 0.020710679f));
            _1770 = (_1756 - (_1758 * 0.76536685f)) + (-0.05f - (_1613 * 0.030000001f));
            _1781 = ((float)((int)((int)((int)(uint)((int)(_1770 > 0.0f))) - (int)((int)(uint)((int)(_1770 < 0.0f)))))) * sqrt((_1768 * _1768) + (_1770 * _1770));
            _1784 = saturate(abs(_1781) * 200.0f);  // [sem: expr_sat]
            _1804 = (saturate(saturate(exp2(log2(saturate(1.0f - _1781)) * (300.0f / _1718))) - _1748) + (saturate((1.0f - _1748) - saturate((_1784 * _1784) * (3.0f - (_1784 * 2.0f)))) * 0.4f)) * _1708;
            _1808 = (_1804 + ((_1709 + _1568) * _1714)) * _1714;
            _1809 = (_1804 + ((_1709 + _1569) * _1714)) * _1714;
            _1810 = (_1804 + ((_1709 + _1570) * _1714)) * _1714;
            if (!(_1578 == 10)) {
              _1568 = _1808;
              _1569 = _1809;
              _1570 = _1810;
              _1571 = _1578;
              continue;
            }
            while(true) {
              _1260 = saturate(exp2(log2(_219.w)) * 4.0f);  // [sem: expr_sat]
              _1264 = WaveReadLaneFirst(_materialIndex);
              _1272 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1264 < (uint)170000), _1264, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
              _1273 = WaveReadLaneFirst(_materialIndex);
              _1281 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1273 < (uint)170000), _1273, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
              _1283 = ((((exp2(log2(saturate(1.0f - (abs(_400 + -0.25f) * 3.0f))) * 5.2f) * 0.2f) * (lerp(_464, 1.0f, 0.4f))) * saturate(exp2((_252 * 6.0f) * _361))) + (((exp2(log2(saturate(1.0f - (abs(_271 + -0.55f) * 3.0f))) * 5.2f) * 0.14f) * (lerp(_335, 1.0f, 0.4f))) * saturate(exp2((sqrt((_345 * _345) + (_346 * _346)) * 2.7272725f) * _361)))) * ((((frac(_368) * (frac(sin(ceil(_368)) * 43758.547f) - _372)) + _372) * 0.8f) + 0.2f);
              _1307 = ((_srcTargetSizeAndInv.x * ((_160 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.z;
              _1308 = ((_srcTargetSizeAndInv.y * ((_158 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.w;
              _1322 = dot(float3((_invViewProj[1].x), (_invViewProj[1].y), (_invViewProj[1].z)), float3((-0.0f - _viewPos.x), ((-0.0f - _questGuideWorldPosition.y) - _viewPos.y), (-0.0f - _viewPos.z)));
              _1323 = 5.0f / _srcTargetSizeAndInv.x;
              _1324 = _1307 - _1323;
              _1325 = _1323 + _1308;
              __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1327.x, _1327.y);
              _1336 = ((float)((int)((int)((float)((int)((int)(_1327.x))))))) + 0.5f;
              _1337 = ((float)((int)((int)((float)((int)((int)(_1327.y))))))) + 0.5f;
              _1340 = (int)(_1336 * _1324);
              _1341 = (int)(_1337 * _1325);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1341, 0)))).x) & 255) == 201) {
                _1358 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1358 = 0.0f;
              }
              _1364 = (int)(_1336 * _1307);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1364, _1341, 0)))).x) & 255) == 201) {
                _1381 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1307)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1381 = 0.0f;
              }
              _1384 = _1323 + _1307;
              _1386 = (int)(_1336 * _1384);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1341, 0)))).x) & 255) == 201) {
                _1403 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1403 = 0.0f;
              }
              _1407 = (int)(_1337 * _1308);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1407, 0)))).x) & 255) == 201) {
                _1424 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1308)), 0)))).x);
              } else {
                _1424 = 0.0f;
              }
              _1427 = _1308 - _1323;
              _1429 = (int)(_1337 * _1427);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1429, 0)))).x) & 255) == 201) {
                _1446 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1446 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1364, _1429, 0)))).x) & 255) == 201) {
                _1465 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1307)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1465 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1429, 0)))).x) & 255) == 201) {
                _1484 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1484 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1407, 0)))).x) & 255) == 201) {
                _1503 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1308)), 0)))).x);
              } else {
                _1503 = 0.0f;
              }
              _1525 = WaveReadLaneFirst(_materialIndex);
              _1533 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1525 < (uint)170000), _1525, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
              _1534 = WaveReadLaneFirst(_materialIndex);
              _1542 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1534 < (uint)170000), _1534, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
              _1547 = _viewPos.y + _questGuideWorldPosition.y;
              // [sem: expr_sat]
              _1556 = saturate((sqrt(((_viewPos.z * _viewPos.z) + (_viewPos.x * _viewPos.x)) + (_1547 * _1547)) * 0.05f) + -1.0f);
              _1563 = ((((_1556 * _1556) * 0.95f) * (3.0f - (_1556 * 2.0f))) + 0.05f) * (_exposure2.x * 200.0f);
              _1813 = (_1563 * (((((_993 * 0.3f) + ((_990 + _801) * 0.2f)) * _998) + _1283) + ((((_1808 * 0.045f) + (_1241 * 0.15f)) * _219.x) * _1260)));
              _1814 = (_1563 * ((((((_993 * 0.4f) + (_801 * 0.3f)) + (_990 * 0.5f)) * _998) + _1283) + ((((_1809 * 0.075f) + (_1242 * 0.15f)) * _219.y) * _1260)));
              _1815 = (_1563 * ((((_219.w * 0.064f) * (((_990 + _688) + _801) + _902)) + _1283) + ((((_1810 * 0.120000005f) + (_1243 * 0.15f)) * _219.z) * _1260)));
              _1816 = (dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1446)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1465)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1484)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1503)) - _1322)), float4(0.25f, 0.25f, 0.25f, 0.25f)) + dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1358)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1381)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1403)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1424)) - _1322)), float4(0.25f, 0.25f, 0.25f, 0.25f)));
              break;
            }
            break;
          }
          break;
        }
        break;
      }
    } else {
      _1813 = 0.0f;
      _1814 = 0.0f;
      _1815 = 0.0f;
      _1816 = 1.0f;
    }
  } else {
    if (!((_158 >= 1.05f) || ((_158 <= -1.5f) || ((_160 >= 1.6f) || ((_160 <= -1.6f) || ((_157 < 0.0f) || (abs(_questGuideWorldPosition.z) <= 1e-05f))))))) {
      _190 = WaveReadLaneFirst(_materialIndex);
      _198 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_190 < (uint)170000), _190, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _204 = WaveReadLaneFirst(_materialIndex);
      _212 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_204 < (uint)170000), _204, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensColorTableTexture);
      _219 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_212 < (uint)65000), _212, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((sqrt((_112 * _112) + (_113 * _113)) * 2.0f), 0.5f));
      _224 = WaveReadLaneFirst(_materialIndex);
      _232 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_224 < (uint)170000), _224, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
      _233 = -0.0f - _160;
      _234 = -0.0f - _158;
      _235 = WaveReadLaneFirst(_materialIndex);
      _243 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _244 = -0.0f - _114;
      _246 = rsqrt(dot(float3(_113, _244, 0.0f), float3(_113, _244, 0.0f)));  // [sem: invLength]
      _247 = _246 * _113;
      _248 = _246 * _244;
      _252 = sqrt((_113 * _113) + (_114 * _114));
      _254 = cos(_252 * 1.5f);
      _258 = 1.0f - _254;
      _259 = _258 * dot(float3(_247, _248, 0.0f), float3(_233, _234, 0.0f));
      _262 = (_259 * _247) + (_254 * _233);
      _263 = (_259 * _248) + (_254 * _234);
      _266 = _114 - (_262 * 0.56666666f);
      _267 = _113 - (_263 * 0.56666666f);
      _271 = sqrt((_266 * _266) + (_267 * _267));
      _276 = (pow(_271, 0.5f));
      _278 = atan(_267 / _266);
      _281 = (_266 < 0.0f);
      _282 = (_266 == 0.0f);
      _283 = (_267 >= 0.0f);
      _284 = (_267 < 0.0f);
      _310 = atan((-0.0f - _267) / (-0.0f - _266));
      _313 = (_266 > -0.0f);
      _314 = (_266 == -0.0f);
      _315 = (_267 <= -0.0f);
      _316 = (_267 > -0.0f);
      _329 = _time.x * 2.0f;
      _334 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_282 && _283), 18.849556f, select((_282 && _284), -18.849556f, (select((_281 && _284), (_278 + -3.1415927f), select((_281 && _283), (_278 + 3.1415927f), _278)) * 12.0f))), (((_time.x * 0.2f) + _276) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_314 && _315), 18.849556f, select((_314 && _316), -18.849556f, (select((_313 && _316), (_310 + -3.1415927f), select((_313 && _315), (_310 + 3.1415927f), _310)) * 12.0f))) + _329), (_329 + (_276 * 12.0f)))))).x));
      _335 = _334 * _334;
      _345 = _266 - _262;
      _346 = _267 - _263;
      _361 = log2(1.0f - saturate(exp2(log2(sqrt((_262 * _262) + (_263 * _263))) * 0.5f)));
      _365 = TEXCOORD.x * 0.1f;
      _367 = (_time.x * 1.6800001f) + _365;
      _368 = _367 + 16.800001f;
      _372 = frac(sin(floor(_368)) * 43758.547f);
      _386 = WaveReadLaneFirst(_materialIndex);
      _394 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _395 = _262 + _114;
      _396 = _263 + _113;
      _400 = sqrt((_395 * _395) + (_396 * _396));
      _405 = (pow(_400, 0.5f));
      _407 = atan(_396 / _395);
      _410 = (_395 < 0.0f);
      _411 = (_395 == 0.0f);
      _412 = (_396 >= 0.0f);
      _413 = (_396 < 0.0f);
      _439 = atan((-0.0f - _396) / (-0.0f - _395));
      _442 = (_395 > -0.0f);
      _443 = (_395 == -0.0f);
      _444 = (_396 <= -0.0f);
      _445 = (_396 > -0.0f);
      _458 = _time.x * 2.0f;
      _463 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_394 < (uint)65000), _394, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_411 && _412), 18.849556f, select((_411 && _413), -18.849556f, (select((_410 && _413), (_407 + -3.1415927f), select((_410 && _412), (_407 + 3.1415927f), _407)) * 12.0f))), (((_time.x * 0.2f) + _405) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_394 < (uint)65000), _394, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_443 && _444), 18.849556f, select((_443 && _445), -18.849556f, (select((_442 && _445), (_439 + -3.1415927f), select((_442 && _444), (_439 + 3.1415927f), _439)) * 12.0f))) + _458), (_458 + (_405 * 12.0f)))))).x));
      _464 = _463 * _463;
      _481 = _367 + 4.59375f;
      _485 = frac(sin(floor(_481)) * 43758.547f);
      _493 = (frac(_481) * (frac(sin(ceil(_481)) * 43758.547f) - _485)) + _485;
      _495 = (_493 * 0.050000012f) + 0.45f;
      _496 = WaveReadLaneFirst(_materialIndex);
      _504 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_496 < (uint)170000), _496, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _508 = dot(float3(_247, _248, 0.0f), float3(_160, _158, 0.0f)) * _258;
      _511 = (_508 * _247) + (_254 * _160);
      _512 = (_508 * _248) + (_254 * _158);
      _515 = _114 - (_511 * _495);
      _516 = _113 - (_512 * _495);
      _519 = (_515 * 0.9553365f) + (_516 * 0.29552022f);
      _522 = (_516 * 0.9553365f) - (_515 * 0.29552022f);
      _523 = _511 - _519;
      _524 = _512 - _522;
      _532 = saturate(exp2(log2(sqrt((_523 * _523) + (_524 * _524))) * 15.0f));  // [sem: expr_sat]
      _533 = abs(_519);
      _534 = abs(_522);
      _536 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_533, _534)), 0.0f);
      _539 = (_536 * 1.847759f) + _533;
      _540 = _534 - (_536 * 0.76536685f);
      _542 = min(dot(float2(0.9238795f, 0.38268343f), float2(_539, _540)), 0.0f);
      _545 = _539 - (_542 * 1.847759f);
      _549 = _545 - min(max(_545, -0.060060967f), 0.060060967f);
      _550 = (_540 - (_542 * 0.76536685f)) + -0.145f;
      _561 = ((float)((int)((int)((int)(uint)((int)(_550 > 0.0f))) - (int)((int)(uint)((int)(_550 < 0.0f)))))) * sqrt((_549 * _549) + (_550 * _550));
      _564 = saturate(abs(_561) * 200.0f);  // [sem: expr_sat]
      _586 = _367 + 4.4625006f;
      _590 = frac(sin(floor(_586)) * 43758.547f);
      _598 = (frac(_586) * (frac(sin(ceil(_586)) * 43758.547f) - _590)) + _590;
      _603 = (_598 * 0.08000002f) + 0.71999997f;
      _604 = WaveReadLaneFirst(_materialIndex);
      _612 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_604 < (uint)170000), _604, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _615 = _114 - (_603 * _511);
      _616 = _113 - (_603 * _512);
      _619 = (_615 * 0.9553365f) + (_616 * 0.29552022f);
      _622 = (_616 * 0.9553365f) - (_615 * 0.29552022f);
      _623 = _511 - _619;
      _624 = _512 - _622;
      _632 = saturate(exp2(log2(sqrt((_623 * _623) + (_624 * _624))) * 15.0f));  // [sem: expr_sat]
      _633 = abs(_619);
      _634 = abs(_622);
      _636 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_633, _634)), 0.0f);
      _639 = (_636 * 1.847759f) + _633;
      _640 = _634 - (_636 * 0.76536685f);
      _642 = min(dot(float2(0.9238795f, 0.38268343f), float2(_639, _640)), 0.0f);
      _645 = _639 - (_642 * 1.847759f);
      _649 = _645 - min(max(_645, -0.08491378f), 0.08491378f);
      _650 = (_640 - (_642 * 0.76536685f)) + -0.205f;
      _661 = ((float)((int)((int)((int)(uint)((int)(_650 > 0.0f))) - (int)((int)(uint)((int)(_650 < 0.0f)))))) * sqrt((_649 * _649) + (_650 * _650));
      _664 = saturate(abs(_661) * 200.0f);  // [sem: expr_sat]
      _688 = (saturate(saturate(exp2(log2(saturate(1.0f - _661)) * (5.0f / ((_598 * 0.008000002f) + 0.072f)))) - _632) + (saturate((1.0f - _632) - saturate((_664 * _664) * (3.0f - (_664 * 2.0f)))) * 0.4f)) * ((_493 * 0.9f) + 0.1f);
      _689 = _367 + 1.7308595f;
      _693 = frac(sin(floor(_689)) * 43758.547f);
      _701 = (frac(_689) * (frac(sin(ceil(_689)) * 43758.547f) - _693)) + _693;
      _703 = 1.5f - (_701 * 0.15000004f);
      _704 = WaveReadLaneFirst(_materialIndex);
      _712 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_704 < (uint)170000), _704, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _715 = _114 - (_703 * _262);
      _716 = _113 - (_703 * _263);
      _719 = (_715 * 0.9553365f) + (_716 * 0.29552022f);
      _722 = (_716 * 0.9553365f) - (_715 * 0.29552022f);
      _723 = _262 - _719;
      _724 = _263 - _722;
      _732 = saturate(exp2(log2(sqrt((_723 * _723) + (_724 * _724))) * 15.0f));  // [sem: expr_sat]
      _733 = abs(_719);
      _734 = abs(_722);
      _736 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_733, _734)), 0.0f);
      _739 = (_736 * 1.847759f) + _733;
      _740 = _734 - (_736 * 0.76536685f);
      _742 = min(dot(float2(0.9238795f, 0.38268343f), float2(_739, _740)), 0.0f);
      _745 = _739 - (_742 * 1.847759f);
      _749 = _745 - min(max(_745, -0.12633514f), 0.12633514f);
      _750 = (_740 - (_742 * 0.76536685f)) + -0.305f;
      _761 = ((float)((int)((int)((int)(uint)((int)(_750 > 0.0f))) - (int)((int)(uint)((int)(_750 < 0.0f)))))) * sqrt((_749 * _749) + (_750 * _750));
      _764 = saturate(abs(_761) * 200.0f);  // [sem: expr_sat]
      _786 = _367 + 4.8562503f;
      _790 = frac(sin(floor(_786)) * 43758.547f);
      _798 = (frac(_786) * (frac(sin(ceil(_786)) * 43758.547f) - _790)) + _790;
      _801 = ((_798 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _761)) * (5.0f / (0.15f - (_701 * 0.015000003f))))) - _732) + (saturate((1.0f - _732) - saturate((_764 * _764) * (3.0f - (_764 * 2.0f)))) * 0.4f));
      _804 = 0.5f - (_798 * 0.050000012f);
      _805 = WaveReadLaneFirst(_materialIndex);
      _813 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_805 < (uint)170000), _805, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _816 = _114 - (_804 * _262);
      _817 = _113 - (_804 * _263);
      _820 = (_816 * 0.9553365f) + (_817 * 0.29552022f);
      _823 = (_817 * 0.9553365f) - (_816 * 0.29552022f);
      _824 = _262 - _820;
      _825 = _263 - _823;
      _833 = saturate(exp2(log2(sqrt((_824 * _824) + (_825 * _825))) * 15.0f));  // [sem: expr_sat]
      _834 = abs(_820);
      _835 = abs(_823);
      _837 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_834, _835)), 0.0f);
      _840 = (_837 * 1.847759f) + _834;
      _841 = _835 - (_837 * 0.76536685f);
      _843 = min(dot(float2(0.9238795f, 0.38268343f), float2(_840, _841)), 0.0f);
      _846 = _840 - (_843 * 1.847759f);
      _850 = _846 - min(max(_846, -0.08491378f), 0.08491378f);
      _851 = (_841 - (_843 * 0.76536685f)) + -0.205f;
      _862 = ((float)((int)((int)((int)(uint)((int)(_851 > 0.0f))) - (int)((int)(uint)((int)(_851 < 0.0f)))))) * sqrt((_850 * _850) + (_851 * _851));
      _865 = saturate(abs(_862) * 200.0f);  // [sem: expr_sat]
      _887 = _367 + 1.1156251f;
      _891 = frac(sin(floor(_887)) * 43758.547f);
      _899 = (frac(_887) * (frac(sin(ceil(_887)) * 43758.547f) - _891)) + _891;
      _902 = ((_899 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _862)) * (5.0f / (0.05f - (_798 * 0.0050000013f))))) - _833) + (saturate((1.0f - _833) - saturate((_865 * _865) * (3.0f - (_865 * 2.0f)))) * 0.4f));
      _904 = 0.2f - (_899 * 0.020000005f);
      _905 = WaveReadLaneFirst(_materialIndex);
      _913 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_905 < (uint)170000), _905, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _916 = _114 - (_904 * _262);
      _917 = _113 - (_904 * _263);
      _920 = (_916 * 0.9553365f) + (_917 * 0.29552022f);
      _923 = (_917 * 0.9553365f) - (_916 * 0.29552022f);
      _924 = _262 - _920;
      _925 = _263 - _923;
      _933 = saturate(exp2(log2(sqrt((_924 * _924) + (_925 * _925))) * 15.0f));  // [sem: expr_sat]
      _934 = abs(_920);
      _935 = abs(_923);
      _937 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_934, _935)), 0.0f);
      _940 = (_937 * 1.847759f) + _934;
      _941 = _935 - (_937 * 0.76536685f);
      _943 = min(dot(float2(0.9238795f, 0.38268343f), float2(_940, _941)), 0.0f);
      _946 = _940 - (_943 * 1.847759f);
      _950 = _946 - min(max(_946, -0.06834524f), 0.06834524f);
      _951 = (_941 - (_943 * 0.76536685f)) + -0.165f;
      _962 = ((float)((int)((int)((int)(uint)((int)(_951 > 0.0f))) - (int)((int)(uint)((int)(_951 < 0.0f)))))) * sqrt((_950 * _950) + (_951 * _951));
      _965 = saturate(abs(_962) * 200.0f);  // [sem: expr_sat]
      _990 = ((saturate(saturate(exp2(log2(saturate(1.0f - _962)) * (1.0f / (0.020000001f - (_899 * 0.0020000006f))))) - _933) + (saturate((1.0f - _933) - saturate((_965 * _965) * (3.0f - (_965 * 2.0f)))) * 0.4f)) * ((_701 * 0.9f) + 0.1f)) + (((_598 * 0.9f) + 0.1f) * (saturate(saturate(exp2(log2(saturate(1.0f - _561)) * (5.0f / ((_493 * 0.0050000013f) + 0.044999998f)))) - _532) + (saturate((1.0f - _532) - saturate((_564 * _564) * (3.0f - (_564 * 2.0f)))) * 0.4f)));
      _993 = _902 + _688;
      _998 = _219.w * 0.08f;
      _1013 = 0.0f;
      _1014 = 0.0f;
      _1015 = 0.0f;
      _1016 = 0;
      while(true) {
        _1017 = (int)(_1016) + (int)(1);
        _1018 = (float)((int)(_1017));
        _1027 = ((_time.x * 2.52f) * frac(sin((float)((int)(_1016))) * 43758.547f)) + _365;
        _1031 = frac(sin(floor(_1027)) * 43758.547f);
        _1039 = (frac(_1027) * (frac(sin(ceil(_1027)) * 43758.547f) - _1031)) + _1031;
        _1048 = (_1039 * 0.16f) + 0.64000005f;
        _1070 = _1018 * 0.07f;
        _1071 = (((frac(sin(_1018 * 10.0f) * 43758.547f) + -1.0f) * _1048) + 1.0f) * _1070;
        _1072 = _1018 * 0.001f;
        _1073 = (((frac(sin(_1018 * 2000.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _1072;
        _1074 = WaveReadLaneFirst(_materialIndex);
        _1082 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1085 = _114 - (_1071 * _160);
        _1086 = _113 - (_1071 * _158);
        _1089 = (_1085 * 0.9553365f) + (_1086 * 0.29552022f);
        _1092 = (_1086 * 0.9553365f) - (_1085 * 0.29552022f);
        _1093 = _160 - _1089;
        _1094 = _158 - _1092;
        _1102 = saturate(exp2(log2(sqrt((_1093 * _1093) + (_1094 * _1094))) * 15.0f));  // [sem: expr_sat]
        _1103 = abs(_1089);
        _1104 = abs(_1092);
        _1106 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1103, _1104)), 0.0f);
        _1109 = (_1106 * 1.847759f) + _1103;
        _1110 = _1104 - (_1106 * 0.76536685f);
        _1112 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1109, _1110)), 0.0f);
        _1115 = _1109 - (_1112 * 1.847759f);
        _1121 = _1115 - min(max(_1115, (_1073 * -0.41421357f)), (_1073 * 0.41421357f));
        _1122 = (_1110 - (_1112 * 0.76536685f)) - _1073;
        _1133 = ((float)((int)((int)((int)(uint)((int)(_1122 > 0.0f))) - (int)((int)(uint)((int)(_1122 < 0.0f)))))) * sqrt((_1121 * _1121) + (_1122 * _1122));
        _1136 = saturate(abs(_1133) * 200.0f);  // [sem: expr_sat]
        _1154 = (((frac(sin(_1018 * 5.0f) * 43758.547f) + -1.0f) * _1048) + 1.0f) * _1070;
        _1155 = (((frac(sin(_1018 * 20.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _1072;
        _1156 = WaveReadLaneFirst(_materialIndex);
        _1164 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1156 < (uint)170000), _1156, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1167 = _114 - (_1154 * _233);
        _1168 = _113 - (_1154 * _234);
        _1171 = (_1167 * 0.9553365f) + (_1168 * 0.29552022f);
        _1174 = (_1168 * 0.9553365f) - (_1167 * 0.29552022f);
        _1175 = _233 - _1171;
        _1176 = _234 - _1174;
        _1184 = saturate(exp2(log2(sqrt((_1175 * _1175) + (_1176 * _1176))) * 15.0f));  // [sem: expr_sat]
        _1185 = abs(_1171);
        _1186 = abs(_1174);
        _1188 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1185, _1186)), 0.0f);
        _1191 = (_1188 * 1.847759f) + _1185;
        _1192 = _1186 - (_1188 * 0.76536685f);
        _1194 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1191, _1192)), 0.0f);
        _1197 = _1191 - (_1194 * 1.847759f);
        _1203 = _1197 - min(max(_1197, (_1155 * -0.41421357f)), (_1155 * 0.41421357f));
        _1204 = (_1192 - (_1194 * 0.76536685f)) - _1155;
        _1215 = ((float)((int)((int)((int)(uint)((int)(_1204 > 0.0f))) - (int)((int)(uint)((int)(_1204 < 0.0f)))))) * sqrt((_1203 * _1203) + (_1204 * _1204));
        _1218 = saturate(abs(_1215) * 200.0f);  // [sem: expr_sat]
        _1240 = ((saturate(saturate(exp2(log2(saturate(1.0f - _1215)) * (100.0f / _1154))) - _1184) + saturate(saturate(exp2(log2(saturate(1.0f - _1133)) * (100.0f / _1071))) - _1102)) + ((saturate((1.0f - _1184) - saturate((_1218 * _1218) * (3.0f - (_1218 * 2.0f)))) + saturate((1.0f - _1102) - saturate((_1136 * _1136) * (3.0f - (_1136 * 2.0f))))) * 0.4f)) * _1039;
        _1241 = _1240 + _1013;
        _1242 = _1240 + _1014;
        _1243 = _1240 + _1015;
        if (!(_1017 == 20)) {
          _1013 = _1241;
          _1014 = _1242;
          _1015 = _1243;
          _1016 = _1017;
          continue;
        }
        while(true) {
          _1568 = 0.0f;
          _1569 = 0.0f;
          _1570 = 0.0f;
          _1571 = 0;
          while(true) {
            _1578 = (int)(_1571) + (int)(1);
            _1579 = (float)((int)(_1578));
            _1584 = frac(sin(_1579 * 300.0f) * 43758.547f) + -1.0f;
            _1587 = ((_time.x * 2.52f) * frac(sin((float)((int)(_1571))) * 43758.547f)) + _365;
            _1591 = frac(sin(floor(_1587)) * 43758.547f);
            _1599 = (frac(_1587) * (frac(sin(ceil(_1587)) * 43758.547f) - _1591)) + _1591;
            _1601 = (_1599 * 0.03750001f) + 0.7125f;
            _1613 = frac(sin(_1579 * 170.0f) * 43758.547f) + -1.0f;
            _1621 = _1579 * 0.15f;
            _1622 = ((_1601 * (frac(sin(_1579 * 110.0f) * 43758.547f) + -1.0f)) + 1.0f) * _1621;
            _1624 = WaveReadLaneFirst(_materialIndex);
            _1632 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1624 < (uint)170000), _1624, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _1635 = _114 - (_1622 * _511);
            _1636 = _113 - (_1622 * _512);
            _1639 = (_1635 * 0.9553365f) + (_1636 * 0.29552022f);
            _1642 = (_1636 * 0.9553365f) - (_1635 * 0.29552022f);
            _1643 = _511 - _1639;
            _1644 = _512 - _1642;
            _1652 = saturate(exp2(log2(sqrt((_1643 * _1643) + (_1644 * _1644))) * 15.0f));  // [sem: expr_sat]
            _1653 = abs(_1639);
            _1654 = abs(_1642);
            _1656 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1653, _1654)), 0.0f);
            _1659 = (_1656 * 1.847759f) + _1653;
            _1660 = _1654 - (_1656 * 0.76536685f);
            _1662 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1659, _1660)), 0.0f);
            _1665 = _1659 - (_1662 * 1.847759f);
            _1667 = _1584 * 0.012426407f;
            _1672 = _1665 - min(max(_1665, (-0.020710679f - _1667)), (_1667 + 0.020710679f));
            _1674 = (_1660 - (_1662 * 0.76536685f)) + (-0.05f - (_1584 * 0.030000001f));
            _1685 = ((float)((int)((int)((int)(uint)((int)(_1674 > 0.0f))) - (int)((int)(uint)((int)(_1674 < 0.0f)))))) * sqrt((_1672 * _1672) + (_1674 * _1674));
            _1688 = saturate(abs(_1685) * 200.0f);  // [sem: expr_sat]
            _1708 = _1579 * 0.1f;
            _1709 = (saturate(saturate(exp2(log2(saturate(1.0f - _1685)) * (300.0f / _1622))) - _1652) + (saturate((1.0f - _1652) - saturate((_1688 * _1688) * (3.0f - (_1688 * 2.0f)))) * 0.4f)) * _1708;
            _1714 = (_1599 * 0.5f) + 0.5f;
            _1718 = (((frac(sin(_1579 * 15.0f) * 43758.547f) + -1.0f) * _1601) + 1.0f) * _1621;
            _1720 = WaveReadLaneFirst(_materialIndex);
            _1728 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1720 < (uint)170000), _1720, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _1731 = _114 - (_1718 * _262);
            _1732 = _113 - (_1718 * _263);
            _1735 = (_1731 * 0.9553365f) + (_1732 * 0.29552022f);
            _1738 = (_1732 * 0.9553365f) - (_1731 * 0.29552022f);
            _1739 = _262 - _1735;
            _1740 = _263 - _1738;
            _1748 = saturate(exp2(log2(sqrt((_1739 * _1739) + (_1740 * _1740))) * 15.0f));  // [sem: expr_sat]
            _1749 = abs(_1735);
            _1750 = abs(_1738);
            _1752 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1749, _1750)), 0.0f);
            _1755 = (_1752 * 1.847759f) + _1749;
            _1756 = _1750 - (_1752 * 0.76536685f);
            _1758 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1755, _1756)), 0.0f);
            _1761 = _1755 - (_1758 * 1.847759f);
            _1763 = _1613 * 0.012426407f;
            _1768 = _1761 - min(max(_1761, (-0.020710679f - _1763)), (_1763 + 0.020710679f));
            _1770 = (_1756 - (_1758 * 0.76536685f)) + (-0.05f - (_1613 * 0.030000001f));
            _1781 = ((float)((int)((int)((int)(uint)((int)(_1770 > 0.0f))) - (int)((int)(uint)((int)(_1770 < 0.0f)))))) * sqrt((_1768 * _1768) + (_1770 * _1770));
            _1784 = saturate(abs(_1781) * 200.0f);  // [sem: expr_sat]
            _1804 = (saturate(saturate(exp2(log2(saturate(1.0f - _1781)) * (300.0f / _1718))) - _1748) + (saturate((1.0f - _1748) - saturate((_1784 * _1784) * (3.0f - (_1784 * 2.0f)))) * 0.4f)) * _1708;
            _1808 = (_1804 + ((_1709 + _1568) * _1714)) * _1714;
            _1809 = (_1804 + ((_1709 + _1569) * _1714)) * _1714;
            _1810 = (_1804 + ((_1709 + _1570) * _1714)) * _1714;
            if (!(_1578 == 10)) {
              _1568 = _1808;
              _1569 = _1809;
              _1570 = _1810;
              _1571 = _1578;
              continue;
            }
            while(true) {
              _1260 = saturate(exp2(log2(_219.w)) * 4.0f);  // [sem: expr_sat]
              _1264 = WaveReadLaneFirst(_materialIndex);
              _1272 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1264 < (uint)170000), _1264, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
              _1273 = WaveReadLaneFirst(_materialIndex);
              _1281 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1273 < (uint)170000), _1273, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
              _1283 = ((((exp2(log2(saturate(1.0f - (abs(_400 + -0.25f) * 3.0f))) * 5.2f) * 0.2f) * (lerp(_464, 1.0f, 0.4f))) * saturate(exp2((_252 * 6.0f) * _361))) + (((exp2(log2(saturate(1.0f - (abs(_271 + -0.55f) * 3.0f))) * 5.2f) * 0.14f) * (lerp(_335, 1.0f, 0.4f))) * saturate(exp2((sqrt((_345 * _345) + (_346 * _346)) * 2.7272725f) * _361)))) * ((((frac(_368) * (frac(sin(ceil(_368)) * 43758.547f) - _372)) + _372) * 0.8f) + 0.2f);
              _1307 = ((_srcTargetSizeAndInv.x * ((_160 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.z;
              _1308 = ((_srcTargetSizeAndInv.y * ((_158 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.w;
              _1322 = dot(float3((_invViewProj[1].x), (_invViewProj[1].y), (_invViewProj[1].z)), float3((-0.0f - _viewPos.x), ((-0.0f - _questGuideWorldPosition.y) - _viewPos.y), (-0.0f - _viewPos.z)));
              _1323 = 5.0f / _srcTargetSizeAndInv.x;
              _1324 = _1307 - _1323;
              _1325 = _1323 + _1308;
              __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1327.x, _1327.y);
              _1336 = ((float)((int)((int)((float)((int)((int)(_1327.x))))))) + 0.5f;
              _1337 = ((float)((int)((int)((float)((int)((int)(_1327.y))))))) + 0.5f;
              _1340 = (int)(_1336 * _1324);
              _1341 = (int)(_1337 * _1325);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1341, 0)))).x) & 255) == 201) {
                _1358 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1358 = 0.0f;
              }
              _1364 = (int)(_1336 * _1307);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1364, _1341, 0)))).x) & 255) == 201) {
                _1381 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1307)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1381 = 0.0f;
              }
              _1384 = _1323 + _1307;
              _1386 = (int)(_1336 * _1384);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1341, 0)))).x) & 255) == 201) {
                _1403 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1325)), 0)))).x);
              } else {
                _1403 = 0.0f;
              }
              _1407 = (int)(_1337 * _1308);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1407, 0)))).x) & 255) == 201) {
                _1424 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1308)), 0)))).x);
              } else {
                _1424 = 0.0f;
              }
              _1427 = _1308 - _1323;
              _1429 = (int)(_1337 * _1427);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1386, _1429, 0)))).x) & 255) == 201) {
                _1446 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1384)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1446 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1364, _1429, 0)))).x) & 255) == 201) {
                _1465 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1307)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1465 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1429, 0)))).x) & 255) == 201) {
                _1484 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1427)), 0)))).x);
              } else {
                _1484 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1340, _1407, 0)))).x) & 255) == 201) {
                _1503 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1324)), ((int)(_customRenderPassSizeInvSize.y * _1308)), 0)))).x);
              } else {
                _1503 = 0.0f;
              }
              _1525 = WaveReadLaneFirst(_materialIndex);
              _1533 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1525 < (uint)170000), _1525, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
              _1534 = WaveReadLaneFirst(_materialIndex);
              _1542 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1534 < (uint)170000), _1534, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
              _1547 = _viewPos.y + _questGuideWorldPosition.y;
              // [sem: expr_sat]
              _1556 = saturate((sqrt(((_viewPos.z * _viewPos.z) + (_viewPos.x * _viewPos.x)) + (_1547 * _1547)) * 0.05f) + -1.0f);
              _1563 = ((((_1556 * _1556) * 0.95f) * (3.0f - (_1556 * 2.0f))) + 0.05f) * (_exposure2.x * 200.0f);
              _1813 = (_1563 * (((((_993 * 0.3f) + ((_990 + _801) * 0.2f)) * _998) + _1283) + ((((_1808 * 0.045f) + (_1241 * 0.15f)) * _219.x) * _1260)));
              _1814 = (_1563 * ((((((_993 * 0.4f) + (_801 * 0.3f)) + (_990 * 0.5f)) * _998) + _1283) + ((((_1809 * 0.075f) + (_1242 * 0.15f)) * _219.y) * _1260)));
              _1815 = (_1563 * ((((_219.w * 0.064f) * (((_990 + _688) + _801) + _902)) + _1283) + ((((_1810 * 0.120000005f) + (_1243 * 0.15f)) * _219.z) * _1260)));
              _1816 = (dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1446)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1465)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1484)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1503)) - _1322)), float4(0.25f, 0.25f, 0.25f, 0.25f)) + dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1358)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1381)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1403)) - _1322), saturate((_nearFarProj.x / max(1e-07f, _1424)) - _1322)), float4(0.25f, 0.25f, 0.25f, 0.25f)));
              break;
            }
            break;
          }
          break;
        }
        break;
      }
    } else {
      _1813 = 0.0f;
      _1814 = 0.0f;
      _1815 = 0.0f;
      _1816 = 1.0f;
    }
  }
  _1817 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1830 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1817, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1830 = _1816;
  }
  _1833 = (_localToneMappingParams.w > 0.0f);
  if (_1833) {
    _1839 = _userImageAdjust.z * _exposure0.x;
    _1888 = exp2(log2(max(0.0f, (((_1839 * max(0.0f, (((_1813 * 1.70505f) - (_1814 * 0.62179f)) - (_1815 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1889 = exp2(log2(max(0.0f, (((max(0.0f, (((_1814 * 1.1408f) - (_1813 * 0.13026f)) - (_1815 * 0.01055f))) * _1839) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1890 = exp2(log2(max(0.0f, (((max(0.0f, (((_1813 * -0.024f) - (_1814 * 0.12897f)) + (_1815 * 1.15297f))) * _1839) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1892 = dot(float3(_1888, _1889, _1890), float3(0.212671f, 0.71516f, 0.072169f));
    _1899 = ((_1888 - _1892) * _powerParams.w) + _1892;
    _1900 = ((_1889 - _1892) * _powerParams.w) + _1892;
    _1901 = ((_1890 - _1892) * _powerParams.w) + _1892;
    _1920 = min(max(log2(mad(_1901, 0.079223745f, mad(_1900, 0.0784336f, (_1899 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1921 = min(max(log2(mad(_1901, 0.07916613f, mad(_1900, 0.87846863f, (_1899 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1922 = min(max(log2(mad(_1901, 0.879143f, mad(_1900, 0.0784336f, (_1899 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1923 = _1920 * 0.060606062f;
    _1924 = _1921 * 0.060606062f;
    _1925 = _1922 * 0.060606062f;
    _1926 = _1923 * _1923;
    _1927 = _1924 * _1924;
    _1928 = _1925 * _1925;
    _1974 = min(0.0f, (-0.0f - (((_1920 * 0.0072181816f) + ((_1926 * 0.4298f) + (((_1926 * _1926) * ((31.96f - (_1920 * 2.4327273f)) + (_1926 * 15.5f))) - ((_1920 * 0.41624245f) * _1926)))) + -0.00232f)));
    _1975 = min(0.0f, (-0.0f - (((_1921 * 0.0072181816f) + ((_1927 * 0.4298f) + (((_1927 * _1927) * ((31.96f - (_1921 * 2.4327273f)) + (_1927 * 15.5f))) - ((_1921 * 0.41624245f) * _1927)))) + -0.00232f)));
    _1976 = min(0.0f, (-0.0f - (((_1922 * 0.0072181816f) + ((_1928 * 0.4298f) + (((_1928 * _1928) * ((31.96f - (_1922 * 2.4327273f)) + (_1928 * 15.5f))) - ((_1922 * 0.41624245f) * _1928)))) + -0.00232f)));
    _1977 = -0.0f - _1974;
    _1978 = -0.0f - _1975;
    _1979 = -0.0f - _1976;
    _1980 = dot(float3(_1977, _1978, _1979), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1997 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1998 = -0.79999995f / _1997;
      _1999 = -1.2f / _1997;
      _2000 = 0.20000005f / _1997;
      _2006 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2009 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2016 = (_1998 + 1.4f) + (_2009 * (-0.39999998f - _1998));
      _2017 = (_1999 + 1.6f) + (_2009 * (-0.6f - _1999));
      _2018 = (_2000 + 0.9f) + (_2009 * (0.5f - _2000));
      _2035 = (lerp(_2017, 1.2f, _2006));  // [sem: blended]
      _2036 = (lerp(_2016, 1.0f, _2006));  // [sem: blended]
      _2037 = (lerp(_2018, 1.4f, _2006));  // [sem: blended]
    } else {
      _2035 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _2036 = 1.0f;  // [sem: blended]
      _2037 = 1.4f;  // [sem: blended]
    }
    _2047 = 1.0f - _2035;
    _2072 = ((exp2(log2(((saturate((_1974 * _1974) * _1977) * _2047) + _2035) * _1977) * _2036) - _1980) * _2037) + _1980;
    _2073 = ((exp2(log2(((saturate((_1975 * _1975) * _1978) * _2047) + _2035) * _1978) * _2036) - _1980) * _2037) + _1980;
    _2074 = ((exp2(log2(((saturate((_1976 * _1976) * _1979) * _2047) + _2035) * _1979) * _2036) - _1980) * _2037) + _1980;
    _2093 = saturate(exp2(log2(mad(_2074, -0.09902974f, mad(_2073, -0.09802088f, (_2072 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2094 = saturate(exp2(log2(mad(_2074, -0.098961174f, mad(_2073, 1.1519032f, (_2072 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2095 = saturate(exp2(log2(mad(_2074, 1.1510737f, mad(_2073, -0.09804345f, (_2072 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2101 = 1.0f - abs(_etcParams.w);
      _2105 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2106 = (_2101 * _2093) + _2105;
      _2107 = (_2101 * _2094) + _2105;
      _2108 = (_2101 * _2095) + _2105;
      if (_colorGradingParams.w > 0.0f) {
        _2113 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2130 = (((max(0.0f, (1.0f - _2106)) - _2106) * _2113) + _2106);
        _2131 = (((max(0.0f, (1.0f - _2107)) - _2107) * _2113) + _2107);
        _2132 = (((max(0.0f, (1.0f - _2108)) - _2108) * _2113) + _2108);
      } else {
        _2130 = _2106;
        _2131 = _2107;
        _2132 = _2108;
      }
      _2138 = _userImageAdjust.y + 1.0f;
      _2142 = _userImageAdjust.x + 0.5f;
      _2143 = ((_2130 + -0.5f) * _2138) + _2142;
      _2144 = ((_2131 + -0.5f) * _2138) + _2142;
      _2145 = ((_2132 + -0.5f) * _2138) + _2142;
      _2175 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2186 = exp2(log2(saturate(mad(_colorBlind0.z, _2145, mad(_colorBlind0.y, _2144, (_colorBlind0.x * _2143))))) * _2175);
      _2187 = exp2(log2(saturate(mad(_colorBlind1.z, _2145, mad(_colorBlind1.y, _2144, (_colorBlind1.x * _2143))))) * _2175);
      _2188 = exp2(log2(saturate(mad(_colorBlind2.z, _2145, mad(_colorBlind2.y, _2144, (_colorBlind2.x * _2143))))) * _2175);
    } else {
      _2186 = _2093;
      _2187 = _2094;
      _2188 = _2095;
    }
  } else {
    _2186 = _1813;
    _2187 = _1814;
    _2188 = _1815;
  }
  if (_etcParams.y > 1.0f) {
    _2197 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2198 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2202 = saturate(1.0f - (dot(float2(_2197, _2198), float2(_2197, _2198)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2207 = (_2202 * _2186);
    _2208 = (_2202 * _2187);
    _2209 = (_2202 * _2188);
  } else {
    _2207 = _2186;
    _2208 = _2187;
    _2209 = _2188;
  }
  if (_1833 && (_etcParams.z > 0.0f)) {
    _2239 = select((_2207 <= 0.0031308f), (_2207 * 12.92f), (((pow(_2207, 0.41666666f)) * 1.055f) + -0.055f));
    _2240 = select((_2208 <= 0.0031308f), (_2208 * 12.92f), (((pow(_2208, 0.41666666f)) * 1.055f) + -0.055f));
    _2241 = select((_2209 <= 0.0031308f), (_2209 * 12.92f), (((pow(_2209, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2239 = _2207;
    _2240 = _2208;
    _2241 = _2209;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2246 = (float)((uint)((uint)(_1817)));
    if (!(_2246 < _viewDir.w)) {
      if (!(_2246 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2255 = _2239;
        _2256 = _2240;
        _2257 = _2241;
      } else {
        _2255 = 0.0f;
        _2256 = 0.0f;
        _2257 = 0.0f;
      }
    } else {
      _2255 = 0.0f;
      _2256 = 0.0f;
      _2257 = 0.0f;
    }
  } else {
    _2255 = _2239;
    _2256 = _2240;
    _2257 = _2241;
  }
  _2267 = exp2(log2(_2255 * 0.0001f) * 0.15930176f);
  _2268 = exp2(log2(_2256 * 0.0001f) * 0.15930176f);
  _2269 = exp2(log2(_2257 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2267 * 18.6875f) + 1.0f)) * ((_2267 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2268 * 18.6875f) + 1.0f)) * ((_2268 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2269 * 18.6875f) + 1.0f)) * ((_2269 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1830;
  return SV_Target;
}
