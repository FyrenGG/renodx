// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared spectral and/or Dawn/Dusk helpers required by this shader's owned patch families.
#include "sky_spectral_common.hlsli"
#include "sky_dawn_dusk_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct CloudDensityVolume {
  column_major float4x4 _relativeWorldToLocal;
  float4 _shapeParameter;
  float4 _macroNoiseParameter;
  float4 _detailNoiseParameter;
  uint4 _modeParameter;
  float4 _vortexParameter;
  float4 _spiralParameter;
  float4 _animationParameter;
  float4 _flowParameter;
  float4 _tornadoParameter;
};


Texture2D<float4> __3__36__0__0__g_climateTex2 : register(t1, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t37, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t76, space36);

StructuredBuffer<CloudDensityVolume> __3__37__0__0__g_cloudDensityVolumes : register(t0, space37);

Texture3D<float> __3__36__0__0__g_texCloudBase : register(t61, space36);

Texture3D<float> __3__36__0__0__g_texCloudDetail : register(t62, space36);

Texture2D<float4> __3__36__0__0__g_texCirrus : register(t7, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTSingleRayleigh : register(t63, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTSingleMie : register(t64, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMulti : register(t65, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum : register(t68, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiMie : register(t69, space36);

RWTexture2D<float4> __3__38__0__1__g_texSkyInscatterUAV : register(u2, space38);

RWTexture2D<float4> __3__38__0__1__g_texSkyExtinctionUAV : register(u3, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b3, space35) {
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

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b5, space35) {
  float _rain : packoffset(c000.x);
  float _windSpeed : packoffset(c000.y);
  float _puddleRate : packoffset(c000.z);
  float _humidity : packoffset(c000.w);
  float _puddleScale : packoffset(c001.x);
  float2 _windDir : packoffset(c001.y);
  float _snowAmount : packoffset(c001.w);
  float _snowDetail : packoffset(c002.x);
  float _iceRate : packoffset(c002.y);
  float _snowRate : packoffset(c002.z);
  uint _weatherCheckFlag : packoffset(c002.w);
  float2 _climateTextureOnePixelMeter : packoffset(c003.x);
  float2 _cloudScroll : packoffset(c003.z);
  int2 _climateTextureSize : packoffset(c004.x);
  float _heightScaleMin : packoffset(c004.z);
  float _heightScaleMax : packoffset(c004.w);
  float _temperatureSnowStart : packoffset(c005.x);
  float _temperatureSnowEnd : packoffset(c005.y);
  float _temperatureDeformableSnowStart : packoffset(c005.z);
  float _tempeartureDeformableSnowEnd : packoffset(c005.w);
  float _rainDropletAmount : packoffset(c006.x);
  float _rainDropletRate : packoffset(c006.y);
  float _puddleCloudAltitude : packoffset(c006.z);
  float _puddleCloudThickenss : packoffset(c006.w);
  float _windSpeedExceptAltitude : packoffset(c007.x);
  float3 _weatherPadding : packoffset(c007.y);
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b15, space35) {
  float _sunLightIntensity : packoffset(c000.x);
  float _sunLightPreset : packoffset(c000.y);
  float _sunSizeAngle : packoffset(c000.z);
  float _sunSizeAngleCosine : packoffset(c000.w);
  float _sunDirY : packoffset(c001.x);
  float _moonLightIntensity : packoffset(c001.y);
  float _moonLightPreset : packoffset(c001.z);
  float _moonSizeAngle : packoffset(c001.w);
  float _moonSizeAngleCosine : packoffset(c002.x);
  float _moonDirY : packoffset(c002.y);
  float _earthAxisTilt : packoffset(c002.z);
  float _latitude : packoffset(c002.w);
  float _atmosphereSeaBaseline : packoffset(c003.x);
  float _atmosphereThickness : packoffset(c003.y);
  float _rayleighScaledHeight : packoffset(c003.z);
  uint _rayleighScatteringColor : packoffset(c003.w);
  float _mieScaledHeight : packoffset(c004.x);
  float _mieAerosolDensity : packoffset(c004.y);
  float _mieAerosolAbsorption : packoffset(c004.z);
  float _miePhaseConst : packoffset(c004.w);
  float _ozoneRatio : packoffset(c005.x);
  float _directionalLightLuminanceScale : packoffset(c005.y);
  float _distanceScale : packoffset(c005.z);
  float _heightFogDensity : packoffset(c005.w);
  float _heightFogBaseline : packoffset(c006.x);
  float _heightFogFalloff : packoffset(c006.y);
  float _heightFogScale : packoffset(c006.z);
  float _cloudBaseDensity : packoffset(c006.w);
  float _cloudBaseContrast : packoffset(c007.x);
  float _cloudBaseScale : packoffset(c007.y);
  float _cloudAlpha : packoffset(c007.z);
  float _cloudScrollMultiplier : packoffset(c007.w);
  float _cloudScatteringCoefficient : packoffset(c008.x);
  float _cloudPhaseConstFront : packoffset(c008.y);
  float _cloudPhaseConstBack : packoffset(c008.z);
  float _cloudAltitude : packoffset(c008.w);
  float _cloudThickness : packoffset(c009.x);
  float _cloudVisibleRange : packoffset(c009.y);
  float _cloudNear : packoffset(c009.z);
  float _cloudFadeRange : packoffset(c009.w);
  float _cloudDetailRatio : packoffset(c010.x);
  float _cloudDetailScale : packoffset(c010.y);
  float _cloudMultiRatio : packoffset(c010.z);
  float _cloudBeerPowderRatio : packoffset(c010.w);
  float _cloudCirrusAltitude : packoffset(c011.x);
  float _cloudCirrusDensity : packoffset(c011.y);
  float _cloudCirrusScale : packoffset(c011.z);
  float _cloudCirrusWeightR : packoffset(c011.w);
  float _cloudCirrusWeightG : packoffset(c012.x);
  float _cloudCirrusWeightB : packoffset(c012.y);
  float _cloudFlow : packoffset(c012.z);
  float _cloudSeed : packoffset(c012.w);
  float4 _volumeFogScatterColor : packoffset(c013.x);
  float4 _mieScatterColor : packoffset(c014.x);
};

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b16, space35) {
  float4 _precomputedAmbient0 : packoffset(c000.x);
  float4 _precomputedAmbient1 : packoffset(c001.x);
  float4 _precomputedAmbient2 : packoffset(c002.x);
  float4 _precomputedAmbient3 : packoffset(c003.x);
  float4 _precomputedAmbient4 : packoffset(c004.x);
  float4 _precomputedAmbient5 : packoffset(c005.x);
  float4 _precomputedAmbient6 : packoffset(c006.x);
  float4 _precomputedAmbient7 : packoffset(c007.x);
  float4 _precomputedAmbients[56] : packoffset(c008.x);
};

cbuffer __3__35__0__0__CloudDensityVolumeConstantBuffer : register(b0, space35) {
  uint4 _cloudDensityVolumeInfo : packoffset(c000.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _renderFlags : packoffset(c000.x);
  float4 _skyColor : packoffset(c001.x);
  float4 _volumeSize : packoffset(c002.x);
};

SamplerState __0__95__0__0__g_samplerAnisotropicWrap : register(s8, space95);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearWrapUWClampV : register(s1, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Computes the gated Dawn/Dusk factor and its Mie-g companion at function scope so every structurally recovered branch and final output site has one initialized dominating definition.
  float _dawnDuskFactor = DawnDuskFactor(_sunDirection.y);
  float _boostedMieG = MiePhaseBoostedG(_miePhaseConst, _dawnDuskFactor);
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  float _34;
  float _35;
  float _56;
  float _59;
  float _97;
  float _98;
  float _99;
  float _100;
  float _102;
  float _103;
  float _104;
  float _105;
  float _108;
  float _116;
  float _135;
  float _136;
  float _137;
  float _139;
  float _140;
  float _143;
  float _144;
  float _146;
  float _154;
  int _243;
  float _244;
  float _245;
  int _246;
  float _347;
  float _348;
  int _349;
  float _356;
  float _357;
  int _358;
  int _369;
  float _370;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _376;
  float _377;
  float _378;
  float _379;
  float _380;
  float _381;
  float _382;
  float _383;
  int _384;
  int _385;
  float _386;
  float _597;
  float _609;
  float _620;
  int _621;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  float _845;
  float _846;
  float _847;
  float _848;
  float _860;
  float _861;
  float _862;
  float _863;
  float _864;
  float _865;
  float _866;
  float _891;
  float _924;
  float _932;
  float _980;
  float _985;
  float _991;
  bool _1017;
  float _1091;
  float _1130;
  float _1144;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1294;
  float _1304;
  float _1315;
  int _1316;
  float _1529;
  float _1530;
  float _1531;
  float _1532;
  float _1533;
  float _1534;
  float _1535;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  float _1555;
  float _1556;
  float _1557;
  float _1558;
  float _1559;
  float _1560;
  float _1561;
  float _1586;
  float _1619;
  float _1627;
  float _1675;
  float _1680;
  float _1686;
  float _1790;
  float _1791;
  float _1792;
  float _1856;
  int _1868;
  float _1869;
  float _1870;
  int _1871;
  float _1972;
  float _1973;
  int _1974;
  float _1981;
  float _1982;
  int _1983;
  float _1996;
  float _1997;
  float _1998;
  float _1999;
  float _2000;
  float _2001;
  float _2002;
  float _2003;
  float _2004;
  int _2005;
  float _2183;
  float _2184;
  float _2194;
  int _2195;
  float _2408;
  float _2409;
  float _2410;
  float _2411;
  float _2412;
  float _2413;
  float _2414;
  float _2419;
  float _2420;
  float _2421;
  float _2422;
  float _2434;
  float _2435;
  float _2436;
  float _2437;
  float _2438;
  float _2439;
  float _2440;
  float _2465;
  float _2498;
  float _2506;
  float _2555;
  float _2560;
  float _2566;
  float _2752;
  float _2764;
  float _2772;
  int _2773;
  float _2984;
  float _2985;
  float _2986;
  float _2987;
  float _2988;
  float _2989;
  float _2990;
  float _2995;
  float _2996;
  float _2997;
  float _2998;
  float _3010;
  float _3011;
  float _3012;
  float _3013;
  float _3014;
  float _3015;
  float _3016;
  float _3041;
  float _3074;
  float _3082;
  float _3131;
  float _3136;
  float _3142;
  float _3271;
  float _3281;
  float _3290;
  int _3291;
  float _3502;
  float _3503;
  float _3504;
  float _3505;
  float _3506;
  float _3507;
  float _3508;
  float _3513;
  float _3514;
  float _3515;
  float _3516;
  float _3528;
  float _3529;
  float _3530;
  float _3531;
  float _3532;
  float _3533;
  float _3534;
  float _3559;
  float _3592;
  float _3600;
  float _3649;
  float _3654;
  float _3660;
  float _3667;
  float _3668;
  float _3713;
  float _3744;
  float _4161;
  float _4162;
  float _4163;
  float _4164;
  float _4165;
  float _4166;
  float _4180;
  int _4181;
  int _4182;
  float _4183;
  float _4184;
  float _4185;
  float _4186;
  float _4187;
  float _4188;
  float _4189;
  float _4190;
  float _4191;
  float _4192;
  float _4193;
  float _4194;
  float _4195;
  float _4196;
  int _4197;
  int _4198;
  float _4224;
  float _4236;
  float _4285;
  float _4392;
  float _4432;
  float _4446;
  float _4447;
  float _4448;
  float _4449;
  float _4450;
  float _4451;
  float _4606;
  float _4618;
  float _4629;
  int _4630;
  float _4843;
  float _4844;
  float _4845;
  float _4846;
  float _4847;
  float _4848;
  float _4849;
  float _4854;
  float _4855;
  float _4856;
  float _4857;
  float _4869;
  float _4870;
  float _4871;
  float _4872;
  float _4873;
  float _4874;
  float _4875;
  float _4900;
  float _4933;
  float _4941;
  float _4989;
  float _4994;
  float _5000;
  float _5091;
  float _5092;
  float _5093;
  float _5158;
  int _5170;
  float _5171;
  float _5172;
  int _5173;
  float _5274;
  float _5275;
  int _5276;
  float _5283;
  float _5284;
  int _5285;
  float _5298;
  float _5299;
  float _5300;
  float _5301;
  float _5302;
  float _5303;
  float _5304;
  float _5305;
  float _5306;
  int _5307;
  float _5485;
  float _5486;
  float _5496;
  int _5497;
  float _5710;
  float _5711;
  float _5712;
  float _5713;
  float _5714;
  float _5715;
  float _5716;
  float _5721;
  float _5722;
  float _5723;
  float _5724;
  float _5736;
  float _5737;
  float _5738;
  float _5739;
  float _5740;
  float _5741;
  float _5742;
  float _5767;
  float _5800;
  float _5808;
  float _5857;
  float _5862;
  float _5868;
  float _6054;
  float _6066;
  float _6074;
  int _6075;
  float _6286;
  float _6287;
  float _6288;
  float _6289;
  float _6290;
  float _6291;
  float _6292;
  float _6297;
  float _6298;
  float _6299;
  float _6300;
  float _6312;
  float _6313;
  float _6314;
  float _6315;
  float _6316;
  float _6317;
  float _6318;
  float _6343;
  float _6376;
  float _6384;
  float _6433;
  float _6438;
  float _6444;
  float _6573;
  float _6583;
  float _6592;
  int _6593;
  float _6804;
  float _6805;
  float _6806;
  float _6807;
  float _6808;
  float _6809;
  float _6810;
  float _6815;
  float _6816;
  float _6817;
  float _6818;
  float _6830;
  float _6831;
  float _6832;
  float _6833;
  float _6834;
  float _6835;
  float _6836;
  float _6861;
  float _6894;
  float _6902;
  float _6951;
  float _6956;
  float _6962;
  float _6969;
  float _6970;
  float _7015;
  float _7046;
  float _7381;
  float _7382;
  float _7383;
  float _7384;
  float _7385;
  float _7386;
  float _7387;
  float _7388;
  float _7389;
  float _7390;
  float _7391;
  float _7472;
  float _7579;
  float _7675;
  float _7681;
  float _7828;
  float _7888;
  float _7929;
  float _7934;
  float _7970;
  float _7971;
  float _7972;
  float _7973;
  float _7974;
  float _7975;
  float _7976;
  float _7977;
  float _7978;
  float _8102;
  float _8107;
  float _8108;
  float _8109;
  float _8110;
  float _8111;
  float _8112;
  float _8124;
  float _8125;
  float _8126;
  float _163;
  float _166;
  float _173;
  float _174;
  float _175;
  float _182;
  float _183;
  float _185;
  float _191;
  float _192;
  float _199;
  float _201;
  float _207;
  float _209;
  float _210;
  float _217;
  float _225;
  float _228;
  float _249;
  float _250;
  float _251;
  float _253;
  float _254;
  float _255;
  float _257;
  float _258;
  float _259;
  float _261;
  float _262;
  float _263;
  float _267;
  float _271;
  float _275;
  float _278;
  float _281;
  float _284;
  float _285;
  float _291;
  float _297;
  float _312;
  float _313;
  float _314;
  float _318;
  float _319;
  float _320;
  float _324;
  float _325;
  float _326;
  float _337;
  float _338;
  uint _350;
  float _364;
  float _388;
  float _398;
  float _399;
  float _401;
  float _403;
  float _406;
  float _410;
  float _411;
  float _412;
  float4 _434;
  int _441;
  int _445;
  float _449;
  float _450;
  float _451;
  float _455;
  float _456;
  float _460;
  float _467;
  float _470;
  float _473;
  float _478;
  float _487;
  float _511;
  float _512;
  float _528;
  float _529;
  float _531;
  float _543;
  float _547;
  float _551;
  float _568;
  float _590;
  bool _599;
  float _629;
  float _630;
  float _631;
  float _633;
  float _634;
  float _635;
  float _637;
  float _638;
  float _639;
  float _641;
  float _642;
  float _643;
  float _645;
  float _646;
  float _647;
  float _649;
  float _650;
  float _651;
  float _652;
  float _654;
  float _655;
  float _656;
  float _657;
  int _659;
  int _660;
  float _662;
  float _663;
  float _664;
  float _665;
  float _667;
  float _668;
  float _669;
  float _670;
  float _672;
  float _673;
  float _674;
  float _675;
  float _677;
  float _678;
  float _679;
  float _681;
  float _682;
  float _683;
  float _684;
  float _688;
  float _692;
  float _696;
  float _698;
  float _704;
  float _707;
  float _710;
  float _713;
  float _718;
  float _727;
  float _731;
  float _732;
  bool _733;
  bool _734;
  float _738;
  float _744;
  float _747;
  float _749;
  bool _752;
  bool _753;
  bool _754;
  bool _755;
  float _765;
  float _766;
  float _777;
  float _779;
  float _780;
  float _781;
  float _786;
  float _795;
  float _798;
  float _799;
  float _800;
  float _811;
  float _813;
  float _817;
  float _824;
  float _825;
  float _826;
  float _829;
  float _832;
  float _849;
  float _850;
  float _851;
  float _869;
  float _873;
  float _896;
  bool _899;
  bool _900;
  bool _901;
  bool _902;
  float _934;
  float _940;
  float _945;
  float _952;
  float _956;
  uint _986;
  bool _994;
  bool _1000;
  int _1002;
  uint _1005;
  float _1007;
  float _1030;
  float _1031;
  float _1033;
  float _1034;
  float _1036;
  float _1037;
  float _1038;
  float _1039;
  float _1040;
  float _1043;
  float _1053;
  float _1061;
  float _1068;
  bool _1069;
  float _1093;
  float4 _1100;
  float4 _1136;
  float _1158;
  float _1159;
  float _1168;
  float _1169;
  float _1170;
  float _1171;
  float _1174;
  float _1175;
  float _1179;
  float _1180;
  float _1181;
  float _1187;
  float _1211;
  float _1212;
  float _1228;
  float _1229;
  float _1231;
  float _1247;
  float _1251;
  float _1268;
  float _1287;
  float _1324;
  float _1325;
  float _1326;
  float _1328;
  float _1329;
  float _1330;
  float _1332;
  float _1333;
  float _1334;
  float _1336;
  float _1337;
  float _1338;
  float _1340;
  float _1341;
  float _1342;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1349;
  float _1350;
  float _1351;
  float _1352;
  int _1354;
  int _1355;
  float _1357;
  float _1358;
  float _1359;
  float _1360;
  float _1362;
  float _1363;
  float _1364;
  float _1365;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  float _1372;
  float _1373;
  float _1374;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1383;
  float _1387;
  float _1391;
  float _1393;
  float _1399;
  float _1402;
  float _1405;
  float _1408;
  float _1413;
  float _1422;
  float _1426;
  float _1427;
  bool _1428;
  bool _1429;
  float _1433;
  float _1439;
  float _1442;
  float _1444;
  bool _1447;
  bool _1448;
  bool _1449;
  bool _1450;
  float _1460;
  float _1461;
  float _1472;
  float _1474;
  float _1475;
  float _1476;
  float _1481;
  float _1490;
  float _1493;
  float _1494;
  float _1495;
  float _1506;
  float _1508;
  float _1512;
  float _1519;
  float _1520;
  float _1521;
  float _1524;
  float _1527;
  float _1544;
  float _1545;
  float _1546;
  float _1564;
  float _1568;
  float _1591;
  bool _1594;
  bool _1595;
  bool _1596;
  bool _1597;
  float _1629;
  float _1635;
  float _1640;
  float _1647;
  float _1651;
  uint _1681;
  float _1688;
  float _1690;
  float _1693;
  float _1699;
  float _1702;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1732;
  float _1741;
  float _1756;
  float _1757;
  float _1759;
  bool _1762;
  float _1763;
  float _1764;
  float _1765;
  bool _1766;
  float _1775;
  float _1778;
  float _1784;
  float _1806;
  float _1811;
  float _1813;
  float _1815;
  float _1821;
  float _1824;
  float _1825;
  float _1839;
  float _1874;
  float _1875;
  float _1876;
  float _1878;
  float _1879;
  float _1880;
  float _1882;
  float _1883;
  float _1884;
  float _1886;
  float _1887;
  float _1888;
  float _1892;
  float _1896;
  float _1900;
  float _1903;
  float _1906;
  float _1909;
  float _1910;
  float _1916;
  float _1922;
  float _1937;
  float _1938;
  float _1939;
  float _1943;
  float _1944;
  float _1945;
  float _1949;
  float _1950;
  float _1951;
  float _1962;
  float _1963;
  uint _1975;
  float _1984;
  float _1988;
  int _2009;
  float _2015;
  float _2016;
  float _2020;
  float _2027;
  float _2032;
  float _2035;
  float _2040;
  float _2049;
  float _2092;
  float _2093;
  float _2109;
  float _2110;
  float _2112;
  float _2124;
  float _2128;
  float _2132;
  float _2151;
  float _2167;
  float _2170;
  float _2171;
  float _2203;
  float _2204;
  float _2205;
  float _2207;
  float _2208;
  float _2209;
  float _2211;
  float _2212;
  float _2213;
  float _2215;
  float _2216;
  float _2217;
  float _2219;
  float _2220;
  float _2221;
  float _2223;
  float _2224;
  float _2225;
  float _2226;
  float _2228;
  float _2229;
  float _2230;
  float _2231;
  int _2233;
  int _2234;
  float _2236;
  float _2237;
  float _2238;
  float _2239;
  float _2241;
  float _2242;
  float _2243;
  float _2244;
  float _2246;
  float _2247;
  float _2248;
  float _2249;
  float _2251;
  float _2252;
  float _2253;
  float _2255;
  float _2256;
  float _2257;
  float _2258;
  float _2262;
  float _2266;
  float _2270;
  float _2272;
  float _2278;
  float _2281;
  float _2284;
  float _2287;
  float _2292;
  float _2301;
  float _2305;
  float _2306;
  bool _2307;
  bool _2308;
  float _2312;
  float _2318;
  float _2321;
  float _2323;
  bool _2326;
  bool _2327;
  bool _2328;
  bool _2329;
  float _2339;
  float _2340;
  float _2351;
  float _2353;
  float _2354;
  float _2355;
  float _2360;
  float _2369;
  float _2372;
  float _2373;
  float _2374;
  float _2385;
  float _2387;
  float _2391;
  float _2398;
  float _2399;
  float _2400;
  float _2403;
  float _2406;
  float _2423;
  float _2424;
  float _2425;
  float _2443;
  float _2447;
  float _2470;
  bool _2473;
  bool _2474;
  bool _2475;
  bool _2476;
  float _2508;
  float _2514;
  float _2519;
  float _2527;
  float _2531;
  uint _2561;
  float _2568;
  float _2584;
  float _2585;
  float _2586;
  float _2587;
  float _2588;
  float _2589;
  float _2590;
  float _2591;
  float _2592;
  int _2593;
  bool _2601;
  float4 _2621;
  float _2623;
  float _2624;
  float _2625;
  float _2626;
  float _2630;
  float _2635;
  float _2636;
  float _2638;
  float _2644;
  float _2666;
  float _2667;
  float _2683;
  float _2684;
  float _2686;
  float _2698;
  float _2702;
  float _2706;
  float _2723;
  float _2745;
  bool _2754;
  float _2779;
  float _2780;
  float _2781;
  float _2783;
  float _2784;
  float _2785;
  float _2787;
  float _2788;
  float _2789;
  float _2791;
  float _2792;
  float _2793;
  float _2795;
  float _2796;
  float _2797;
  float _2799;
  float _2800;
  float _2801;
  float _2802;
  float _2804;
  float _2805;
  float _2806;
  float _2807;
  int _2809;
  int _2810;
  float _2812;
  float _2813;
  float _2814;
  float _2815;
  float _2817;
  float _2818;
  float _2819;
  float _2820;
  float _2822;
  float _2823;
  float _2824;
  float _2825;
  float _2827;
  float _2828;
  float _2829;
  float _2831;
  float _2832;
  float _2833;
  float _2834;
  float _2838;
  float _2842;
  float _2846;
  float _2848;
  float _2854;
  float _2857;
  float _2860;
  float _2863;
  float _2868;
  float _2877;
  float _2881;
  float _2882;
  bool _2883;
  bool _2884;
  float _2888;
  float _2894;
  float _2897;
  float _2899;
  bool _2902;
  bool _2903;
  bool _2904;
  bool _2905;
  float _2915;
  float _2916;
  float _2927;
  float _2929;
  float _2930;
  float _2931;
  float _2936;
  float _2945;
  float _2948;
  float _2949;
  float _2950;
  float _2961;
  float _2963;
  float _2967;
  float _2974;
  float _2975;
  float _2976;
  float _2979;
  float _2982;
  float _2999;
  float _3000;
  float _3001;
  float _3019;
  float _3023;
  float _3046;
  bool _3049;
  bool _3050;
  bool _3051;
  bool _3052;
  float _3084;
  float _3090;
  float _3095;
  float _3103;
  float _3107;
  uint _3137;
  float _3145;
  float _3146;
  float _3147;
  float _3151;
  float _3156;
  float _3163;
  float _3185;
  float _3186;
  float _3202;
  float _3203;
  float _3205;
  float _3217;
  float _3221;
  float _3225;
  float _3242;
  float _3264;
  float _3297;
  float _3298;
  float _3299;
  float _3301;
  float _3302;
  float _3303;
  float _3305;
  float _3306;
  float _3307;
  float _3309;
  float _3310;
  float _3311;
  float _3313;
  float _3314;
  float _3315;
  float _3317;
  float _3318;
  float _3319;
  float _3320;
  float _3322;
  float _3323;
  float _3324;
  float _3325;
  int _3327;
  int _3328;
  float _3330;
  float _3331;
  float _3332;
  float _3333;
  float _3335;
  float _3336;
  float _3337;
  float _3338;
  float _3340;
  float _3341;
  float _3342;
  float _3343;
  float _3345;
  float _3346;
  float _3347;
  float _3349;
  float _3350;
  float _3351;
  float _3352;
  float _3356;
  float _3360;
  float _3364;
  float _3366;
  float _3372;
  float _3375;
  float _3378;
  float _3381;
  float _3386;
  float _3395;
  float _3399;
  float _3400;
  bool _3401;
  bool _3402;
  float _3406;
  float _3412;
  float _3415;
  float _3417;
  bool _3420;
  bool _3421;
  bool _3422;
  bool _3423;
  float _3433;
  float _3434;
  float _3445;
  float _3447;
  float _3448;
  float _3449;
  float _3454;
  float _3463;
  float _3466;
  float _3467;
  float _3468;
  float _3479;
  float _3481;
  float _3485;
  float _3492;
  float _3493;
  float _3494;
  float _3497;
  float _3500;
  float _3517;
  float _3518;
  float _3519;
  float _3537;
  float _3541;
  float _3564;
  bool _3567;
  bool _3568;
  bool _3569;
  bool _3570;
  float _3602;
  float _3608;
  float _3613;
  float _3621;
  float _3625;
  uint _3655;
  float _3669;
  float _3673;
  float _3681;
  float _3690;
  float _3715;
  float2 _3718;
  float _3721;
  float2 _3745;
  float _3748;
  float _3753;
  float _3758;
  float _3759;
  float _3760;
  float _3761;
  float _3762;
  float _3763;
  float _3770;
  float _3773;
  float _3775;
  float _3782;
  float _3783;
  float _3784;
  float _3793;
  float _3794;
  float _3795;
  float _3796;
  float _3797;
  float _3799;
  float _3800;
  float _3802;
  float _3803;
  float _3808;
  float _3809;
  float _3810;
  float _3823;
  float _3824;
  float _3825;
  float _3826;
  float _3827;
  float _3828;
  float _3829;
  float _3836;
  float _3840;
  float _3843;
  float _3844;
  float _3852;
  float _3858;
  float _3865;
  float _3871;
  float _3878;
  float _3880;
  float _3888;
  float _3891;
  float _3894;
  float _3897;
  float _3927;
  float _3936;
  float _3937;
  float _3938;
  float _3958;
  float _3962;
  float _3965;
  float _3970;
  float _3973;
  float _3978;
  float _3981;
  float _3986;
  float _3987;
  float _3989;
  float _3990;
  float _3991;
  float _3993;
  float _3995;
  float _4000;
  float _4001;
  float _4002;
  float _4019;
  float _4030;
  float _4040;
  float _4047;
  float _4054;
  float _4061;
  float _4065;
  float _4066;
  float _4082;
  float _4083;
  float _4090;
  float _4091;
  float _4092;
  float _4110;
  float _4112;
  float _4113;
  float _4127;
  float _4134;
  float _4135;
  float _4136;
  float _4153;
  float _4167;
  uint _4199;
  float _4207;
  float _4212;
  float _4216;
  float _4228;
  float _4242;
  float _4243;
  float _4245;
  float _4246;
  float _4247;
  float _4248;
  float _4256;
  float _4257;
  float4 _4261;
  float _4273;
  float _4277;
  float _4286;
  float _4315;
  int _4318;
  float _4327;
  float _4330;
  float _4331;
  float _4332;
  float _4334;
  float _4335;
  float _4337;
  float _4338;
  float _4339;
  float _4340;
  float _4341;
  float _4344;
  float _4354;
  float _4362;
  float _4369;
  bool _4370;
  float _4394;
  float4 _4402;
  float4 _4438;
  float _4460;
  float _4461;
  float _4470;
  float _4471;
  float _4475;
  float _4476;
  float _4479;
  float _4480;
  float _4486;
  float _4487;
  float _4490;
  float _4493;
  float _4496;
  float _4503;
  float _4526;
  float _4527;
  float _4541;
  float _4542;
  float _4544;
  float _4560;
  float _4564;
  float _4581;
  float _4599;
  float _4638;
  float _4639;
  float _4640;
  float _4642;
  float _4643;
  float _4644;
  float _4646;
  float _4647;
  float _4648;
  float _4650;
  float _4651;
  float _4652;
  float _4654;
  float _4655;
  float _4656;
  float _4658;
  float _4659;
  float _4660;
  float _4661;
  float _4663;
  float _4664;
  float _4665;
  float _4666;
  int _4668;
  int _4669;
  float _4671;
  float _4672;
  float _4673;
  float _4674;
  float _4676;
  float _4677;
  float _4678;
  float _4679;
  float _4681;
  float _4682;
  float _4683;
  float _4684;
  float _4686;
  float _4687;
  float _4688;
  float _4690;
  float _4691;
  float _4692;
  float _4693;
  float _4697;
  float _4701;
  float _4705;
  float _4707;
  float _4713;
  float _4716;
  float _4719;
  float _4722;
  float _4727;
  float _4736;
  float _4740;
  float _4741;
  bool _4742;
  bool _4743;
  float _4747;
  float _4753;
  float _4756;
  float _4758;
  bool _4761;
  bool _4762;
  bool _4763;
  bool _4764;
  float _4774;
  float _4775;
  float _4786;
  float _4788;
  float _4789;
  float _4790;
  float _4795;
  float _4804;
  float _4807;
  float _4808;
  float _4809;
  float _4820;
  float _4822;
  float _4826;
  float _4833;
  float _4834;
  float _4835;
  float _4838;
  float _4841;
  float _4858;
  float _4859;
  float _4860;
  float _4878;
  float _4882;
  float _4905;
  bool _4908;
  bool _4909;
  bool _4910;
  bool _4911;
  float _4943;
  float _4949;
  float _4954;
  float _4961;
  float _4965;
  uint _4995;
  float _5004;
  float _5007;
  float _5013;
  float _5014;
  float _5015;
  float _5016;
  float _5017;
  float _5018;
  float _5039;
  float _5057;
  float _5058;
  float _5060;
  bool _5063;
  float _5064;
  float _5065;
  float _5066;
  bool _5067;
  float _5076;
  float _5079;
  float _5085;
  float _5108;
  float _5113;
  float _5115;
  float _5117;
  float _5123;
  float _5126;
  float _5127;
  float _5141;
  float _5176;
  float _5177;
  float _5178;
  float _5180;
  float _5181;
  float _5182;
  float _5184;
  float _5185;
  float _5186;
  float _5188;
  float _5189;
  float _5190;
  float _5194;
  float _5198;
  float _5202;
  float _5205;
  float _5208;
  float _5211;
  float _5212;
  float _5218;
  float _5224;
  float _5239;
  float _5240;
  float _5241;
  float _5245;
  float _5246;
  float _5247;
  float _5251;
  float _5252;
  float _5253;
  float _5264;
  float _5265;
  uint _5277;
  float _5286;
  float _5290;
  int _5311;
  float _5317;
  float _5318;
  float _5322;
  float _5329;
  float _5334;
  float _5337;
  float _5342;
  float _5351;
  float _5394;
  float _5395;
  float _5411;
  float _5412;
  float _5414;
  float _5426;
  float _5430;
  float _5434;
  float _5453;
  float _5469;
  float _5472;
  float _5473;
  float _5505;
  float _5506;
  float _5507;
  float _5509;
  float _5510;
  float _5511;
  float _5513;
  float _5514;
  float _5515;
  float _5517;
  float _5518;
  float _5519;
  float _5521;
  float _5522;
  float _5523;
  float _5525;
  float _5526;
  float _5527;
  float _5528;
  float _5530;
  float _5531;
  float _5532;
  float _5533;
  int _5535;
  int _5536;
  float _5538;
  float _5539;
  float _5540;
  float _5541;
  float _5543;
  float _5544;
  float _5545;
  float _5546;
  float _5548;
  float _5549;
  float _5550;
  float _5551;
  float _5553;
  float _5554;
  float _5555;
  float _5557;
  float _5558;
  float _5559;
  float _5560;
  float _5564;
  float _5568;
  float _5572;
  float _5574;
  float _5580;
  float _5583;
  float _5586;
  float _5589;
  float _5594;
  float _5603;
  float _5607;
  float _5608;
  bool _5609;
  bool _5610;
  float _5614;
  float _5620;
  float _5623;
  float _5625;
  bool _5628;
  bool _5629;
  bool _5630;
  bool _5631;
  float _5641;
  float _5642;
  float _5653;
  float _5655;
  float _5656;
  float _5657;
  float _5662;
  float _5671;
  float _5674;
  float _5675;
  float _5676;
  float _5687;
  float _5689;
  float _5693;
  float _5700;
  float _5701;
  float _5702;
  float _5705;
  float _5708;
  float _5725;
  float _5726;
  float _5727;
  float _5745;
  float _5749;
  float _5772;
  bool _5775;
  bool _5776;
  bool _5777;
  bool _5778;
  float _5810;
  float _5816;
  float _5821;
  float _5829;
  float _5833;
  uint _5863;
  float _5870;
  float _5886;
  float _5887;
  float _5888;
  float _5889;
  float _5890;
  float _5891;
  float _5892;
  float _5893;
  float _5894;
  int _5895;
  bool _5903;
  float4 _5923;
  float _5925;
  float _5926;
  float _5927;
  float _5928;
  float _5932;
  float _5937;
  float _5938;
  float _5940;
  float _5946;
  float _5968;
  float _5969;
  float _5985;
  float _5986;
  float _5988;
  float _6000;
  float _6004;
  float _6008;
  float _6025;
  float _6047;
  bool _6056;
  float _6081;
  float _6082;
  float _6083;
  float _6085;
  float _6086;
  float _6087;
  float _6089;
  float _6090;
  float _6091;
  float _6093;
  float _6094;
  float _6095;
  float _6097;
  float _6098;
  float _6099;
  float _6101;
  float _6102;
  float _6103;
  float _6104;
  float _6106;
  float _6107;
  float _6108;
  float _6109;
  int _6111;
  int _6112;
  float _6114;
  float _6115;
  float _6116;
  float _6117;
  float _6119;
  float _6120;
  float _6121;
  float _6122;
  float _6124;
  float _6125;
  float _6126;
  float _6127;
  float _6129;
  float _6130;
  float _6131;
  float _6133;
  float _6134;
  float _6135;
  float _6136;
  float _6140;
  float _6144;
  float _6148;
  float _6150;
  float _6156;
  float _6159;
  float _6162;
  float _6165;
  float _6170;
  float _6179;
  float _6183;
  float _6184;
  bool _6185;
  bool _6186;
  float _6190;
  float _6196;
  float _6199;
  float _6201;
  bool _6204;
  bool _6205;
  bool _6206;
  bool _6207;
  float _6217;
  float _6218;
  float _6229;
  float _6231;
  float _6232;
  float _6233;
  float _6238;
  float _6247;
  float _6250;
  float _6251;
  float _6252;
  float _6263;
  float _6265;
  float _6269;
  float _6276;
  float _6277;
  float _6278;
  float _6281;
  float _6284;
  float _6301;
  float _6302;
  float _6303;
  float _6321;
  float _6325;
  float _6348;
  bool _6351;
  bool _6352;
  bool _6353;
  bool _6354;
  float _6386;
  float _6392;
  float _6397;
  float _6405;
  float _6409;
  uint _6439;
  float _6447;
  float _6448;
  float _6449;
  float _6453;
  float _6458;
  float _6465;
  float _6487;
  float _6488;
  float _6504;
  float _6505;
  float _6507;
  float _6519;
  float _6523;
  float _6527;
  float _6544;
  float _6566;
  float _6599;
  float _6600;
  float _6601;
  float _6603;
  float _6604;
  float _6605;
  float _6607;
  float _6608;
  float _6609;
  float _6611;
  float _6612;
  float _6613;
  float _6615;
  float _6616;
  float _6617;
  float _6619;
  float _6620;
  float _6621;
  float _6622;
  float _6624;
  float _6625;
  float _6626;
  float _6627;
  int _6629;
  int _6630;
  float _6632;
  float _6633;
  float _6634;
  float _6635;
  float _6637;
  float _6638;
  float _6639;
  float _6640;
  float _6642;
  float _6643;
  float _6644;
  float _6645;
  float _6647;
  float _6648;
  float _6649;
  float _6651;
  float _6652;
  float _6653;
  float _6654;
  float _6658;
  float _6662;
  float _6666;
  float _6668;
  float _6674;
  float _6677;
  float _6680;
  float _6683;
  float _6688;
  float _6697;
  float _6701;
  float _6702;
  bool _6703;
  bool _6704;
  float _6708;
  float _6714;
  float _6717;
  float _6719;
  bool _6722;
  bool _6723;
  bool _6724;
  bool _6725;
  float _6735;
  float _6736;
  float _6747;
  float _6749;
  float _6750;
  float _6751;
  float _6756;
  float _6765;
  float _6768;
  float _6769;
  float _6770;
  float _6781;
  float _6783;
  float _6787;
  float _6794;
  float _6795;
  float _6796;
  float _6799;
  float _6802;
  float _6819;
  float _6820;
  float _6821;
  float _6839;
  float _6843;
  float _6866;
  bool _6869;
  bool _6870;
  bool _6871;
  bool _6872;
  float _6904;
  float _6910;
  float _6915;
  float _6923;
  float _6927;
  uint _6957;
  float _6971;
  float _6975;
  float _6983;
  float _6992;
  float _7017;
  float2 _7020;
  float _7023;
  float2 _7047;
  float _7058;
  float _7059;
  float _7060;
  float _7061;
  float _7062;
  float _7063;
  float _7070;
  float _7073;
  float _7075;
  float _7082;
  float _7083;
  float _7093;
  float _7094;
  float _7095;
  float _7097;
  float _7099;
  float _7102;
  float _7108;
  float _7109;
  float _7110;
  float _7123;
  float _7124;
  float _7125;
  float _7126;
  float _7127;
  float _7128;
  float _7129;
  float _7136;
  float _7140;
  float _7141;
  float _7145;
  float _7150;
  float _7156;
  float _7163;
  float _7169;
  float _7176;
  float _7178;
  float _7186;
  float _7187;
  float _7189;
  float _7191;
  float _7199;
  float _7203;
  float _7224;
  float _7233;
  float _7234;
  float _7235;
  float _7248;
  float _7249;
  float _7250;
  float _7255;
  float _7259;
  float _7261;
  float _7267;
  float _7268;
  float _7272;
  float _7278;
  float _7282;
  float _7288;
  float _7291;
  float _7295;
  float _7304;
  float _7305;
  float _7306;
  float _7319;
  float _7320;
  float _7321;
  float _7322;
  float _7333;
  float _7343;
  float _7397;
  float _7398;
  float _7402;
  float _7406;
  float _7407;
  float _7414;
  float _7415;
  float _7421;
  float _7422;
  float _7423;
  float _7424;
  float _7427;
  float _7429;
  float _7432;
  float _7434;
  float _7436;
  float _7442;
  float _7443;
  float _7449;
  bool _7450;
  float _7474;
  float _7479;
  float4 _7482;
  float4 _7487;
  float _7494;
  float _7495;
  float _7499;
  float _7505;
  float _7506;
  float _7513;
  float _7514;
  float4 _7519;
  float4 _7524;
  float _7528;
  float _7534;
  float _7535;
  float _7536;
  float _7537;
  float _7540;
  float _7543;
  float _7550;
  float _7556;
  bool _7557;
  float _7581;
  float _7586;
  float4 _7587;
  float4 _7591;
  float4 _7601;
  float4 _7605;
  float _7618;
  float _7619;
  float _7620;
  float _7621;
  float _7622;
  float _7623;
  float _7629;
  float _7636;
  float _7637;
  float _7639;
  float _7640;
  float _7641;
  float _7642;
  float _7643;
  float _7664;
  float _7665;
  float _7666;
  float _7667;
  float _7668;
  float _7669;
  bool _7670;
  bool _7676;
  float _7712;
  float _7718;
  float _7725;
  float _7730;
  float _7737;
  float _7738;
  float _7739;
  float _7742;
  float _7762;
  float _7763;
  float _7768;
  float _7771;
  float _7774;
  float _7780;
  float _7781;
  float _7782;
  float _7806;
  float _7833;
  float4 _7834;
  float4 _7838;
  float _7843;
  float _7844;
  float _7854;
  float4 _7858;
  float4 _7862;
  float _7893;
  float4 _7894;
  float4 _7898;
  float4 _7908;
  float4 _7912;
  float _7937;
  float _7938;
  float _8012;
  float _8023;
  float _8024;
  float _8025;
  float _8044;
  float _8045;
  float _8046;
  float _8047;
  float _8048;
  float _8049;
  float _8093;
  int __loop_jump_target = -1;
  float _33[4];
  _34 = (float)((uint)(SV_DispatchThreadID.x));
  _35 = (float)((uint)(SV_DispatchThreadID.y));
  _56 = ((_bufferSizeAndInvSize.z * 2.0f) * ((((_34 + 0.5f) * 2.0f) + -0.5f) + ((float)((uint)((uint)(_frameNumber.x & 1)))))) + -1.0f;
  _59 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * ((((_35 + 0.5f) * 2.0f) + -0.5f) + ((float)((uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))));
  _97 = mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _59, (_56 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
  _98 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _59, (_56 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _97;
  _99 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _59, (_56 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _97;
  _100 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _59, (_56 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _97;
  _102 = rsqrt(dot(float3(_98, _99, _100), float3(_98, _99, _100)));  // [sem: invLength]
  _103 = _102 * _98;
  _104 = _102 * _99;
  _105 = _102 * _100;
  _108 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
  _116 = frac(frac(dot(float2(((_108 * 32.665f) + _34), ((_108 * 11.815f) + _35)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _135 = _atmosphereThickness + _earthRadius;
  _136 = _earthRadius + _viewPos.y;
  _137 = dot(float3(_103, _104, _105), float3(_103, _104, _105));
  _139 = dot(float3(_viewPos.x, _136, _viewPos.z), float3(_103, _104, _105)) * 2.0f;
  _140 = dot(float3(_viewPos.x, _136, _viewPos.z), float3(_viewPos.x, _136, _viewPos.z));
  _143 = _139 * _139;
  _144 = _137 * 4.0f;
  _146 = _143 - ((_140 - (_135 * _135)) * _144);
  if (!(_146 < 0.0f)) {
    _154 = ((sqrt(_146) - _139) / (_137 * 2.0f));
  } else {
    _154 = -1.0f;
  }
  if (!(_154 <= 0.0f)) {
    _163 = dot(float3(_103, _104, _105), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
    _166 = _cloudPhaseConstFront * _cloudPhaseConstFront;
    _173 = (_163 * _163) + 1.0f;
    _174 = _166 + 1.0f;
    _175 = _163 * 2.0f;
    _182 = (((1.0f - _166) * 3.0f) / ((_166 + 2.0f) * 2.0f)) * 0.07957747f;
    _183 = (_173 / exp2(log2(_174 - (_cloudPhaseConstFront * _175)) * 1.5f)) * _182;
    _185 = _cloudPhaseConstBack * _cloudPhaseConstBack;
    _191 = _185 + 1.0f;
    _192 = _cloudPhaseConstBack * -2.0f;
    _199 = (((1.0f - _185) * 3.0f) / ((_185 + 2.0f) * 2.0f)) * 0.039788734f;
    _201 = ((_173 / exp2(log2(_191 - (_192 * _163)) * 1.5f)) * _199) + _183;
    _207 = dot(float3(_103, _104, _105), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
    _209 = (_207 * _207) + 1.0f;
    _210 = _207 * 2.0f;
    _217 = (_209 / exp2(log2(_174 - (_210 * _cloudPhaseConstFront)) * 1.5f)) * _182;
    _225 = ((_209 / exp2(log2(_191 - (_192 * _207)) * 1.5f)) * _199) + _217;
    _228 = min(_cloudVisibleRange, (((_cloudVisibleRange * -0.9f) * saturate(_104 * 8.0f)) + _cloudVisibleRange));
    if (_renderFlags.x > 0.5f) {
      if ((_cloudDensityVolumeInfo.y & 1) == 0) {
        _356 = 0.0f;
        _357 = 3.4028235e+38f;
        _358 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
      } else {
        if (!(_cloudDensityVolumeInfo.x == 0)) {
          _243 = 0;
          _244 = 3.4028235e+38f;
          _245 = 0.0f;
          _246 = 0;
          while(true) {
            _249 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[0].x;
            _250 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[1].x;
            _251 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[2].x;
            _253 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[0].y;
            _254 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[1].y;
            _255 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[2].y;
            _257 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[0].z;
            _258 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[1].z;
            _259 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[2].z;
            _261 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[0].w;
            _262 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[1].w;
            _263 = __3__37__0__0__g_cloudDensityVolumes[_243]._relativeWorldToLocal[2].w;
            _267 = mad(_257, _viewPos.z, mad(_253, _viewPos.y, (_249 * _viewPos.x))) + _261;
            _271 = mad(_258, _viewPos.z, mad(_254, _viewPos.y, (_250 * _viewPos.x))) + _262;
            _275 = mad(_259, _viewPos.z, mad(_255, _viewPos.y, (_251 * _viewPos.x))) + _263;
            _278 = mad(_257, _105, mad(_253, _104, (_249 * _103)));
            _281 = mad(_258, _105, mad(_254, _104, (_250 * _103)));
            _284 = mad(_259, _105, mad(_255, _104, (_251 * _103)));
            _285 = abs(_278);
            if (!(_285 < 1e-06f) || !(abs(_267) > 0.5f)) {
              _291 = abs(_281);
              if (!(_291 < 1e-06f) || !(abs(_271) > 0.5f)) {
                _297 = abs(_284);
                if (!(_297 < 1e-06f) || !(abs(_275) > 0.5f)) {
                  _312 = max(_285, 1e-06f) * select((_278 < 0.0f), -1.0f, 1.0f);
                  _313 = max(_291, 1e-06f) * select((_281 < 0.0f), -1.0f, 1.0f);
                  _314 = max(_297, 1e-06f) * select((_284 < 0.0f), -1.0f, 1.0f);
                  _318 = (-0.5f - _267) / _312;
                  _319 = (-0.5f - _271) / _313;
                  _320 = (-0.5f - _275) / _314;
                  _324 = (0.5f - _267) / _312;
                  _325 = (0.5f - _271) / _313;
                  _326 = (0.5f - _275) / _314;
                  _337 = max(max(max(min(_318, _324), min(_319, _325)), min(_320, _326)), 0.0f);
                  _338 = min(min(min(max(_318, _324), max(_319, _325)), max(_320, _326)), _154);
                  if (!(_338 < _337)) {
                    _347 = min(_244, _337);
                    _348 = max(_245, _338);
                    _349 = ((int)(_246) | (int)((int)((uint)(1) << (_243 & 31))));
                  } else {
                    _347 = _244;
                    _348 = _245;
                    _349 = _246;
                  }
                } else {
                  _347 = _244;
                  _348 = _245;
                  _349 = _246;
                }
              } else {
                _347 = _244;
                _348 = _245;
                _349 = _246;
              }
            } else {
              _347 = _244;
              _348 = _245;
              _349 = _246;
            }
            _350 = (uint)((uint)(_243)) + (uint)(1);
            if ((uint)_350 < (uint)_cloudDensityVolumeInfo.x) {
              _243 = _350;
              _244 = _347;
              _245 = _348;
              _246 = _349;
              continue;
            }
            _356 = _347;
            _357 = _348;
            _358 = _349;
            break;
          }
        } else {
          _356 = 3.4028235e+38f;
          _357 = 0.0f;
          _358 = 0;
        }
      }
      _364 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.015625f));
      _369 = 1;
      _370 = 0.0f;
      _371 = 0.0f;
      _372 = 0.0f;
      _373 = 0.0f;
      _374 = 0.0f;
      _375 = 0.0f;
      _376 = 0.0f;
      _377 = 0.0f;
      _378 = 0.0f;
      _379 = 0.0f;
      _380 = 0.0f;
      _381 = 0.0f;
      _382 = 0.0f;
      _383 = 0.0f;
      _384 = 0;
      _385 = 0;
      _386 = 128.0f;
      while(true) {
        _388 = (float)((int)(_384));
        _398 = (((exp2(select(((uint)_384 < (uint)12), (_388 * 0.33f), (_388 + -8.039999f)) * _364) + -1.0f) * (_228 + -128.0f)) / (exp2(_364 * 64.0f) + -1.0f)) + 128.0f;
        _399 = min(_398, _154);
        _401 = max(0.0f, (_399 - _386));
        _403 = (_401 * _116) + _386;
        _406 = _distanceScale * _401;
        _410 = (_403 * _103) + _viewPos.x;
        _411 = (_403 * _104) + _viewPos.y;
        _412 = (_403 * _105) + _viewPos.z;
        // [sem: _3__36__0__0__g_climateTex2_sampleLod]
        _434 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_410 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_412 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
        _441 = select(((_403 >= _356) && (_403 <= _357)), _358, 0);
        _445 = select(((_399 >= _356) && (_399 <= _357)), _358, 0);
        _449 = (_399 * _103) + _viewPos.x;
        _450 = (_399 * _104) + _viewPos.y;
        _451 = (_399 * _105) + _viewPos.z;
        _455 = _449 - _viewPos.x;
        _456 = _451 - _viewPos.z;
        _460 = sqrt((_455 * _455) + (_456 * _456));
        _467 = _cloudAltitude - (max(((_460 * _460) + -400000.0f), 0.0f) * 1e-06f);
        _470 = _cloudDetailScale * 0.004f;
        _473 = _cloudBaseScale * 0.0004f;
        _478 = _earthRadius + _450;
        _487 = ((sqrt(((_451 * _451) + (_449 * _449)) + (_478 * _478)) - _467) - _earthRadius) / _cloudThickness;
        if (!((_487 < 0.0f) || (_487 > 1.0f))) {
          _511 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
          _512 = _450 - _467;
          _528 = _470 / _473;
          _529 = _528 * _473;
          _531 = _528 * _511;
          _543 = saturate(max((_460 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
          _547 = (4.0f - (_543 * 3.0f)) * (_cloudDetailScale * 0.001884f);
          _551 = _529 * 4.355f;
          _568 = 1.0f - sqrt(saturate((1.0f - _487) * 1.4285715f));
          _590 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_470 * _449) - (_529 * _cloudScroll.x)), ((_512 * _470) - _531), ((_470 * _451) - (_529 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_543 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_547 * _449) - (_551 * _cloudScroll.x)), ((_547 * _512) - (_531 * 4.355f)), ((_547 * _451) - (_551 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_487 * 4.0f) * 0.8f) + 0.2f);
          _597 = (saturate(((saturate(saturate(((_434.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_473 * (_449 - _cloudScroll.x)), ((_473 * _512) - _511), (_473 * (_451 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_568 * 0.5f), ((_568 * _568) * _568))) * saturate(_487 * 10.0f)) - _590) / (1.0f - _590)) * _cloudAlpha);
        } else {
          _597 = 0.0f;
        }
        _599 = (_cloudFadeRange > 1e-05f);
        if (_599) {
          _609 = saturate((((1.0f - _cloudNear) * _460) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
        } else {
          _609 = 1.0f;  // [sem: expr_sat]
        }
        if (!((_445 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
          _620 = 0.0f;
          _621 = 0;
          while(true) {
            _985 = _620;
            if (!((((int)((uint)(1) << (_621 & 31))) & _445) == 0)) {
              _629 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[0].x;
              _630 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[1].x;
              _631 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[2].x;
              _633 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[0].y;
              _634 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[1].y;
              _635 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[2].y;
              _637 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[0].z;
              _638 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[1].z;
              _639 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[2].z;
              _641 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[0].w;
              _642 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[1].w;
              _643 = __3__37__0__0__g_cloudDensityVolumes[_621]._relativeWorldToLocal[2].w;
              _645 = __3__37__0__0__g_cloudDensityVolumes[_621]._shapeParameter.x;
              _646 = __3__37__0__0__g_cloudDensityVolumes[_621]._shapeParameter.z;
              _647 = __3__37__0__0__g_cloudDensityVolumes[_621]._shapeParameter.w;
              _649 = __3__37__0__0__g_cloudDensityVolumes[_621]._macroNoiseParameter.x;
              _650 = __3__37__0__0__g_cloudDensityVolumes[_621]._macroNoiseParameter.y;
              _651 = __3__37__0__0__g_cloudDensityVolumes[_621]._macroNoiseParameter.z;
              _652 = __3__37__0__0__g_cloudDensityVolumes[_621]._macroNoiseParameter.w;
              _654 = __3__37__0__0__g_cloudDensityVolumes[_621]._detailNoiseParameter.x;
              _655 = __3__37__0__0__g_cloudDensityVolumes[_621]._detailNoiseParameter.y;
              _656 = __3__37__0__0__g_cloudDensityVolumes[_621]._detailNoiseParameter.z;
              _657 = __3__37__0__0__g_cloudDensityVolumes[_621]._detailNoiseParameter.w;
              _659 = __3__37__0__0__g_cloudDensityVolumes[_621]._modeParameter.x;
              _660 = __3__37__0__0__g_cloudDensityVolumes[_621]._modeParameter.y;
              _662 = __3__37__0__0__g_cloudDensityVolumes[_621]._vortexParameter.x;
              _663 = __3__37__0__0__g_cloudDensityVolumes[_621]._vortexParameter.y;
              _664 = __3__37__0__0__g_cloudDensityVolumes[_621]._vortexParameter.z;
              _665 = __3__37__0__0__g_cloudDensityVolumes[_621]._vortexParameter.w;
              _667 = __3__37__0__0__g_cloudDensityVolumes[_621]._spiralParameter.x;
              _668 = __3__37__0__0__g_cloudDensityVolumes[_621]._spiralParameter.y;
              _669 = __3__37__0__0__g_cloudDensityVolumes[_621]._spiralParameter.z;
              _670 = __3__37__0__0__g_cloudDensityVolumes[_621]._spiralParameter.w;
              _672 = __3__37__0__0__g_cloudDensityVolumes[_621]._animationParameter.x;
              _673 = __3__37__0__0__g_cloudDensityVolumes[_621]._animationParameter.y;
              _674 = __3__37__0__0__g_cloudDensityVolumes[_621]._animationParameter.z;
              _675 = __3__37__0__0__g_cloudDensityVolumes[_621]._animationParameter.w;
              _677 = __3__37__0__0__g_cloudDensityVolumes[_621]._flowParameter.x;
              _678 = __3__37__0__0__g_cloudDensityVolumes[_621]._flowParameter.y;
              _679 = __3__37__0__0__g_cloudDensityVolumes[_621]._flowParameter.z;
              _681 = __3__37__0__0__g_cloudDensityVolumes[_621]._tornadoParameter.x;
              _682 = __3__37__0__0__g_cloudDensityVolumes[_621]._tornadoParameter.y;
              _683 = __3__37__0__0__g_cloudDensityVolumes[_621]._tornadoParameter.z;
              _684 = __3__37__0__0__g_cloudDensityVolumes[_621]._tornadoParameter.w;
              _688 = mad(_637, _451, mad(_633, _450, (_629 * _449))) + _641;
              _692 = mad(_638, _451, mad(_634, _450, (_630 * _449))) + _642;
              _696 = mad(_639, _451, mad(_635, _450, (_631 * _449))) + _643;
              _698 = abs(_692);
              _704 = max((abs(_688) + -0.5f), max((_698 + -0.5f), (abs(_696) + -0.5f)));
              if (!(_704 >= 0.0f)) {
                _707 = __3__37__0__0__g_cloudDensityVolumes[_621]._shapeParameter.y;
                _710 = max((saturate(_707) * 0.5f), 0.0001f);
                _713 = saturate((_710 + _704) / _710);  // [sem: expr_sat]
                _718 = 1.0f - ((_713 * _713) * (3.0f - (_713 * 2.0f)));
                if (!(_718 <= 0.0f)) {
                  _727 = sqrt((_696 * _696) + (_688 * _688)) * 2.0f;
                  _731 = saturate(1.0f - (_727 / max(_663, 0.0001f)));  // [sem: expr_sat]
                  _732 = _time.x * _675;
                  _733 = (_659 == 1);
                  _734 = (_659 == 2);
                  if (_733) {
                    _811 = exp2(log2(_731) * max(_670, 0.0001f));
                    _813 = max(_669, 0.0001f);
                    _817 = _692 / (((max(_668, 0.0001f) - _813) * _811) + _813);
                    _824 = (((_731 * _731) * _662) * ((_727 * _664) + _692)) - (_731 * _732);
                    _825 = sin(_824);
                    _826 = cos(_824);
                    _829 = (_826 * _688) - (_825 * _696);
                    _832 = (_826 * _696) + (_825 * _688);
                    if (_734) {
                      _834 = 0.0f;
                      _835 = 1.0f;
                      _836 = _811;
                      _837 = _731;
                      _838 = _829;
                      _839 = _817;
                      _840 = _832;
                      _860 = _835;
                      _861 = _836;
                      _862 = _837;
                      _863 = _838;
                      _864 = _839;
                      _865 = _840;
                      _866 = max(_834, ((_698 * 2.0f) + -1.0f));
                    } else {
                      _845 = _811;
                      _846 = _829;
                      _847 = _817;
                      _848 = _832;
                      _849 = _846 * 2.0f;
                      _850 = _847 * 2.0f;
                      _851 = _848 * 2.0f;
                      _860 = 1.0f;
                      _861 = _845;
                      _862 = _731;
                      _863 = _846;
                      _864 = _847;
                      _865 = _848;
                      _866 = (sqrt(((_850 * _850) + (_849 * _849)) + (_851 * _851)) + -1.0f);
                    }
                  } else {
                    if (_734) {
                      _738 = saturate(_692 + 0.5f);  // [sem: expr_sat]
                      _744 = max(_681, 0.0001f);
                      _747 = ((max(_682, 0.0001f) - _744) * exp2(log2(_738) * max(_683, 0.0001f))) + _744;
                      _749 = atan(_696 / _688);
                      _752 = (_688 < 0.0f);
                      _753 = (_688 == 0.0f);
                      _754 = (_696 >= 0.0f);
                      _755 = (_696 < 0.0f);
                      _765 = max(((float)((uint)((uint)(_660)))), 1.0f);
                      _766 = _738 * _664;
                      _777 = _747 * _657;
                      _779 = max((_747 - _777), 0.0f);
                      _780 = _727 - _779;
                      _781 = _779 * (acos(min(max(cos(((((_766 * -6.2831855f) - _732) + select((_753 && _754), 1.5707964f, select((_753 && _755), -1.5707964f, select((_752 && _755), (_749 + -3.1415927f), select((_752 && _754), (_749 + 3.1415927f), _749))))) * _765) + _667), -1.0f), 1.0f)) / _765);
                      _786 = _727 - _747;
                      _795 = saturate(1.0f - (_727 / _747));  // [sem: expr_sat]
                      _798 = ((_795 + _766) * _662) - _732;
                      _799 = sin(_798);
                      _800 = cos(_798);
                      _834 = ((saturate(_665) * (((-0.0f - _786) - _777) + sqrt((_780 * _780) + (_781 * _781)))) + _786);
                      _835 = _747;
                      _836 = 0.0f;
                      _837 = _795;
                      _838 = ((_800 * _688) - (_799 * _696));
                      _839 = _692;
                      _840 = ((_800 * _696) + (_799 * _688));
                      _860 = _835;
                      _861 = _836;
                      _862 = _837;
                      _863 = _838;
                      _864 = _839;
                      _865 = _840;
                      _866 = max(_834, ((_698 * 2.0f) + -1.0f));
                    } else {
                      _845 = 0.0f;
                      _846 = _688;
                      _847 = _692;
                      _848 = _696;
                      _849 = _846 * 2.0f;
                      _850 = _847 * 2.0f;
                      _851 = _848 * 2.0f;
                      _860 = 1.0f;
                      _861 = _845;
                      _862 = _731;
                      _863 = _846;
                      _864 = _847;
                      _865 = _848;
                      _866 = (sqrt(((_850 * _850) + (_849 * _849)) + (_851 * _851)) + -1.0f);
                    }
                  }
                  if (_650 > 0.0f) {
                    _869 = _time.x * _673;
                    _873 = max(_649, 0.0001f);
                    _891 = (_866 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_869 * _677) + _651) + (_873 * _863)), (((_869 * _678) + _652) + (_873 * _864)), (((_869 * _679) + _656) + (_873 * _865))), 0.0f)).x) + -0.5f) * _650));
                  } else {
                    _891 = _866;
                  }
                  if (_733 && (_665 > 0.0f)) {
                    _896 = atan(_696 / _688);
                    _899 = (_688 < 0.0f);
                    _900 = (_688 == 0.0f);
                    _901 = (_696 >= 0.0f);
                    _902 = (_696 < 0.0f);
                    _924 = (_891 - (((_665 * 0.5f) * _862) * cos(((((_727 * _664) - _732) + select((_900 && _901), 1.5707964f, select((_900 && _902), -1.5707964f, select((_899 && _902), (_896 + -3.1415927f), select((_899 && _901), (_896 + 3.1415927f), _896))))) * max(((float)((uint)((uint)(_660)))), 1.0f)) + _667)));
                  } else {
                    _924 = _891;
                  }
                  if (_734 && (_684 > 0.0f)) {
                    _932 = max(_924, ((_860 * _684) - _727));
                  } else {
                    _932 = _924;
                  }
                  _934 = max(_647, 0.0001f);
                  _940 = saturate((((_646 - (_861 * _672)) + _932) + _934) / (_934 * 2.0f));  // [sem: expr_sat]
                  _945 = 1.0f - ((_940 * _940) * (3.0f - (_940 * 2.0f)));
                  if (!((_945 >= 1.0f) || ((_655 <= 0.0f) || (_945 <= 0.0f)))) {
                    _952 = _time.x * _674;
                    _956 = max(_654, 0.0001f);
                    // [sem: expr_sat]
                    _980 = saturate(_945 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_952 * _677) + _651) + (_956 * _863)), (((_952 * _678) + _652) + (_956 * _864)), (((_952 * _679) + _656) + (_956 * _865))), 0.0f)).x) * _655) * saturate(1.0f - abs((_945 * 2.0f) + -1.0f))));
                  } else {
                    _980 = _945;  // [sem: expr_sat]
                  }
                  _985 = (((_718 * _645) * _980) + _620);
                } else {
                  _985 = _620;
                }
              } else {
                _985 = _620;
              }
            } else {
              _985 = _620;
            }
            _986 = (uint)((uint)(_621)) + (uint)(1);
            if ((uint)_986 < (uint)_cloudDensityVolumeInfo.x) {
              _620 = _985;
              _621 = _986;
              continue;
            }
            while(true) {
              _991 = saturate(_985);  // [sem: _985_sat]
              break;
            }
            break;
          }
        } else {
          _991 = 0.0f;  // [sem: _985_sat]
        }
        _994 = (saturate(_991 + (_609 * _597)) > 0.001f);
        if ((_385 != 0) && _994) {
          _4180 = _386;
          _4181 = 0;
          _4182 = ((int)((uint)((uint)(_384)) + (uint)(-2)));
          _4183 = _383;
          _4184 = _382;
          _4185 = _381;
          _4186 = _380;
          _4187 = _379;
          _4188 = _378;
          _4189 = _377;
          _4190 = _376;
          _4191 = _375;
          _4192 = _374;
          _4193 = _373;
          _4194 = _372;
          _4195 = _371;
          _4196 = _370;
          _4197 = _369;
          _4198 = 0;
        } else {
          _1000 = ((uint)_384 < (uint)62);
          _1002 = ((int)(uint)(_994)) ^ 1;
          _1005 = (uint)((uint)(_384)) + (uint)((uint)(select(_1000, _1002, 0)));
          _1007 = _cloudThickness + _cloudAltitude;
          if (!(_398 < _154) || !(((_358 != 0) && (_398 < _357)) || (_411 < _1007))) {
            _1017 = (_viewPos.y > _1007);
          } else {
            _1017 = true;
          }
          _1030 = _411 + _earthRadius;
          _1031 = _410 * _410;
          _1033 = _412 * _412;
          _1034 = _1033 + _1031;
          _1036 = sqrt(_1034 + (_1030 * _1030));
          _1037 = _410 / _1036;
          _1038 = _1030 / _1036;
          _1039 = _412 / _1036;
          _1040 = _1036 - _earthRadius;
          if (_1040 > 0.0f) {
            _1043 = dot(float3(_1037, _1038, _1039), float3(_103, _104, _105));
            _1053 = min(max(_1040, 16.0f), (_atmosphereThickness + -16.0f));
            _1061 = max(_1053, 0.0f);
            _1068 = (-0.0f - sqrt((_1061 + (_earthRadius * 2.0f)) * _1061)) / (_1061 + _earthRadius);
            _1069 = (_1043 > _1068);
            if (_1069) {
              _1091 = ((exp2(log2(saturate((_1043 - _1068) / (1.0f - _1068))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1091 = ((exp2(log2(saturate((_1068 - _1043) / (_1068 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _1093 = (exp2(log2(saturate((_1053 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _1100 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1093, _1091, ((1.0f - exp2(-1.1541561f - (dot(float3(_1037, _1038, _1039), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            if (_1069) {
              _1130 = ((exp2(log2(saturate((_1043 - _1068) / (1.0f - _1068))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1130 = ((exp2(log2(saturate((_1068 - _1043) / (_1068 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _1136 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1093, _1130, ((1.0f - exp2(-1.1541561f - (dot(float3(_1037, _1038, _1039), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            _1144 = _1100.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1145 = _1100.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1146 = _1100.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1147 = (_1136.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1148 = (_1136.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1149 = (_1136.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          } else {
            _1144 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1145 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1146 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1147 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1148 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1149 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          }
          _1158 = max(_1040, 0.01f);
          _1159 = -0.0f - _1158;
          _1168 = exp2((_1159 / _rayleighScaledHeight) * 1.442695f);
          _1169 = exp2((_1159 / _mieScaledHeight) * 1.442695f);
          _1170 = _410 - _viewPos.x;
          _1171 = _412 - _viewPos.z;
          _1174 = (_1170 * _1170) + (_1171 * _1171);
          _1175 = sqrt(_1174);
          _1179 = max(((_1175 * _1175) + -400000.0f), 0.0f) * 1e-06f;
          _1180 = _cloudAltitude - _1179;
          _1181 = _earthRadius + _411;
          _1187 = ((sqrt((_1181 * _1181) + _1034) - _earthRadius) - _1180) / _cloudThickness;
          if (!((_1187 < 0.0f) || (_1187 > 1.0f))) {
            _1211 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _1212 = _411 - _1180;
            _1228 = _470 / _473;
            _1229 = _1228 * _473;
            _1231 = _1228 * _1211;
            _1247 = (4.0f - (saturate(max((_1175 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _1251 = _1229 * 4.355f;
            _1268 = 1.0f - sqrt(saturate((1.0f - _1187) * 1.4285715f));
            _1287 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_470 * _410) - (_1229 * _cloudScroll.x)), ((_1212 * _470) - _1231), ((_470 * _412) - (_1229 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1247 * _410) - (_1251 * _cloudScroll.x)), ((_1247 * _1212) - (_1231 * 4.355f)), ((_1247 * _412) - (_1251 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1187 * 4.0f) * 0.8f) + 0.2f);
            _1294 = (saturate(((saturate(saturate(((_434.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_473 * (_410 - _cloudScroll.x)), ((_1212 * _473) - _1211), (_473 * (_412 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1268 * 0.5f), ((_1268 * _1268) * _1268))) * saturate(_1187 * 10.0f)) - _1287) / (1.0f - _1287)) * _cloudAlpha);
          } else {
            _1294 = 0.0f;
          }
          if (_599) {
            _1304 = saturate(((_1175 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _1304 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_441 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _1315 = 0.0f;
            _1316 = 0;
            while(true) {
              _1680 = _1315;
              if (!((((int)((uint)(1) << (_1316 & 31))) & _441) == 0)) {
                _1324 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[0].x;
                _1325 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[1].x;
                _1326 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[2].x;
                _1328 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[0].y;
                _1329 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[1].y;
                _1330 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[2].y;
                _1332 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[0].z;
                _1333 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[1].z;
                _1334 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[2].z;
                _1336 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[0].w;
                _1337 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[1].w;
                _1338 = __3__37__0__0__g_cloudDensityVolumes[_1316]._relativeWorldToLocal[2].w;
                _1340 = __3__37__0__0__g_cloudDensityVolumes[_1316]._shapeParameter.x;
                _1341 = __3__37__0__0__g_cloudDensityVolumes[_1316]._shapeParameter.z;
                _1342 = __3__37__0__0__g_cloudDensityVolumes[_1316]._shapeParameter.w;
                _1344 = __3__37__0__0__g_cloudDensityVolumes[_1316]._macroNoiseParameter.x;
                _1345 = __3__37__0__0__g_cloudDensityVolumes[_1316]._macroNoiseParameter.y;
                _1346 = __3__37__0__0__g_cloudDensityVolumes[_1316]._macroNoiseParameter.z;
                _1347 = __3__37__0__0__g_cloudDensityVolumes[_1316]._macroNoiseParameter.w;
                _1349 = __3__37__0__0__g_cloudDensityVolumes[_1316]._detailNoiseParameter.x;
                _1350 = __3__37__0__0__g_cloudDensityVolumes[_1316]._detailNoiseParameter.y;
                _1351 = __3__37__0__0__g_cloudDensityVolumes[_1316]._detailNoiseParameter.z;
                _1352 = __3__37__0__0__g_cloudDensityVolumes[_1316]._detailNoiseParameter.w;
                _1354 = __3__37__0__0__g_cloudDensityVolumes[_1316]._modeParameter.x;
                _1355 = __3__37__0__0__g_cloudDensityVolumes[_1316]._modeParameter.y;
                _1357 = __3__37__0__0__g_cloudDensityVolumes[_1316]._vortexParameter.x;
                _1358 = __3__37__0__0__g_cloudDensityVolumes[_1316]._vortexParameter.y;
                _1359 = __3__37__0__0__g_cloudDensityVolumes[_1316]._vortexParameter.z;
                _1360 = __3__37__0__0__g_cloudDensityVolumes[_1316]._vortexParameter.w;
                _1362 = __3__37__0__0__g_cloudDensityVolumes[_1316]._spiralParameter.x;
                _1363 = __3__37__0__0__g_cloudDensityVolumes[_1316]._spiralParameter.y;
                _1364 = __3__37__0__0__g_cloudDensityVolumes[_1316]._spiralParameter.z;
                _1365 = __3__37__0__0__g_cloudDensityVolumes[_1316]._spiralParameter.w;
                _1367 = __3__37__0__0__g_cloudDensityVolumes[_1316]._animationParameter.x;
                _1368 = __3__37__0__0__g_cloudDensityVolumes[_1316]._animationParameter.y;
                _1369 = __3__37__0__0__g_cloudDensityVolumes[_1316]._animationParameter.z;
                _1370 = __3__37__0__0__g_cloudDensityVolumes[_1316]._animationParameter.w;
                _1372 = __3__37__0__0__g_cloudDensityVolumes[_1316]._flowParameter.x;
                _1373 = __3__37__0__0__g_cloudDensityVolumes[_1316]._flowParameter.y;
                _1374 = __3__37__0__0__g_cloudDensityVolumes[_1316]._flowParameter.z;
                _1376 = __3__37__0__0__g_cloudDensityVolumes[_1316]._tornadoParameter.x;
                _1377 = __3__37__0__0__g_cloudDensityVolumes[_1316]._tornadoParameter.y;
                _1378 = __3__37__0__0__g_cloudDensityVolumes[_1316]._tornadoParameter.z;
                _1379 = __3__37__0__0__g_cloudDensityVolumes[_1316]._tornadoParameter.w;
                _1383 = mad(_1332, _412, mad(_1328, _411, (_1324 * _410))) + _1336;
                _1387 = mad(_1333, _412, mad(_1329, _411, (_1325 * _410))) + _1337;
                _1391 = mad(_1334, _412, mad(_1330, _411, (_1326 * _410))) + _1338;
                _1393 = abs(_1387);
                _1399 = max((abs(_1383) + -0.5f), max((_1393 + -0.5f), (abs(_1391) + -0.5f)));
                if (!(_1399 >= 0.0f)) {
                  _1402 = __3__37__0__0__g_cloudDensityVolumes[_1316]._shapeParameter.y;
                  _1405 = max((saturate(_1402) * 0.5f), 0.0001f);
                  _1408 = saturate((_1405 + _1399) / _1405);  // [sem: expr_sat]
                  _1413 = 1.0f - ((_1408 * _1408) * (3.0f - (_1408 * 2.0f)));
                  if (!(_1413 <= 0.0f)) {
                    _1422 = sqrt((_1391 * _1391) + (_1383 * _1383)) * 2.0f;
                    _1426 = saturate(1.0f - (_1422 / max(_1358, 0.0001f)));  // [sem: expr_sat]
                    _1427 = _time.x * _1370;
                    _1428 = (_1354 == 1);
                    _1429 = (_1354 == 2);
                    if (_1428) {
                      _1506 = exp2(log2(_1426) * max(_1365, 0.0001f));
                      _1508 = max(_1364, 0.0001f);
                      _1512 = _1387 / (((max(_1363, 0.0001f) - _1508) * _1506) + _1508);
                      _1519 = (((_1426 * _1426) * _1357) * ((_1422 * _1359) + _1387)) - (_1426 * _1427);
                      _1520 = sin(_1519);
                      _1521 = cos(_1519);
                      _1524 = (_1521 * _1383) - (_1520 * _1391);
                      _1527 = (_1521 * _1391) + (_1520 * _1383);
                      if (_1429) {
                        _1529 = 0.0f;
                        _1530 = 1.0f;
                        _1531 = _1506;
                        _1532 = _1426;
                        _1533 = _1524;
                        _1534 = _1512;
                        _1535 = _1527;
                        _1555 = _1530;
                        _1556 = _1531;
                        _1557 = _1532;
                        _1558 = _1533;
                        _1559 = _1534;
                        _1560 = _1535;
                        _1561 = max(_1529, ((_1393 * 2.0f) + -1.0f));
                      } else {
                        _1540 = _1506;
                        _1541 = _1524;
                        _1542 = _1512;
                        _1543 = _1527;
                        _1544 = _1541 * 2.0f;
                        _1545 = _1542 * 2.0f;
                        _1546 = _1543 * 2.0f;
                        _1555 = 1.0f;
                        _1556 = _1540;
                        _1557 = _1426;
                        _1558 = _1541;
                        _1559 = _1542;
                        _1560 = _1543;
                        _1561 = (sqrt(((_1545 * _1545) + (_1544 * _1544)) + (_1546 * _1546)) + -1.0f);
                      }
                    } else {
                      if (_1429) {
                        _1433 = saturate(_1387 + 0.5f);  // [sem: expr_sat]
                        _1439 = max(_1376, 0.0001f);
                        _1442 = ((max(_1377, 0.0001f) - _1439) * exp2(log2(_1433) * max(_1378, 0.0001f))) + _1439;
                        _1444 = atan(_1391 / _1383);
                        _1447 = (_1383 < 0.0f);
                        _1448 = (_1383 == 0.0f);
                        _1449 = (_1391 >= 0.0f);
                        _1450 = (_1391 < 0.0f);
                        _1460 = max(((float)((uint)((uint)(_1355)))), 1.0f);
                        _1461 = _1433 * _1359;
                        _1472 = _1442 * _1352;
                        _1474 = max((_1442 - _1472), 0.0f);
                        _1475 = _1422 - _1474;
                        _1476 = _1474 * (acos(min(max(cos(((((_1461 * -6.2831855f) - _1427) + select((_1448 && _1449), 1.5707964f, select((_1448 && _1450), -1.5707964f, select((_1447 && _1450), (_1444 + -3.1415927f), select((_1447 && _1449), (_1444 + 3.1415927f), _1444))))) * _1460) + _1362), -1.0f), 1.0f)) / _1460);
                        _1481 = _1422 - _1442;
                        _1490 = saturate(1.0f - (_1422 / _1442));  // [sem: expr_sat]
                        _1493 = ((_1490 + _1461) * _1357) - _1427;
                        _1494 = sin(_1493);
                        _1495 = cos(_1493);
                        _1529 = ((saturate(_1360) * (((-0.0f - _1481) - _1472) + sqrt((_1475 * _1475) + (_1476 * _1476)))) + _1481);
                        _1530 = _1442;
                        _1531 = 0.0f;
                        _1532 = _1490;
                        _1533 = ((_1495 * _1383) - (_1494 * _1391));
                        _1534 = _1387;
                        _1535 = ((_1495 * _1391) + (_1494 * _1383));
                        _1555 = _1530;
                        _1556 = _1531;
                        _1557 = _1532;
                        _1558 = _1533;
                        _1559 = _1534;
                        _1560 = _1535;
                        _1561 = max(_1529, ((_1393 * 2.0f) + -1.0f));
                      } else {
                        _1540 = 0.0f;
                        _1541 = _1383;
                        _1542 = _1387;
                        _1543 = _1391;
                        _1544 = _1541 * 2.0f;
                        _1545 = _1542 * 2.0f;
                        _1546 = _1543 * 2.0f;
                        _1555 = 1.0f;
                        _1556 = _1540;
                        _1557 = _1426;
                        _1558 = _1541;
                        _1559 = _1542;
                        _1560 = _1543;
                        _1561 = (sqrt(((_1545 * _1545) + (_1544 * _1544)) + (_1546 * _1546)) + -1.0f);
                      }
                    }
                    if (_1345 > 0.0f) {
                      _1564 = _time.x * _1368;
                      _1568 = max(_1344, 0.0001f);
                      _1586 = (_1561 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1564 * _1372) + _1346) + (_1568 * _1558)), (((_1564 * _1373) + _1347) + (_1568 * _1559)), (((_1564 * _1374) + _1351) + (_1568 * _1560))), 0.0f)).x) + -0.5f) * _1345));
                    } else {
                      _1586 = _1561;
                    }
                    if (_1428 && (_1360 > 0.0f)) {
                      _1591 = atan(_1391 / _1383);
                      _1594 = (_1383 < 0.0f);
                      _1595 = (_1383 == 0.0f);
                      _1596 = (_1391 >= 0.0f);
                      _1597 = (_1391 < 0.0f);
                      _1619 = (_1586 - (((_1360 * 0.5f) * _1557) * cos(((((_1422 * _1359) - _1427) + select((_1595 && _1596), 1.5707964f, select((_1595 && _1597), -1.5707964f, select((_1594 && _1597), (_1591 + -3.1415927f), select((_1594 && _1596), (_1591 + 3.1415927f), _1591))))) * max(((float)((uint)((uint)(_1355)))), 1.0f)) + _1362)));
                    } else {
                      _1619 = _1586;
                    }
                    if (_1429 && (_1379 > 0.0f)) {
                      _1627 = max(_1619, ((_1555 * _1379) - _1422));
                    } else {
                      _1627 = _1619;
                    }
                    _1629 = max(_1342, 0.0001f);
                    _1635 = saturate((((_1341 - (_1556 * _1367)) + _1627) + _1629) / (_1629 * 2.0f));  // [sem: expr_sat]
                    _1640 = 1.0f - ((_1635 * _1635) * (3.0f - (_1635 * 2.0f)));
                    if (!((_1640 >= 1.0f) || ((_1350 <= 0.0f) || (_1640 <= 0.0f)))) {
                      _1647 = _time.x * _1369;
                      _1651 = max(_1349, 0.0001f);
                      // [sem: expr_sat]
                      _1675 = saturate(_1640 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1647 * _1372) + _1346) + (_1651 * _1558)), (((_1647 * _1373) + _1347) + (_1651 * _1559)), (((_1647 * _1374) + _1351) + (_1651 * _1560))), 0.0f)).x) * _1350) * saturate(1.0f - abs((_1640 * 2.0f) + -1.0f))));
                    } else {
                      _1675 = _1640;  // [sem: expr_sat]
                    }
                    _1680 = (((_1413 * _1340) * _1675) + _1315);
                  } else {
                    _1680 = _1315;
                  }
                } else {
                  _1680 = _1315;
                }
              } else {
                _1680 = _1315;
              }
              _1681 = (uint)((uint)(_1316)) + (uint)(1);
              if ((uint)_1681 < (uint)_cloudDensityVolumeInfo.x) {
                _1315 = _1680;
                _1316 = _1681;
                continue;
              }
              while(true) {
                _1686 = saturate(_1680);  // [sem: _1680_sat]
                break;
              }
              break;
            }
          } else {
            _1686 = 0.0f;  // [sem: _1680_sat]
          }
          _1688 = saturate(_1686 + (_1304 * _1294));  // [sem: expr_sat]
          _1690 = _411 - _viewPos.y;
          _1693 = sqrt(_1174 + (_1690 * _1690));
          _1699 = max(1e-06f, (_heightFogScale * 0.0025f));
          _1702 = _1699 * _cloudScroll.x;
          _1703 = _1699 * _cloudScroll.y;
          _1704 = _1699 * _410;
          _1705 = _1699 * _411;
          _1706 = _1699 * _412;
          // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
          _1732 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1704 * 6.393882f) - (_1702 * 1.871f)), (_1705 * 6.393882f), ((_1706 * 6.393882f) - (_1703 * 1.871f))), 0.0f);
          _1741 = _heightFogFalloff * -0.14426951f;
          _1756 = (((saturate(_1693 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1704 * 0.5127f) - _1702), (_1705 * 0.5127f), ((_1706 * 0.5127f) - _1703)), 0.0f)).x))) * (((0.5f - _1732.x) * saturate((_1693 + -300.0f) * 0.0025f)) + _1732.x)) * ((exp2(_1741 * max(0.001f, (_1158 - _heightFogBaseline))) * _heightFogDensity) + (exp2(_1741 * max(0.001f, ((_1158 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _434.z)))) * _434.y));
          _1757 = _411 - _cloudAltitude;
          _1759 = (_1179 + _1757) / _cloudThickness;
          _1762 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
          _1763 = select(_1762, _sunDirection.x, _moonDirection.x);
          _1764 = select(_1762, _sunDirection.y, _moonDirection.y);
          _1765 = select(_1762, _sunDirection.z, _moonDirection.z);
          _1766 = (_1764 > 0.0f);
          _1775 = ((0.5f - (((float)((int)((int)((int)(uint)(_1766)) - (int)((int)(uint)((int)(_1764 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _1180;
          if (_411 < _1180) {
            _1778 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1763, _1764, _1765));
            _1784 = select((abs(_1778) < 1e-08f), 1e+08f, ((_1775 - dot(float3(0.0f, 1.0f, 0.0f), float3(_410, _411, _412))) / _1778));
            _1790 = ((_1784 * _1763) + _410);
            _1791 = _1775;
            _1792 = ((_1784 * _1765) + _412);
          } else {
            _1790 = _410;
            _1791 = _411;
            _1792 = _412;
          }
          _1806 = _cloudScatteringCoefficient / _distanceScale;
          _1811 = abs(_1764);
          _1813 = saturate(_1811 * 4.0f);  // [sem: expr_sat]
          _1815 = (_1813 * _1813) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1790 - _viewPos.x) * 5e-05f) + 0.5f), ((_1791 - _cloudAltitude) / _cloudThickness), (((_1792 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _1806);
          _1821 = ((1.0f - _1815) * saturate((_1757 - _cloudThickness) * 0.1f)) + _1815;
          _1824 = -0.0f - _1806;
          _1825 = (log2(_1821) * 0.6931472f) / _1824;
          if ((_1688 > 0.001f) && ((_1686 > 0.001f) || ((_1759 >= 0.0f) && (_1759 <= 1.0f)))) {
            _1839 = (_411 - _1180) / _cloudThickness;
            if (((_1839 >= 0.0f) && (_1839 <= 1.0f)) && (_1811 > 0.001f)) {
              _1856 = min(300.0f, (((_1180 - _411) + select(_1766, _cloudThickness, 0.0f)) / _1764));
            } else {
              _1856 = 300.0f;
            }
            if ((_cloudDensityVolumeInfo.y & 1) == 0) {
              _1981 = 0.0f;
              _1982 = 3.4028235e+38f;
              _1983 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
            } else {
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _1868 = 0;
                _1869 = 3.4028235e+38f;
                _1870 = 0.0f;
                _1871 = 0;
                while(true) {
                  _1874 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[0].x;
                  _1875 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[1].x;
                  _1876 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[2].x;
                  _1878 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[0].y;
                  _1879 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[1].y;
                  _1880 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[2].y;
                  _1882 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[0].z;
                  _1883 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[1].z;
                  _1884 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[2].z;
                  _1886 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[0].w;
                  _1887 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[1].w;
                  _1888 = __3__37__0__0__g_cloudDensityVolumes[_1868]._relativeWorldToLocal[2].w;
                  _1892 = mad(_1882, _412, mad(_1878, _411, (_1874 * _410))) + _1886;
                  _1896 = mad(_1883, _412, mad(_1879, _411, (_1875 * _410))) + _1887;
                  _1900 = mad(_1884, _412, mad(_1880, _411, (_1876 * _410))) + _1888;
                  _1903 = mad(_1882, _1765, mad(_1878, _1764, (_1874 * _1763)));
                  _1906 = mad(_1883, _1765, mad(_1879, _1764, (_1875 * _1763)));
                  _1909 = mad(_1884, _1765, mad(_1880, _1764, (_1876 * _1763)));
                  _1910 = abs(_1903);
                  if (!(_1910 < 1e-06f) || !(abs(_1892) > 0.5f)) {
                    _1916 = abs(_1906);
                    if (!(_1916 < 1e-06f) || !(abs(_1896) > 0.5f)) {
                      _1922 = abs(_1909);
                      if (!(_1922 < 1e-06f) || !(abs(_1900) > 0.5f)) {
                        _1937 = max(_1910, 1e-06f) * select((_1903 < 0.0f), -1.0f, 1.0f);
                        _1938 = max(_1916, 1e-06f) * select((_1906 < 0.0f), -1.0f, 1.0f);
                        _1939 = max(_1922, 1e-06f) * select((_1909 < 0.0f), -1.0f, 1.0f);
                        _1943 = (-0.5f - _1892) / _1937;
                        _1944 = (-0.5f - _1896) / _1938;
                        _1945 = (-0.5f - _1900) / _1939;
                        _1949 = (0.5f - _1892) / _1937;
                        _1950 = (0.5f - _1896) / _1938;
                        _1951 = (0.5f - _1900) / _1939;
                        _1962 = max(max(max(min(_1943, _1949), min(_1944, _1950)), min(_1945, _1951)), 0.0f);
                        _1963 = min(min(min(max(_1943, _1949), max(_1944, _1950)), max(_1945, _1951)), 3.4028235e+38f);
                        if (!(_1963 < _1962)) {
                          _1972 = min(_1869, _1962);
                          _1973 = max(_1870, _1963);
                          _1974 = ((int)(_1871) | (int)((int)((uint)(1) << (_1868 & 31))));
                        } else {
                          _1972 = _1869;
                          _1973 = _1870;
                          _1974 = _1871;
                        }
                      } else {
                        _1972 = _1869;
                        _1973 = _1870;
                        _1974 = _1871;
                      }
                    } else {
                      _1972 = _1869;
                      _1973 = _1870;
                      _1974 = _1871;
                    }
                  } else {
                    _1972 = _1869;
                    _1973 = _1870;
                    _1974 = _1871;
                  }
                  _1975 = (uint)((uint)(_1868)) + (uint)(1);
                  if ((uint)_1975 < (uint)_cloudDensityVolumeInfo.x) {
                    _1868 = _1975;
                    _1869 = _1972;
                    _1870 = _1973;
                    _1871 = _1974;
                    continue;
                  }
                  _1981 = _1972;
                  _1982 = _1973;
                  _1983 = _1974;
                  break;
                }
              } else {
                _1981 = 3.4028235e+38f;
                _1982 = 0.0f;
                _1983 = 0;
              }
            }
            _1984 = _1856 * 0.2f;
            _1988 = _1856 * 0.1f;
            _1996 = 0.0f;
            _1997 = _1984;
            _1998 = (_1984 * _1763);
            _1999 = (_1984 * _1764);
            _2000 = (_1984 * _1765);
            _2001 = _1988;
            _2002 = ((_1988 * _1763) + _410);
            _2003 = ((_1988 * _1764) + _411);
            _2004 = ((_1988 * _1765) + _412);
            _2005 = 0;
            while(true) {
              _2009 = select(((_2001 >= _1981) && (_2001 <= _1982)), _1983, 0);
              _2015 = _2002 - _viewPos.x;
              _2016 = _2004 - _viewPos.z;
              _2020 = sqrt((_2015 * _2015) + (_2016 * _2016));
              _2027 = _cloudAltitude - (max(((_2020 * _2020) + -400000.0f), 0.0f) * 1e-06f);
              _2032 = _cloudDetailScale * 0.004f;
              _2035 = _cloudBaseScale * 0.0004f;
              _2040 = _earthRadius + _2003;
              _2049 = ((sqrt(((_2004 * _2004) + (_2002 * _2002)) + (_2040 * _2040)) - _2027) - _earthRadius) / _cloudThickness;
              if (!((_2049 < 0.0f) || (_2049 > 1.0f))) {
                _2092 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2093 = _2003 - _2027;
                _2109 = _2032 / _2035;
                _2110 = _2109 * _2035;
                _2112 = _2109 * _2092;
                _2124 = saturate(max((_2020 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2128 = (4.0f - (_2124 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2132 = _2110 * 4.355f;
                _2151 = 1.0f - sqrt(saturate((1.0f - _2049) * 1.4285715f));
                // [sem: expr_sat]
                _2167 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_2002 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2004 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2035 * (_2002 - _cloudScroll.x)), ((_2035 * _2093) - _2092), (_2035 * (_2004 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2151 * 0.5f), ((_2151 * _2151) * _2151))) * saturate(_2049 * 10.0f);
                _2170 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2128 * _2002) - (_2132 * _cloudScroll.x)), ((_2128 * _2093) - (_2112 * 4.355f)), ((_2128 * _2004) - (_2132 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2032 * _2002) - (_2110 * _cloudScroll.x)), ((_2032 * _2093) - _2112), ((_2032 * _2004) - (_2110 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_2049 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                _2171 = _2170 * ((_2124 * 0.4f) + 0.1f);
                _2183 = (saturate((_2167 - _2170) / (1.0f - _2170)) * _cloudAlpha);
                _2184 = (saturate((_2167 - _2171) / (1.0f - _2171)) * _cloudAlpha);
              } else {
                _2183 = 0.0f;
                _2184 = 0.0f;
              }
              if (!((_2009 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                _2194 = 0.0f;
                _2195 = 0;
                while(true) {
                  _2560 = _2194;
                  if (!((((int)((uint)(1) << (_2195 & 31))) & _2009) == 0)) {
                    _2203 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[0].x;
                    _2204 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[1].x;
                    _2205 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[2].x;
                    _2207 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[0].y;
                    _2208 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[1].y;
                    _2209 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[2].y;
                    _2211 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[0].z;
                    _2212 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[1].z;
                    _2213 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[2].z;
                    _2215 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[0].w;
                    _2216 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[1].w;
                    _2217 = __3__37__0__0__g_cloudDensityVolumes[_2195]._relativeWorldToLocal[2].w;
                    _2219 = __3__37__0__0__g_cloudDensityVolumes[_2195]._shapeParameter.x;
                    _2220 = __3__37__0__0__g_cloudDensityVolumes[_2195]._shapeParameter.z;
                    _2221 = __3__37__0__0__g_cloudDensityVolumes[_2195]._shapeParameter.w;
                    _2223 = __3__37__0__0__g_cloudDensityVolumes[_2195]._macroNoiseParameter.x;
                    _2224 = __3__37__0__0__g_cloudDensityVolumes[_2195]._macroNoiseParameter.y;
                    _2225 = __3__37__0__0__g_cloudDensityVolumes[_2195]._macroNoiseParameter.z;
                    _2226 = __3__37__0__0__g_cloudDensityVolumes[_2195]._macroNoiseParameter.w;
                    _2228 = __3__37__0__0__g_cloudDensityVolumes[_2195]._detailNoiseParameter.x;
                    _2229 = __3__37__0__0__g_cloudDensityVolumes[_2195]._detailNoiseParameter.y;
                    _2230 = __3__37__0__0__g_cloudDensityVolumes[_2195]._detailNoiseParameter.z;
                    _2231 = __3__37__0__0__g_cloudDensityVolumes[_2195]._detailNoiseParameter.w;
                    _2233 = __3__37__0__0__g_cloudDensityVolumes[_2195]._modeParameter.x;
                    _2234 = __3__37__0__0__g_cloudDensityVolumes[_2195]._modeParameter.y;
                    _2236 = __3__37__0__0__g_cloudDensityVolumes[_2195]._vortexParameter.x;
                    _2237 = __3__37__0__0__g_cloudDensityVolumes[_2195]._vortexParameter.y;
                    _2238 = __3__37__0__0__g_cloudDensityVolumes[_2195]._vortexParameter.z;
                    _2239 = __3__37__0__0__g_cloudDensityVolumes[_2195]._vortexParameter.w;
                    _2241 = __3__37__0__0__g_cloudDensityVolumes[_2195]._spiralParameter.x;
                    _2242 = __3__37__0__0__g_cloudDensityVolumes[_2195]._spiralParameter.y;
                    _2243 = __3__37__0__0__g_cloudDensityVolumes[_2195]._spiralParameter.z;
                    _2244 = __3__37__0__0__g_cloudDensityVolumes[_2195]._spiralParameter.w;
                    _2246 = __3__37__0__0__g_cloudDensityVolumes[_2195]._animationParameter.x;
                    _2247 = __3__37__0__0__g_cloudDensityVolumes[_2195]._animationParameter.y;
                    _2248 = __3__37__0__0__g_cloudDensityVolumes[_2195]._animationParameter.z;
                    _2249 = __3__37__0__0__g_cloudDensityVolumes[_2195]._animationParameter.w;
                    _2251 = __3__37__0__0__g_cloudDensityVolumes[_2195]._flowParameter.x;
                    _2252 = __3__37__0__0__g_cloudDensityVolumes[_2195]._flowParameter.y;
                    _2253 = __3__37__0__0__g_cloudDensityVolumes[_2195]._flowParameter.z;
                    _2255 = __3__37__0__0__g_cloudDensityVolumes[_2195]._tornadoParameter.x;
                    _2256 = __3__37__0__0__g_cloudDensityVolumes[_2195]._tornadoParameter.y;
                    _2257 = __3__37__0__0__g_cloudDensityVolumes[_2195]._tornadoParameter.z;
                    _2258 = __3__37__0__0__g_cloudDensityVolumes[_2195]._tornadoParameter.w;
                    _2262 = mad(_2211, _2004, mad(_2207, _2003, (_2203 * _2002))) + _2215;
                    _2266 = mad(_2212, _2004, mad(_2208, _2003, (_2204 * _2002))) + _2216;
                    _2270 = mad(_2213, _2004, mad(_2209, _2003, (_2205 * _2002))) + _2217;
                    _2272 = abs(_2266);
                    _2278 = max((abs(_2262) + -0.5f), max((_2272 + -0.5f), (abs(_2270) + -0.5f)));
                    if (!(_2278 >= 0.0f)) {
                      _2281 = __3__37__0__0__g_cloudDensityVolumes[_2195]._shapeParameter.y;
                      _2284 = max((saturate(_2281) * 0.5f), 0.0001f);
                      _2287 = saturate((_2284 + _2278) / _2284);  // [sem: expr_sat]
                      _2292 = 1.0f - ((_2287 * _2287) * (3.0f - (_2287 * 2.0f)));
                      if (!(_2292 <= 0.0f)) {
                        _2301 = sqrt((_2270 * _2270) + (_2262 * _2262)) * 2.0f;
                        _2305 = saturate(1.0f - (_2301 / max(_2237, 0.0001f)));  // [sem: expr_sat]
                        _2306 = _time.x * _2249;
                        _2307 = (_2233 == 1);
                        _2308 = (_2233 == 2);
                        if (_2307) {
                          _2385 = exp2(log2(_2305) * max(_2244, 0.0001f));
                          _2387 = max(_2243, 0.0001f);
                          _2391 = _2266 / (((max(_2242, 0.0001f) - _2387) * _2385) + _2387);
                          _2398 = (((_2305 * _2305) * _2236) * ((_2301 * _2238) + _2266)) - (_2305 * _2306);
                          _2399 = sin(_2398);
                          _2400 = cos(_2398);
                          _2403 = (_2400 * _2262) - (_2399 * _2270);
                          _2406 = (_2400 * _2270) + (_2399 * _2262);
                          if (_2308) {
                            _2408 = 0.0f;
                            _2409 = 1.0f;
                            _2410 = _2385;
                            _2411 = _2305;
                            _2412 = _2403;
                            _2413 = _2391;
                            _2414 = _2406;
                            _2434 = _2409;
                            _2435 = _2410;
                            _2436 = _2411;
                            _2437 = _2412;
                            _2438 = _2413;
                            _2439 = _2414;
                            _2440 = max(_2408, ((_2272 * 2.0f) + -1.0f));
                          } else {
                            _2419 = _2385;
                            _2420 = _2403;
                            _2421 = _2391;
                            _2422 = _2406;
                            _2423 = _2420 * 2.0f;
                            _2424 = _2421 * 2.0f;
                            _2425 = _2422 * 2.0f;
                            _2434 = 1.0f;
                            _2435 = _2419;
                            _2436 = _2305;
                            _2437 = _2420;
                            _2438 = _2421;
                            _2439 = _2422;
                            _2440 = (sqrt(((_2424 * _2424) + (_2423 * _2423)) + (_2425 * _2425)) + -1.0f);
                          }
                        } else {
                          if (_2308) {
                            _2312 = saturate(_2266 + 0.5f);  // [sem: expr_sat]
                            _2318 = max(_2255, 0.0001f);
                            _2321 = ((max(_2256, 0.0001f) - _2318) * exp2(log2(_2312) * max(_2257, 0.0001f))) + _2318;
                            _2323 = atan(_2270 / _2262);
                            _2326 = (_2262 < 0.0f);
                            _2327 = (_2262 == 0.0f);
                            _2328 = (_2270 >= 0.0f);
                            _2329 = (_2270 < 0.0f);
                            _2339 = max(((float)((uint)((uint)(_2234)))), 1.0f);
                            _2340 = _2312 * _2238;
                            _2351 = _2321 * _2231;
                            _2353 = max((_2321 - _2351), 0.0f);
                            _2354 = _2301 - _2353;
                            _2355 = _2353 * (acos(min(max(cos(((((_2340 * -6.2831855f) - _2306) + select((_2327 && _2328), 1.5707964f, select((_2327 && _2329), -1.5707964f, select((_2326 && _2329), (_2323 + -3.1415927f), select((_2326 && _2328), (_2323 + 3.1415927f), _2323))))) * _2339) + _2241), -1.0f), 1.0f)) / _2339);
                            _2360 = _2301 - _2321;
                            _2369 = saturate(1.0f - (_2301 / _2321));  // [sem: expr_sat]
                            _2372 = ((_2369 + _2340) * _2236) - _2306;
                            _2373 = sin(_2372);
                            _2374 = cos(_2372);
                            _2408 = ((saturate(_2239) * (((-0.0f - _2360) - _2351) + sqrt((_2354 * _2354) + (_2355 * _2355)))) + _2360);
                            _2409 = _2321;
                            _2410 = 0.0f;
                            _2411 = _2369;
                            _2412 = ((_2374 * _2262) - (_2373 * _2270));
                            _2413 = _2266;
                            _2414 = ((_2374 * _2270) + (_2373 * _2262));
                            _2434 = _2409;
                            _2435 = _2410;
                            _2436 = _2411;
                            _2437 = _2412;
                            _2438 = _2413;
                            _2439 = _2414;
                            _2440 = max(_2408, ((_2272 * 2.0f) + -1.0f));
                          } else {
                            _2419 = 0.0f;
                            _2420 = _2262;
                            _2421 = _2266;
                            _2422 = _2270;
                            _2423 = _2420 * 2.0f;
                            _2424 = _2421 * 2.0f;
                            _2425 = _2422 * 2.0f;
                            _2434 = 1.0f;
                            _2435 = _2419;
                            _2436 = _2305;
                            _2437 = _2420;
                            _2438 = _2421;
                            _2439 = _2422;
                            _2440 = (sqrt(((_2424 * _2424) + (_2423 * _2423)) + (_2425 * _2425)) + -1.0f);
                          }
                        }
                        if (_2224 > 0.0f) {
                          _2443 = _time.x * _2247;
                          _2447 = max(_2223, 0.0001f);
                          _2465 = (_2440 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2443 * _2251) + _2225) + (_2447 * _2437)), (((_2443 * _2252) + _2226) + (_2447 * _2438)), (((_2443 * _2253) + _2230) + (_2447 * _2439))), 0.0f)).x) + -0.5f) * _2224));
                        } else {
                          _2465 = _2440;
                        }
                        if (_2307 && (_2239 > 0.0f)) {
                          _2470 = atan(_2270 / _2262);
                          _2473 = (_2262 < 0.0f);
                          _2474 = (_2262 == 0.0f);
                          _2475 = (_2270 >= 0.0f);
                          _2476 = (_2270 < 0.0f);
                          _2498 = (_2465 - (((_2239 * 0.5f) * _2436) * cos(((((_2301 * _2238) - _2306) + select((_2474 && _2475), 1.5707964f, select((_2474 && _2476), -1.5707964f, select((_2473 && _2476), (_2470 + -3.1415927f), select((_2473 && _2475), (_2470 + 3.1415927f), _2470))))) * max(((float)((uint)((uint)(_2234)))), 1.0f)) + _2241)));
                        } else {
                          _2498 = _2465;
                        }
                        if (_2308 && (_2258 > 0.0f)) {
                          _2506 = max(_2498, ((_2434 * _2258) - _2301));
                        } else {
                          _2506 = _2498;
                        }
                        _2508 = max(_2221, 0.0001f);
                        _2514 = saturate((((_2220 - (_2435 * _2246)) + _2506) + _2508) / (_2508 * 2.0f));  // [sem: expr_sat]
                        _2519 = 1.0f - ((_2514 * _2514) * (3.0f - (_2514 * 2.0f)));
                        if (!((_2519 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_2229 <= 0.0f)) || (_2519 <= 0.0f)))) {
                          _2527 = _time.x * _2248;
                          _2531 = max(_2228, 0.0001f);
                          // [sem: expr_sat]
                          _2555 = saturate(_2519 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2527 * _2251) + _2225) + (_2531 * _2437)), (((_2527 * _2252) + _2226) + (_2531 * _2438)), (((_2527 * _2253) + _2230) + (_2531 * _2439))), 0.0f)).x) * _2229) * saturate(1.0f - abs((_2519 * 2.0f) + -1.0f))));
                        } else {
                          _2555 = _2519;  // [sem: expr_sat]
                        }
                        _2560 = (((_2292 * _2219) * _2555) + _2194);
                      } else {
                        _2560 = _2194;
                      }
                    } else {
                      _2560 = _2194;
                    }
                  } else {
                    _2560 = _2194;
                  }
                  _2561 = (uint)((uint)(_2195)) + (uint)(1);
                  if ((uint)_2561 < (uint)_cloudDensityVolumeInfo.x) {
                    _2194 = _2560;
                    _2195 = _2561;
                    continue;
                  }
                  while(true) {
                    _2566 = saturate(_2560);  // [sem: _2560_sat]
                    break;
                  }
                  break;
                }
              } else {
                _2566 = 0.0f;  // [sem: _2560_sat]
              }
              _2568 = saturate(_2566 + _2184);  // [sem: expr_sat]
              _2584 = (((exp2((((_1996 * -0.0072134747f) * _1997) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_2566 + _2183) - _2568)) + _2568) * _1997) + _1996;
              _2585 = _2001 + _1997;
              _2586 = _2002 + _1998;
              _2587 = _2003 + _1999;
              _2588 = _2004 + _2000;
              _2589 = _1997 * 1.3f;
              _2590 = _1998 * 1.3f;
              _2591 = _1999 * 1.3f;
              _2592 = _2000 * 1.3f;
              _2593 = (int)(_2005) + (int)(1);
              if (!(_2593 == 6)) {
                _1996 = _2584;
                _1997 = _2589;
                _1998 = _2590;
                _1999 = _2591;
                _2000 = _2592;
                _2001 = _2585;
                _2002 = _2586;
                _2003 = _2587;
                _2004 = _2588;
                _2005 = _2593;
                continue;
              }
              _2601 = ((_cloudDensityVolumeInfo.y & 2) != 0);
              // [sem: _3__36__0__0__g_climateTex2_sampleLod]
              _2621 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_410 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_412 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
              _2623 = _410 + 50.0f;
              _2624 = _411 + 200.0f;
              _2625 = _2623 - _viewPos.x;
              _2626 = _412 - _viewPos.z;
              _2630 = sqrt((_2625 * _2625) + (_2626 * _2626));
              _2635 = _cloudAltitude - (max(((_2630 * _2630) + -400000.0f), 0.0f) * 1e-06f);
              _2636 = _earthRadius + _2624;
              _2638 = _2636 * _2636;
              _2644 = ((sqrt(((_2623 * _2623) + _1033) + _2638) - _earthRadius) - _2635) / _cloudThickness;
              if (!((_2644 < 0.0f) || (_2644 > 1.0f))) {
                _2666 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2667 = _2624 - _2635;
                _2683 = _2032 / _2035;
                _2684 = _2683 * _2035;
                _2686 = _2683 * _2666;
                _2698 = saturate(max((_2630 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2702 = (4.0f - (_2698 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2706 = _2684 * 4.355f;
                _2723 = 1.0f - sqrt(saturate((1.0f - _2644) * 1.4285715f));
                _2745 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2032 * _2623) - (_2684 * _cloudScroll.x)), ((_2667 * _2032) - _2686), ((_2032 * _412) - (_2684 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_2698 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2702 * _2623) - (_2706 * _cloudScroll.x)), ((_2702 * _2667) - (_2686 * 4.355f)), ((_2702 * _412) - (_2706 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2644 * 4.0f) * 0.8f) + 0.2f);
                _2752 = (saturate(((saturate(saturate(((_2621.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2035 * (_2623 - _cloudScroll.x)), ((_2667 * _2035) - _2666), (_2035 * (_412 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2723 * 0.5f), ((_2723 * _2723) * _2723))) * saturate(_2644 * 10.0f)) - _2745) / (1.0f - _2745)) * _cloudAlpha);
              } else {
                _2752 = 0.0f;
              }
              _2754 = (_cloudFadeRange > 1e-05f);
              if (_2754) {
                _2764 = saturate(((_2630 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _2764 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _2772 = 0.0f;
                _2773 = 0;
                while(true) {
                  _3136 = _2772;
                  if (!((uint)(_2773 & 16) > (uint)15)) {
                    _2779 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[0].x;
                    _2780 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[1].x;
                    _2781 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[2].x;
                    _2783 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[0].y;
                    _2784 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[1].y;
                    _2785 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[2].y;
                    _2787 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[0].z;
                    _2788 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[1].z;
                    _2789 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[2].z;
                    _2791 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[0].w;
                    _2792 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[1].w;
                    _2793 = __3__37__0__0__g_cloudDensityVolumes[_2773]._relativeWorldToLocal[2].w;
                    _2795 = __3__37__0__0__g_cloudDensityVolumes[_2773]._shapeParameter.x;
                    _2796 = __3__37__0__0__g_cloudDensityVolumes[_2773]._shapeParameter.z;
                    _2797 = __3__37__0__0__g_cloudDensityVolumes[_2773]._shapeParameter.w;
                    _2799 = __3__37__0__0__g_cloudDensityVolumes[_2773]._macroNoiseParameter.x;
                    _2800 = __3__37__0__0__g_cloudDensityVolumes[_2773]._macroNoiseParameter.y;
                    _2801 = __3__37__0__0__g_cloudDensityVolumes[_2773]._macroNoiseParameter.z;
                    _2802 = __3__37__0__0__g_cloudDensityVolumes[_2773]._macroNoiseParameter.w;
                    _2804 = __3__37__0__0__g_cloudDensityVolumes[_2773]._detailNoiseParameter.x;
                    _2805 = __3__37__0__0__g_cloudDensityVolumes[_2773]._detailNoiseParameter.y;
                    _2806 = __3__37__0__0__g_cloudDensityVolumes[_2773]._detailNoiseParameter.z;
                    _2807 = __3__37__0__0__g_cloudDensityVolumes[_2773]._detailNoiseParameter.w;
                    _2809 = __3__37__0__0__g_cloudDensityVolumes[_2773]._modeParameter.x;
                    _2810 = __3__37__0__0__g_cloudDensityVolumes[_2773]._modeParameter.y;
                    _2812 = __3__37__0__0__g_cloudDensityVolumes[_2773]._vortexParameter.x;
                    _2813 = __3__37__0__0__g_cloudDensityVolumes[_2773]._vortexParameter.y;
                    _2814 = __3__37__0__0__g_cloudDensityVolumes[_2773]._vortexParameter.z;
                    _2815 = __3__37__0__0__g_cloudDensityVolumes[_2773]._vortexParameter.w;
                    _2817 = __3__37__0__0__g_cloudDensityVolumes[_2773]._spiralParameter.x;
                    _2818 = __3__37__0__0__g_cloudDensityVolumes[_2773]._spiralParameter.y;
                    _2819 = __3__37__0__0__g_cloudDensityVolumes[_2773]._spiralParameter.z;
                    _2820 = __3__37__0__0__g_cloudDensityVolumes[_2773]._spiralParameter.w;
                    _2822 = __3__37__0__0__g_cloudDensityVolumes[_2773]._animationParameter.x;
                    _2823 = __3__37__0__0__g_cloudDensityVolumes[_2773]._animationParameter.y;
                    _2824 = __3__37__0__0__g_cloudDensityVolumes[_2773]._animationParameter.z;
                    _2825 = __3__37__0__0__g_cloudDensityVolumes[_2773]._animationParameter.w;
                    _2827 = __3__37__0__0__g_cloudDensityVolumes[_2773]._flowParameter.x;
                    _2828 = __3__37__0__0__g_cloudDensityVolumes[_2773]._flowParameter.y;
                    _2829 = __3__37__0__0__g_cloudDensityVolumes[_2773]._flowParameter.z;
                    _2831 = __3__37__0__0__g_cloudDensityVolumes[_2773]._tornadoParameter.x;
                    _2832 = __3__37__0__0__g_cloudDensityVolumes[_2773]._tornadoParameter.y;
                    _2833 = __3__37__0__0__g_cloudDensityVolumes[_2773]._tornadoParameter.z;
                    _2834 = __3__37__0__0__g_cloudDensityVolumes[_2773]._tornadoParameter.w;
                    _2838 = mad(_2787, _412, mad(_2783, _2624, (_2779 * _2623))) + _2791;
                    _2842 = mad(_2788, _412, mad(_2784, _2624, (_2780 * _2623))) + _2792;
                    _2846 = mad(_2789, _412, mad(_2785, _2624, (_2781 * _2623))) + _2793;
                    _2848 = abs(_2842);
                    _2854 = max((abs(_2838) + -0.5f), max((_2848 + -0.5f), (abs(_2846) + -0.5f)));
                    if (!(_2854 >= 0.0f)) {
                      _2857 = __3__37__0__0__g_cloudDensityVolumes[_2773]._shapeParameter.y;
                      _2860 = max((saturate(_2857) * 0.5f), 0.0001f);
                      _2863 = saturate((_2860 + _2854) / _2860);  // [sem: expr_sat]
                      _2868 = 1.0f - ((_2863 * _2863) * (3.0f - (_2863 * 2.0f)));
                      if (!(_2868 <= 0.0f)) {
                        _2877 = sqrt((_2846 * _2846) + (_2838 * _2838)) * 2.0f;
                        _2881 = saturate(1.0f - (_2877 / max(_2813, 0.0001f)));  // [sem: expr_sat]
                        _2882 = _time.x * _2825;
                        _2883 = (_2809 == 1);
                        _2884 = (_2809 == 2);
                        if (_2883) {
                          _2961 = exp2(log2(_2881) * max(_2820, 0.0001f));
                          _2963 = max(_2819, 0.0001f);
                          _2967 = _2842 / (((max(_2818, 0.0001f) - _2963) * _2961) + _2963);
                          _2974 = (((_2881 * _2881) * _2812) * ((_2877 * _2814) + _2842)) - (_2881 * _2882);
                          _2975 = sin(_2974);
                          _2976 = cos(_2974);
                          _2979 = (_2976 * _2838) - (_2975 * _2846);
                          _2982 = (_2976 * _2846) + (_2975 * _2838);
                          if (_2884) {
                            _2984 = 0.0f;
                            _2985 = 1.0f;
                            _2986 = _2961;
                            _2987 = _2881;
                            _2988 = _2979;
                            _2989 = _2967;
                            _2990 = _2982;
                            _3010 = _2985;
                            _3011 = _2986;
                            _3012 = _2987;
                            _3013 = _2988;
                            _3014 = _2989;
                            _3015 = _2990;
                            _3016 = max(_2984, ((_2848 * 2.0f) + -1.0f));
                          } else {
                            _2995 = _2961;
                            _2996 = _2979;
                            _2997 = _2967;
                            _2998 = _2982;
                            _2999 = _2996 * 2.0f;
                            _3000 = _2997 * 2.0f;
                            _3001 = _2998 * 2.0f;
                            _3010 = 1.0f;
                            _3011 = _2995;
                            _3012 = _2881;
                            _3013 = _2996;
                            _3014 = _2997;
                            _3015 = _2998;
                            _3016 = (sqrt(((_3000 * _3000) + (_2999 * _2999)) + (_3001 * _3001)) + -1.0f);
                          }
                        } else {
                          if (_2884) {
                            _2888 = saturate(_2842 + 0.5f);  // [sem: expr_sat]
                            _2894 = max(_2831, 0.0001f);
                            _2897 = ((max(_2832, 0.0001f) - _2894) * exp2(log2(_2888) * max(_2833, 0.0001f))) + _2894;
                            _2899 = atan(_2846 / _2838);
                            _2902 = (_2838 < 0.0f);
                            _2903 = (_2838 == 0.0f);
                            _2904 = (_2846 >= 0.0f);
                            _2905 = (_2846 < 0.0f);
                            _2915 = max(((float)((uint)((uint)(_2810)))), 1.0f);
                            _2916 = _2888 * _2814;
                            _2927 = _2897 * _2807;
                            _2929 = max((_2897 - _2927), 0.0f);
                            _2930 = _2877 - _2929;
                            _2931 = _2929 * (acos(min(max(cos(((((_2916 * -6.2831855f) - _2882) + select((_2903 && _2904), 1.5707964f, select((_2903 && _2905), -1.5707964f, select((_2902 && _2905), (_2899 + -3.1415927f), select((_2902 && _2904), (_2899 + 3.1415927f), _2899))))) * _2915) + _2817), -1.0f), 1.0f)) / _2915);
                            _2936 = _2877 - _2897;
                            _2945 = saturate(1.0f - (_2877 / _2897));  // [sem: expr_sat]
                            _2948 = ((_2945 + _2916) * _2812) - _2882;
                            _2949 = sin(_2948);
                            _2950 = cos(_2948);
                            _2984 = ((saturate(_2815) * (((-0.0f - _2936) - _2927) + sqrt((_2930 * _2930) + (_2931 * _2931)))) + _2936);
                            _2985 = _2897;
                            _2986 = 0.0f;
                            _2987 = _2945;
                            _2988 = ((_2950 * _2838) - (_2949 * _2846));
                            _2989 = _2842;
                            _2990 = ((_2950 * _2846) + (_2949 * _2838));
                            _3010 = _2985;
                            _3011 = _2986;
                            _3012 = _2987;
                            _3013 = _2988;
                            _3014 = _2989;
                            _3015 = _2990;
                            _3016 = max(_2984, ((_2848 * 2.0f) + -1.0f));
                          } else {
                            _2995 = 0.0f;
                            _2996 = _2838;
                            _2997 = _2842;
                            _2998 = _2846;
                            _2999 = _2996 * 2.0f;
                            _3000 = _2997 * 2.0f;
                            _3001 = _2998 * 2.0f;
                            _3010 = 1.0f;
                            _3011 = _2995;
                            _3012 = _2881;
                            _3013 = _2996;
                            _3014 = _2997;
                            _3015 = _2998;
                            _3016 = (sqrt(((_3000 * _3000) + (_2999 * _2999)) + (_3001 * _3001)) + -1.0f);
                          }
                        }
                        if (_2800 > 0.0f) {
                          _3019 = _time.x * _2823;
                          _3023 = max(_2799, 0.0001f);
                          _3041 = (_3016 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3019 * _2827) + _2801) + (_3023 * _3013)), (((_3019 * _2828) + _2802) + (_3023 * _3014)), (((_3019 * _2829) + _2806) + (_3023 * _3015))), 0.0f)).x) + -0.5f) * _2800));
                        } else {
                          _3041 = _3016;
                        }
                        if (_2883 && (_2815 > 0.0f)) {
                          _3046 = atan(_2846 / _2838);
                          _3049 = (_2838 < 0.0f);
                          _3050 = (_2838 == 0.0f);
                          _3051 = (_2846 >= 0.0f);
                          _3052 = (_2846 < 0.0f);
                          _3074 = (_3041 - (((_2815 * 0.5f) * _3012) * cos(((((_2877 * _2814) - _2882) + select((_3050 && _3051), 1.5707964f, select((_3050 && _3052), -1.5707964f, select((_3049 && _3052), (_3046 + -3.1415927f), select((_3049 && _3051), (_3046 + 3.1415927f), _3046))))) * max(((float)((uint)((uint)(_2810)))), 1.0f)) + _2817)));
                        } else {
                          _3074 = _3041;
                        }
                        if (_2884 && (_2834 > 0.0f)) {
                          _3082 = max(_3074, ((_3010 * _2834) - _2877));
                        } else {
                          _3082 = _3074;
                        }
                        _3084 = max(_2797, 0.0001f);
                        _3090 = saturate((((_2796 - (_3011 * _2822)) + _3082) + _3084) / (_3084 * 2.0f));  // [sem: expr_sat]
                        _3095 = 1.0f - ((_3090 * _3090) * (3.0f - (_3090 * 2.0f)));
                        if (!((_3095 >= 1.0f) || ((_2601 || (_2805 <= 0.0f)) || (_3095 <= 0.0f)))) {
                          _3103 = _time.x * _2824;
                          _3107 = max(_2804, 0.0001f);
                          // [sem: expr_sat]
                          _3131 = saturate(_3095 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3103 * _2827) + _2801) + (_3107 * _3013)), (((_3103 * _2828) + _2802) + (_3107 * _3014)), (((_3103 * _2829) + _2806) + (_3107 * _3015))), 0.0f)).x) * _2805) * saturate(1.0f - abs((_3095 * 2.0f) + -1.0f))));
                        } else {
                          _3131 = _3095;  // [sem: expr_sat]
                        }
                        _3136 = (((_2868 * _2795) * _3131) + _2772);
                      } else {
                        _3136 = _2772;
                      }
                    } else {
                      _3136 = _2772;
                    }
                  } else {
                    _3136 = _2772;
                  }
                  _3137 = (uint)((uint)(_2773)) + (uint)(1);
                  if ((uint)_3137 < (uint)_cloudDensityVolumeInfo.x) {
                    _2772 = _3136;
                    _2773 = _3137;
                    continue;
                  }
                  while(true) {
                    _3142 = saturate(_3136);  // [sem: _3136_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3142 = 0.0f;  // [sem: _3136_sat]
              }
              _3145 = _412 + -50.0f;
              _3146 = _410 - _viewPos.x;
              _3147 = _3145 - _viewPos.z;
              _3151 = sqrt((_3146 * _3146) + (_3147 * _3147));
              _3156 = _cloudAltitude - (max(((_3151 * _3151) + -400000.0f), 0.0f) * 1e-06f);
              _3163 = ((sqrt(((_3145 * _3145) + _1031) + _2638) - _earthRadius) - _3156) / _cloudThickness;
              if (!((_3163 < 0.0f) || (_3163 > 1.0f))) {
                _3185 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _3186 = _2624 - _3156;
                _3202 = _2032 / _2035;
                _3203 = _3202 * _2035;
                _3205 = _3202 * _3185;
                _3217 = saturate(max((_3151 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _3221 = (4.0f - (_3217 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _3225 = _3203 * 4.355f;
                _3242 = 1.0f - sqrt(saturate((1.0f - _3163) * 1.4285715f));
                _3264 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2032 * _410) - (_3203 * _cloudScroll.x)), ((_3186 * _2032) - _3205), ((_2032 * _3145) - (_3203 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_3217 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3221 * _410) - (_3225 * _cloudScroll.x)), ((_3221 * _3186) - (_3205 * 4.355f)), ((_3221 * _3145) - (_3225 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3163 * 4.0f) * 0.8f) + 0.2f);
                _3271 = (saturate(((saturate(saturate(((_2621.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2035 * (_410 - _cloudScroll.x)), ((_3186 * _2035) - _3185), (_2035 * (_3145 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3242 * 0.5f), ((_3242 * _3242) * _3242))) * saturate(_3163 * 10.0f)) - _3264) / (1.0f - _3264)) * _cloudAlpha);
              } else {
                _3271 = 0.0f;
              }
              if (_2754) {
                _3281 = saturate(((_3151 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _3281 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _3290 = 0.0f;
                _3291 = 0;
                while(true) {
                  _3654 = _3290;
                  if (!((uint)(_3291 & 16) > (uint)15)) {
                    _3297 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[0].x;
                    _3298 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[1].x;
                    _3299 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[2].x;
                    _3301 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[0].y;
                    _3302 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[1].y;
                    _3303 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[2].y;
                    _3305 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[0].z;
                    _3306 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[1].z;
                    _3307 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[2].z;
                    _3309 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[0].w;
                    _3310 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[1].w;
                    _3311 = __3__37__0__0__g_cloudDensityVolumes[_3291]._relativeWorldToLocal[2].w;
                    _3313 = __3__37__0__0__g_cloudDensityVolumes[_3291]._shapeParameter.x;
                    _3314 = __3__37__0__0__g_cloudDensityVolumes[_3291]._shapeParameter.z;
                    _3315 = __3__37__0__0__g_cloudDensityVolumes[_3291]._shapeParameter.w;
                    _3317 = __3__37__0__0__g_cloudDensityVolumes[_3291]._macroNoiseParameter.x;
                    _3318 = __3__37__0__0__g_cloudDensityVolumes[_3291]._macroNoiseParameter.y;
                    _3319 = __3__37__0__0__g_cloudDensityVolumes[_3291]._macroNoiseParameter.z;
                    _3320 = __3__37__0__0__g_cloudDensityVolumes[_3291]._macroNoiseParameter.w;
                    _3322 = __3__37__0__0__g_cloudDensityVolumes[_3291]._detailNoiseParameter.x;
                    _3323 = __3__37__0__0__g_cloudDensityVolumes[_3291]._detailNoiseParameter.y;
                    _3324 = __3__37__0__0__g_cloudDensityVolumes[_3291]._detailNoiseParameter.z;
                    _3325 = __3__37__0__0__g_cloudDensityVolumes[_3291]._detailNoiseParameter.w;
                    _3327 = __3__37__0__0__g_cloudDensityVolumes[_3291]._modeParameter.x;
                    _3328 = __3__37__0__0__g_cloudDensityVolumes[_3291]._modeParameter.y;
                    _3330 = __3__37__0__0__g_cloudDensityVolumes[_3291]._vortexParameter.x;
                    _3331 = __3__37__0__0__g_cloudDensityVolumes[_3291]._vortexParameter.y;
                    _3332 = __3__37__0__0__g_cloudDensityVolumes[_3291]._vortexParameter.z;
                    _3333 = __3__37__0__0__g_cloudDensityVolumes[_3291]._vortexParameter.w;
                    _3335 = __3__37__0__0__g_cloudDensityVolumes[_3291]._spiralParameter.x;
                    _3336 = __3__37__0__0__g_cloudDensityVolumes[_3291]._spiralParameter.y;
                    _3337 = __3__37__0__0__g_cloudDensityVolumes[_3291]._spiralParameter.z;
                    _3338 = __3__37__0__0__g_cloudDensityVolumes[_3291]._spiralParameter.w;
                    _3340 = __3__37__0__0__g_cloudDensityVolumes[_3291]._animationParameter.x;
                    _3341 = __3__37__0__0__g_cloudDensityVolumes[_3291]._animationParameter.y;
                    _3342 = __3__37__0__0__g_cloudDensityVolumes[_3291]._animationParameter.z;
                    _3343 = __3__37__0__0__g_cloudDensityVolumes[_3291]._animationParameter.w;
                    _3345 = __3__37__0__0__g_cloudDensityVolumes[_3291]._flowParameter.x;
                    _3346 = __3__37__0__0__g_cloudDensityVolumes[_3291]._flowParameter.y;
                    _3347 = __3__37__0__0__g_cloudDensityVolumes[_3291]._flowParameter.z;
                    _3349 = __3__37__0__0__g_cloudDensityVolumes[_3291]._tornadoParameter.x;
                    _3350 = __3__37__0__0__g_cloudDensityVolumes[_3291]._tornadoParameter.y;
                    _3351 = __3__37__0__0__g_cloudDensityVolumes[_3291]._tornadoParameter.z;
                    _3352 = __3__37__0__0__g_cloudDensityVolumes[_3291]._tornadoParameter.w;
                    _3356 = mad(_3305, _3145, mad(_3301, _2624, (_3297 * _410))) + _3309;
                    _3360 = mad(_3306, _3145, mad(_3302, _2624, (_3298 * _410))) + _3310;
                    _3364 = mad(_3307, _3145, mad(_3303, _2624, (_3299 * _410))) + _3311;
                    _3366 = abs(_3360);
                    _3372 = max((abs(_3356) + -0.5f), max((_3366 + -0.5f), (abs(_3364) + -0.5f)));
                    if (!(_3372 >= 0.0f)) {
                      _3375 = __3__37__0__0__g_cloudDensityVolumes[_3291]._shapeParameter.y;
                      _3378 = max((saturate(_3375) * 0.5f), 0.0001f);
                      _3381 = saturate((_3378 + _3372) / _3378);  // [sem: expr_sat]
                      _3386 = 1.0f - ((_3381 * _3381) * (3.0f - (_3381 * 2.0f)));
                      if (!(_3386 <= 0.0f)) {
                        _3395 = sqrt((_3364 * _3364) + (_3356 * _3356)) * 2.0f;
                        _3399 = saturate(1.0f - (_3395 / max(_3331, 0.0001f)));  // [sem: expr_sat]
                        _3400 = _time.x * _3343;
                        _3401 = (_3327 == 1);
                        _3402 = (_3327 == 2);
                        if (_3401) {
                          _3479 = exp2(log2(_3399) * max(_3338, 0.0001f));
                          _3481 = max(_3337, 0.0001f);
                          _3485 = _3360 / (((max(_3336, 0.0001f) - _3481) * _3479) + _3481);
                          _3492 = (((_3399 * _3399) * _3330) * ((_3395 * _3332) + _3360)) - (_3399 * _3400);
                          _3493 = sin(_3492);
                          _3494 = cos(_3492);
                          _3497 = (_3494 * _3356) - (_3493 * _3364);
                          _3500 = (_3494 * _3364) + (_3493 * _3356);
                          if (_3402) {
                            _3502 = 0.0f;
                            _3503 = 1.0f;
                            _3504 = _3479;
                            _3505 = _3399;
                            _3506 = _3497;
                            _3507 = _3485;
                            _3508 = _3500;
                            _3528 = _3503;
                            _3529 = _3504;
                            _3530 = _3505;
                            _3531 = _3506;
                            _3532 = _3507;
                            _3533 = _3508;
                            _3534 = max(_3502, ((_3366 * 2.0f) + -1.0f));
                          } else {
                            _3513 = _3479;
                            _3514 = _3497;
                            _3515 = _3485;
                            _3516 = _3500;
                            _3517 = _3514 * 2.0f;
                            _3518 = _3515 * 2.0f;
                            _3519 = _3516 * 2.0f;
                            _3528 = 1.0f;
                            _3529 = _3513;
                            _3530 = _3399;
                            _3531 = _3514;
                            _3532 = _3515;
                            _3533 = _3516;
                            _3534 = (sqrt(((_3518 * _3518) + (_3517 * _3517)) + (_3519 * _3519)) + -1.0f);
                          }
                        } else {
                          if (_3402) {
                            _3406 = saturate(_3360 + 0.5f);  // [sem: expr_sat]
                            _3412 = max(_3349, 0.0001f);
                            _3415 = ((max(_3350, 0.0001f) - _3412) * exp2(log2(_3406) * max(_3351, 0.0001f))) + _3412;
                            _3417 = atan(_3364 / _3356);
                            _3420 = (_3356 < 0.0f);
                            _3421 = (_3356 == 0.0f);
                            _3422 = (_3364 >= 0.0f);
                            _3423 = (_3364 < 0.0f);
                            _3433 = max(((float)((uint)((uint)(_3328)))), 1.0f);
                            _3434 = _3406 * _3332;
                            _3445 = _3415 * _3325;
                            _3447 = max((_3415 - _3445), 0.0f);
                            _3448 = _3395 - _3447;
                            _3449 = _3447 * (acos(min(max(cos(((((_3434 * -6.2831855f) - _3400) + select((_3421 && _3422), 1.5707964f, select((_3421 && _3423), -1.5707964f, select((_3420 && _3423), (_3417 + -3.1415927f), select((_3420 && _3422), (_3417 + 3.1415927f), _3417))))) * _3433) + _3335), -1.0f), 1.0f)) / _3433);
                            _3454 = _3395 - _3415;
                            _3463 = saturate(1.0f - (_3395 / _3415));  // [sem: expr_sat]
                            _3466 = ((_3463 + _3434) * _3330) - _3400;
                            _3467 = sin(_3466);
                            _3468 = cos(_3466);
                            _3502 = ((saturate(_3333) * (((-0.0f - _3454) - _3445) + sqrt((_3448 * _3448) + (_3449 * _3449)))) + _3454);
                            _3503 = _3415;
                            _3504 = 0.0f;
                            _3505 = _3463;
                            _3506 = ((_3468 * _3356) - (_3467 * _3364));
                            _3507 = _3360;
                            _3508 = ((_3468 * _3364) + (_3467 * _3356));
                            _3528 = _3503;
                            _3529 = _3504;
                            _3530 = _3505;
                            _3531 = _3506;
                            _3532 = _3507;
                            _3533 = _3508;
                            _3534 = max(_3502, ((_3366 * 2.0f) + -1.0f));
                          } else {
                            _3513 = 0.0f;
                            _3514 = _3356;
                            _3515 = _3360;
                            _3516 = _3364;
                            _3517 = _3514 * 2.0f;
                            _3518 = _3515 * 2.0f;
                            _3519 = _3516 * 2.0f;
                            _3528 = 1.0f;
                            _3529 = _3513;
                            _3530 = _3399;
                            _3531 = _3514;
                            _3532 = _3515;
                            _3533 = _3516;
                            _3534 = (sqrt(((_3518 * _3518) + (_3517 * _3517)) + (_3519 * _3519)) + -1.0f);
                          }
                        }
                        if (_3318 > 0.0f) {
                          _3537 = _time.x * _3341;
                          _3541 = max(_3317, 0.0001f);
                          _3559 = (_3534 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3537 * _3345) + _3319) + (_3541 * _3531)), (((_3537 * _3346) + _3320) + (_3541 * _3532)), (((_3537 * _3347) + _3324) + (_3541 * _3533))), 0.0f)).x) + -0.5f) * _3318));
                        } else {
                          _3559 = _3534;
                        }
                        if (_3401 && (_3333 > 0.0f)) {
                          _3564 = atan(_3364 / _3356);
                          _3567 = (_3356 < 0.0f);
                          _3568 = (_3356 == 0.0f);
                          _3569 = (_3364 >= 0.0f);
                          _3570 = (_3364 < 0.0f);
                          _3592 = (_3559 - (((_3333 * 0.5f) * _3530) * cos(((((_3395 * _3332) - _3400) + select((_3568 && _3569), 1.5707964f, select((_3568 && _3570), -1.5707964f, select((_3567 && _3570), (_3564 + -3.1415927f), select((_3567 && _3569), (_3564 + 3.1415927f), _3564))))) * max(((float)((uint)((uint)(_3328)))), 1.0f)) + _3335)));
                        } else {
                          _3592 = _3559;
                        }
                        if (_3402 && (_3352 > 0.0f)) {
                          _3600 = max(_3592, ((_3528 * _3352) - _3395));
                        } else {
                          _3600 = _3592;
                        }
                        _3602 = max(_3315, 0.0001f);
                        _3608 = saturate((((_3314 - (_3529 * _3340)) + _3600) + _3602) / (_3602 * 2.0f));  // [sem: expr_sat]
                        _3613 = 1.0f - ((_3608 * _3608) * (3.0f - (_3608 * 2.0f)));
                        if (!((_3613 >= 1.0f) || ((_2601 || (_3323 <= 0.0f)) || (_3613 <= 0.0f)))) {
                          _3621 = _time.x * _3342;
                          _3625 = max(_3322, 0.0001f);
                          // [sem: expr_sat]
                          _3649 = saturate(_3613 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3621 * _3345) + _3319) + (_3625 * _3531)), (((_3621 * _3346) + _3320) + (_3625 * _3532)), (((_3621 * _3347) + _3324) + (_3625 * _3533))), 0.0f)).x) * _3323) * saturate(1.0f - abs((_3613 * 2.0f) + -1.0f))));
                        } else {
                          _3649 = _3613;  // [sem: expr_sat]
                        }
                        _3654 = (((_3386 * _3313) * _3649) + _3290);
                      } else {
                        _3654 = _3290;
                      }
                    } else {
                      _3654 = _3290;
                    }
                  } else {
                    _3654 = _3290;
                  }
                  _3655 = (uint)((uint)(_3291)) + (uint)(1);
                  if ((uint)_3655 < (uint)_cloudDensityVolumeInfo.x) {
                    _3290 = _3654;
                    _3291 = _3655;
                    continue;
                  }
                  while(true) {
                    _3660 = saturate(_3654);  // [sem: _3654_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3660 = 0.0f;  // [sem: _3654_sat]
              }
              _3667 = max(_1825, (_2584 * _distanceScale));
              _3668 = ((_distanceScale * 20.0f) * (saturate(_3660 + (_3281 * _3271)) + saturate(_3142 + (_2764 * _2752))));
              break;
            }
          } else {
            _3667 = _1825;
            _3668 = ((log2(max(_1821, 0.5f)) * 0.6931472f) / _1824);
          }
          _3669 = dot(float3(_1037, _1038, _1039), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _3673 = min(max(_1158, 16.0f), (_atmosphereThickness + -16.0f));
          _3681 = max(_3673, 0.0f);
          _3690 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3681) * _3681)) / (_earthRadius + _3681);
          if (_3669 > _3690) {
            _3713 = ((exp2(log2(saturate((_3669 - _3690) / (1.0f - _3690))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3713 = ((exp2(log2(saturate((_3690 - _3669) / (_3690 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _3715 = (exp2(log2(saturate((_3673 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _3718 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3715, _3713), 0.0f);
          _3721 = dot(float3(_1037, _1038, _1039), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_3721 > _3690) {
            _3744 = ((exp2(log2(saturate((_3721 - _3690) / (1.0f - _3690))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3744 = ((exp2(log2(saturate((_3690 - _3721) / (_3690 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _3745 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3715, _3744), 0.0f);
          _3748 = _1688 * saturate((1.0f - saturate(_403 / _228)) * 10.0f);
          _3753 = _406 * 0.5f;
          _3758 = ((_1168 + _373) * _3753) + _377;
          _3759 = ((_1169 + _372) * _3753) + _376;
          _3760 = ((_3748 + _371) * _3753) + _375;
          _3761 = ((_1756 + _370) * _3753) + _374;
          _3762 = _3761 + _3760;
          _3763 = _3718.x + _3758;
          _3770 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
          _3773 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
          _3775 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
          _3782 = _mieAerosolDensity * 2e-05f;
          _3783 = _3782 * (_mieAerosolAbsorption + 1.0f);
          _3784 = _3783 * (_3718.y + _3759);
          _3793 = _cloudScatteringCoefficient / _distanceScale;
          _3794 = _3793 * (_3667 + _3762);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _3795 = (_3770 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _3796 = _3795 * _3763;
          _3797 = _3794 + _3784;
          _3799 = (_3773 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _3800 = _3799 * _3763;
          _3802 = (_3775 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _3803 = _3802 * _3763;
          _3808 = exp2((_3796 + _3797) * -1.442695f);
          _3809 = exp2((_3800 + _3797) * -1.442695f);
          _3810 = exp2((_3803 + _3797) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
          //              transmittance channels (branchless *= below; red untouched) so sunrise and
          //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
          //              vanilla computes extinction uniformly across cloud and clear air, so clouds
          //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
          //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
          //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
          //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
          //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues", default On
          //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
          //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
          //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On) and
          //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
          //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
          //              probe shader passes isProbe=true, so reddening is additionally attenuated to
          //              0.25x because its output feeds the GI cubemap and full-strength reddening
          //              oversaturates indirect lighting. If any condition fails the factor is
          //              exactly 1.0 and the multiplies are bit-exact no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor = CloudReddeningFactor(_3794, _dawnDuskFactor, true);
          _3808 *= 1.f;               // R unchanged
          _3809 *= _cloudRedFactor;   // G attenuated
          _3810 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _3823 = ((_3809 * 0.33951f) + (_3808 * 0.61312f)) + (_3810 * 0.04737f);
          _3824 = ((_3809 * 0.91636f) + (_3808 * 0.0702f)) + (_3810 * 0.01345f);
          _3825 = ((_3809 * 0.10958f) + (_3808 * 0.02062f)) + (_3810 * 0.8698f);
          _3826 = _3823 * _1169;
          _3827 = _3824 * _1169;
          _3828 = _3825 * _1169;
          _3829 = _3793 * _distanceScale;
          _3836 = exp2(log2(1.0f - exp2((_3829 * -14.42695f) * _3748)) * 1.25f);
          _3840 = 1.0f - exp2((_3829 * -288.539f) * _1756);
          _3843 = _1168 * 1.9607843e-07f;
          _3844 = (_173 * 0.059683103f) * _3843;
          _3852 = _miePhaseConst * _miePhaseConst;
          _3858 = _3852 + 1.0f;
          _3865 = (((1.0f - _3852) * 3.0f) / ((_3852 + 2.0f) * 2.0f)) * 0.07957747f;
          // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
          // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
          //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
          //              the top of main): the sun in-scatter path consumes the boosted phase for a
          //              stronger forward-scatter lobe around the low sun, while the moon HG (_4030)
          //              keeps the vanilla _3858/_3865. When Dawn/Dusk Improvements is Off (or the
          //              sun is outside the dawn/dusk window) _boostedMieG equals the vanilla
          //              _miePhaseConst, so the boosted result is bit-identical to the vanilla term
          //              it mirrors.
          // [DAWN_DUSK] Sun HG uses boosted g - moon HG (_4030) still uses vanilla _3858/_3865
          [branch]
          if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
            float _3852b = _boostedMieG * _boostedMieG;
            float _3858b = _3852b + 1.0f;
            float _3865b = (((1.0f - _3852b) * 3.0f) / ((_3852b + 2.0f) * 2.0f)) * 0.07957746833562851f;
            _3871 = (_3865b * _3782) * (_173 / exp2(log2(_3858b - (_boostedMieG * _175)) * 1.5f));
          } else {
            _3871 = (_3865 * _3782) * (_173 / exp2(log2(_3858 - (_miePhaseConst * _175)) * 1.5f));
          }
          // RenoDX: <<< [Patch: DawnDuskImprovements]
          _3878 = _3748 * 64.0f;
          _3880 = _3836 * (_3878 * _183);
          _3888 = (_1756 * 2.0f) * _201;
          _3891 = ((_3888 * _3823) * _3840) * _volumeFogScatterColor.x;
          _3894 = ((_3888 * _3824) * _3840) * _volumeFogScatterColor.y;
          _3897 = ((_3888 * _3825) * _3840) * _volumeFogScatterColor.z;
          _3927 = (_3793 * (_3668 + _3762)) + (_3783 * _3759);
          _3936 = exp2(((_3795 * _3758) + _3927) * -1.442695f);
          _3937 = exp2(((_3799 * _3758) + _3927) * -1.442695f);
          _3938 = exp2(((_3802 * _3758) + _3927) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_2_3936 = CloudReddeningFactor((_3762 * (_3668 + _3793)), _dawnDuskFactor, true);
          _3937 *= _rndx_cloud_red_2_3936;
          _3938 *= _rndx_cloud_red_2_3936;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _3958 = _1169 * _3782;
          _3962 = _3793 * (_1756 + _3748);
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Converts this ray-march step's Rayleigh in-scatter radiance with the
          //              spectral matrix instead of the vanilla RGB matrix. The Rayleigh term
          //              (transmittance x beta x phase) is per-wavelength radiance and needs the
          //              spectral-to-working conversion; the Mie term is artist colour already in
          //              display space, so SKY_VAN_DOT keeps it on the vanilla matrix. Beta stays
          //              the native packed value on both arms — only the matrix differs — and each
          //              Off arm is the complete native RGB expression.
          //              The accumulation rows carry a second Rayleigh radiance term of their own —
          //              the sun single-scatter sub-term against the cloud-attenuated transmittance
          //              triple (_3808/_3809/_3810) with the sun phase carrier _3844 — and it takes
          //              the same spectral conversion. The volume-fog, cloud-density and Mie terms
          //              standing beside it carry artist colour and keep the vanilla matrix.
          _3965 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(0, _3936, _3937, _3938, _3770, _3773, _3775, _3843) + SKY_VAN_DOT(0, _3936, _3937, _3938) * (_3962 + _mieScatterColor.x * _3958))
            : (((_3937 * 0.33951f) + (_3936 * 0.61312f)) + (_3938 * 0.04737f)) * (((_3770 * _3843) + _3962) + (_mieScatterColor.x * _3958));
          _3970 = SKY_SCATTERING
            ? ((((((_3871 * _3826) * _mieScatterColor.x) + SKY_RAY_INSCATTER(0, _3808, _3809, _3810, _3770, _3773, _3775, _3844)) + ((_3891 + (_3880 * _3823)) * _3793)) + (_3965 * _1144)) * _406)
            : (((((_3871 * _3826) * _mieScatterColor.x) + ((_3770 * _3844) * _3823)) + ((_3891 + (_3880 * _3823)) * _3793)) + (_3965 * _1144)) * _406;
          _3973 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(1, _3936, _3937, _3938, _3770, _3773, _3775, _3843) + SKY_VAN_DOT(1, _3936, _3937, _3938) * (_3962 + _mieScatterColor.y * _3958))
            : (((_3937 * 0.91636f) + (_3936 * 0.0702f)) + (_3938 * 0.01345f)) * (((_3773 * _3843) + _3962) + (_mieScatterColor.y * _3958));
          _3978 = SKY_SCATTERING
            ? ((((((_3871 * _3827) * _mieScatterColor.y) + SKY_RAY_INSCATTER(1, _3808, _3809, _3810, _3770, _3773, _3775, _3844)) + ((_3894 + (_3880 * _3824)) * _3793)) + (_3973 * _1145)) * _406)
            : (((((_3871 * _3827) * _mieScatterColor.y) + ((_3773 * _3844) * _3824)) + ((_3894 + (_3880 * _3824)) * _3793)) + (_3973 * _1145)) * _406;
          _3981 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(2, _3936, _3937, _3938, _3770, _3773, _3775, _3843) + SKY_VAN_DOT(2, _3936, _3937, _3938) * (_3962 + _mieScatterColor.z * _3958))
            : (((_3937 * 0.10958f) + (_3936 * 0.02062f)) + (_3938 * 0.8698f)) * ((_3962 + (_3775 * _3843)) + (_mieScatterColor.z * _3958));
          _3986 = SKY_SCATTERING
            ? ((((((_3871 * _3828) * _mieScatterColor.z) + SKY_RAY_INSCATTER(2, _3808, _3809, _3810, _3770, _3773, _3775, _3844)) + ((_3897 + (_3880 * _3825)) * _3793)) + (_3981 * _1146)) * _406)
            : (((((_3871 * _3828) * _mieScatterColor.z) + ((_3775 * _3844) * _3825)) + ((_3897 + (_3880 * _3825)) * _3793)) + (_3981 * _1146)) * _406;
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          _3987 = _3745.x + _3758;
          _3989 = _3783 * (_3745.y + _3759);
          _3990 = _3795 * _3987;
          _3991 = _3794 + _3989;
          _3993 = _3799 * _3987;
          _3995 = _3802 * _3987;
          _4000 = exp2((_3990 + _3991) * -1.442695f);
          _4001 = exp2((_3993 + _3991) * -1.442695f);
          _4002 = exp2((_3995 + _3991) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
          //              transmittance channels (branchless *= below; red untouched) so sunrise and
          //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
          //              vanilla computes extinction uniformly across cloud and clear air, so clouds
          //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
          //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
          //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
          //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
          //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues", default On
          //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
          //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
          //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On) and
          //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
          //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
          //              probe shader passes isProbe=true, so reddening is additionally attenuated to
          //              0.25x because its output feeds the GI cubemap and full-strength reddening
          //              oversaturates indirect lighting. If any condition fails the factor is
          //              exactly 1.0 and the multiplies are bit-exact no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor3 = CloudReddeningFactor(_3794, _dawnDuskFactor, true);
          _4000 *= 1.f;                // R unchanged
          _4001 *= _cloudRedFactor3;   // G attenuated
          _4002 *= _cloudRedFactor3;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _4019 = (_209 * 0.059683103f) * _3843;
          _4030 = (_3958 * _3865) * (_209 / exp2(log2(_3858 - (_miePhaseConst * _210)) * 1.5f));
          _4040 = ((((_225 * 2.0f) * _1756) * _3840) + ((_3878 * _217) * _3836)) * _3793;
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Converts the second offscreen in-scatter cluster's Rayleigh radiance with
          //              the spectral matrix instead of the vanilla RGB matrix, on the same rule as
          //              the cluster above: Rayleigh radiance takes the spectral conversion, the
          //              Mie artist-colour term stays on SKY_VAN_DOT, and beta is the native packed
          //              value on both arms. Each Off arm is the complete native RGB expression.
          _4047 = SKY_SCATTERING
            ? (((SKY_RAY_INSCATTER(0, _4000, _4001, _4002, _3770, _3773, _3775, _4019) + SKY_VAN_DOT(0, _4000, _4001, _4002) * (_4040 + _4030 * _mieScatterColor.x) + (_3965 * _1147)) * _406) + _383)
            : (((((_4040 + (_3770 * _4019)) + (_4030 * _mieScatterColor.x)) * (((_4001 * 0.33951f) + (_4000 * 0.61312f)) + (_4002 * 0.04737f))) + (_3965 * _1147)) * _406) + _383;
          _4054 = SKY_SCATTERING
            ? (((SKY_RAY_INSCATTER(1, _4000, _4001, _4002, _3770, _3773, _3775, _4019) + SKY_VAN_DOT(1, _4000, _4001, _4002) * (_4040 + _4030 * _mieScatterColor.y) + (_3973 * _1148)) * _406) + _382)
            : (((((_4040 + (_3773 * _4019)) + (_4030 * _mieScatterColor.y)) * (((_4001 * 0.91636f) + (_4000 * 0.0702f)) + (_4002 * 0.01345f))) + (_3973 * _1148)) * _406) + _382;
          _4061 = SKY_SCATTERING
            ? (((SKY_RAY_INSCATTER(2, _4000, _4001, _4002, _3770, _3773, _3775, _4019) + SKY_VAN_DOT(2, _4000, _4001, _4002) * (_4040 + _4030 * _mieScatterColor.z) + (_3981 * _1149)) * _406) + _381)
            : (((((_4040 + (_3775 * _4019)) + (_4030 * _mieScatterColor.z)) * (((_4001 * 0.10958f) + (_4000 * 0.02062f)) + (_4002 * 0.8698f))) + (_3981 * _1149)) * _406) + _381;
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          if (_3748 > 0.001f) {
            _4065 = _cloudPhaseConstFront * 0.5f;
            _4066 = _4065 * _4065;
            _4082 = _3793 * ((_3667 * 0.2f) + _3762);
            _4083 = _4082 + _3784;
            _4090 = exp2((_3796 + _4083) * -1.442695f);
            _4091 = exp2((_3800 + _4083) * -1.442695f);
            _4092 = exp2((_3803 + _4083) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
            //              probe shader passes isProbe=true, so reddening is additionally attenuated to
            //              0.25x because its output feeds the GI cubemap and full-strength reddening
            //              oversaturates indirect lighting. If any condition fails the factor is
            //              exactly 1.0 and the multiplies are bit-exact no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor4 = CloudReddeningFactor(_4082, _dawnDuskFactor, true);
            _4090 *= 1.f;                // R unchanged
            _4091 *= _cloudRedFactor4;   // G attenuated
            _4092 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _4110 = ((((1.0f - _4066) * 3.0f) / ((_4066 + 2.0f) * 2.0f)) * 0.07957747f) * ((_406 * 51.2f) * _3748);
            _4112 = _3836 * _3793;
            _4113 = _4112 * (_4110 * (_173 / exp2(log2((1.0f - (_cloudPhaseConstFront * _163)) + _4066) * 1.5f)));
            _4127 = _4082 + _3989;
            _4134 = exp2((_3990 + _4127) * -1.442695f);
            _4135 = exp2((_3993 + _4127) * -1.442695f);
            _4136 = exp2((_3995 + _4127) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
            //              probe shader passes isProbe=true, so reddening is additionally attenuated to
            //              0.25x because its output feeds the GI cubemap and full-strength reddening
            //              oversaturates indirect lighting. If any condition fails the factor is
            //              exactly 1.0 and the multiplies are bit-exact no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor5 = CloudReddeningFactor(_4082, _dawnDuskFactor, true);
            _4134 *= 1.f;                // R unchanged
            _4135 *= _cloudRedFactor5;   // G attenuated
            _4136 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _4153 = _4112 * (_4110 * (_209 / exp2(log2((1.0f - (_cloudPhaseConstFront * _207)) + _4066) * 1.5f)));
            _4161 = ((_4113 * (((_4091 * 0.33951f) + (_4090 * 0.61312f)) + (_4092 * 0.04737f))) + _3970);
            _4162 = ((_4113 * (((_4091 * 0.91636f) + (_4090 * 0.0702f)) + (_4092 * 0.01345f))) + _3978);
            _4163 = ((_4113 * (((_4091 * 0.10958f) + (_4090 * 0.02062f)) + (_4092 * 0.8698f))) + _3986);
            _4164 = ((_4153 * (((_4135 * 0.33951f) + (_4134 * 0.61312f)) + (_4136 * 0.04737f))) + _4047);
            _4165 = ((_4153 * (((_4135 * 0.91636f) + (_4134 * 0.0702f)) + (_4136 * 0.01345f))) + _4054);
            _4166 = ((_4153 * (((_4135 * 0.10958f) + (_4134 * 0.02062f)) + (_4136 * 0.8698f))) + _4061);
          } else {
            _4161 = _3970;
            _4162 = _3978;
            _4163 = _3986;
            _4164 = _4047;
            _4165 = _4054;
            _4166 = _4061;
          }
          _4167 = saturate(((float)((int)((int)(((float)((uint)((uint)(_1005)))) * 0.33f)))) + _116) * _precomputedAmbient7.y;
          _4180 = _399;
          _4181 = select(_1000, _1002, 0);
          _4182 = _1005;
          _4183 = _4164;
          _4184 = _4165;
          _4185 = _4166;
          _4186 = (((((_precomputedAmbients[48].x) * _406) * (_3891 + (_3826 * _3782))) + _380) + (_4161 * _4167));
          _4187 = (((((_precomputedAmbients[48].y) * _406) * (_3894 + (_3827 * _3782))) + _379) + (_4162 * _4167));
          _4188 = (((((_precomputedAmbients[48].z) * _406) * (_3897 + (_3828 * _3782))) + _378) + (_4163 * _4167));
          _4189 = _3758;
          _4190 = _3759;
          _4191 = _3760;
          _4192 = _3761;
          _4193 = _1168;
          _4194 = _1169;
          _4195 = _3748;
          _4196 = _1756;
          _4197 = ((int)(uint)(_1017));
          _4198 = ((int)(uint)((int)(exp2((_3762 * -1.442695f) * _3793) < 0.001f)));
        }
        _4199 = (uint)((uint)(_4182)) + (uint)(1);
        if ((((uint)_4199 < (uint)64) && (_4197 != 0)) && (_4198 == 0)) {
          _369 = _4197;
          _370 = _4196;
          _371 = _4195;
          _372 = _4194;
          _373 = _4193;
          _374 = _4192;
          _375 = _4191;
          _376 = _4190;
          _377 = _4189;
          _378 = _4188;
          _379 = _4187;
          _380 = _4186;
          _381 = _4185;
          _382 = _4184;
          _383 = _4183;
          _384 = _4199;
          _385 = _4181;
          _386 = _4180;
          continue;
        }
        _4207 = select((_4198 != 0), 1e+06f, _4191);
        _4212 = _cloudCirrusAltitude + _earthRadius;
        _4216 = _143 - ((_140 - (_4212 * _4212)) * _144);
        if (!(_4216 < 0.0f)) {
          _4224 = ((sqrt(_4216) - _139) / (_137 * 2.0f));
        } else {
          _4224 = -1.0f;
        }
        _4228 = _143 - ((_140 - (_earthRadius * _earthRadius)) * _144);
        if (!(_4228 < 0.0f)) {
          _4236 = ((sqrt(_4228) - _139) / (_137 * 2.0f));
        } else {
          _4236 = -1.0f;
        }
        if ((_4224 >= 0.0f) && (_4236 <= 0.0f)) {
          _4242 = _cloudCirrusScale * 5e-05f;
          _4243 = _4224 * _103;
          _4245 = _4224 * _105;
          _4246 = _4243 + _viewPos.x;
          _4247 = (_4224 * _104) + _viewPos.y;
          _4248 = _4245 + _viewPos.z;
          _4256 = (_4246 * _4242) - (_cloudScroll.y * 0.0003f);
          _4257 = (_4248 * _4242) - (_cloudScroll.x * 0.0003f);
          // [sem: _3__36__0__0__g_texCirrus_SampleBias]
          _4261 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_4256, _4257), -1.0f, int2(0, 0));
          _33[0] = _4261.x;
          _33[1] = _4261.y;
          _33[2] = _4261.z;
          _33[3] = _4261.w;
          _4273 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
          _4277 = sqrt((_4243 * _4243) + (_4245 * _4245));
          if (!(_4277 > _4273)) {
            _4285 = (1.0f - cos((1.5707964f / _4273) * _4277));
          } else {
            _4285 = 1.0f;
          }
          _4286 = _4285 * _cloudCirrusDensity;
          _33[0] = ((_4261.x * _cloudCirrusWeightR) * _4286);
          _33[1] = ((_4286 * _4261.y) * _cloudCirrusWeightG);
          _33[2] = ((_4286 * _4261.z) * _cloudCirrusWeightB);
          _4315 = ((((sin(mad(_4257, -0.6f, (_4256 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_4257, 0.8f, (_4256 * 0.6f)) * 3.03f)) + ((sin(_4256 * 1.5f) * 0.5f) * sin(_4257 * 1.5f))) * 1.6000001f) + 1.5f;
          _4318 = (int)(min(max(_4315, 0.0f), 2.0f));
          _4327 = _33[min((uint)(_4318), 3u)];
          _4330 = (((_33[min((uint)(((int)((int)(_4318) + (int)(1)) % (int)(3))), 3u)]) - _4327) * saturate(_4315 - ((float)((int)(_4318))))) + _4327;
          _4331 = _4247 + _earthRadius;
          _4332 = _4246 * _4246;
          _4334 = _4248 * _4248;
          _4335 = _4334 + _4332;
          _4337 = sqrt(_4335 + (_4331 * _4331));
          _4338 = _4246 / _4337;
          _4339 = _4331 / _4337;
          _4340 = _4248 / _4337;
          _4341 = _4337 - _earthRadius;
          if (_4341 > 0.0f) {
            _4344 = dot(float3(_4338, _4339, _4340), float3(_103, _104, _105));
            _4354 = min(max(_4341, 16.0f), (_atmosphereThickness + -16.0f));
            _4362 = max(_4354, 0.0f);
            _4369 = (-0.0f - sqrt((_4362 + (_earthRadius * 2.0f)) * _4362)) / (_4362 + _earthRadius);
            _4370 = (_4344 > _4369);
            if (_4370) {
              _4392 = ((exp2(log2(saturate((_4344 - _4369) / (1.0f - _4369))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4392 = ((exp2(log2(saturate((_4369 - _4344) / (_4369 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4394 = (exp2(log2(saturate((_4354 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _4402 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4394, _4392, ((1.0f - exp2(-1.1541561f - (dot(float3(_4338, _4339, _4340), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            if (_4370) {
              _4432 = ((exp2(log2(saturate((_4344 - _4369) / (1.0f - _4369))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4432 = ((exp2(log2(saturate((_4369 - _4344) / (_4369 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _4438 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4394, _4432, ((1.0f - exp2(-1.1541561f - (dot(float3(_4338, _4339, _4340), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            _4446 = _4402.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4447 = _4402.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4448 = _4402.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4449 = (_4438.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4450 = (_4438.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4451 = (_4438.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          } else {
            _4446 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4447 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4448 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4449 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4450 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4451 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          }
          _4460 = max(_4341, 0.01f);
          _4461 = -0.0f - _4460;
          _4470 = exp2((_4461 / _rayleighScaledHeight) * 1.442695f);
          _4471 = exp2((_4461 / _mieScaledHeight) * 1.442695f);
          _4475 = _4246 - _viewPos.x;
          _4476 = _4248 - _viewPos.z;
          _4479 = (_4475 * _4475) + (_4476 * _4476);
          _4480 = sqrt(_4479);
          _4486 = max(((_4480 * _4480) + -400000.0f), 0.0f) * 1e-06f;
          _4487 = _cloudAltitude - _4486;
          _4490 = _cloudDetailScale * 0.004f;
          _4493 = _cloudBaseScale * 0.0004f;
          _4496 = _4247 + _earthRadius;
          _4503 = (((-0.0f - _earthRadius) - _4487) + sqrt(_4335 + (_4496 * _4496))) / _cloudThickness;
          if (!((_4503 < 0.0f) || (_4503 > 1.0f))) {
            _4526 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
            _4527 = _4247 - _4487;
            _4541 = _4490 / _4493;
            _4542 = _4541 * _4493;
            _4544 = _4541 * _4526;
            _4560 = (4.0f - (saturate(max((_4480 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _4564 = _4542 * 4.355f;
            _4581 = 1.0f - sqrt(saturate((1.0f - _4503) * 1.4285715f));
            _4599 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4490 * _4246) - (_4542 * _cloudScroll.x)), ((_4527 * _4490) - _4544), ((_4490 * _4248) - (_4542 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4560 * _4246) - (_4564 * _cloudScroll.x)), ((_4560 * _4527) - (_4544 * 4.355f)), ((_4560 * _4248) - (_4564 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_4503 * 4.0f) * 0.8f) + 0.2f);
            _4606 = (saturate(((saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_4493 * (_4246 - _cloudScroll.x)), ((_4493 * _4527) - _4526), (_4493 * (_4248 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_4581 * 0.5f), ((_4581 * _4581) * _4581))) * saturate(_4503 * 10.0f)) - _4599) / (1.0f - _4599)) * _cloudAlpha);
          } else {
            _4606 = 0.0f;
          }
          if (_cloudFadeRange > 1e-05f) {
            _4618 = saturate((((1.0f - _cloudNear) * _4480) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _4618 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_358 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _4629 = 0.0f;
            _4630 = 0;
            while(true) {
              _4994 = _4629;
              if (!((((int)((uint)(1) << (_4630 & 31))) & _358) == 0)) {
                _4638 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[0].x;
                _4639 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[1].x;
                _4640 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[2].x;
                _4642 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[0].y;
                _4643 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[1].y;
                _4644 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[2].y;
                _4646 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[0].z;
                _4647 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[1].z;
                _4648 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[2].z;
                _4650 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[0].w;
                _4651 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[1].w;
                _4652 = __3__37__0__0__g_cloudDensityVolumes[_4630]._relativeWorldToLocal[2].w;
                _4654 = __3__37__0__0__g_cloudDensityVolumes[_4630]._shapeParameter.x;
                _4655 = __3__37__0__0__g_cloudDensityVolumes[_4630]._shapeParameter.z;
                _4656 = __3__37__0__0__g_cloudDensityVolumes[_4630]._shapeParameter.w;
                _4658 = __3__37__0__0__g_cloudDensityVolumes[_4630]._macroNoiseParameter.x;
                _4659 = __3__37__0__0__g_cloudDensityVolumes[_4630]._macroNoiseParameter.y;
                _4660 = __3__37__0__0__g_cloudDensityVolumes[_4630]._macroNoiseParameter.z;
                _4661 = __3__37__0__0__g_cloudDensityVolumes[_4630]._macroNoiseParameter.w;
                _4663 = __3__37__0__0__g_cloudDensityVolumes[_4630]._detailNoiseParameter.x;
                _4664 = __3__37__0__0__g_cloudDensityVolumes[_4630]._detailNoiseParameter.y;
                _4665 = __3__37__0__0__g_cloudDensityVolumes[_4630]._detailNoiseParameter.z;
                _4666 = __3__37__0__0__g_cloudDensityVolumes[_4630]._detailNoiseParameter.w;
                _4668 = __3__37__0__0__g_cloudDensityVolumes[_4630]._modeParameter.x;
                _4669 = __3__37__0__0__g_cloudDensityVolumes[_4630]._modeParameter.y;
                _4671 = __3__37__0__0__g_cloudDensityVolumes[_4630]._vortexParameter.x;
                _4672 = __3__37__0__0__g_cloudDensityVolumes[_4630]._vortexParameter.y;
                _4673 = __3__37__0__0__g_cloudDensityVolumes[_4630]._vortexParameter.z;
                _4674 = __3__37__0__0__g_cloudDensityVolumes[_4630]._vortexParameter.w;
                _4676 = __3__37__0__0__g_cloudDensityVolumes[_4630]._spiralParameter.x;
                _4677 = __3__37__0__0__g_cloudDensityVolumes[_4630]._spiralParameter.y;
                _4678 = __3__37__0__0__g_cloudDensityVolumes[_4630]._spiralParameter.z;
                _4679 = __3__37__0__0__g_cloudDensityVolumes[_4630]._spiralParameter.w;
                _4681 = __3__37__0__0__g_cloudDensityVolumes[_4630]._animationParameter.x;
                _4682 = __3__37__0__0__g_cloudDensityVolumes[_4630]._animationParameter.y;
                _4683 = __3__37__0__0__g_cloudDensityVolumes[_4630]._animationParameter.z;
                _4684 = __3__37__0__0__g_cloudDensityVolumes[_4630]._animationParameter.w;
                _4686 = __3__37__0__0__g_cloudDensityVolumes[_4630]._flowParameter.x;
                _4687 = __3__37__0__0__g_cloudDensityVolumes[_4630]._flowParameter.y;
                _4688 = __3__37__0__0__g_cloudDensityVolumes[_4630]._flowParameter.z;
                _4690 = __3__37__0__0__g_cloudDensityVolumes[_4630]._tornadoParameter.x;
                _4691 = __3__37__0__0__g_cloudDensityVolumes[_4630]._tornadoParameter.y;
                _4692 = __3__37__0__0__g_cloudDensityVolumes[_4630]._tornadoParameter.z;
                _4693 = __3__37__0__0__g_cloudDensityVolumes[_4630]._tornadoParameter.w;
                _4697 = mad(_4646, _4248, mad(_4642, _4247, (_4638 * _4246))) + _4650;
                _4701 = mad(_4647, _4248, mad(_4643, _4247, (_4639 * _4246))) + _4651;
                _4705 = mad(_4648, _4248, mad(_4644, _4247, (_4640 * _4246))) + _4652;
                _4707 = abs(_4701);
                _4713 = max((abs(_4697) + -0.5f), max((_4707 + -0.5f), (abs(_4705) + -0.5f)));
                if (!(_4713 >= 0.0f)) {
                  _4716 = __3__37__0__0__g_cloudDensityVolumes[_4630]._shapeParameter.y;
                  _4719 = max((saturate(_4716) * 0.5f), 0.0001f);
                  _4722 = saturate((_4719 + _4713) / _4719);  // [sem: expr_sat]
                  _4727 = 1.0f - ((_4722 * _4722) * (3.0f - (_4722 * 2.0f)));
                  if (!(_4727 <= 0.0f)) {
                    _4736 = sqrt((_4705 * _4705) + (_4697 * _4697)) * 2.0f;
                    _4740 = saturate(1.0f - (_4736 / max(_4672, 0.0001f)));  // [sem: expr_sat]
                    _4741 = _time.x * _4684;
                    _4742 = (_4668 == 1);
                    _4743 = (_4668 == 2);
                    if (_4742) {
                      _4820 = exp2(log2(_4740) * max(_4679, 0.0001f));
                      _4822 = max(_4678, 0.0001f);
                      _4826 = _4701 / (((max(_4677, 0.0001f) - _4822) * _4820) + _4822);
                      _4833 = (((_4740 * _4740) * _4671) * ((_4736 * _4673) + _4701)) - (_4740 * _4741);
                      _4834 = sin(_4833);
                      _4835 = cos(_4833);
                      _4838 = (_4835 * _4697) - (_4834 * _4705);
                      _4841 = (_4835 * _4705) + (_4834 * _4697);
                      if (_4743) {
                        _4843 = 0.0f;
                        _4844 = 1.0f;
                        _4845 = _4820;
                        _4846 = _4740;
                        _4847 = _4838;
                        _4848 = _4826;
                        _4849 = _4841;
                        _4869 = _4844;
                        _4870 = _4845;
                        _4871 = _4846;
                        _4872 = _4847;
                        _4873 = _4848;
                        _4874 = _4849;
                        _4875 = max(_4843, ((_4707 * 2.0f) + -1.0f));
                      } else {
                        _4854 = _4820;
                        _4855 = _4838;
                        _4856 = _4826;
                        _4857 = _4841;
                        _4858 = _4855 * 2.0f;
                        _4859 = _4856 * 2.0f;
                        _4860 = _4857 * 2.0f;
                        _4869 = 1.0f;
                        _4870 = _4854;
                        _4871 = _4740;
                        _4872 = _4855;
                        _4873 = _4856;
                        _4874 = _4857;
                        _4875 = (sqrt(((_4859 * _4859) + (_4858 * _4858)) + (_4860 * _4860)) + -1.0f);
                      }
                    } else {
                      if (_4743) {
                        _4747 = saturate(_4701 + 0.5f);  // [sem: expr_sat]
                        _4753 = max(_4690, 0.0001f);
                        _4756 = ((max(_4691, 0.0001f) - _4753) * exp2(log2(_4747) * max(_4692, 0.0001f))) + _4753;
                        _4758 = atan(_4705 / _4697);
                        _4761 = (_4697 < 0.0f);
                        _4762 = (_4697 == 0.0f);
                        _4763 = (_4705 >= 0.0f);
                        _4764 = (_4705 < 0.0f);
                        _4774 = max(((float)((uint)((uint)(_4669)))), 1.0f);
                        _4775 = _4747 * _4673;
                        _4786 = _4756 * _4666;
                        _4788 = max((_4756 - _4786), 0.0f);
                        _4789 = _4736 - _4788;
                        _4790 = _4788 * (acos(min(max(cos(((((_4775 * -6.2831855f) - _4741) + select((_4762 && _4763), 1.5707964f, select((_4762 && _4764), -1.5707964f, select((_4761 && _4764), (_4758 + -3.1415927f), select((_4761 && _4763), (_4758 + 3.1415927f), _4758))))) * _4774) + _4676), -1.0f), 1.0f)) / _4774);
                        _4795 = _4736 - _4756;
                        _4804 = saturate(1.0f - (_4736 / _4756));  // [sem: expr_sat]
                        _4807 = ((_4804 + _4775) * _4671) - _4741;
                        _4808 = sin(_4807);
                        _4809 = cos(_4807);
                        _4843 = ((saturate(_4674) * (((-0.0f - _4795) - _4786) + sqrt((_4789 * _4789) + (_4790 * _4790)))) + _4795);
                        _4844 = _4756;
                        _4845 = 0.0f;
                        _4846 = _4804;
                        _4847 = ((_4809 * _4697) - (_4808 * _4705));
                        _4848 = _4701;
                        _4849 = ((_4809 * _4705) + (_4808 * _4697));
                        _4869 = _4844;
                        _4870 = _4845;
                        _4871 = _4846;
                        _4872 = _4847;
                        _4873 = _4848;
                        _4874 = _4849;
                        _4875 = max(_4843, ((_4707 * 2.0f) + -1.0f));
                      } else {
                        _4854 = 0.0f;
                        _4855 = _4697;
                        _4856 = _4701;
                        _4857 = _4705;
                        _4858 = _4855 * 2.0f;
                        _4859 = _4856 * 2.0f;
                        _4860 = _4857 * 2.0f;
                        _4869 = 1.0f;
                        _4870 = _4854;
                        _4871 = _4740;
                        _4872 = _4855;
                        _4873 = _4856;
                        _4874 = _4857;
                        _4875 = (sqrt(((_4859 * _4859) + (_4858 * _4858)) + (_4860 * _4860)) + -1.0f);
                      }
                    }
                    if (_4659 > 0.0f) {
                      _4878 = _time.x * _4682;
                      _4882 = max(_4658, 0.0001f);
                      _4900 = (_4875 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_4878 * _4686) + _4660) + (_4882 * _4872)), (((_4878 * _4687) + _4661) + (_4882 * _4873)), (((_4878 * _4688) + _4665) + (_4882 * _4874))), 0.0f)).x) + -0.5f) * _4659));
                    } else {
                      _4900 = _4875;
                    }
                    if (_4742 && (_4674 > 0.0f)) {
                      _4905 = atan(_4705 / _4697);
                      _4908 = (_4697 < 0.0f);
                      _4909 = (_4697 == 0.0f);
                      _4910 = (_4705 >= 0.0f);
                      _4911 = (_4705 < 0.0f);
                      _4933 = (_4900 - (((_4674 * 0.5f) * _4871) * cos(((((_4736 * _4673) - _4741) + select((_4909 && _4910), 1.5707964f, select((_4909 && _4911), -1.5707964f, select((_4908 && _4911), (_4905 + -3.1415927f), select((_4908 && _4910), (_4905 + 3.1415927f), _4905))))) * max(((float)((uint)((uint)(_4669)))), 1.0f)) + _4676)));
                    } else {
                      _4933 = _4900;
                    }
                    if (_4743 && (_4693 > 0.0f)) {
                      _4941 = max(_4933, ((_4869 * _4693) - _4736));
                    } else {
                      _4941 = _4933;
                    }
                    _4943 = max(_4656, 0.0001f);
                    _4949 = saturate((((_4655 - (_4870 * _4681)) + _4941) + _4943) / (_4943 * 2.0f));  // [sem: expr_sat]
                    _4954 = 1.0f - ((_4949 * _4949) * (3.0f - (_4949 * 2.0f)));
                    if (!((_4954 >= 1.0f) || ((_4664 <= 0.0f) || (_4954 <= 0.0f)))) {
                      _4961 = _time.x * _4683;
                      _4965 = max(_4663, 0.0001f);
                      // [sem: expr_sat]
                      _4989 = saturate(_4954 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_4961 * _4686) + _4660) + (_4965 * _4872)), (((_4961 * _4687) + _4661) + (_4965 * _4873)), (((_4961 * _4688) + _4665) + (_4965 * _4874))), 0.0f)).x) * _4664) * saturate(1.0f - abs((_4954 * 2.0f) + -1.0f))));
                    } else {
                      _4989 = _4954;  // [sem: expr_sat]
                    }
                    _4994 = (((_4727 * _4654) * _4989) + _4629);
                  } else {
                    _4994 = _4629;
                  }
                } else {
                  _4994 = _4629;
                }
              } else {
                _4994 = _4629;
              }
              _4995 = (uint)((uint)(_4630)) + (uint)(1);
              if ((uint)_4995 < (uint)_cloudDensityVolumeInfo.x) {
                _4629 = _4994;
                _4630 = _4995;
                continue;
              }
              while(true) {
                _5000 = saturate(_4994);  // [sem: _4994_sat]
                break;
              }
              break;
            }
          } else {
            _5000 = 0.0f;  // [sem: _4994_sat]
          }
          _5004 = _4247 - _viewPos.y;
          _5007 = sqrt(_4479 + (_5004 * _5004));
          _5013 = max(1e-06f, (_heightFogScale * 0.0025f));
          _5014 = _5013 * _cloudScroll.x;
          _5015 = _5013 * _cloudScroll.y;
          _5016 = _5013 * _4246;
          _5017 = _5013 * _4247;
          _5018 = _5013 * _4248;
          // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
          _5039 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5016 * 6.393882f) - (_5014 * 1.871f)), (_5017 * 6.393882f), ((_5018 * 6.393882f) - (_5015 * 1.871f))), 0.0f);
          _5057 = ((((saturate(_5007 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5016 * 0.5127f) - _5014), (_5017 * 0.5127f), ((_5018 * 0.5127f) - _5015)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_4460 - _heightFogBaseline)))) * (((0.5f - _5039.x) * saturate((_5007 + -300.0f) * 0.0025f)) + _5039.x)) * _heightFogDensity;
          _5058 = _4247 - _cloudAltitude;
          _5060 = (_5058 + _4486) / _cloudThickness;
          _5063 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
          _5064 = select(_5063, _sunDirection.x, _moonDirection.x);
          _5065 = select(_5063, _sunDirection.y, _moonDirection.y);
          _5066 = select(_5063, _sunDirection.z, _moonDirection.z);
          _5067 = (_5065 > 0.0f);
          _5076 = ((0.5f - (((float)((int)((int)((int)(uint)(_5067)) - (int)((int)(uint)((int)(_5065 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _4487;
          if (_4247 < _4487) {
            _5079 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5064, _5065, _5066));
            _5085 = select((abs(_5079) < 1e-08f), 1e+08f, ((_5076 - dot(float3(0.0f, 1.0f, 0.0f), float3(_4246, _4247, _4248))) / _5079));
            _5091 = ((_5085 * _5064) + _4246);
            _5092 = _5076;
            _5093 = ((_5085 * _5066) + _4248);
          } else {
            _5091 = _4246;
            _5092 = _4247;
            _5093 = _4248;
          }
          _5108 = _cloudScatteringCoefficient / _distanceScale;
          _5113 = abs(_5065);
          _5115 = saturate(_5113 * 4.0f);  // [sem: expr_sat]
          _5117 = (_5115 * _5115) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_5091 - _viewPos.x) * 5e-05f) + 0.5f), ((_5092 - _cloudAltitude) / _cloudThickness), (((_5093 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _5108);
          _5123 = ((1.0f - _5117) * saturate((_5058 - _cloudThickness) * 0.1f)) + _5117;
          _5126 = -0.0f - _5108;
          _5127 = (log2(_5123) * 0.6931472f) / _5126;
          if ((saturate(_5000 + (_4618 * _4606)) > 0.001f) && ((_5000 > 0.001f) || ((_5060 >= 0.0f) && (_5060 <= 1.0f)))) {
            _5141 = (_4247 - _4487) / _cloudThickness;
            if (((_5141 >= 0.0f) && (_5141 <= 1.0f)) && (_5113 > 0.001f)) {
              _5158 = min(300.0f, (((_4487 - _4247) + select(_5067, _cloudThickness, 0.0f)) / _5065));
            } else {
              _5158 = 300.0f;
            }
            if ((_cloudDensityVolumeInfo.y & 1) == 0) {
              _5283 = 0.0f;
              _5284 = 3.4028235e+38f;
              _5285 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
            } else {
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _5170 = 0;
                _5171 = 3.4028235e+38f;
                _5172 = 0.0f;
                _5173 = 0;
                while(true) {
                  _5176 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[0].x;
                  _5177 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[1].x;
                  _5178 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[2].x;
                  _5180 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[0].y;
                  _5181 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[1].y;
                  _5182 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[2].y;
                  _5184 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[0].z;
                  _5185 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[1].z;
                  _5186 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[2].z;
                  _5188 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[0].w;
                  _5189 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[1].w;
                  _5190 = __3__37__0__0__g_cloudDensityVolumes[_5170]._relativeWorldToLocal[2].w;
                  _5194 = mad(_5184, _4248, mad(_5180, _4247, (_5176 * _4246))) + _5188;
                  _5198 = mad(_5185, _4248, mad(_5181, _4247, (_5177 * _4246))) + _5189;
                  _5202 = mad(_5186, _4248, mad(_5182, _4247, (_5178 * _4246))) + _5190;
                  _5205 = mad(_5184, _5066, mad(_5180, _5065, (_5176 * _5064)));
                  _5208 = mad(_5185, _5066, mad(_5181, _5065, (_5177 * _5064)));
                  _5211 = mad(_5186, _5066, mad(_5182, _5065, (_5178 * _5064)));
                  _5212 = abs(_5205);
                  if (!(_5212 < 1e-06f) || !(abs(_5194) > 0.5f)) {
                    _5218 = abs(_5208);
                    if (!(_5218 < 1e-06f) || !(abs(_5198) > 0.5f)) {
                      _5224 = abs(_5211);
                      if (!(_5224 < 1e-06f) || !(abs(_5202) > 0.5f)) {
                        _5239 = max(_5212, 1e-06f) * select((_5205 < 0.0f), -1.0f, 1.0f);
                        _5240 = max(_5218, 1e-06f) * select((_5208 < 0.0f), -1.0f, 1.0f);
                        _5241 = max(_5224, 1e-06f) * select((_5211 < 0.0f), -1.0f, 1.0f);
                        _5245 = (-0.5f - _5194) / _5239;
                        _5246 = (-0.5f - _5198) / _5240;
                        _5247 = (-0.5f - _5202) / _5241;
                        _5251 = (0.5f - _5194) / _5239;
                        _5252 = (0.5f - _5198) / _5240;
                        _5253 = (0.5f - _5202) / _5241;
                        _5264 = max(max(max(min(_5245, _5251), min(_5246, _5252)), min(_5247, _5253)), 0.0f);
                        _5265 = min(min(min(max(_5245, _5251), max(_5246, _5252)), max(_5247, _5253)), 3.4028235e+38f);
                        if (!(_5265 < _5264)) {
                          _5274 = min(_5171, _5264);
                          _5275 = max(_5172, _5265);
                          _5276 = ((int)(_5173) | (int)((int)((uint)(1) << (_5170 & 31))));
                        } else {
                          _5274 = _5171;
                          _5275 = _5172;
                          _5276 = _5173;
                        }
                      } else {
                        _5274 = _5171;
                        _5275 = _5172;
                        _5276 = _5173;
                      }
                    } else {
                      _5274 = _5171;
                      _5275 = _5172;
                      _5276 = _5173;
                    }
                  } else {
                    _5274 = _5171;
                    _5275 = _5172;
                    _5276 = _5173;
                  }
                  _5277 = (uint)((uint)(_5170)) + (uint)(1);
                  if ((uint)_5277 < (uint)_cloudDensityVolumeInfo.x) {
                    _5170 = _5277;
                    _5171 = _5274;
                    _5172 = _5275;
                    _5173 = _5276;
                    continue;
                  }
                  _5283 = _5274;
                  _5284 = _5275;
                  _5285 = _5276;
                  break;
                }
              } else {
                _5283 = 3.4028235e+38f;
                _5284 = 0.0f;
                _5285 = 0;
              }
            }
            _5286 = _5158 * 0.2f;
            _5290 = _5158 * 0.1f;
            _5298 = 0.0f;
            _5299 = _5286;
            _5300 = (_5286 * _5064);
            _5301 = (_5286 * _5065);
            _5302 = (_5286 * _5066);
            _5303 = _5290;
            _5304 = ((_5290 * _5064) + _4246);
            _5305 = ((_5290 * _5065) + _4247);
            _5306 = ((_5290 * _5066) + _4248);
            _5307 = 0;
            while(true) {
              _5311 = select(((_5303 >= _5283) && (_5303 <= _5284)), _5285, 0);
              _5317 = _5304 - _viewPos.x;
              _5318 = _5306 - _viewPos.z;
              _5322 = sqrt((_5317 * _5317) + (_5318 * _5318));
              _5329 = _cloudAltitude - (max(((_5322 * _5322) + -400000.0f), 0.0f) * 1e-06f);
              _5334 = _cloudDetailScale * 0.004f;
              _5337 = _cloudBaseScale * 0.0004f;
              _5342 = _earthRadius + _5305;
              _5351 = ((sqrt(((_5306 * _5306) + (_5304 * _5304)) + (_5342 * _5342)) - _5329) - _earthRadius) / _cloudThickness;
              if (!((_5351 < 0.0f) || (_5351 > 1.0f))) {
                _5394 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _5395 = _5305 - _5329;
                _5411 = _5334 / _5337;
                _5412 = _5411 * _5337;
                _5414 = _5411 * _5394;
                _5426 = saturate(max((_5322 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _5430 = (4.0f - (_5426 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _5434 = _5412 * 4.355f;
                _5453 = 1.0f - sqrt(saturate((1.0f - _5351) * 1.4285715f));
                // [sem: expr_sat]
                _5469 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_5304 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5306 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5337 * (_5304 - _cloudScroll.x)), ((_5337 * _5395) - _5394), (_5337 * (_5306 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5453 * 0.5f), ((_5453 * _5453) * _5453))) * saturate(_5351 * 10.0f);
                _5472 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5430 * _5304) - (_5434 * _cloudScroll.x)), ((_5430 * _5395) - (_5414 * 4.355f)), ((_5430 * _5306) - (_5434 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5334 * _5304) - (_5412 * _cloudScroll.x)), ((_5334 * _5395) - _5414), ((_5334 * _5306) - (_5412 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_5351 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                _5473 = _5472 * ((_5426 * 0.4f) + 0.1f);
                _5485 = (saturate((_5469 - _5472) / (1.0f - _5472)) * _cloudAlpha);
                _5486 = (saturate((_5469 - _5473) / (1.0f - _5473)) * _cloudAlpha);
              } else {
                _5485 = 0.0f;
                _5486 = 0.0f;
              }
              if (!((_5311 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                _5496 = 0.0f;
                _5497 = 0;
                while(true) {
                  _5862 = _5496;
                  if (!((((int)((uint)(1) << (_5497 & 31))) & _5311) == 0)) {
                    _5505 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[0].x;
                    _5506 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[1].x;
                    _5507 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[2].x;
                    _5509 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[0].y;
                    _5510 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[1].y;
                    _5511 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[2].y;
                    _5513 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[0].z;
                    _5514 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[1].z;
                    _5515 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[2].z;
                    _5517 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[0].w;
                    _5518 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[1].w;
                    _5519 = __3__37__0__0__g_cloudDensityVolumes[_5497]._relativeWorldToLocal[2].w;
                    _5521 = __3__37__0__0__g_cloudDensityVolumes[_5497]._shapeParameter.x;
                    _5522 = __3__37__0__0__g_cloudDensityVolumes[_5497]._shapeParameter.z;
                    _5523 = __3__37__0__0__g_cloudDensityVolumes[_5497]._shapeParameter.w;
                    _5525 = __3__37__0__0__g_cloudDensityVolumes[_5497]._macroNoiseParameter.x;
                    _5526 = __3__37__0__0__g_cloudDensityVolumes[_5497]._macroNoiseParameter.y;
                    _5527 = __3__37__0__0__g_cloudDensityVolumes[_5497]._macroNoiseParameter.z;
                    _5528 = __3__37__0__0__g_cloudDensityVolumes[_5497]._macroNoiseParameter.w;
                    _5530 = __3__37__0__0__g_cloudDensityVolumes[_5497]._detailNoiseParameter.x;
                    _5531 = __3__37__0__0__g_cloudDensityVolumes[_5497]._detailNoiseParameter.y;
                    _5532 = __3__37__0__0__g_cloudDensityVolumes[_5497]._detailNoiseParameter.z;
                    _5533 = __3__37__0__0__g_cloudDensityVolumes[_5497]._detailNoiseParameter.w;
                    _5535 = __3__37__0__0__g_cloudDensityVolumes[_5497]._modeParameter.x;
                    _5536 = __3__37__0__0__g_cloudDensityVolumes[_5497]._modeParameter.y;
                    _5538 = __3__37__0__0__g_cloudDensityVolumes[_5497]._vortexParameter.x;
                    _5539 = __3__37__0__0__g_cloudDensityVolumes[_5497]._vortexParameter.y;
                    _5540 = __3__37__0__0__g_cloudDensityVolumes[_5497]._vortexParameter.z;
                    _5541 = __3__37__0__0__g_cloudDensityVolumes[_5497]._vortexParameter.w;
                    _5543 = __3__37__0__0__g_cloudDensityVolumes[_5497]._spiralParameter.x;
                    _5544 = __3__37__0__0__g_cloudDensityVolumes[_5497]._spiralParameter.y;
                    _5545 = __3__37__0__0__g_cloudDensityVolumes[_5497]._spiralParameter.z;
                    _5546 = __3__37__0__0__g_cloudDensityVolumes[_5497]._spiralParameter.w;
                    _5548 = __3__37__0__0__g_cloudDensityVolumes[_5497]._animationParameter.x;
                    _5549 = __3__37__0__0__g_cloudDensityVolumes[_5497]._animationParameter.y;
                    _5550 = __3__37__0__0__g_cloudDensityVolumes[_5497]._animationParameter.z;
                    _5551 = __3__37__0__0__g_cloudDensityVolumes[_5497]._animationParameter.w;
                    _5553 = __3__37__0__0__g_cloudDensityVolumes[_5497]._flowParameter.x;
                    _5554 = __3__37__0__0__g_cloudDensityVolumes[_5497]._flowParameter.y;
                    _5555 = __3__37__0__0__g_cloudDensityVolumes[_5497]._flowParameter.z;
                    _5557 = __3__37__0__0__g_cloudDensityVolumes[_5497]._tornadoParameter.x;
                    _5558 = __3__37__0__0__g_cloudDensityVolumes[_5497]._tornadoParameter.y;
                    _5559 = __3__37__0__0__g_cloudDensityVolumes[_5497]._tornadoParameter.z;
                    _5560 = __3__37__0__0__g_cloudDensityVolumes[_5497]._tornadoParameter.w;
                    _5564 = mad(_5513, _5306, mad(_5509, _5305, (_5505 * _5304))) + _5517;
                    _5568 = mad(_5514, _5306, mad(_5510, _5305, (_5506 * _5304))) + _5518;
                    _5572 = mad(_5515, _5306, mad(_5511, _5305, (_5507 * _5304))) + _5519;
                    _5574 = abs(_5568);
                    _5580 = max((abs(_5564) + -0.5f), max((_5574 + -0.5f), (abs(_5572) + -0.5f)));
                    if (!(_5580 >= 0.0f)) {
                      _5583 = __3__37__0__0__g_cloudDensityVolumes[_5497]._shapeParameter.y;
                      _5586 = max((saturate(_5583) * 0.5f), 0.0001f);
                      _5589 = saturate((_5586 + _5580) / _5586);  // [sem: expr_sat]
                      _5594 = 1.0f - ((_5589 * _5589) * (3.0f - (_5589 * 2.0f)));
                      if (!(_5594 <= 0.0f)) {
                        _5603 = sqrt((_5572 * _5572) + (_5564 * _5564)) * 2.0f;
                        _5607 = saturate(1.0f - (_5603 / max(_5539, 0.0001f)));  // [sem: expr_sat]
                        _5608 = _time.x * _5551;
                        _5609 = (_5535 == 1);
                        _5610 = (_5535 == 2);
                        if (_5609) {
                          _5687 = exp2(log2(_5607) * max(_5546, 0.0001f));
                          _5689 = max(_5545, 0.0001f);
                          _5693 = _5568 / (((max(_5544, 0.0001f) - _5689) * _5687) + _5689);
                          _5700 = (((_5607 * _5607) * _5538) * ((_5603 * _5540) + _5568)) - (_5607 * _5608);
                          _5701 = sin(_5700);
                          _5702 = cos(_5700);
                          _5705 = (_5702 * _5564) - (_5701 * _5572);
                          _5708 = (_5702 * _5572) + (_5701 * _5564);
                          if (_5610) {
                            _5710 = 0.0f;
                            _5711 = 1.0f;
                            _5712 = _5687;
                            _5713 = _5607;
                            _5714 = _5705;
                            _5715 = _5693;
                            _5716 = _5708;
                            _5736 = _5711;
                            _5737 = _5712;
                            _5738 = _5713;
                            _5739 = _5714;
                            _5740 = _5715;
                            _5741 = _5716;
                            _5742 = max(_5710, ((_5574 * 2.0f) + -1.0f));
                          } else {
                            _5721 = _5687;
                            _5722 = _5705;
                            _5723 = _5693;
                            _5724 = _5708;
                            _5725 = _5722 * 2.0f;
                            _5726 = _5723 * 2.0f;
                            _5727 = _5724 * 2.0f;
                            _5736 = 1.0f;
                            _5737 = _5721;
                            _5738 = _5607;
                            _5739 = _5722;
                            _5740 = _5723;
                            _5741 = _5724;
                            _5742 = (sqrt(((_5726 * _5726) + (_5725 * _5725)) + (_5727 * _5727)) + -1.0f);
                          }
                        } else {
                          if (_5610) {
                            _5614 = saturate(_5568 + 0.5f);  // [sem: expr_sat]
                            _5620 = max(_5557, 0.0001f);
                            _5623 = ((max(_5558, 0.0001f) - _5620) * exp2(log2(_5614) * max(_5559, 0.0001f))) + _5620;
                            _5625 = atan(_5572 / _5564);
                            _5628 = (_5564 < 0.0f);
                            _5629 = (_5564 == 0.0f);
                            _5630 = (_5572 >= 0.0f);
                            _5631 = (_5572 < 0.0f);
                            _5641 = max(((float)((uint)((uint)(_5536)))), 1.0f);
                            _5642 = _5614 * _5540;
                            _5653 = _5623 * _5533;
                            _5655 = max((_5623 - _5653), 0.0f);
                            _5656 = _5603 - _5655;
                            _5657 = _5655 * (acos(min(max(cos(((((_5642 * -6.2831855f) - _5608) + select((_5629 && _5630), 1.5707964f, select((_5629 && _5631), -1.5707964f, select((_5628 && _5631), (_5625 + -3.1415927f), select((_5628 && _5630), (_5625 + 3.1415927f), _5625))))) * _5641) + _5543), -1.0f), 1.0f)) / _5641);
                            _5662 = _5603 - _5623;
                            _5671 = saturate(1.0f - (_5603 / _5623));  // [sem: expr_sat]
                            _5674 = ((_5671 + _5642) * _5538) - _5608;
                            _5675 = sin(_5674);
                            _5676 = cos(_5674);
                            _5710 = ((saturate(_5541) * (((-0.0f - _5662) - _5653) + sqrt((_5656 * _5656) + (_5657 * _5657)))) + _5662);
                            _5711 = _5623;
                            _5712 = 0.0f;
                            _5713 = _5671;
                            _5714 = ((_5676 * _5564) - (_5675 * _5572));
                            _5715 = _5568;
                            _5716 = ((_5676 * _5572) + (_5675 * _5564));
                            _5736 = _5711;
                            _5737 = _5712;
                            _5738 = _5713;
                            _5739 = _5714;
                            _5740 = _5715;
                            _5741 = _5716;
                            _5742 = max(_5710, ((_5574 * 2.0f) + -1.0f));
                          } else {
                            _5721 = 0.0f;
                            _5722 = _5564;
                            _5723 = _5568;
                            _5724 = _5572;
                            _5725 = _5722 * 2.0f;
                            _5726 = _5723 * 2.0f;
                            _5727 = _5724 * 2.0f;
                            _5736 = 1.0f;
                            _5737 = _5721;
                            _5738 = _5607;
                            _5739 = _5722;
                            _5740 = _5723;
                            _5741 = _5724;
                            _5742 = (sqrt(((_5726 * _5726) + (_5725 * _5725)) + (_5727 * _5727)) + -1.0f);
                          }
                        }
                        if (_5526 > 0.0f) {
                          _5745 = _time.x * _5549;
                          _5749 = max(_5525, 0.0001f);
                          _5767 = (_5742 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5745 * _5553) + _5527) + (_5749 * _5739)), (((_5745 * _5554) + _5528) + (_5749 * _5740)), (((_5745 * _5555) + _5532) + (_5749 * _5741))), 0.0f)).x) + -0.5f) * _5526));
                        } else {
                          _5767 = _5742;
                        }
                        if (_5609 && (_5541 > 0.0f)) {
                          _5772 = atan(_5572 / _5564);
                          _5775 = (_5564 < 0.0f);
                          _5776 = (_5564 == 0.0f);
                          _5777 = (_5572 >= 0.0f);
                          _5778 = (_5572 < 0.0f);
                          _5800 = (_5767 - (((_5541 * 0.5f) * _5738) * cos(((((_5603 * _5540) - _5608) + select((_5776 && _5777), 1.5707964f, select((_5776 && _5778), -1.5707964f, select((_5775 && _5778), (_5772 + -3.1415927f), select((_5775 && _5777), (_5772 + 3.1415927f), _5772))))) * max(((float)((uint)((uint)(_5536)))), 1.0f)) + _5543)));
                        } else {
                          _5800 = _5767;
                        }
                        if (_5610 && (_5560 > 0.0f)) {
                          _5808 = max(_5800, ((_5736 * _5560) - _5603));
                        } else {
                          _5808 = _5800;
                        }
                        _5810 = max(_5523, 0.0001f);
                        _5816 = saturate((((_5522 - (_5737 * _5548)) + _5808) + _5810) / (_5810 * 2.0f));  // [sem: expr_sat]
                        _5821 = 1.0f - ((_5816 * _5816) * (3.0f - (_5816 * 2.0f)));
                        if (!((_5821 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_5531 <= 0.0f)) || (_5821 <= 0.0f)))) {
                          _5829 = _time.x * _5550;
                          _5833 = max(_5530, 0.0001f);
                          // [sem: expr_sat]
                          _5857 = saturate(_5821 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5829 * _5553) + _5527) + (_5833 * _5739)), (((_5829 * _5554) + _5528) + (_5833 * _5740)), (((_5829 * _5555) + _5532) + (_5833 * _5741))), 0.0f)).x) * _5531) * saturate(1.0f - abs((_5821 * 2.0f) + -1.0f))));
                        } else {
                          _5857 = _5821;  // [sem: expr_sat]
                        }
                        _5862 = (((_5594 * _5521) * _5857) + _5496);
                      } else {
                        _5862 = _5496;
                      }
                    } else {
                      _5862 = _5496;
                    }
                  } else {
                    _5862 = _5496;
                  }
                  _5863 = (uint)((uint)(_5497)) + (uint)(1);
                  if ((uint)_5863 < (uint)_cloudDensityVolumeInfo.x) {
                    _5496 = _5862;
                    _5497 = _5863;
                    continue;
                  }
                  while(true) {
                    _5868 = saturate(_5862);  // [sem: _5862_sat]
                    break;
                  }
                  break;
                }
              } else {
                _5868 = 0.0f;  // [sem: _5862_sat]
              }
              _5870 = saturate(_5868 + _5486);  // [sem: expr_sat]
              _5886 = (((exp2((((_5298 * -0.0072134747f) * _5299) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_5868 + _5485) - _5870)) + _5870) * _5299) + _5298;
              _5887 = _5303 + _5299;
              _5888 = _5304 + _5300;
              _5889 = _5305 + _5301;
              _5890 = _5306 + _5302;
              _5891 = _5299 * 1.3f;
              _5892 = _5300 * 1.3f;
              _5893 = _5301 * 1.3f;
              _5894 = _5302 * 1.3f;
              _5895 = (int)(_5307) + (int)(1);
              if (!(_5895 == 6)) {
                _5298 = _5886;
                _5299 = _5891;
                _5300 = _5892;
                _5301 = _5893;
                _5302 = _5894;
                _5303 = _5887;
                _5304 = _5888;
                _5305 = _5889;
                _5306 = _5890;
                _5307 = _5895;
                continue;
              }
              _5903 = ((_cloudDensityVolumeInfo.y & 2) != 0);
              // [sem: _3__36__0__0__g_climateTex2_sampleLod]
              _5923 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_4246 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_4248 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
              _5925 = _4246 + 50.0f;
              _5926 = _4247 + 200.0f;
              _5927 = _5925 - _viewPos.x;
              _5928 = _4248 - _viewPos.z;
              _5932 = sqrt((_5927 * _5927) + (_5928 * _5928));
              _5937 = _cloudAltitude - (max(((_5932 * _5932) + -400000.0f), 0.0f) * 1e-06f);
              _5938 = _earthRadius + _5926;
              _5940 = _5938 * _5938;
              _5946 = ((sqrt(((_5925 * _5925) + _4334) + _5940) - _earthRadius) - _5937) / _cloudThickness;
              if (!((_5946 < 0.0f) || (_5946 > 1.0f))) {
                _5968 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _5969 = _5926 - _5937;
                _5985 = _5334 / _5337;
                _5986 = _5985 * _5337;
                _5988 = _5985 * _5968;
                _6000 = saturate(max((_5932 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _6004 = (4.0f - (_6000 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _6008 = _5986 * 4.355f;
                _6025 = 1.0f - sqrt(saturate((1.0f - _5946) * 1.4285715f));
                _6047 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5334 * _5925) - (_5986 * _cloudScroll.x)), ((_5969 * _5334) - _5988), ((_5334 * _4248) - (_5986 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6000 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6004 * _5925) - (_6008 * _cloudScroll.x)), ((_6004 * _5969) - (_5988 * 4.355f)), ((_6004 * _4248) - (_6008 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_5946 * 4.0f) * 0.8f) + 0.2f);
                _6054 = (saturate(((saturate(saturate(((_5923.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5337 * (_5925 - _cloudScroll.x)), ((_5969 * _5337) - _5968), (_5337 * (_4248 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6025 * 0.5f), ((_6025 * _6025) * _6025))) * saturate(_5946 * 10.0f)) - _6047) / (1.0f - _6047)) * _cloudAlpha);
              } else {
                _6054 = 0.0f;
              }
              _6056 = (_cloudFadeRange > 1e-05f);
              if (_6056) {
                _6066 = saturate(((_5932 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _6066 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _6074 = 0.0f;
                _6075 = 0;
                while(true) {
                  _6438 = _6074;
                  if (!((uint)(_6075 & 16) > (uint)15)) {
                    _6081 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[0].x;
                    _6082 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[1].x;
                    _6083 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[2].x;
                    _6085 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[0].y;
                    _6086 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[1].y;
                    _6087 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[2].y;
                    _6089 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[0].z;
                    _6090 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[1].z;
                    _6091 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[2].z;
                    _6093 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[0].w;
                    _6094 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[1].w;
                    _6095 = __3__37__0__0__g_cloudDensityVolumes[_6075]._relativeWorldToLocal[2].w;
                    _6097 = __3__37__0__0__g_cloudDensityVolumes[_6075]._shapeParameter.x;
                    _6098 = __3__37__0__0__g_cloudDensityVolumes[_6075]._shapeParameter.z;
                    _6099 = __3__37__0__0__g_cloudDensityVolumes[_6075]._shapeParameter.w;
                    _6101 = __3__37__0__0__g_cloudDensityVolumes[_6075]._macroNoiseParameter.x;
                    _6102 = __3__37__0__0__g_cloudDensityVolumes[_6075]._macroNoiseParameter.y;
                    _6103 = __3__37__0__0__g_cloudDensityVolumes[_6075]._macroNoiseParameter.z;
                    _6104 = __3__37__0__0__g_cloudDensityVolumes[_6075]._macroNoiseParameter.w;
                    _6106 = __3__37__0__0__g_cloudDensityVolumes[_6075]._detailNoiseParameter.x;
                    _6107 = __3__37__0__0__g_cloudDensityVolumes[_6075]._detailNoiseParameter.y;
                    _6108 = __3__37__0__0__g_cloudDensityVolumes[_6075]._detailNoiseParameter.z;
                    _6109 = __3__37__0__0__g_cloudDensityVolumes[_6075]._detailNoiseParameter.w;
                    _6111 = __3__37__0__0__g_cloudDensityVolumes[_6075]._modeParameter.x;
                    _6112 = __3__37__0__0__g_cloudDensityVolumes[_6075]._modeParameter.y;
                    _6114 = __3__37__0__0__g_cloudDensityVolumes[_6075]._vortexParameter.x;
                    _6115 = __3__37__0__0__g_cloudDensityVolumes[_6075]._vortexParameter.y;
                    _6116 = __3__37__0__0__g_cloudDensityVolumes[_6075]._vortexParameter.z;
                    _6117 = __3__37__0__0__g_cloudDensityVolumes[_6075]._vortexParameter.w;
                    _6119 = __3__37__0__0__g_cloudDensityVolumes[_6075]._spiralParameter.x;
                    _6120 = __3__37__0__0__g_cloudDensityVolumes[_6075]._spiralParameter.y;
                    _6121 = __3__37__0__0__g_cloudDensityVolumes[_6075]._spiralParameter.z;
                    _6122 = __3__37__0__0__g_cloudDensityVolumes[_6075]._spiralParameter.w;
                    _6124 = __3__37__0__0__g_cloudDensityVolumes[_6075]._animationParameter.x;
                    _6125 = __3__37__0__0__g_cloudDensityVolumes[_6075]._animationParameter.y;
                    _6126 = __3__37__0__0__g_cloudDensityVolumes[_6075]._animationParameter.z;
                    _6127 = __3__37__0__0__g_cloudDensityVolumes[_6075]._animationParameter.w;
                    _6129 = __3__37__0__0__g_cloudDensityVolumes[_6075]._flowParameter.x;
                    _6130 = __3__37__0__0__g_cloudDensityVolumes[_6075]._flowParameter.y;
                    _6131 = __3__37__0__0__g_cloudDensityVolumes[_6075]._flowParameter.z;
                    _6133 = __3__37__0__0__g_cloudDensityVolumes[_6075]._tornadoParameter.x;
                    _6134 = __3__37__0__0__g_cloudDensityVolumes[_6075]._tornadoParameter.y;
                    _6135 = __3__37__0__0__g_cloudDensityVolumes[_6075]._tornadoParameter.z;
                    _6136 = __3__37__0__0__g_cloudDensityVolumes[_6075]._tornadoParameter.w;
                    _6140 = mad(_6089, _4248, mad(_6085, _5926, (_6081 * _5925))) + _6093;
                    _6144 = mad(_6090, _4248, mad(_6086, _5926, (_6082 * _5925))) + _6094;
                    _6148 = mad(_6091, _4248, mad(_6087, _5926, (_6083 * _5925))) + _6095;
                    _6150 = abs(_6144);
                    _6156 = max((abs(_6140) + -0.5f), max((_6150 + -0.5f), (abs(_6148) + -0.5f)));
                    if (!(_6156 >= 0.0f)) {
                      _6159 = __3__37__0__0__g_cloudDensityVolumes[_6075]._shapeParameter.y;
                      _6162 = max((saturate(_6159) * 0.5f), 0.0001f);
                      _6165 = saturate((_6162 + _6156) / _6162);  // [sem: expr_sat]
                      _6170 = 1.0f - ((_6165 * _6165) * (3.0f - (_6165 * 2.0f)));
                      if (!(_6170 <= 0.0f)) {
                        _6179 = sqrt((_6148 * _6148) + (_6140 * _6140)) * 2.0f;
                        _6183 = saturate(1.0f - (_6179 / max(_6115, 0.0001f)));  // [sem: expr_sat]
                        _6184 = _time.x * _6127;
                        _6185 = (_6111 == 1);
                        _6186 = (_6111 == 2);
                        if (_6185) {
                          _6263 = exp2(log2(_6183) * max(_6122, 0.0001f));
                          _6265 = max(_6121, 0.0001f);
                          _6269 = _6144 / (((max(_6120, 0.0001f) - _6265) * _6263) + _6265);
                          _6276 = (((_6183 * _6183) * _6114) * ((_6179 * _6116) + _6144)) - (_6183 * _6184);
                          _6277 = sin(_6276);
                          _6278 = cos(_6276);
                          _6281 = (_6278 * _6140) - (_6277 * _6148);
                          _6284 = (_6278 * _6148) + (_6277 * _6140);
                          if (_6186) {
                            _6286 = 0.0f;
                            _6287 = 1.0f;
                            _6288 = _6263;
                            _6289 = _6183;
                            _6290 = _6281;
                            _6291 = _6269;
                            _6292 = _6284;
                            _6312 = _6287;
                            _6313 = _6288;
                            _6314 = _6289;
                            _6315 = _6290;
                            _6316 = _6291;
                            _6317 = _6292;
                            _6318 = max(_6286, ((_6150 * 2.0f) + -1.0f));
                          } else {
                            _6297 = _6263;
                            _6298 = _6281;
                            _6299 = _6269;
                            _6300 = _6284;
                            _6301 = _6298 * 2.0f;
                            _6302 = _6299 * 2.0f;
                            _6303 = _6300 * 2.0f;
                            _6312 = 1.0f;
                            _6313 = _6297;
                            _6314 = _6183;
                            _6315 = _6298;
                            _6316 = _6299;
                            _6317 = _6300;
                            _6318 = (sqrt(((_6302 * _6302) + (_6301 * _6301)) + (_6303 * _6303)) + -1.0f);
                          }
                        } else {
                          if (_6186) {
                            _6190 = saturate(_6144 + 0.5f);  // [sem: expr_sat]
                            _6196 = max(_6133, 0.0001f);
                            _6199 = ((max(_6134, 0.0001f) - _6196) * exp2(log2(_6190) * max(_6135, 0.0001f))) + _6196;
                            _6201 = atan(_6148 / _6140);
                            _6204 = (_6140 < 0.0f);
                            _6205 = (_6140 == 0.0f);
                            _6206 = (_6148 >= 0.0f);
                            _6207 = (_6148 < 0.0f);
                            _6217 = max(((float)((uint)((uint)(_6112)))), 1.0f);
                            _6218 = _6190 * _6116;
                            _6229 = _6199 * _6109;
                            _6231 = max((_6199 - _6229), 0.0f);
                            _6232 = _6179 - _6231;
                            _6233 = _6231 * (acos(min(max(cos(((((_6218 * -6.2831855f) - _6184) + select((_6205 && _6206), 1.5707964f, select((_6205 && _6207), -1.5707964f, select((_6204 && _6207), (_6201 + -3.1415927f), select((_6204 && _6206), (_6201 + 3.1415927f), _6201))))) * _6217) + _6119), -1.0f), 1.0f)) / _6217);
                            _6238 = _6179 - _6199;
                            _6247 = saturate(1.0f - (_6179 / _6199));  // [sem: expr_sat]
                            _6250 = ((_6247 + _6218) * _6114) - _6184;
                            _6251 = sin(_6250);
                            _6252 = cos(_6250);
                            _6286 = ((saturate(_6117) * (((-0.0f - _6238) - _6229) + sqrt((_6232 * _6232) + (_6233 * _6233)))) + _6238);
                            _6287 = _6199;
                            _6288 = 0.0f;
                            _6289 = _6247;
                            _6290 = ((_6252 * _6140) - (_6251 * _6148));
                            _6291 = _6144;
                            _6292 = ((_6252 * _6148) + (_6251 * _6140));
                            _6312 = _6287;
                            _6313 = _6288;
                            _6314 = _6289;
                            _6315 = _6290;
                            _6316 = _6291;
                            _6317 = _6292;
                            _6318 = max(_6286, ((_6150 * 2.0f) + -1.0f));
                          } else {
                            _6297 = 0.0f;
                            _6298 = _6140;
                            _6299 = _6144;
                            _6300 = _6148;
                            _6301 = _6298 * 2.0f;
                            _6302 = _6299 * 2.0f;
                            _6303 = _6300 * 2.0f;
                            _6312 = 1.0f;
                            _6313 = _6297;
                            _6314 = _6183;
                            _6315 = _6298;
                            _6316 = _6299;
                            _6317 = _6300;
                            _6318 = (sqrt(((_6302 * _6302) + (_6301 * _6301)) + (_6303 * _6303)) + -1.0f);
                          }
                        }
                        if (_6102 > 0.0f) {
                          _6321 = _time.x * _6125;
                          _6325 = max(_6101, 0.0001f);
                          _6343 = (_6318 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6321 * _6129) + _6103) + (_6325 * _6315)), (((_6321 * _6130) + _6104) + (_6325 * _6316)), (((_6321 * _6131) + _6108) + (_6325 * _6317))), 0.0f)).x) + -0.5f) * _6102));
                        } else {
                          _6343 = _6318;
                        }
                        if (_6185 && (_6117 > 0.0f)) {
                          _6348 = atan(_6148 / _6140);
                          _6351 = (_6140 < 0.0f);
                          _6352 = (_6140 == 0.0f);
                          _6353 = (_6148 >= 0.0f);
                          _6354 = (_6148 < 0.0f);
                          _6376 = (_6343 - (((_6117 * 0.5f) * _6314) * cos(((((_6179 * _6116) - _6184) + select((_6352 && _6353), 1.5707964f, select((_6352 && _6354), -1.5707964f, select((_6351 && _6354), (_6348 + -3.1415927f), select((_6351 && _6353), (_6348 + 3.1415927f), _6348))))) * max(((float)((uint)((uint)(_6112)))), 1.0f)) + _6119)));
                        } else {
                          _6376 = _6343;
                        }
                        if (_6186 && (_6136 > 0.0f)) {
                          _6384 = max(_6376, ((_6312 * _6136) - _6179));
                        } else {
                          _6384 = _6376;
                        }
                        _6386 = max(_6099, 0.0001f);
                        _6392 = saturate((((_6098 - (_6313 * _6124)) + _6384) + _6386) / (_6386 * 2.0f));  // [sem: expr_sat]
                        _6397 = 1.0f - ((_6392 * _6392) * (3.0f - (_6392 * 2.0f)));
                        if (!((_6397 >= 1.0f) || ((_5903 || (_6107 <= 0.0f)) || (_6397 <= 0.0f)))) {
                          _6405 = _time.x * _6126;
                          _6409 = max(_6106, 0.0001f);
                          // [sem: expr_sat]
                          _6433 = saturate(_6397 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6405 * _6129) + _6103) + (_6409 * _6315)), (((_6405 * _6130) + _6104) + (_6409 * _6316)), (((_6405 * _6131) + _6108) + (_6409 * _6317))), 0.0f)).x) * _6107) * saturate(1.0f - abs((_6397 * 2.0f) + -1.0f))));
                        } else {
                          _6433 = _6397;  // [sem: expr_sat]
                        }
                        _6438 = (((_6170 * _6097) * _6433) + _6074);
                      } else {
                        _6438 = _6074;
                      }
                    } else {
                      _6438 = _6074;
                    }
                  } else {
                    _6438 = _6074;
                  }
                  _6439 = (uint)((uint)(_6075)) + (uint)(1);
                  if ((uint)_6439 < (uint)_cloudDensityVolumeInfo.x) {
                    _6074 = _6438;
                    _6075 = _6439;
                    continue;
                  }
                  while(true) {
                    _6444 = saturate(_6438);  // [sem: _6438_sat]
                    break;
                  }
                  break;
                }
              } else {
                _6444 = 0.0f;  // [sem: _6438_sat]
              }
              _6447 = _4248 + -50.0f;
              _6448 = _4246 - _viewPos.x;
              _6449 = _6447 - _viewPos.z;
              _6453 = sqrt((_6448 * _6448) + (_6449 * _6449));
              _6458 = _cloudAltitude - (max(((_6453 * _6453) + -400000.0f), 0.0f) * 1e-06f);
              _6465 = ((sqrt(((_6447 * _6447) + _4332) + _5940) - _earthRadius) - _6458) / _cloudThickness;
              if (!((_6465 < 0.0f) || (_6465 > 1.0f))) {
                _6487 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _6488 = _5926 - _6458;
                _6504 = _5334 / _5337;
                _6505 = _6504 * _5337;
                _6507 = _6504 * _6487;
                _6519 = saturate(max((_6453 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _6523 = (4.0f - (_6519 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _6527 = _6505 * 4.355f;
                _6544 = 1.0f - sqrt(saturate((1.0f - _6465) * 1.4285715f));
                _6566 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5334 * _4246) - (_6505 * _cloudScroll.x)), ((_6488 * _5334) - _6507), ((_5334 * _6447) - (_6505 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6519 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6523 * _4246) - (_6527 * _cloudScroll.x)), ((_6523 * _6488) - (_6507 * 4.355f)), ((_6523 * _6447) - (_6527 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6465 * 4.0f) * 0.8f) + 0.2f);
                _6573 = (saturate(((saturate(saturate(((_5923.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5337 * (_4246 - _cloudScroll.x)), ((_6488 * _5337) - _6487), (_5337 * (_6447 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6544 * 0.5f), ((_6544 * _6544) * _6544))) * saturate(_6465 * 10.0f)) - _6566) / (1.0f - _6566)) * _cloudAlpha);
              } else {
                _6573 = 0.0f;
              }
              if (_6056) {
                _6583 = saturate(((_6453 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _6583 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _6592 = 0.0f;
                _6593 = 0;
                while(true) {
                  _6956 = _6592;
                  if (!((uint)(_6593 & 16) > (uint)15)) {
                    _6599 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[0].x;
                    _6600 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[1].x;
                    _6601 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[2].x;
                    _6603 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[0].y;
                    _6604 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[1].y;
                    _6605 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[2].y;
                    _6607 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[0].z;
                    _6608 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[1].z;
                    _6609 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[2].z;
                    _6611 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[0].w;
                    _6612 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[1].w;
                    _6613 = __3__37__0__0__g_cloudDensityVolumes[_6593]._relativeWorldToLocal[2].w;
                    _6615 = __3__37__0__0__g_cloudDensityVolumes[_6593]._shapeParameter.x;
                    _6616 = __3__37__0__0__g_cloudDensityVolumes[_6593]._shapeParameter.z;
                    _6617 = __3__37__0__0__g_cloudDensityVolumes[_6593]._shapeParameter.w;
                    _6619 = __3__37__0__0__g_cloudDensityVolumes[_6593]._macroNoiseParameter.x;
                    _6620 = __3__37__0__0__g_cloudDensityVolumes[_6593]._macroNoiseParameter.y;
                    _6621 = __3__37__0__0__g_cloudDensityVolumes[_6593]._macroNoiseParameter.z;
                    _6622 = __3__37__0__0__g_cloudDensityVolumes[_6593]._macroNoiseParameter.w;
                    _6624 = __3__37__0__0__g_cloudDensityVolumes[_6593]._detailNoiseParameter.x;
                    _6625 = __3__37__0__0__g_cloudDensityVolumes[_6593]._detailNoiseParameter.y;
                    _6626 = __3__37__0__0__g_cloudDensityVolumes[_6593]._detailNoiseParameter.z;
                    _6627 = __3__37__0__0__g_cloudDensityVolumes[_6593]._detailNoiseParameter.w;
                    _6629 = __3__37__0__0__g_cloudDensityVolumes[_6593]._modeParameter.x;
                    _6630 = __3__37__0__0__g_cloudDensityVolumes[_6593]._modeParameter.y;
                    _6632 = __3__37__0__0__g_cloudDensityVolumes[_6593]._vortexParameter.x;
                    _6633 = __3__37__0__0__g_cloudDensityVolumes[_6593]._vortexParameter.y;
                    _6634 = __3__37__0__0__g_cloudDensityVolumes[_6593]._vortexParameter.z;
                    _6635 = __3__37__0__0__g_cloudDensityVolumes[_6593]._vortexParameter.w;
                    _6637 = __3__37__0__0__g_cloudDensityVolumes[_6593]._spiralParameter.x;
                    _6638 = __3__37__0__0__g_cloudDensityVolumes[_6593]._spiralParameter.y;
                    _6639 = __3__37__0__0__g_cloudDensityVolumes[_6593]._spiralParameter.z;
                    _6640 = __3__37__0__0__g_cloudDensityVolumes[_6593]._spiralParameter.w;
                    _6642 = __3__37__0__0__g_cloudDensityVolumes[_6593]._animationParameter.x;
                    _6643 = __3__37__0__0__g_cloudDensityVolumes[_6593]._animationParameter.y;
                    _6644 = __3__37__0__0__g_cloudDensityVolumes[_6593]._animationParameter.z;
                    _6645 = __3__37__0__0__g_cloudDensityVolumes[_6593]._animationParameter.w;
                    _6647 = __3__37__0__0__g_cloudDensityVolumes[_6593]._flowParameter.x;
                    _6648 = __3__37__0__0__g_cloudDensityVolumes[_6593]._flowParameter.y;
                    _6649 = __3__37__0__0__g_cloudDensityVolumes[_6593]._flowParameter.z;
                    _6651 = __3__37__0__0__g_cloudDensityVolumes[_6593]._tornadoParameter.x;
                    _6652 = __3__37__0__0__g_cloudDensityVolumes[_6593]._tornadoParameter.y;
                    _6653 = __3__37__0__0__g_cloudDensityVolumes[_6593]._tornadoParameter.z;
                    _6654 = __3__37__0__0__g_cloudDensityVolumes[_6593]._tornadoParameter.w;
                    _6658 = mad(_6607, _6447, mad(_6603, _5926, (_6599 * _4246))) + _6611;
                    _6662 = mad(_6608, _6447, mad(_6604, _5926, (_6600 * _4246))) + _6612;
                    _6666 = mad(_6609, _6447, mad(_6605, _5926, (_6601 * _4246))) + _6613;
                    _6668 = abs(_6662);
                    _6674 = max((abs(_6658) + -0.5f), max((_6668 + -0.5f), (abs(_6666) + -0.5f)));
                    if (!(_6674 >= 0.0f)) {
                      _6677 = __3__37__0__0__g_cloudDensityVolumes[_6593]._shapeParameter.y;
                      _6680 = max((saturate(_6677) * 0.5f), 0.0001f);
                      _6683 = saturate((_6680 + _6674) / _6680);  // [sem: expr_sat]
                      _6688 = 1.0f - ((_6683 * _6683) * (3.0f - (_6683 * 2.0f)));
                      if (!(_6688 <= 0.0f)) {
                        _6697 = sqrt((_6666 * _6666) + (_6658 * _6658)) * 2.0f;
                        _6701 = saturate(1.0f - (_6697 / max(_6633, 0.0001f)));  // [sem: expr_sat]
                        _6702 = _time.x * _6645;
                        _6703 = (_6629 == 1);
                        _6704 = (_6629 == 2);
                        if (_6703) {
                          _6781 = exp2(log2(_6701) * max(_6640, 0.0001f));
                          _6783 = max(_6639, 0.0001f);
                          _6787 = _6662 / (((max(_6638, 0.0001f) - _6783) * _6781) + _6783);
                          _6794 = (((_6701 * _6701) * _6632) * ((_6697 * _6634) + _6662)) - (_6701 * _6702);
                          _6795 = sin(_6794);
                          _6796 = cos(_6794);
                          _6799 = (_6796 * _6658) - (_6795 * _6666);
                          _6802 = (_6796 * _6666) + (_6795 * _6658);
                          if (_6704) {
                            _6804 = 0.0f;
                            _6805 = 1.0f;
                            _6806 = _6781;
                            _6807 = _6701;
                            _6808 = _6799;
                            _6809 = _6787;
                            _6810 = _6802;
                            _6830 = _6805;
                            _6831 = _6806;
                            _6832 = _6807;
                            _6833 = _6808;
                            _6834 = _6809;
                            _6835 = _6810;
                            _6836 = max(_6804, ((_6668 * 2.0f) + -1.0f));
                          } else {
                            _6815 = _6781;
                            _6816 = _6799;
                            _6817 = _6787;
                            _6818 = _6802;
                            _6819 = _6816 * 2.0f;
                            _6820 = _6817 * 2.0f;
                            _6821 = _6818 * 2.0f;
                            _6830 = 1.0f;
                            _6831 = _6815;
                            _6832 = _6701;
                            _6833 = _6816;
                            _6834 = _6817;
                            _6835 = _6818;
                            _6836 = (sqrt(((_6820 * _6820) + (_6819 * _6819)) + (_6821 * _6821)) + -1.0f);
                          }
                        } else {
                          if (_6704) {
                            _6708 = saturate(_6662 + 0.5f);  // [sem: expr_sat]
                            _6714 = max(_6651, 0.0001f);
                            _6717 = ((max(_6652, 0.0001f) - _6714) * exp2(log2(_6708) * max(_6653, 0.0001f))) + _6714;
                            _6719 = atan(_6666 / _6658);
                            _6722 = (_6658 < 0.0f);
                            _6723 = (_6658 == 0.0f);
                            _6724 = (_6666 >= 0.0f);
                            _6725 = (_6666 < 0.0f);
                            _6735 = max(((float)((uint)((uint)(_6630)))), 1.0f);
                            _6736 = _6708 * _6634;
                            _6747 = _6717 * _6627;
                            _6749 = max((_6717 - _6747), 0.0f);
                            _6750 = _6697 - _6749;
                            _6751 = _6749 * (acos(min(max(cos(((((_6736 * -6.2831855f) - _6702) + select((_6723 && _6724), 1.5707964f, select((_6723 && _6725), -1.5707964f, select((_6722 && _6725), (_6719 + -3.1415927f), select((_6722 && _6724), (_6719 + 3.1415927f), _6719))))) * _6735) + _6637), -1.0f), 1.0f)) / _6735);
                            _6756 = _6697 - _6717;
                            _6765 = saturate(1.0f - (_6697 / _6717));  // [sem: expr_sat]
                            _6768 = ((_6765 + _6736) * _6632) - _6702;
                            _6769 = sin(_6768);
                            _6770 = cos(_6768);
                            _6804 = ((saturate(_6635) * (((-0.0f - _6756) - _6747) + sqrt((_6750 * _6750) + (_6751 * _6751)))) + _6756);
                            _6805 = _6717;
                            _6806 = 0.0f;
                            _6807 = _6765;
                            _6808 = ((_6770 * _6658) - (_6769 * _6666));
                            _6809 = _6662;
                            _6810 = ((_6770 * _6666) + (_6769 * _6658));
                            _6830 = _6805;
                            _6831 = _6806;
                            _6832 = _6807;
                            _6833 = _6808;
                            _6834 = _6809;
                            _6835 = _6810;
                            _6836 = max(_6804, ((_6668 * 2.0f) + -1.0f));
                          } else {
                            _6815 = 0.0f;
                            _6816 = _6658;
                            _6817 = _6662;
                            _6818 = _6666;
                            _6819 = _6816 * 2.0f;
                            _6820 = _6817 * 2.0f;
                            _6821 = _6818 * 2.0f;
                            _6830 = 1.0f;
                            _6831 = _6815;
                            _6832 = _6701;
                            _6833 = _6816;
                            _6834 = _6817;
                            _6835 = _6818;
                            _6836 = (sqrt(((_6820 * _6820) + (_6819 * _6819)) + (_6821 * _6821)) + -1.0f);
                          }
                        }
                        if (_6620 > 0.0f) {
                          _6839 = _time.x * _6643;
                          _6843 = max(_6619, 0.0001f);
                          _6861 = (_6836 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6839 * _6647) + _6621) + (_6843 * _6833)), (((_6839 * _6648) + _6622) + (_6843 * _6834)), (((_6839 * _6649) + _6626) + (_6843 * _6835))), 0.0f)).x) + -0.5f) * _6620));
                        } else {
                          _6861 = _6836;
                        }
                        if (_6703 && (_6635 > 0.0f)) {
                          _6866 = atan(_6666 / _6658);
                          _6869 = (_6658 < 0.0f);
                          _6870 = (_6658 == 0.0f);
                          _6871 = (_6666 >= 0.0f);
                          _6872 = (_6666 < 0.0f);
                          _6894 = (_6861 - (((_6635 * 0.5f) * _6832) * cos(((((_6697 * _6634) - _6702) + select((_6870 && _6871), 1.5707964f, select((_6870 && _6872), -1.5707964f, select((_6869 && _6872), (_6866 + -3.1415927f), select((_6869 && _6871), (_6866 + 3.1415927f), _6866))))) * max(((float)((uint)((uint)(_6630)))), 1.0f)) + _6637)));
                        } else {
                          _6894 = _6861;
                        }
                        if (_6704 && (_6654 > 0.0f)) {
                          _6902 = max(_6894, ((_6830 * _6654) - _6697));
                        } else {
                          _6902 = _6894;
                        }
                        _6904 = max(_6617, 0.0001f);
                        _6910 = saturate((((_6616 - (_6831 * _6642)) + _6902) + _6904) / (_6904 * 2.0f));  // [sem: expr_sat]
                        _6915 = 1.0f - ((_6910 * _6910) * (3.0f - (_6910 * 2.0f)));
                        if (!((_6915 >= 1.0f) || ((_5903 || (_6625 <= 0.0f)) || (_6915 <= 0.0f)))) {
                          _6923 = _time.x * _6644;
                          _6927 = max(_6624, 0.0001f);
                          // [sem: expr_sat]
                          _6951 = saturate(_6915 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6923 * _6647) + _6621) + (_6927 * _6833)), (((_6923 * _6648) + _6622) + (_6927 * _6834)), (((_6923 * _6649) + _6626) + (_6927 * _6835))), 0.0f)).x) * _6625) * saturate(1.0f - abs((_6915 * 2.0f) + -1.0f))));
                        } else {
                          _6951 = _6915;  // [sem: expr_sat]
                        }
                        _6956 = (((_6688 * _6615) * _6951) + _6592);
                      } else {
                        _6956 = _6592;
                      }
                    } else {
                      _6956 = _6592;
                    }
                  } else {
                    _6956 = _6592;
                  }
                  _6957 = (uint)((uint)(_6593)) + (uint)(1);
                  if ((uint)_6957 < (uint)_cloudDensityVolumeInfo.x) {
                    _6592 = _6956;
                    _6593 = _6957;
                    continue;
                  }
                  while(true) {
                    _6962 = saturate(_6956);  // [sem: _6956_sat]
                    break;
                  }
                  break;
                }
              } else {
                _6962 = 0.0f;  // [sem: _6956_sat]
              }
              _6969 = max(_5127, (_5886 * _distanceScale));
              _6970 = ((_distanceScale * 20.0f) * (saturate(_6962 + (_6583 * _6573)) + saturate(_6444 + (_6066 * _6054))));
              break;
            }
          } else {
            _6969 = _5127;
            _6970 = ((log2(max(_5123, 0.5f)) * 0.6931472f) / _5126);
          }
          _6971 = dot(float3(_4338, _4339, _4340), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _6975 = min(max(_4460, 16.0f), (_atmosphereThickness + -16.0f));
          _6983 = max(_6975, 0.0f);
          _6992 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _6983) * _6983)) / (_earthRadius + _6983);
          if (_6971 > _6992) {
            _7015 = ((exp2(log2(saturate((_6971 - _6992) / (1.0f - _6992))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7015 = ((exp2(log2(saturate((_6992 - _6971) / (_6992 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7017 = (exp2(log2(saturate((_6975 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _7020 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7017, _7015), 0.0f);
          _7023 = dot(float3(_4338, _4339, _4340), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_7023 > _6992) {
            _7046 = ((exp2(log2(saturate((_7023 - _6992) / (1.0f - _6992))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7046 = ((exp2(log2(saturate((_6992 - _7023) / (_6992 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _7047 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7017, _7046), 0.0f);
          _7058 = ((_4470 + _4193) * 12.5f) + _4189;
          _7059 = ((_4471 + _4194) * 12.5f) + _4190;
          _7060 = ((_4330 + _4195) * 12.5f) + _4207;
          _7061 = ((_5057 + _4196) * 12.5f) + _4192;
          _7062 = _7061 + _7060;
          _7063 = _7020.x + _7058;
          _7070 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
          _7073 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
          _7075 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
          _7082 = _mieAerosolDensity * 2e-05f;
          _7083 = _7082 * (_mieAerosolAbsorption + 1.0f);
          _7093 = _cloudScatteringCoefficient / _distanceScale;
          _7094 = _7093 * (_6969 + _7062);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _7095 = (_7070 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _7097 = _7094 + (_7083 * (_7020.y + _7059));
          _7099 = (_7073 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _7102 = (_7075 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7108 = exp2(((_7095 * _7063) + _7097) * -1.442695f);
          _7109 = exp2(((_7099 * _7063) + _7097) * -1.442695f);
          _7110 = exp2(((_7102 * _7063) + _7097) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_6_7108 = CloudReddeningFactor(_7094, _dawnDuskFactor, true);
          _7109 *= _rndx_cloud_red_6_7108;
          _7110 *= _rndx_cloud_red_6_7108;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _7123 = ((_7109 * 0.33951f) + (_7108 * 0.61312f)) + (_7110 * 0.04737f);
          _7124 = ((_7109 * 0.91636f) + (_7108 * 0.0702f)) + (_7110 * 0.01345f);
          _7125 = ((_7109 * 0.10958f) + (_7108 * 0.02062f)) + (_7110 * 0.8698f);
          _7126 = _7123 * _4471;
          _7127 = _7124 * _4471;
          _7128 = _7125 * _4471;
          _7129 = _7093 * _distanceScale;
          _7136 = exp2(log2(1.0f - exp2((_7129 * -14.42695f) * _4330)) * 1.25f);
          _7140 = 1.0f - exp2((_7129 * -288.539f) * _5057);
          _7141 = _7140 * _5057;
          _7145 = _173 * 0.059683103f;
          _7150 = _miePhaseConst * _miePhaseConst;
          _7156 = _7150 + 1.0f;
          _7163 = (((1.0f - _7150) * 3.0f) / ((_7150 + 2.0f) * 2.0f)) * 0.07957747f;
          // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
          // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
          [branch]
          if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
            float _rndx_mie_g2_7169 = _boostedMieG * _boostedMieG;
            float _rndx_mie_g2p1_7169 = _rndx_mie_g2_7169 + 1.0f;
            float _rndx_mie_norm_7169 = (((1.0f - _rndx_mie_g2_7169) * 3.0f) / ((_rndx_mie_g2_7169 + 2.0f) * 2.0f)) * 0.07957747f;
            _7169 = (_rndx_mie_norm_7169 * _7082) * (_173 / exp2(log2(_rndx_mie_g2p1_7169 - (_boostedMieG * _175)) * 1.5f));
          } else {
            _7169 = (_7163 * _7082) * (_173 / exp2(log2(_7156 - (_miePhaseConst * _175)) * 1.5f));
          }
          // RenoDX: <<< [Patch: DawnDuskImprovements]
          _7176 = _4330 * 64.0f;
          _7178 = _7136 * (_7176 * _183);
          _7186 = _201 * 2.0f;
          _7187 = _volumeFogScatterColor.x * (_7141 * _7123);
          _7189 = _volumeFogScatterColor.y * (_7141 * _7124);
          _7191 = _volumeFogScatterColor.z * (_7141 * _7125);
          _7199 = _mieAerosolDensity * 0.00049999997f;
          _7203 = _201 * 50.0f;
          _7224 = (_7093 * (_6970 + _7062)) + (_7083 * _7059);
          _7233 = exp2(((_7095 * _7058) + _7224) * -1.442695f);
          _7234 = exp2(((_7099 * _7058) + _7224) * -1.442695f);
          _7235 = exp2(((_7102 * _7058) + _7224) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_7_7233 = CloudReddeningFactor((_7093 * (_6970 + _7062)), _dawnDuskFactor, true);
          _7234 *= _rndx_cloud_red_7_7233;
          _7235 *= _rndx_cloud_red_7_7233;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _7248 = ((_7234 * 0.33951f) + (_7233 * 0.61312f)) + (_7235 * 0.04737f);
          _7249 = ((_7234 * 0.91636f) + (_7233 * 0.0702f)) + (_7235 * 0.01345f);
          _7250 = ((_7234 * 0.10958f) + (_7233 * 0.02062f)) + (_7235 * 0.8698f);
          _7255 = _4471 * _7082;
          _7259 = _7093 * (_5057 + _4330);
          _7261 = _7248 * ((_mieScatterColor.x * _7255) + _7259);
          _7267 = _4470 * 4.901961e-06f;
          _7268 = _7267 * _7070;
          _7272 = _7249 * ((_mieScatterColor.y * _7255) + _7259);
          _7278 = _7267 * _7073;
          _7282 = _7250 * ((_mieScatterColor.z * _7255) + _7259);
          _7288 = _7267 * _7075;
          _7291 = _7047.x + _7058;
          _7295 = _7094 + (_7083 * (_7047.y + _7059));
          _7304 = exp2(((_7095 * _7291) + _7295) * -1.442695f);
          _7305 = exp2(((_7099 * _7291) + _7295) * -1.442695f);
          _7306 = exp2(((_7102 * _7291) + _7295) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_8_7304 = CloudReddeningFactor(_7094, _dawnDuskFactor, true);
          _7305 *= _rndx_cloud_red_8_7304;
          _7306 *= _rndx_cloud_red_8_7304;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _7319 = ((_7305 * 0.33951f) + (_7304 * 0.61312f)) + (_7306 * 0.04737f);
          _7320 = ((_7305 * 0.91636f) + (_7304 * 0.0702f)) + (_7306 * 0.01345f);
          _7321 = ((_7305 * 0.10958f) + (_7304 * 0.02062f)) + (_7306 * 0.8698f);
          _7322 = _209 * 0.059683103f;
          _7333 = (_7255 * _7163) * (_209 / exp2(log2(_7156 - (_miePhaseConst * _210)) * 1.5f));
          _7343 = ((((_225 * 2.0f) * _5057) * _7140) + ((_7176 * _217) * _7136)) * _7093;
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Converts the second-region Rayleigh in-scatter radiance of both bodies with
          //              the spectral matrix instead of the vanilla RGB matrix. Each row carries two
          //              Rayleigh terms: the multi-scatter gather term against the view-only
          //              transmittance triple (_7233/_7234/_7235), whose gather scalar stays factored
          //              onto the row, and the single-scatter term against that body's body+view
          //              transmittance triple — _7108/_7109/_7110 with the sun phase _7145, and
          //              _7304/_7305/_7306 with the moon phase _7322. Beta is the native packed
          //              triple (_7070/_7073/_7075) on both arms and the region's density carrier
          //              _7267 rides through as the phase argument, so the region-2 scale is
          //              preserved exactly. The volume-fog, cloud-density and Mie terms beside them
          //              carry artist colour and keep the vanilla matrix. Each Off arm is the
          //              complete native RGB expression.
          _7381 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(0, _7304, _7305, _7306, _7070, _7073, _7075, (_7322 * _7267)) + (SKY_RAY_INSCATTER(0, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4449)) + _4183) + (((((_7333 * _mieScatterColor.x) + _7343) * _7319) + (_7261 * _4449)) * 25.0f)))
            : (((_7268 * ((_7319 * _7322) + (_7248 * _4449))) + _4183) + (((((_7333 * _mieScatterColor.x) + _7343) * _7319) + (_7261 * _4449)) * 25.0f));
          _7382 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(1, _7304, _7305, _7306, _7070, _7073, _7075, (_7322 * _7267)) + (SKY_RAY_INSCATTER(1, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4450)) + _4184) + (((((_7333 * _mieScatterColor.y) + _7343) * _7320) + (_7272 * _4450)) * 25.0f)))
            : (((_7278 * ((_7320 * _7322) + (_7249 * _4450))) + _4184) + (((((_7333 * _mieScatterColor.y) + _7343) * _7320) + (_7272 * _4450)) * 25.0f));
          _7383 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(2, _7304, _7305, _7306, _7070, _7073, _7075, (_7322 * _7267)) + (SKY_RAY_INSCATTER(2, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4451)) + _4185) + (((((_7333 * _mieScatterColor.z) + _7343) * _7321) + (_7282 * _4451)) * 25.0f)))
            : (((_7288 * ((_7321 * _7322) + (_7250 * _4451))) + _4185) + (((((_7333 * _mieScatterColor.z) + _7343) * _7321) + (_7282 * _4451)) * 25.0f));
          _7384 = SKY_SCATTERING
            ? (((((_precomputedAmbients[48].x) * ((_7187 * _7203) + (_7126 * _7199))) + _4186) + ((((SKY_RAY_INSCATTER(0, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4446) + SKY_RAY_INSCATTER(0, _7108, _7109, _7110, _7070, _7073, _7075, (_7145 * _7267))) + (((((_7169 * _7126) * _mieScatterColor.x) + (((_7187 * _7186) + (_7178 * _7123)) * _7093)) + (_7261 * _4446)) * 25.0f)) * _precomputedAmbient7.y)))
            : ((((_precomputedAmbients[48].x) * ((_7187 * _7203) + (_7126 * _7199))) + _4186) + (((_7268 * ((_7248 * _4446) + (_7123 * _7145))) + (((((_7169 * _7126) * _mieScatterColor.x) + (((_7187 * _7186) + (_7178 * _7123)) * _7093)) + (_7261 * _4446)) * 25.0f)) * _precomputedAmbient7.y));
          _7385 = SKY_SCATTERING
            ? (((((_precomputedAmbients[48].y) * ((_7189 * _7203) + (_7127 * _7199))) + _4187) + ((((SKY_RAY_INSCATTER(1, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4447) + SKY_RAY_INSCATTER(1, _7108, _7109, _7110, _7070, _7073, _7075, (_7145 * _7267))) + (((((_7169 * _7127) * _mieScatterColor.y) + (((_7189 * _7186) + (_7178 * _7124)) * _7093)) + (_7272 * _4447)) * 25.0f)) * _precomputedAmbient7.y)))
            : ((((_precomputedAmbients[48].y) * ((_7189 * _7203) + (_7127 * _7199))) + _4187) + (((_7278 * ((_7249 * _4447) + (_7124 * _7145))) + (((((_7169 * _7127) * _mieScatterColor.y) + (((_7189 * _7186) + (_7178 * _7124)) * _7093)) + (_7272 * _4447)) * 25.0f)) * _precomputedAmbient7.y));
          _7386 = SKY_SCATTERING
            ? (((((_precomputedAmbients[48].z) * ((_7191 * _7203) + (_7128 * _7199))) + _4188) + ((((SKY_RAY_INSCATTER(2, _7233, _7234, _7235, _7070, _7073, _7075, _7267) * _4448) + SKY_RAY_INSCATTER(2, _7108, _7109, _7110, _7070, _7073, _7075, (_7145 * _7267))) + (((((_7169 * _7128) * _mieScatterColor.z) + (((_7191 * _7186) + (_7178 * _7125)) * _7093)) + (_7282 * _4448)) * 25.0f)) * _precomputedAmbient7.y)))
            : ((((_precomputedAmbients[48].z) * ((_7191 * _7203) + (_7128 * _7199))) + _4188) + (((_7288 * ((_7250 * _4448) + (_7125 * _7145))) + (((((_7169 * _7128) * _mieScatterColor.z) + (((_7191 * _7186) + (_7178 * _7125)) * _7093)) + (_7282 * _4448)) * 25.0f)) * _precomputedAmbient7.y));
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          _7387 = _7058;
          _7388 = _7059;
          _7389 = _7060;
          _7390 = _7061;
          _7391 = _398;
        } else {
          _7381 = _4183;
          _7382 = _4184;
          _7383 = _4185;
          _7384 = _4186;
          _7385 = _4187;
          _7386 = _4188;
          _7387 = _4189;
          _7388 = _4190;
          _7389 = _4207;
          _7390 = _4192;
          _7391 = _398;
        }
        break;
      }
    } else {
      _7381 = 0.0f;
      _7382 = 0.0f;
      _7383 = 0.0f;
      _7384 = 0.0f;
      _7385 = 0.0f;
      _7386 = 0.0f;
      _7387 = 0.0f;
      _7388 = 0.0f;
      _7389 = 0.0f;
      _7390 = 0.0f;
      _7391 = 0.0f;
    }
    if (_7391 < _154) {
      _7397 = (_154 * _103) + _viewPos.x;
      _7398 = (_154 * _105) + _viewPos.z;
      _7402 = min((_distanceScale * _7391), _154);
      _7406 = (_7402 * _103) + _viewPos.x;
      _7407 = (_7402 * _105) + _viewPos.z;
      _7414 = _earthRadius + _viewPos.y;
      _7415 = _7414 + (_7402 * _104);
      _7421 = sqrt(((_7407 * _7407) + (_7406 * _7406)) + (_7415 * _7415));
      _7422 = _7406 / _7421;
      _7423 = _7415 / _7421;
      _7424 = _7407 / _7421;
      _7427 = dot(float3(_7422, _7423, _7424), float3(_103, _104, _105));
      _7429 = dot(float3(_103, _104, _105), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _7432 = _atmosphereThickness + -16.0f;
      _7434 = min(max(max((_7421 - _earthRadius), 0.01f), 16.0f), _7432);
      _7436 = _atmosphereThickness + -32.0f;
      _7442 = max(_7434, 0.0f);
      _7443 = _earthRadius * 2.0f;
      _7449 = (-0.0f - sqrt((_7442 + _7443) * _7442)) / (_7442 + _earthRadius);
      _7450 = (_7427 > _7449);
      if (_7450) {
        _7472 = ((exp2(log2(saturate((_7427 - _7449) / (1.0f - _7449))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7472 = ((exp2(log2(saturate((_7449 - _7427) / (_7449 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7474 = (exp2(log2(saturate((_7434 + -16.0f) / _7436)) * 0.5f) * 0.96875f) + 0.015625f;
      _7479 = (1.0f - exp2(-1.1541561f - (dot(float3(_7422, _7423, _7424), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7482 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7472, _7479), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7487 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7472, _7479), 0.0f);
      _7494 = (_7429 * _7429) + 1.0f;
      _7495 = _7494 * 0.059683103f;
      _7499 = _miePhaseConst * _miePhaseConst;
      _7505 = _7499 + 1.0f;
      _7506 = _miePhaseConst * 2.0f;
      _7513 = (((1.0f - _7499) * 3.0f) / ((_7499 + 2.0f) * 2.0f)) * 0.07957747f;
      // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
      // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
      //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
      //              the top of main): the sun LUT path consumes the boosted phase for a stronger
      //              forward-scatter lobe around the low sun, while the moon LUT phase (_7854)
      //              keeps the vanilla _7505/_7513. When Dawn/Dusk Improvements is Off (or the sun
      //              is outside the dawn/dusk window) _boostedMieG equals the vanilla
      //              _miePhaseConst, so the boosted result is bit-identical to the vanilla term it
      //              mirrors.
      // [DAWN_DUSK] Sun LUT HG uses boosted g - moon LUT HG (_7854) still uses vanilla _7505/_7513
      [branch]
      if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
        float _7499b = _boostedMieG * _boostedMieG;
        float _7505b = _7499b + 1.0f;
        float _7506b = _boostedMieG * 2.0f;
        float _7513b = (((1.0f - _7499b) * 3.0f) / ((_7499b + 2.0f) * 2.0f)) * 0.07957746833562851f;
        _7514 = (_7494 / exp2(log2(_7505b - (_7506b * _7429)) * 1.5f)) * _7513b;
      } else {
        _7514 = (_7494 / exp2(log2(_7505 - (_7506 * _7429)) * 1.5f)) * _7513;
      }
      // RenoDX: <<< [Patch: DawnDuskImprovements]
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7519 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7472, _7479), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7524 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7472, _7479), 0.0f);
      _7528 = _7414 + (_154 * _104);
      _7534 = sqrt(((_7398 * _7398) + (_7397 * _7397)) + (_7528 * _7528));
      _7535 = _7397 / _7534;
      _7536 = _7528 / _7534;
      _7537 = _7398 / _7534;
      _7540 = dot(float3(_7535, _7536, _7537), float3(_103, _104, _105));
      _7543 = min(max(max((_7534 - _earthRadius), 0.01f), 16.0f), _7432);
      _7550 = max(_7543, 0.0f);
      _7556 = (-0.0f - sqrt((_7550 + _7443) * _7550)) / (_7550 + _earthRadius);
      _7557 = (_7540 > _7556);
      if (_7557) {
        _7579 = ((exp2(log2(saturate((_7540 - _7556) / (1.0f - _7556))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7579 = ((exp2(log2(saturate((_7556 - _7540) / (_7556 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7581 = (exp2(log2(saturate((_7543 + -16.0f) / _7436)) * 0.5f) * 0.96875f) + 0.015625f;
      _7586 = (1.0f - exp2(-1.1541561f - (dot(float3(_7535, _7536, _7537), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7587 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7579, _7586), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7591 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7579, _7586), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7601 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7579, _7586), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7605 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7579, _7586), 0.0f);
      _7618 = dot(float3(_7406, _7415, _7407), float3(_103, _104, _105));
      _7619 = _7618 / _7421;
      _7620 = _7402 - _154;
      _7621 = _7620 * _103;
      _7622 = _7620 * _104;
      _7623 = _7620 * _105;
      _7629 = sqrt(((_7621 * _7621) + (_7622 * _7622)) + (_7623 * _7623));
      _7636 = sqrt((0.5f / _rayleighScaledHeight) * _7421);
      _7637 = sqrt((0.5f / _mieScaledHeight) * _7421);
      _7639 = (_7629 + _7618) / _7421;
      _7640 = _7636 * _7619;
      _7641 = _7639 * _7636;
      _7642 = _7637 * _7619;
      _7643 = _7639 * _7637;
      _7664 = (float)((int)((int)((int)(uint)((int)(_7640 > 0.0f))) - (int)((int)(uint)((int)(_7640 < 0.0f)))));
      _7665 = (float)((int)((int)((int)(uint)((int)(_7641 > 0.0f))) - (int)((int)(uint)((int)(_7641 < 0.0f)))));
      _7666 = (float)((int)((int)((int)(uint)((int)(_7642 > 0.0f))) - (int)((int)(uint)((int)(_7642 < 0.0f)))));
      _7667 = (float)((int)((int)((int)(uint)((int)(_7643 > 0.0f))) - (int)((int)(uint)((int)(_7643 < 0.0f)))));
      _7668 = _7640 * _7640;
      _7669 = _7642 * _7642;
      _7670 = (_7665 > _7664);
      if (_7670) {
        _7675 = exp2(_7668 * 1.442695f);
      } else {
        _7675 = 0.0f;
      }
      _7676 = (_7667 > _7666);
      if (_7676) {
        _7681 = exp2(_7669 * 1.442695f);
      } else {
        _7681 = 0.0f;
      }
      _7712 = -0.0f - _7629;
      _7718 = ((_7629 / (_7421 * 2.0f)) + _7619) * 1.442695f;
      _7725 = _7421 * 6.2831f;
      _7730 = _earthRadius - _7421;
      _7737 = exp2((_7730 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7725);
      _7738 = dot(float2((_7664 / (sqrt((_7668 * 1.52f) + 4.0f) + (abs(_7640) * 2.3193f))), (exp2(_7718 * (_7712 / _rayleighScaledHeight)) * (_7665 / (sqrt(((_7641 * _7641) * 1.52f) + 4.0f) + (abs(_7641) * 2.3193f))))), float2(1.0f, -1.0f));
      _7739 = dot(float2((_7666 / (sqrt((_7669 * 1.52f) + 4.0f) + (abs(_7642) * 2.3193f))), (exp2(_7718 * (_7712 / _mieScaledHeight)) * (_7667 / (sqrt(((_7643 * _7643) * 1.52f) + 4.0f) + (abs(_7643) * 2.3193f))))), float2(1.0f, -1.0f));
      _7742 = (_7738 + _7675) * _7737;
      _7762 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _7725) * 2e-05f) * exp2((_7730 / _mieScaledHeight) * 1.442695f));
      _7763 = _7762 * (_7739 + _7681);
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      _7768 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
      _7771 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
      _7774 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _7780 = exp2(((_7768 * _7742) + _7763) * -1.442695f);
      _7781 = exp2(((_7771 * _7742) + _7763) * -1.442695f);
      _7782 = exp2(((_7774 * _7742) + _7763) * -1.442695f);
      _7806 = dot(float3(_103, _104, _105), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      if (_7450) {
        _7828 = ((exp2(log2(saturate((_7427 - _7449) / (1.0f - _7449))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7828 = ((exp2(log2(saturate((_7449 - _7427) / (_7449 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7833 = (1.0f - exp2(-1.1541561f - (dot(float3(_7422, _7423, _7424), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7834 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7828, _7833), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7838 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7828, _7833), 0.0f);
      _7843 = (_7806 * _7806) + 1.0f;
      _7844 = _7843 * 0.059683103f;
      _7854 = (_7843 / exp2(log2(_7505 - (_7506 * _7806)) * 1.5f)) * _7513;
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7858 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7828, _7833), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7862 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7474, _7828, _7833), 0.0f);
      if (_7557) {
        _7888 = ((exp2(log2(saturate((_7540 - _7556) / (1.0f - _7556))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7888 = ((exp2(log2(saturate((_7556 - _7540) / (_7556 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7893 = (1.0f - exp2(-1.1541561f - (dot(float3(_7535, _7536, _7537), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7894 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7888, _7893), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7898 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7888, _7893), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7908 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7888, _7893), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7912 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7581, _7888, _7893), 0.0f);
      if (_7670) {
        _7929 = exp2(_7668 * 1.442695f);
      } else {
        _7929 = 0.0f;
      }
      if (_7676) {
        _7934 = exp2(_7669 * 1.442695f);
      } else {
        _7934 = 0.0f;
      }
      _7937 = (_7929 + _7738) * _7737;
      _7938 = _7762 * (_7934 + _7739);
      _7970 = _7780;
      _7971 = _7781;
      _7972 = _7782;
      _7973 = max(0.0f, (((((_7514 * _7487.x) + (_7482.x * _7495)) + _7519.x) + _7524.x) - (_7780 * ((((_7591.x * _7514) + (_7587.x * _7495)) + _7601.x) + _7605.x))));
      _7974 = max(0.0f, (((((_7514 * _7487.y) + (_7482.y * _7495)) + _7519.y) + _7524.y) - (_7781 * ((((_7591.y * _7514) + (_7587.y * _7495)) + _7601.y) + _7605.y))));
      _7975 = max(0.0f, (((((_7514 * _7487.z) + (_7482.z * _7495)) + _7519.z) + _7524.z) - (_7782 * ((((_7591.z * _7514) + (_7587.z * _7495)) + _7601.z) + _7605.z))));
      _7976 = max(0.0f, (((((_7854 * _7838.x) + (_7834.x * _7844)) + _7858.x) + _7862.x) - (exp2((_7938 + (_7937 * _7768)) * -1.442695f) * ((((_7898.x * _7854) + (_7894.x * _7844)) + _7908.x) + _7912.x))));
      _7977 = max(0.0f, (((((_7854 * _7838.y) + (_7834.y * _7844)) + _7858.y) + _7862.y) - (exp2((_7938 + (_7937 * _7771)) * -1.442695f) * ((((_7898.y * _7854) + (_7894.y * _7844)) + _7908.y) + _7912.y))));
      _7978 = max(0.0f, (((((_7854 * _7838.z) + (_7834.z * _7844)) + _7858.z) + _7862.z) - (exp2((_7938 + (_7937 * _7774)) * -1.442695f) * ((((_7898.z * _7854) + (_7894.z * _7844)) + _7908.z) + _7912.z))));
    } else {
      _7970 = 1.0f;
      _7971 = 1.0f;
      _7972 = 1.0f;
      _7973 = 0.0f;
      _7974 = 0.0f;
      _7975 = 0.0f;
      _7976 = 0.0f;
      _7977 = 0.0f;
      _7978 = 0.0f;
    }
    _8012 = ((_cloudScatteringCoefficient / _distanceScale) * (_7390 + _7389)) + (((_7388 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
    // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
    // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
    _8023 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _7387) + _8012) * -1.442695f);
    _8024 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _7387) + _8012) * -1.442695f);
    _8025 = exp2((_8012 + (((_ozoneRatio * SKY_OZONE_3) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _7387)) * -1.442695f);
    // RenoDX: <<< [Patch: SkySpectralOzone]
    _8044 = (((_7973 * _precomputedAmbient7.y) * _8023) + _7384) + (((_8023 * _7976) + _7381) * _precomputedAmbient7.w);
    _8045 = (((_7974 * _precomputedAmbient7.y) * _8024) + _7385) + (((_8024 * _7977) + _7382) * _precomputedAmbient7.w);
    _8046 = (((_7975 * _precomputedAmbient7.y) * _8025) + _7386) + (((_8025 * _7978) + _7383) * _precomputedAmbient7.w);
    _8047 = _8023 * _7970;
    _8048 = _8024 * _7971;
    _8049 = _8025 * _7972;
    if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
      _8093 = saturate(max(0.0f, ((((_nearFarProj.x * -1e+07f) * _104) - _viewPos.y) + _atmosphereSeaBaseline)) * 2.0f);  // [sem: expr_sat]
      _8102 = (((1.0f - ((_8093 * _8093) * (3.0f - (_8093 * 2.0f)))) * 0.98f) + 0.02f);
    } else {
      _8102 = 1.0f;
    }
    _8107 = (((_8048 * 0.33951f) + (_8047 * 0.61312f)) + (_8049 * 0.04737f));
    _8108 = (((_8048 * 0.91636f) + (_8047 * 0.0702f)) + (_8049 * 0.01345f));
    _8109 = (((_8048 * 0.10958f) + (_8047 * 0.02062f)) + (_8049 * 0.8698f));
    // RenoDX: >>> [Patch: SpectralAerialPerspective] [Version: 1.16.00]
    // Description: Converts the aerial-perspective in-scatter written to g_texSkyInscatterUAV with
    //              the spectral matrix, on the LUT-driven component only. The triple
    //              (_8044/_8045/_8046) is the sum of two components with different colour status,
    //              so the On arm splits it and converts each with the matrix that suits it.
    //              _rndx_ap_lut_* is the precomputed-LUT aerial term, near minus far already
    //              clamped at zero upstream, weighted by the segment transmittance
    //              (_8023/_8024/_8025) and blended over sun and moon. The LUT stores per-wavelength
    //              Rayleigh radiance at 680/550/440 nm with beta folded in and no colour matrix
    //              applied, so this is exactly the radiance the spectral fit is for. Its converted
    //              result is clamped at zero because the fitted matrix carries negative
    //              off-diagonal terms and in-scatter cannot be negative.
    //              _rndx_ap_acc_* is the ray-march accumulator, which already reached working space
    //              through the in-scatter conversions upstream. It keeps SKY_VAN_DOT, matching the
    //              native second application, so that component's appearance is unchanged.
    //              The adjacent extinction write (_8107/_8108/_8109) is a transmittance and stays
    //              on the vanilla matrix permanently. Each Off arm is the complete native RGB
    //              expression over the unsplit triple.
    float _rndx_ap_lut_x = ((_7973 * _precomputedAmbient7.y) * _8023) + ((_8023 * _7976) * _precomputedAmbient7.w);
    float _rndx_ap_lut_y = ((_7974 * _precomputedAmbient7.y) * _8024) + ((_8024 * _7977) * _precomputedAmbient7.w);
    float _rndx_ap_lut_z = ((_7975 * _precomputedAmbient7.y) * _8025) + ((_8025 * _7978) * _precomputedAmbient7.w);
    float _rndx_ap_acc_x = _7384 + (_7381 * _precomputedAmbient7.w);
    float _rndx_ap_acc_y = _7385 + (_7382 * _precomputedAmbient7.w);
    float _rndx_ap_acc_z = _7386 + (_7383 * _precomputedAmbient7.w);
    _8110 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8102 * (max(0.0f, SKY_SPEC_DOT(0, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z)) + SKY_VAN_DOT(0, _rndx_ap_acc_x, _rndx_ap_acc_y, _rndx_ap_acc_z)))
      : (_8102 * (((_8045 * 0.33951f) + (_8044 * 0.61312f)) + (_8046 * 0.04737f)));
    _8111 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8102 * (max(0.0f, SKY_SPEC_DOT(1, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z)) + SKY_VAN_DOT(1, _rndx_ap_acc_x, _rndx_ap_acc_y, _rndx_ap_acc_z)))
      : (_8102 * (((_8045 * 0.91636f) + (_8044 * 0.0702f)) + (_8046 * 0.01345f)));
    _8112 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8102 * (max(0.0f, SKY_SPEC_DOT(2, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z)) + SKY_VAN_DOT(2, _rndx_ap_acc_x, _rndx_ap_acc_y, _rndx_ap_acc_z)))
      : (_8102 * (((_8045 * 0.10958f) + (_8044 * 0.02062f)) + (_8046 * 0.8698f)));
    // RenoDX: <<< [Patch: SpectralAerialPerspective]
  } else {
    _8107 = 1.0f;
    _8108 = 1.0f;
    _8109 = 1.0f;
    _8110 = 0.0f;
    _8111 = 0.0f;
    _8112 = 0.0f;
  }
  if ((_sunDirection.y > 0.0f) || !((_104 < 0.0f) && (!(_sunDirection.y > _moonDirection.y)))) {
    _8124 = _8110;
    _8125 = _8111;
    _8126 = _8112;
  } else {
    _8124 = 0.0f;
    _8125 = 0.0f;
    _8126 = 0.0f;
  }
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Applies a directional warm/cool hue bias to the final inscatter during the
  //              dawn/dusk window: the sun-facing and away-from-sun hemispheres get distinct horizon
  //              hues (vanilla east and west horizons look nearly identical at sunrise and sunset).
  //              Bias colours come from WeatherInscatterBiasProbe via InscatterColorBiasProbe
  //              (sky_dawn_dusk_common.hlsli / sky_weather_common.hlsli) — the attenuated probe
  //              variant, because this shader feeds the GI cubemap and full-strength hues
  //              oversaturate indirect lighting; when Dynamic Dawn/Dusk Hues is additionally active
  //              the warm tint shifts per day cycle. Gated by DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk
  //              Improvements", default On per the addon.cpp settings list); when Off (or
  //              outside the window) the helper returns (1,1,1) and the multiplies are bit-exact
  //              no-ops.
  // [DAWN_DUSK] Inscatter colour bias
  float _viewSunDot = dot(float3(_103, _104, _105), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
  float3 _inscatterBias = InscatterColorBiasProbe(_viewSunDot, _dawnDuskFactor, float3(_8107, _8108, _8109));
  _8124 *= _inscatterBias.x;
  _8125 *= _inscatterBias.y;
  _8126 *= _inscatterBias.z;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: SnowFogInscatterClamp] [Version: 1.13.00]
  // Description: Clamps the final inscatter luminance to (1 - extinction luminance) * K before the
  //              UAV write, so Mie forward scattering cannot drive massive GI brightness swings in
  //              dense fog and snow weather (vanilla lets inscatter grow unbounded relative to
  //              extinction, producing pulsing whiteouts as the camera or sun angle moves). K = 100
  //              in this offscreen sky probe shader (it feeds the GI cubemap and needs a tighter
  //              budget) and K = 500 in the visible-sky shader
  //              (SkyRenderAtmosphericScattering_0x836B77CA); the two coefficients are a matched
  //              pair and must be retuned together. Gated by SNOW_FOG_FIX (UI "Snow / Fog Lighting
  //              Fixes", default On per the addon.cpp settings list); when Off the branch is
  //              skipped entirely and the output is bit-exact vanilla.
  //              The shader suppresses inscatter below the sea baseline (_atmosphereSeaBaseline)
  //              down to 0.02x but leaves extinction alone, so below that baseline the clamp is
  //              measuring suppressed inscatter against an unsuppressed threshold and its headroom
  //              widens by up to 50x. It still fires if inscatter is high enough; it is not dead.
  //              This is deliberate and believed harmless: fog and snow weather are not expected
  //              below the baseline, and vanilla already crushes inscatter there. If gameplay
  //              evidence ever shows a playable fog region below the baseline, scale the clamp
  //              threshold by the same suppression factor. The ceiling is floored at zero. The
  //              extinction luminance can exceed 1.0 for near-unity transmittance, so an unfloored
  //              (1 - lum) would be negative and would flip positive inscatter to negative instead
  //              of capping it. The cause is not rounding: the vanilla RGB-to-working-space matrix
  //              applied just above has an un-normalized green row (its coefficients sum to
  //              1.0000100135803223), so with all three transmittances at 1.0 the luminance reaches
  //              about 1.0000072 - roughly 60 ULP past 1, a property of the constants rather than of
  //              float error. In every path traced so far the inscatter is simultaneously zero
  //              there, so the pre-existing (_insc_lum > 0.0001f) test already suppressed the clamp
  //              and no artifact has been observed; this floor is defensive. It does change one
  //              case: if the luminance is NaN the comparison chain now drives the scale to zero
  //              rather than leaving inscatter untouched.
  // [SNOW_FOG_FIX]
  if (SNOW_FOG_FIX == 1.f) {
    float _ext_lum = dot(float3(_8107, _8108, _8109), float3(0.2126f, 0.7152f, 0.0722f));
    float _max_inscatter = max(0.0f, 1.0f - _ext_lum) * 100.0f;
    float _insc_lum = dot(float3(_8124, _8125, _8126), float3(0.2126f, 0.7152f, 0.0722f));
    if (_insc_lum > _max_inscatter && _insc_lum > 0.0001f) {
      float _clamp_scale = _max_inscatter / _insc_lum;
      _8124 *= _clamp_scale;
      _8125 *= _clamp_scale;
      _8126 *= _clamp_scale;
    }
  }
  // RenoDX: <<< [Patch: SnowFogInscatterClamp]
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Dawn/dusk GI probe energy reduction sub-feature: scales this probe's
  //              omnidirectional inscatter down toward DAWN_DUSK_GI_ENERGY (hardcoded 0.7f in
  //              shared.h; not a UI setting) at the peak of the dawn/dusk window before it feeds the
  //              GI cubemap. Without it the probe's directionless energy flattens and boosts
  //              indirect light at sunrise/sunset, washing out the directional contrast the
  //              companion SHDirectionalBias/DawnDuskAmbientBoost helpers restore. Gated by
  //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On per the
  //              addon.cpp settings list); when Off the block is skipped entirely, and outside the
  //              window _dawnDuskFactor = 0 makes the lerp identity, so Off is bit-exact vanilla.
  // [DAWN_DUSK_SKY_PROBE_ENERGY] Inscatter Energy Reduction
  if (DAWN_DUSK_IMPROVEMENTS == 1.f && DAWN_DUSK_GI_ENERGY < 1.f) {
    float _energyAtten = lerp(1.f, DAWN_DUSK_GI_ENERGY, _dawnDuskFactor);
    _8124 *= _energyAtten;
    _8125 *= _energyAtten;
    _8126 *= _energyAtten;
  }
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: NightSkyAttenuation] [Version: 1.13.00]
  // Description: Multiplies the final inscatter RGB by a sun-elevation brightness ramp as the last
  //              step before the UAV write (extinction untouched): 10% brightness while the sun is
  //              below ~+5 deg (0.087 rad), ramping to 100% by +10 deg (0.17 rad), unity above
  //              (NightSkyAttenuation, sky_dawn_dusk_common.hlsli). Vanilla scattering brightens the
  //              sky far too early (~3am-4:30am) and keeps it bright well after sunset; this keeps
  //              nights genuinely dark. Gated by NIGHT_SKY_ATTENUATION (UI "Darker Nights/Dawn/Dusk
  //             ", default On per the addon.cpp settings list); when Off the helper returns
  //              exactly 1.0 and the multiplies are bit-exact no-ops.
  // [NIGHT_SKY_ATTENUATION] Reduce sky brightness when sun is below horizon
  {
    float _nightSkyAtten = NightSkyAttenuation(_sunDirection.y);
    _8124 *= _nightSkyAtten;
    _8125 *= _nightSkyAtten;
    _8126 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8124, _8125, _8126, 0.0f);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8107, _8108, _8109, 1.0f);
}
