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

RWStructuredBuffer<float4> __3__39__0__1__g_texPrecomputedAmbientUAV : register(u2, space39);

RWStructuredBuffer<float4> __3__39__0__1__g_precomputedAmbientCacheUAV : register(u3, space39);

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

groupshared float _global_0[256];
groupshared float _global_1[256];
groupshared float _global_2[256];
groupshared float _global_3[768];
groupshared float _global_4[1024];
groupshared float _global_5[1024];
groupshared float _global_6[1024];
groupshared float _global_7[1024];
groupshared float _global_8[1024];
groupshared float _global_9[1024];

[numthreads(256, 1, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _36;
  int _41;
  int _46;
  int _51;
  float _58;
  float _59;
  float _62;
  float _64;
  float _66;
  float _67;
  float _73;
  bool _76;
  uint _79;
  float _108;
  int _109;
  int _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  float _117;
  float _118;
  float _119;
  float _120;
  float _155;
  float _222;
  float _223;
  float _259;
  float _357;
  int _408;
  float _409;
  float _410;
  int _411;
  float _512;
  float _513;
  int _514;
  float _521;
  float _522;
  int _523;
  int _539;
  float _540;
  float _541;
  float _542;
  float _543;
  float _544;
  float _545;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  int _554;
  int _555;
  float _556;
  float _767;
  float _779;
  float _790;
  int _791;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1010;
  float _1015;
  float _1016;
  float _1017;
  float _1018;
  float _1030;
  float _1031;
  float _1032;
  float _1033;
  float _1034;
  float _1035;
  float _1036;
  float _1061;
  float _1094;
  float _1102;
  float _1150;
  float _1155;
  float _1161;
  bool _1187;
  float _1261;
  float _1300;
  float _1314;
  float _1315;
  float _1316;
  float _1317;
  float _1318;
  float _1319;
  float _1464;
  float _1474;
  float _1485;
  int _1486;
  float _1699;
  float _1700;
  float _1701;
  float _1702;
  float _1703;
  float _1704;
  float _1705;
  float _1710;
  float _1711;
  float _1712;
  float _1713;
  float _1725;
  float _1726;
  float _1727;
  float _1728;
  float _1729;
  float _1730;
  float _1731;
  float _1756;
  float _1789;
  float _1797;
  float _1845;
  float _1850;
  float _1856;
  float _1960;
  float _1961;
  float _1962;
  float _2026;
  int _2038;
  float _2039;
  float _2040;
  int _2041;
  float _2142;
  float _2143;
  int _2144;
  float _2151;
  float _2152;
  int _2153;
  float _2166;
  float _2167;
  float _2168;
  float _2169;
  float _2170;
  float _2171;
  float _2172;
  float _2173;
  float _2174;
  int _2175;
  float _2353;
  float _2354;
  float _2364;
  int _2365;
  float _2578;
  float _2579;
  float _2580;
  float _2581;
  float _2582;
  float _2583;
  float _2584;
  float _2589;
  float _2590;
  float _2591;
  float _2592;
  float _2604;
  float _2605;
  float _2606;
  float _2607;
  float _2608;
  float _2609;
  float _2610;
  float _2635;
  float _2668;
  float _2676;
  float _2725;
  float _2730;
  float _2736;
  float _2922;
  float _2934;
  float _2942;
  int _2943;
  float _3154;
  float _3155;
  float _3156;
  float _3157;
  float _3158;
  float _3159;
  float _3160;
  float _3165;
  float _3166;
  float _3167;
  float _3168;
  float _3180;
  float _3181;
  float _3182;
  float _3183;
  float _3184;
  float _3185;
  float _3186;
  float _3211;
  float _3244;
  float _3252;
  float _3301;
  float _3306;
  float _3312;
  float _3441;
  float _3451;
  float _3460;
  int _3461;
  float _3672;
  float _3673;
  float _3674;
  float _3675;
  float _3676;
  float _3677;
  float _3678;
  float _3683;
  float _3684;
  float _3685;
  float _3686;
  float _3698;
  float _3699;
  float _3700;
  float _3701;
  float _3702;
  float _3703;
  float _3704;
  float _3729;
  float _3762;
  float _3770;
  float _3819;
  float _3824;
  float _3830;
  float _3837;
  float _3838;
  float _3883;
  float _3914;
  float _4286;
  float _4287;
  float _4288;
  float _4289;
  float _4290;
  float _4291;
  float _4305;
  int _4306;
  int _4307;
  float _4308;
  float _4309;
  float _4310;
  float _4311;
  float _4312;
  float _4313;
  float _4314;
  float _4315;
  float _4316;
  float _4317;
  float _4318;
  float _4319;
  float _4320;
  float _4321;
  int _4322;
  int _4323;
  int _4332;
  float _4333;
  float _4334;
  float _4335;
  float _4336;
  float _4337;
  float _4338;
  float _4339;
  float _4340;
  float _4341;
  float _4342;
  float _4343;
  float _4344;
  float _4345;
  float _4346;
  float _4347;
  int _4348;
  float _4349;
  float _4369;
  float _4381;
  float _4430;
  float _4537;
  float _4577;
  float _4591;
  float _4592;
  float _4593;
  float _4594;
  float _4595;
  float _4596;
  float _4751;
  float _4763;
  float _4774;
  int _4775;
  float _4988;
  float _4989;
  float _4990;
  float _4991;
  float _4992;
  float _4993;
  float _4994;
  float _4999;
  float _5000;
  float _5001;
  float _5002;
  float _5014;
  float _5015;
  float _5016;
  float _5017;
  float _5018;
  float _5019;
  float _5020;
  float _5045;
  float _5078;
  float _5086;
  float _5134;
  float _5139;
  float _5145;
  float _5236;
  float _5237;
  float _5238;
  float _5303;
  int _5315;
  float _5316;
  float _5317;
  int _5318;
  float _5419;
  float _5420;
  int _5421;
  float _5428;
  float _5429;
  int _5430;
  float _5443;
  float _5444;
  float _5445;
  float _5446;
  float _5447;
  float _5448;
  float _5449;
  float _5450;
  float _5451;
  int _5452;
  float _5630;
  float _5631;
  float _5641;
  int _5642;
  float _5855;
  float _5856;
  float _5857;
  float _5858;
  float _5859;
  float _5860;
  float _5861;
  float _5866;
  float _5867;
  float _5868;
  float _5869;
  float _5881;
  float _5882;
  float _5883;
  float _5884;
  float _5885;
  float _5886;
  float _5887;
  float _5912;
  float _5945;
  float _5953;
  float _6002;
  float _6007;
  float _6013;
  float _6199;
  float _6211;
  float _6219;
  int _6220;
  float _6431;
  float _6432;
  float _6433;
  float _6434;
  float _6435;
  float _6436;
  float _6437;
  float _6442;
  float _6443;
  float _6444;
  float _6445;
  float _6457;
  float _6458;
  float _6459;
  float _6460;
  float _6461;
  float _6462;
  float _6463;
  float _6488;
  float _6521;
  float _6529;
  float _6578;
  float _6583;
  float _6589;
  float _6718;
  float _6728;
  float _6737;
  int _6738;
  float _6949;
  float _6950;
  float _6951;
  float _6952;
  float _6953;
  float _6954;
  float _6955;
  float _6960;
  float _6961;
  float _6962;
  float _6963;
  float _6975;
  float _6976;
  float _6977;
  float _6978;
  float _6979;
  float _6980;
  float _6981;
  float _7006;
  float _7039;
  float _7047;
  float _7096;
  float _7101;
  float _7107;
  float _7114;
  float _7115;
  float _7160;
  float _7191;
  float _7474;
  int _7475;
  float _7476;
  float _7477;
  float _7478;
  float _7479;
  float _7480;
  float _7481;
  float _7482;
  float _7483;
  float _7484;
  float _7485;
  float _7486;
  float _7568;
  float _7675;
  float _7771;
  float _7777;
  float _7924;
  float _7984;
  float _8025;
  float _8030;
  float _8066;
  float _8067;
  float _8068;
  float _8069;
  float _8070;
  float _8071;
  float _8177;
  float _8182;
  int _8183;
  float _8184;
  float _8185;
  float _8186;
  float _8187;
  float _8188;
  float _8189;
  float _8190;
  float _8191;
  float _8192;
  float _8193;
  float _8194;
  float _8195;
  float _8196;
  float _8236;
  float _8303;
  float _8304;
  float _8340;
  float _8438;
  int _8486;
  float _8487;
  float _8488;
  int _8489;
  float _8590;
  float _8591;
  int _8592;
  float _8599;
  float _8600;
  int _8601;
  float _8612;
  float _8613;
  float _8614;
  float _8615;
  float _8616;
  float _8617;
  float _8618;
  float _8619;
  float _8620;
  float _8621;
  int _8622;
  int _8623;
  float _8624;
  int _8625;
  float _8626;
  float _8627;
  float _8628;
  float _8629;
  float _8840;
  float _8852;
  float _8863;
  int _8864;
  float _9077;
  float _9078;
  float _9079;
  float _9080;
  float _9081;
  float _9082;
  float _9083;
  float _9088;
  float _9089;
  float _9090;
  float _9091;
  float _9103;
  float _9104;
  float _9105;
  float _9106;
  float _9107;
  float _9108;
  float _9109;
  float _9134;
  float _9167;
  float _9175;
  float _9223;
  float _9228;
  float _9234;
  bool _9260;
  float _9334;
  float _9373;
  float _9387;
  float _9388;
  float _9389;
  float _9390;
  float _9391;
  float _9392;
  float _9537;
  float _9547;
  float _9558;
  int _9559;
  float _9772;
  float _9773;
  float _9774;
  float _9775;
  float _9776;
  float _9777;
  float _9778;
  float _9783;
  float _9784;
  float _9785;
  float _9786;
  float _9798;
  float _9799;
  float _9800;
  float _9801;
  float _9802;
  float _9803;
  float _9804;
  float _9829;
  float _9862;
  float _9870;
  float _9918;
  float _9923;
  float _9929;
  float _10033;
  float _10034;
  float _10035;
  float _10099;
  int _10111;
  float _10112;
  float _10113;
  int _10114;
  float _10215;
  float _10216;
  int _10217;
  float _10224;
  float _10225;
  int _10226;
  float _10239;
  float _10240;
  float _10241;
  float _10242;
  float _10243;
  float _10244;
  float _10245;
  float _10246;
  float _10247;
  int _10248;
  float _10426;
  float _10427;
  float _10437;
  int _10438;
  float _10651;
  float _10652;
  float _10653;
  float _10654;
  float _10655;
  float _10656;
  float _10657;
  float _10662;
  float _10663;
  float _10664;
  float _10665;
  float _10677;
  float _10678;
  float _10679;
  float _10680;
  float _10681;
  float _10682;
  float _10683;
  float _10708;
  float _10741;
  float _10749;
  float _10798;
  float _10803;
  float _10809;
  float _10995;
  float _11007;
  float _11015;
  int _11016;
  float _11227;
  float _11228;
  float _11229;
  float _11230;
  float _11231;
  float _11232;
  float _11233;
  float _11238;
  float _11239;
  float _11240;
  float _11241;
  float _11253;
  float _11254;
  float _11255;
  float _11256;
  float _11257;
  float _11258;
  float _11259;
  float _11284;
  float _11317;
  float _11325;
  float _11374;
  float _11379;
  float _11385;
  float _11514;
  float _11524;
  float _11533;
  int _11534;
  float _11745;
  float _11746;
  float _11747;
  float _11748;
  float _11749;
  float _11750;
  float _11751;
  float _11756;
  float _11757;
  float _11758;
  float _11759;
  float _11771;
  float _11772;
  float _11773;
  float _11774;
  float _11775;
  float _11776;
  float _11777;
  float _11802;
  float _11835;
  float _11843;
  float _11892;
  float _11897;
  float _11903;
  float _11910;
  float _11911;
  float _11956;
  float _11987;
  float _12359;
  float _12360;
  float _12361;
  float _12362;
  float _12363;
  float _12364;
  float _12378;
  float _12379;
  float _12380;
  float _12381;
  int _12382;
  int _12383;
  float _12384;
  int _12385;
  int _12386;
  float _12387;
  float _12388;
  float _12389;
  float _12390;
  float _12391;
  float _12392;
  float _12393;
  float _12394;
  float _12395;
  float _12396;
  float _12422;
  float _12434;
  float _12483;
  float _12590;
  float _12630;
  float _12644;
  float _12645;
  float _12646;
  float _12647;
  float _12648;
  float _12649;
  float _12804;
  float _12816;
  float _12827;
  int _12828;
  float _13041;
  float _13042;
  float _13043;
  float _13044;
  float _13045;
  float _13046;
  float _13047;
  float _13052;
  float _13053;
  float _13054;
  float _13055;
  float _13067;
  float _13068;
  float _13069;
  float _13070;
  float _13071;
  float _13072;
  float _13073;
  float _13098;
  float _13131;
  float _13139;
  float _13187;
  float _13192;
  float _13198;
  float _13289;
  float _13290;
  float _13291;
  float _13356;
  int _13368;
  float _13369;
  float _13370;
  int _13371;
  float _13472;
  float _13473;
  int _13474;
  float _13481;
  float _13482;
  int _13483;
  float _13496;
  float _13497;
  float _13498;
  float _13499;
  float _13500;
  float _13501;
  float _13502;
  float _13503;
  float _13504;
  int _13505;
  float _13683;
  float _13684;
  float _13694;
  int _13695;
  float _13908;
  float _13909;
  float _13910;
  float _13911;
  float _13912;
  float _13913;
  float _13914;
  float _13919;
  float _13920;
  float _13921;
  float _13922;
  float _13934;
  float _13935;
  float _13936;
  float _13937;
  float _13938;
  float _13939;
  float _13940;
  float _13965;
  float _13998;
  float _14006;
  float _14055;
  float _14060;
  float _14066;
  float _14252;
  float _14264;
  float _14272;
  int _14273;
  float _14484;
  float _14485;
  float _14486;
  float _14487;
  float _14488;
  float _14489;
  float _14490;
  float _14495;
  float _14496;
  float _14497;
  float _14498;
  float _14510;
  float _14511;
  float _14512;
  float _14513;
  float _14514;
  float _14515;
  float _14516;
  float _14541;
  float _14574;
  float _14582;
  float _14631;
  float _14636;
  float _14642;
  float _14771;
  float _14781;
  float _14790;
  int _14791;
  float _15002;
  float _15003;
  float _15004;
  float _15005;
  float _15006;
  float _15007;
  float _15008;
  float _15013;
  float _15014;
  float _15015;
  float _15016;
  float _15028;
  float _15029;
  float _15030;
  float _15031;
  float _15032;
  float _15033;
  float _15034;
  float _15059;
  float _15092;
  float _15100;
  float _15149;
  float _15154;
  float _15160;
  float _15167;
  float _15168;
  float _15213;
  float _15244;
  float _15527;
  float _15528;
  float _15529;
  float _15530;
  float _15531;
  float _15532;
  float _15533;
  float _15534;
  float _15535;
  float _15536;
  float _15537;
  float _15618;
  float _15725;
  float _15821;
  float _15827;
  float _15974;
  float _16034;
  float _16075;
  float _16080;
  float _16116;
  float _16117;
  float _16118;
  float _16119;
  float _16120;
  float _16121;
  float _16227;
  float _16234;
  float _16235;
  float _16236;
  float _17902;
  float _17903;
  float _17904;
  float _17977;
  float _18075;
  float _18076;
  float _18091;
  float _18125;
  float _18149;
  float _18164;
  float _18165;
  float _18166;
  float _18208;
  float _18209;
  float _18210;
  float _18211;
  uint _82;
  float _86;
  float _89;
  float _90;
  float _91;
  float _92;
  float _95;
  float _96;
  float _97;
  float _98;
  float _100;
  float _101;
  float _102;
  float _103;
  float _136;
  float _137;
  float _138;
  float _140;
  float _141;
  float _144;
  float _145;
  float _147;
  float _161;
  float _173;
  float _174;
  float _187;
  float _188;
  float _193;
  float _196;
  float _202;
  float _210;
  float _231;
  float _239;
  float _246;
  bool _247;
  float _261;
  float _284;
  float _285;
  float _286;
  float _287;
  float _299;
  float _300;
  float _303;
  float _310;
  float _311;
  float _319;
  float _320;
  float _322;
  float _328;
  float _329;
  float _336;
  float _338;
  float _342;
  float _360;
  float _370;
  float _371;
  float _373;
  float _374;
  float _381;
  float _389;
  float _392;
  bool _393;
  float _414;
  float _415;
  float _416;
  float _418;
  float _419;
  float _420;
  float _422;
  float _423;
  float _424;
  float _426;
  float _427;
  float _428;
  float _432;
  float _436;
  float _440;
  float _443;
  float _446;
  float _449;
  float _450;
  float _456;
  float _462;
  float _477;
  float _478;
  float _479;
  float _483;
  float _484;
  float _485;
  float _489;
  float _490;
  float _491;
  float _502;
  float _503;
  uint _515;
  float _529;
  uint _535;
  float _558;
  float _568;
  float _569;
  float _571;
  float _573;
  float _576;
  float _580;
  float _581;
  float _582;
  float4 _604;
  int _611;
  int _615;
  float _619;
  float _620;
  float _621;
  float _625;
  float _626;
  float _630;
  float _637;
  float _640;
  float _643;
  float _648;
  float _657;
  float _681;
  float _682;
  float _698;
  float _699;
  float _701;
  float _713;
  float _717;
  float _721;
  float _738;
  float _760;
  bool _769;
  float _799;
  float _800;
  float _801;
  float _803;
  float _804;
  float _805;
  float _807;
  float _808;
  float _809;
  float _811;
  float _812;
  float _813;
  float _815;
  float _816;
  float _817;
  float _819;
  float _820;
  float _821;
  float _822;
  float _824;
  float _825;
  float _826;
  float _827;
  int _829;
  int _830;
  float _832;
  float _833;
  float _834;
  float _835;
  float _837;
  float _838;
  float _839;
  float _840;
  float _842;
  float _843;
  float _844;
  float _845;
  float _847;
  float _848;
  float _849;
  float _851;
  float _852;
  float _853;
  float _854;
  float _858;
  float _862;
  float _866;
  float _868;
  float _874;
  float _877;
  float _880;
  float _883;
  float _888;
  float _897;
  float _901;
  float _902;
  bool _903;
  bool _904;
  float _908;
  float _914;
  float _917;
  float _919;
  bool _922;
  bool _923;
  bool _924;
  bool _925;
  float _935;
  float _936;
  float _947;
  float _949;
  float _950;
  float _951;
  float _956;
  float _965;
  float _968;
  float _969;
  float _970;
  float _981;
  float _983;
  float _987;
  float _994;
  float _995;
  float _996;
  float _999;
  float _1002;
  float _1019;
  float _1020;
  float _1021;
  float _1039;
  float _1043;
  float _1066;
  bool _1069;
  bool _1070;
  bool _1071;
  bool _1072;
  float _1104;
  float _1110;
  float _1115;
  float _1122;
  float _1126;
  uint _1156;
  bool _1164;
  bool _1170;
  int _1172;
  uint _1175;
  float _1177;
  float _1200;
  float _1201;
  float _1203;
  float _1204;
  float _1206;
  float _1207;
  float _1208;
  float _1209;
  float _1210;
  float _1213;
  float _1223;
  float _1231;
  float _1238;
  bool _1239;
  float _1263;
  float4 _1270;
  float4 _1306;
  float _1328;
  float _1329;
  float _1338;
  float _1339;
  float _1340;
  float _1341;
  float _1344;
  float _1345;
  float _1349;
  float _1350;
  float _1351;
  float _1357;
  float _1381;
  float _1382;
  float _1398;
  float _1399;
  float _1401;
  float _1417;
  float _1421;
  float _1438;
  float _1457;
  float _1494;
  float _1495;
  float _1496;
  float _1498;
  float _1499;
  float _1500;
  float _1502;
  float _1503;
  float _1504;
  float _1506;
  float _1507;
  float _1508;
  float _1510;
  float _1511;
  float _1512;
  float _1514;
  float _1515;
  float _1516;
  float _1517;
  float _1519;
  float _1520;
  float _1521;
  float _1522;
  int _1524;
  int _1525;
  float _1527;
  float _1528;
  float _1529;
  float _1530;
  float _1532;
  float _1533;
  float _1534;
  float _1535;
  float _1537;
  float _1538;
  float _1539;
  float _1540;
  float _1542;
  float _1543;
  float _1544;
  float _1546;
  float _1547;
  float _1548;
  float _1549;
  float _1553;
  float _1557;
  float _1561;
  float _1563;
  float _1569;
  float _1572;
  float _1575;
  float _1578;
  float _1583;
  float _1592;
  float _1596;
  float _1597;
  bool _1598;
  bool _1599;
  float _1603;
  float _1609;
  float _1612;
  float _1614;
  bool _1617;
  bool _1618;
  bool _1619;
  bool _1620;
  float _1630;
  float _1631;
  float _1642;
  float _1644;
  float _1645;
  float _1646;
  float _1651;
  float _1660;
  float _1663;
  float _1664;
  float _1665;
  float _1676;
  float _1678;
  float _1682;
  float _1689;
  float _1690;
  float _1691;
  float _1694;
  float _1697;
  float _1714;
  float _1715;
  float _1716;
  float _1734;
  float _1738;
  float _1761;
  bool _1764;
  bool _1765;
  bool _1766;
  bool _1767;
  float _1799;
  float _1805;
  float _1810;
  float _1817;
  float _1821;
  uint _1851;
  float _1858;
  float _1860;
  float _1863;
  float _1869;
  float _1872;
  float _1873;
  float _1874;
  float _1875;
  float _1876;
  float _1902;
  float _1911;
  float _1926;
  float _1927;
  float _1929;
  bool _1932;
  float _1933;
  float _1934;
  float _1935;
  bool _1936;
  float _1945;
  float _1948;
  float _1954;
  float _1976;
  float _1981;
  float _1983;
  float _1985;
  float _1991;
  float _1994;
  float _1995;
  float _2009;
  float _2044;
  float _2045;
  float _2046;
  float _2048;
  float _2049;
  float _2050;
  float _2052;
  float _2053;
  float _2054;
  float _2056;
  float _2057;
  float _2058;
  float _2062;
  float _2066;
  float _2070;
  float _2073;
  float _2076;
  float _2079;
  float _2080;
  float _2086;
  float _2092;
  float _2107;
  float _2108;
  float _2109;
  float _2113;
  float _2114;
  float _2115;
  float _2119;
  float _2120;
  float _2121;
  float _2132;
  float _2133;
  uint _2145;
  float _2154;
  float _2158;
  int _2179;
  float _2185;
  float _2186;
  float _2190;
  float _2197;
  float _2202;
  float _2205;
  float _2210;
  float _2219;
  float _2262;
  float _2263;
  float _2279;
  float _2280;
  float _2282;
  float _2294;
  float _2298;
  float _2302;
  float _2321;
  float _2337;
  float _2340;
  float _2341;
  float _2373;
  float _2374;
  float _2375;
  float _2377;
  float _2378;
  float _2379;
  float _2381;
  float _2382;
  float _2383;
  float _2385;
  float _2386;
  float _2387;
  float _2389;
  float _2390;
  float _2391;
  float _2393;
  float _2394;
  float _2395;
  float _2396;
  float _2398;
  float _2399;
  float _2400;
  float _2401;
  int _2403;
  int _2404;
  float _2406;
  float _2407;
  float _2408;
  float _2409;
  float _2411;
  float _2412;
  float _2413;
  float _2414;
  float _2416;
  float _2417;
  float _2418;
  float _2419;
  float _2421;
  float _2422;
  float _2423;
  float _2425;
  float _2426;
  float _2427;
  float _2428;
  float _2432;
  float _2436;
  float _2440;
  float _2442;
  float _2448;
  float _2451;
  float _2454;
  float _2457;
  float _2462;
  float _2471;
  float _2475;
  float _2476;
  bool _2477;
  bool _2478;
  float _2482;
  float _2488;
  float _2491;
  float _2493;
  bool _2496;
  bool _2497;
  bool _2498;
  bool _2499;
  float _2509;
  float _2510;
  float _2521;
  float _2523;
  float _2524;
  float _2525;
  float _2530;
  float _2539;
  float _2542;
  float _2543;
  float _2544;
  float _2555;
  float _2557;
  float _2561;
  float _2568;
  float _2569;
  float _2570;
  float _2573;
  float _2576;
  float _2593;
  float _2594;
  float _2595;
  float _2613;
  float _2617;
  float _2640;
  bool _2643;
  bool _2644;
  bool _2645;
  bool _2646;
  float _2678;
  float _2684;
  float _2689;
  float _2697;
  float _2701;
  uint _2731;
  float _2738;
  float _2754;
  float _2755;
  float _2756;
  float _2757;
  float _2758;
  float _2759;
  float _2760;
  float _2761;
  float _2762;
  int _2763;
  bool _2771;
  float4 _2791;
  float _2793;
  float _2794;
  float _2795;
  float _2796;
  float _2800;
  float _2805;
  float _2806;
  float _2808;
  float _2814;
  float _2836;
  float _2837;
  float _2853;
  float _2854;
  float _2856;
  float _2868;
  float _2872;
  float _2876;
  float _2893;
  float _2915;
  bool _2924;
  float _2949;
  float _2950;
  float _2951;
  float _2953;
  float _2954;
  float _2955;
  float _2957;
  float _2958;
  float _2959;
  float _2961;
  float _2962;
  float _2963;
  float _2965;
  float _2966;
  float _2967;
  float _2969;
  float _2970;
  float _2971;
  float _2972;
  float _2974;
  float _2975;
  float _2976;
  float _2977;
  int _2979;
  int _2980;
  float _2982;
  float _2983;
  float _2984;
  float _2985;
  float _2987;
  float _2988;
  float _2989;
  float _2990;
  float _2992;
  float _2993;
  float _2994;
  float _2995;
  float _2997;
  float _2998;
  float _2999;
  float _3001;
  float _3002;
  float _3003;
  float _3004;
  float _3008;
  float _3012;
  float _3016;
  float _3018;
  float _3024;
  float _3027;
  float _3030;
  float _3033;
  float _3038;
  float _3047;
  float _3051;
  float _3052;
  bool _3053;
  bool _3054;
  float _3058;
  float _3064;
  float _3067;
  float _3069;
  bool _3072;
  bool _3073;
  bool _3074;
  bool _3075;
  float _3085;
  float _3086;
  float _3097;
  float _3099;
  float _3100;
  float _3101;
  float _3106;
  float _3115;
  float _3118;
  float _3119;
  float _3120;
  float _3131;
  float _3133;
  float _3137;
  float _3144;
  float _3145;
  float _3146;
  float _3149;
  float _3152;
  float _3169;
  float _3170;
  float _3171;
  float _3189;
  float _3193;
  float _3216;
  bool _3219;
  bool _3220;
  bool _3221;
  bool _3222;
  float _3254;
  float _3260;
  float _3265;
  float _3273;
  float _3277;
  uint _3307;
  float _3315;
  float _3316;
  float _3317;
  float _3321;
  float _3326;
  float _3333;
  float _3355;
  float _3356;
  float _3372;
  float _3373;
  float _3375;
  float _3387;
  float _3391;
  float _3395;
  float _3412;
  float _3434;
  float _3467;
  float _3468;
  float _3469;
  float _3471;
  float _3472;
  float _3473;
  float _3475;
  float _3476;
  float _3477;
  float _3479;
  float _3480;
  float _3481;
  float _3483;
  float _3484;
  float _3485;
  float _3487;
  float _3488;
  float _3489;
  float _3490;
  float _3492;
  float _3493;
  float _3494;
  float _3495;
  int _3497;
  int _3498;
  float _3500;
  float _3501;
  float _3502;
  float _3503;
  float _3505;
  float _3506;
  float _3507;
  float _3508;
  float _3510;
  float _3511;
  float _3512;
  float _3513;
  float _3515;
  float _3516;
  float _3517;
  float _3519;
  float _3520;
  float _3521;
  float _3522;
  float _3526;
  float _3530;
  float _3534;
  float _3536;
  float _3542;
  float _3545;
  float _3548;
  float _3551;
  float _3556;
  float _3565;
  float _3569;
  float _3570;
  bool _3571;
  bool _3572;
  float _3576;
  float _3582;
  float _3585;
  float _3587;
  bool _3590;
  bool _3591;
  bool _3592;
  bool _3593;
  float _3603;
  float _3604;
  float _3615;
  float _3617;
  float _3618;
  float _3619;
  float _3624;
  float _3633;
  float _3636;
  float _3637;
  float _3638;
  float _3649;
  float _3651;
  float _3655;
  float _3662;
  float _3663;
  float _3664;
  float _3667;
  float _3670;
  float _3687;
  float _3688;
  float _3689;
  float _3707;
  float _3711;
  float _3734;
  bool _3737;
  bool _3738;
  bool _3739;
  bool _3740;
  float _3772;
  float _3778;
  float _3783;
  float _3791;
  float _3795;
  uint _3825;
  float _3839;
  float _3843;
  float _3851;
  float _3860;
  float _3885;
  float2 _3888;
  float _3891;
  float2 _3915;
  float _3918;
  float _3923;
  float _3928;
  float _3929;
  float _3930;
  float _3931;
  float _3932;
  float _3933;
  float _3940;
  float _3943;
  float _3945;
  float _3952;
  float _3953;
  float _3954;
  float _3963;
  float _3964;
  float _3965;
  float _3966;
  float _3967;
  float _3969;
  float _3970;
  float _3972;
  float _3973;
  float _3978;
  float _3979;
  float _3980;
  float _3996;
  float _4003;
  float _4007;
  float _4009;
  float _4010;
  float _4015;
  float _4016;
  float _4023;
  float _4037;
  float _4046;
  float _4047;
  float _4048;
  float _4061;
  float _4062;
  float _4063;
  float _4068;
  float _4069;
  float _4075;
  float _4076;
  float _4082;
  float _4083;
  float _4089;
  float _4090;
  float _4092;
  float _4093;
  float _4094;
  float _4096;
  float _4098;
  float _4103;
  float _4104;
  float _4105;
  float _4122;
  float _4127;
  float _4144;
  float _4147;
  float _4156;
  float _4168;
  float _4177;
  float _4186;
  float _4190;
  float _4191;
  float _4207;
  float _4208;
  float _4215;
  float _4216;
  float _4217;
  float _4235;
  float _4237;
  float _4238;
  float _4252;
  float _4259;
  float _4260;
  float _4261;
  float _4278;
  float _4292;
  uint _4324;
  float _4351;
  float _4357;
  float _4361;
  float _4373;
  float _4387;
  float _4388;
  float _4390;
  float _4391;
  float _4392;
  float _4393;
  float _4401;
  float _4402;
  float4 _4406;
  float _4418;
  float _4422;
  float _4431;
  float _4460;
  int _4463;
  float _4472;
  float _4475;
  float _4476;
  float _4477;
  float _4479;
  float _4480;
  float _4482;
  float _4483;
  float _4484;
  float _4485;
  float _4486;
  float _4489;
  float _4499;
  float _4507;
  float _4514;
  bool _4515;
  float _4539;
  float4 _4547;
  float4 _4583;
  float _4605;
  float _4606;
  float _4615;
  float _4616;
  float _4620;
  float _4621;
  float _4624;
  float _4625;
  float _4631;
  float _4632;
  float _4635;
  float _4638;
  float _4641;
  float _4648;
  float _4671;
  float _4672;
  float _4686;
  float _4687;
  float _4689;
  float _4705;
  float _4709;
  float _4726;
  float _4744;
  float _4783;
  float _4784;
  float _4785;
  float _4787;
  float _4788;
  float _4789;
  float _4791;
  float _4792;
  float _4793;
  float _4795;
  float _4796;
  float _4797;
  float _4799;
  float _4800;
  float _4801;
  float _4803;
  float _4804;
  float _4805;
  float _4806;
  float _4808;
  float _4809;
  float _4810;
  float _4811;
  int _4813;
  int _4814;
  float _4816;
  float _4817;
  float _4818;
  float _4819;
  float _4821;
  float _4822;
  float _4823;
  float _4824;
  float _4826;
  float _4827;
  float _4828;
  float _4829;
  float _4831;
  float _4832;
  float _4833;
  float _4835;
  float _4836;
  float _4837;
  float _4838;
  float _4842;
  float _4846;
  float _4850;
  float _4852;
  float _4858;
  float _4861;
  float _4864;
  float _4867;
  float _4872;
  float _4881;
  float _4885;
  float _4886;
  bool _4887;
  bool _4888;
  float _4892;
  float _4898;
  float _4901;
  float _4903;
  bool _4906;
  bool _4907;
  bool _4908;
  bool _4909;
  float _4919;
  float _4920;
  float _4931;
  float _4933;
  float _4934;
  float _4935;
  float _4940;
  float _4949;
  float _4952;
  float _4953;
  float _4954;
  float _4965;
  float _4967;
  float _4971;
  float _4978;
  float _4979;
  float _4980;
  float _4983;
  float _4986;
  float _5003;
  float _5004;
  float _5005;
  float _5023;
  float _5027;
  float _5050;
  bool _5053;
  bool _5054;
  bool _5055;
  bool _5056;
  float _5088;
  float _5094;
  float _5099;
  float _5106;
  float _5110;
  uint _5140;
  float _5149;
  float _5152;
  float _5158;
  float _5159;
  float _5160;
  float _5161;
  float _5162;
  float _5163;
  float _5184;
  float _5202;
  float _5203;
  float _5205;
  bool _5208;
  float _5209;
  float _5210;
  float _5211;
  bool _5212;
  float _5221;
  float _5224;
  float _5230;
  float _5253;
  float _5258;
  float _5260;
  float _5262;
  float _5268;
  float _5271;
  float _5272;
  float _5286;
  float _5321;
  float _5322;
  float _5323;
  float _5325;
  float _5326;
  float _5327;
  float _5329;
  float _5330;
  float _5331;
  float _5333;
  float _5334;
  float _5335;
  float _5339;
  float _5343;
  float _5347;
  float _5350;
  float _5353;
  float _5356;
  float _5357;
  float _5363;
  float _5369;
  float _5384;
  float _5385;
  float _5386;
  float _5390;
  float _5391;
  float _5392;
  float _5396;
  float _5397;
  float _5398;
  float _5409;
  float _5410;
  uint _5422;
  float _5431;
  float _5435;
  int _5456;
  float _5462;
  float _5463;
  float _5467;
  float _5474;
  float _5479;
  float _5482;
  float _5487;
  float _5496;
  float _5539;
  float _5540;
  float _5556;
  float _5557;
  float _5559;
  float _5571;
  float _5575;
  float _5579;
  float _5598;
  float _5614;
  float _5617;
  float _5618;
  float _5650;
  float _5651;
  float _5652;
  float _5654;
  float _5655;
  float _5656;
  float _5658;
  float _5659;
  float _5660;
  float _5662;
  float _5663;
  float _5664;
  float _5666;
  float _5667;
  float _5668;
  float _5670;
  float _5671;
  float _5672;
  float _5673;
  float _5675;
  float _5676;
  float _5677;
  float _5678;
  int _5680;
  int _5681;
  float _5683;
  float _5684;
  float _5685;
  float _5686;
  float _5688;
  float _5689;
  float _5690;
  float _5691;
  float _5693;
  float _5694;
  float _5695;
  float _5696;
  float _5698;
  float _5699;
  float _5700;
  float _5702;
  float _5703;
  float _5704;
  float _5705;
  float _5709;
  float _5713;
  float _5717;
  float _5719;
  float _5725;
  float _5728;
  float _5731;
  float _5734;
  float _5739;
  float _5748;
  float _5752;
  float _5753;
  bool _5754;
  bool _5755;
  float _5759;
  float _5765;
  float _5768;
  float _5770;
  bool _5773;
  bool _5774;
  bool _5775;
  bool _5776;
  float _5786;
  float _5787;
  float _5798;
  float _5800;
  float _5801;
  float _5802;
  float _5807;
  float _5816;
  float _5819;
  float _5820;
  float _5821;
  float _5832;
  float _5834;
  float _5838;
  float _5845;
  float _5846;
  float _5847;
  float _5850;
  float _5853;
  float _5870;
  float _5871;
  float _5872;
  float _5890;
  float _5894;
  float _5917;
  bool _5920;
  bool _5921;
  bool _5922;
  bool _5923;
  float _5955;
  float _5961;
  float _5966;
  float _5974;
  float _5978;
  uint _6008;
  float _6015;
  float _6031;
  float _6032;
  float _6033;
  float _6034;
  float _6035;
  float _6036;
  float _6037;
  float _6038;
  float _6039;
  int _6040;
  bool _6048;
  float4 _6068;
  float _6070;
  float _6071;
  float _6072;
  float _6073;
  float _6077;
  float _6082;
  float _6083;
  float _6085;
  float _6091;
  float _6113;
  float _6114;
  float _6130;
  float _6131;
  float _6133;
  float _6145;
  float _6149;
  float _6153;
  float _6170;
  float _6192;
  bool _6201;
  float _6226;
  float _6227;
  float _6228;
  float _6230;
  float _6231;
  float _6232;
  float _6234;
  float _6235;
  float _6236;
  float _6238;
  float _6239;
  float _6240;
  float _6242;
  float _6243;
  float _6244;
  float _6246;
  float _6247;
  float _6248;
  float _6249;
  float _6251;
  float _6252;
  float _6253;
  float _6254;
  int _6256;
  int _6257;
  float _6259;
  float _6260;
  float _6261;
  float _6262;
  float _6264;
  float _6265;
  float _6266;
  float _6267;
  float _6269;
  float _6270;
  float _6271;
  float _6272;
  float _6274;
  float _6275;
  float _6276;
  float _6278;
  float _6279;
  float _6280;
  float _6281;
  float _6285;
  float _6289;
  float _6293;
  float _6295;
  float _6301;
  float _6304;
  float _6307;
  float _6310;
  float _6315;
  float _6324;
  float _6328;
  float _6329;
  bool _6330;
  bool _6331;
  float _6335;
  float _6341;
  float _6344;
  float _6346;
  bool _6349;
  bool _6350;
  bool _6351;
  bool _6352;
  float _6362;
  float _6363;
  float _6374;
  float _6376;
  float _6377;
  float _6378;
  float _6383;
  float _6392;
  float _6395;
  float _6396;
  float _6397;
  float _6408;
  float _6410;
  float _6414;
  float _6421;
  float _6422;
  float _6423;
  float _6426;
  float _6429;
  float _6446;
  float _6447;
  float _6448;
  float _6466;
  float _6470;
  float _6493;
  bool _6496;
  bool _6497;
  bool _6498;
  bool _6499;
  float _6531;
  float _6537;
  float _6542;
  float _6550;
  float _6554;
  uint _6584;
  float _6592;
  float _6593;
  float _6594;
  float _6598;
  float _6603;
  float _6610;
  float _6632;
  float _6633;
  float _6649;
  float _6650;
  float _6652;
  float _6664;
  float _6668;
  float _6672;
  float _6689;
  float _6711;
  float _6744;
  float _6745;
  float _6746;
  float _6748;
  float _6749;
  float _6750;
  float _6752;
  float _6753;
  float _6754;
  float _6756;
  float _6757;
  float _6758;
  float _6760;
  float _6761;
  float _6762;
  float _6764;
  float _6765;
  float _6766;
  float _6767;
  float _6769;
  float _6770;
  float _6771;
  float _6772;
  int _6774;
  int _6775;
  float _6777;
  float _6778;
  float _6779;
  float _6780;
  float _6782;
  float _6783;
  float _6784;
  float _6785;
  float _6787;
  float _6788;
  float _6789;
  float _6790;
  float _6792;
  float _6793;
  float _6794;
  float _6796;
  float _6797;
  float _6798;
  float _6799;
  float _6803;
  float _6807;
  float _6811;
  float _6813;
  float _6819;
  float _6822;
  float _6825;
  float _6828;
  float _6833;
  float _6842;
  float _6846;
  float _6847;
  bool _6848;
  bool _6849;
  float _6853;
  float _6859;
  float _6862;
  float _6864;
  bool _6867;
  bool _6868;
  bool _6869;
  bool _6870;
  float _6880;
  float _6881;
  float _6892;
  float _6894;
  float _6895;
  float _6896;
  float _6901;
  float _6910;
  float _6913;
  float _6914;
  float _6915;
  float _6926;
  float _6928;
  float _6932;
  float _6939;
  float _6940;
  float _6941;
  float _6944;
  float _6947;
  float _6964;
  float _6965;
  float _6966;
  float _6984;
  float _6988;
  float _7011;
  bool _7014;
  bool _7015;
  bool _7016;
  bool _7017;
  float _7049;
  float _7055;
  float _7060;
  float _7068;
  float _7072;
  uint _7102;
  float _7116;
  float _7120;
  float _7128;
  float _7137;
  float _7162;
  float2 _7165;
  float _7168;
  float2 _7192;
  float _7203;
  float _7204;
  float _7205;
  float _7206;
  float _7207;
  float _7208;
  float _7215;
  float _7218;
  float _7220;
  float _7227;
  float _7228;
  float _7238;
  float _7239;
  float _7240;
  float _7242;
  float _7244;
  float _7247;
  float _7253;
  float _7254;
  float _7255;
  float _7271;
  float _7278;
  float _7282;
  float _7284;
  float _7285;
  float _7289;
  float _7291;
  float _7298;
  float _7305;
  float _7313;
  float _7322;
  float _7323;
  float _7324;
  float _7337;
  float _7338;
  float _7339;
  float _7341;
  float _7342;
  float _7343;
  float _7344;
  float _7345;
  float _7364;
  float _7368;
  float _7377;
  float _7378;
  float _7379;
  float _7392;
  float _7393;
  float _7394;
  float _7395;
  float _7400;
  float _7417;
  float _7420;
  float _7430;
  float _7431;
  float _7432;
  float _7433;
  float _7493;
  float _7494;
  float _7498;
  float _7502;
  float _7503;
  float _7510;
  float _7511;
  float _7517;
  float _7518;
  float _7519;
  float _7520;
  float _7523;
  float _7525;
  float _7528;
  float _7530;
  float _7532;
  float _7538;
  float _7539;
  float _7545;
  bool _7546;
  float _7570;
  float _7575;
  float4 _7578;
  float4 _7583;
  float _7590;
  float _7591;
  float _7595;
  float _7601;
  float _7602;
  float _7609;
  float _7610;
  float4 _7615;
  float4 _7620;
  float _7624;
  float _7630;
  float _7631;
  float _7632;
  float _7633;
  float _7636;
  float _7639;
  float _7646;
  float _7652;
  bool _7653;
  float _7677;
  float _7682;
  float4 _7683;
  float4 _7687;
  float4 _7697;
  float4 _7701;
  float _7714;
  float _7715;
  float _7716;
  float _7717;
  float _7718;
  float _7719;
  float _7725;
  float _7732;
  float _7733;
  float _7735;
  float _7736;
  float _7737;
  float _7738;
  float _7739;
  float _7760;
  float _7761;
  float _7762;
  float _7763;
  float _7764;
  float _7765;
  bool _7766;
  bool _7772;
  float _7808;
  float _7814;
  float _7821;
  float _7826;
  float _7833;
  float _7834;
  float _7835;
  float _7838;
  float _7858;
  float _7859;
  float _7864;
  float _7867;
  float _7870;
  float _7902;
  float _7929;
  float4 _7930;
  float4 _7934;
  float _7939;
  float _7940;
  float _7950;
  float4 _7954;
  float4 _7958;
  float _7989;
  float4 _7990;
  float4 _7994;
  float4 _8004;
  float4 _8008;
  float _8033;
  float _8034;
  float _8105;
  float _8116;
  float _8117;
  float _8118;
  float _8137;
  float _8138;
  float _8139;
  float _8168;
  uint _8197;
  float _8213;
  float _8220;
  float _8222;
  float _8223;
  float _8226;
  float _8228;
  float _8242;
  float _8254;
  float _8255;
  float _8268;
  float _8269;
  float _8274;
  float _8277;
  float _8283;
  float _8291;
  float _8312;
  float _8320;
  float _8327;
  bool _8328;
  float _8342;
  float _8365;
  float _8366;
  float _8367;
  float _8368;
  float _8380;
  float _8381;
  float _8384;
  float _8391;
  float _8392;
  float _8400;
  float _8401;
  float _8403;
  float _8409;
  float _8410;
  float _8417;
  float _8419;
  float _8423;
  float _8441;
  float _8451;
  float _8452;
  float _8454;
  float _8455;
  float _8462;
  float _8470;
  float _8471;
  float _8492;
  float _8493;
  float _8494;
  float _8496;
  float _8497;
  float _8498;
  float _8500;
  float _8501;
  float _8502;
  float _8504;
  float _8505;
  float _8506;
  float _8510;
  float _8514;
  float _8518;
  float _8521;
  float _8524;
  float _8527;
  float _8528;
  float _8534;
  float _8540;
  float _8555;
  float _8556;
  float _8557;
  float _8561;
  float _8562;
  float _8563;
  float _8567;
  float _8568;
  float _8569;
  float _8580;
  float _8581;
  uint _8593;
  float _8607;
  float _8631;
  float _8641;
  float _8642;
  float _8644;
  float _8646;
  float _8649;
  float _8653;
  float _8654;
  float _8655;
  float4 _8677;
  int _8684;
  int _8688;
  float _8692;
  float _8693;
  float _8694;
  float _8698;
  float _8699;
  float _8703;
  float _8710;
  float _8713;
  float _8716;
  float _8721;
  float _8730;
  float _8754;
  float _8755;
  float _8771;
  float _8772;
  float _8774;
  float _8786;
  float _8790;
  float _8794;
  float _8811;
  float _8833;
  bool _8842;
  float _8872;
  float _8873;
  float _8874;
  float _8876;
  float _8877;
  float _8878;
  float _8880;
  float _8881;
  float _8882;
  float _8884;
  float _8885;
  float _8886;
  float _8888;
  float _8889;
  float _8890;
  float _8892;
  float _8893;
  float _8894;
  float _8895;
  float _8897;
  float _8898;
  float _8899;
  float _8900;
  int _8902;
  int _8903;
  float _8905;
  float _8906;
  float _8907;
  float _8908;
  float _8910;
  float _8911;
  float _8912;
  float _8913;
  float _8915;
  float _8916;
  float _8917;
  float _8918;
  float _8920;
  float _8921;
  float _8922;
  float _8924;
  float _8925;
  float _8926;
  float _8927;
  float _8931;
  float _8935;
  float _8939;
  float _8941;
  float _8947;
  float _8950;
  float _8953;
  float _8956;
  float _8961;
  float _8970;
  float _8974;
  float _8975;
  bool _8976;
  bool _8977;
  float _8981;
  float _8987;
  float _8990;
  float _8992;
  bool _8995;
  bool _8996;
  bool _8997;
  bool _8998;
  float _9008;
  float _9009;
  float _9020;
  float _9022;
  float _9023;
  float _9024;
  float _9029;
  float _9038;
  float _9041;
  float _9042;
  float _9043;
  float _9054;
  float _9056;
  float _9060;
  float _9067;
  float _9068;
  float _9069;
  float _9072;
  float _9075;
  float _9092;
  float _9093;
  float _9094;
  float _9112;
  float _9116;
  float _9139;
  bool _9142;
  bool _9143;
  bool _9144;
  bool _9145;
  float _9177;
  float _9183;
  float _9188;
  float _9195;
  float _9199;
  uint _9229;
  bool _9237;
  bool _9243;
  int _9245;
  uint _9248;
  float _9250;
  float _9273;
  float _9274;
  float _9276;
  float _9277;
  float _9279;
  float _9280;
  float _9281;
  float _9282;
  float _9283;
  float _9286;
  float _9296;
  float _9304;
  float _9311;
  bool _9312;
  float _9336;
  float4 _9343;
  float4 _9379;
  float _9401;
  float _9402;
  float _9411;
  float _9412;
  float _9413;
  float _9414;
  float _9417;
  float _9418;
  float _9422;
  float _9423;
  float _9424;
  float _9430;
  float _9454;
  float _9455;
  float _9471;
  float _9472;
  float _9474;
  float _9490;
  float _9494;
  float _9511;
  float _9530;
  float _9567;
  float _9568;
  float _9569;
  float _9571;
  float _9572;
  float _9573;
  float _9575;
  float _9576;
  float _9577;
  float _9579;
  float _9580;
  float _9581;
  float _9583;
  float _9584;
  float _9585;
  float _9587;
  float _9588;
  float _9589;
  float _9590;
  float _9592;
  float _9593;
  float _9594;
  float _9595;
  int _9597;
  int _9598;
  float _9600;
  float _9601;
  float _9602;
  float _9603;
  float _9605;
  float _9606;
  float _9607;
  float _9608;
  float _9610;
  float _9611;
  float _9612;
  float _9613;
  float _9615;
  float _9616;
  float _9617;
  float _9619;
  float _9620;
  float _9621;
  float _9622;
  float _9626;
  float _9630;
  float _9634;
  float _9636;
  float _9642;
  float _9645;
  float _9648;
  float _9651;
  float _9656;
  float _9665;
  float _9669;
  float _9670;
  bool _9671;
  bool _9672;
  float _9676;
  float _9682;
  float _9685;
  float _9687;
  bool _9690;
  bool _9691;
  bool _9692;
  bool _9693;
  float _9703;
  float _9704;
  float _9715;
  float _9717;
  float _9718;
  float _9719;
  float _9724;
  float _9733;
  float _9736;
  float _9737;
  float _9738;
  float _9749;
  float _9751;
  float _9755;
  float _9762;
  float _9763;
  float _9764;
  float _9767;
  float _9770;
  float _9787;
  float _9788;
  float _9789;
  float _9807;
  float _9811;
  float _9834;
  bool _9837;
  bool _9838;
  bool _9839;
  bool _9840;
  float _9872;
  float _9878;
  float _9883;
  float _9890;
  float _9894;
  uint _9924;
  float _9931;
  float _9933;
  float _9936;
  float _9942;
  float _9945;
  float _9946;
  float _9947;
  float _9948;
  float _9949;
  float _9975;
  float _9984;
  float _9999;
  float _10000;
  float _10002;
  bool _10005;
  float _10006;
  float _10007;
  float _10008;
  bool _10009;
  float _10018;
  float _10021;
  float _10027;
  float _10049;
  float _10054;
  float _10056;
  float _10058;
  float _10064;
  float _10067;
  float _10068;
  float _10082;
  float _10117;
  float _10118;
  float _10119;
  float _10121;
  float _10122;
  float _10123;
  float _10125;
  float _10126;
  float _10127;
  float _10129;
  float _10130;
  float _10131;
  float _10135;
  float _10139;
  float _10143;
  float _10146;
  float _10149;
  float _10152;
  float _10153;
  float _10159;
  float _10165;
  float _10180;
  float _10181;
  float _10182;
  float _10186;
  float _10187;
  float _10188;
  float _10192;
  float _10193;
  float _10194;
  float _10205;
  float _10206;
  uint _10218;
  float _10227;
  float _10231;
  int _10252;
  float _10258;
  float _10259;
  float _10263;
  float _10270;
  float _10275;
  float _10278;
  float _10283;
  float _10292;
  float _10335;
  float _10336;
  float _10352;
  float _10353;
  float _10355;
  float _10367;
  float _10371;
  float _10375;
  float _10394;
  float _10410;
  float _10413;
  float _10414;
  float _10446;
  float _10447;
  float _10448;
  float _10450;
  float _10451;
  float _10452;
  float _10454;
  float _10455;
  float _10456;
  float _10458;
  float _10459;
  float _10460;
  float _10462;
  float _10463;
  float _10464;
  float _10466;
  float _10467;
  float _10468;
  float _10469;
  float _10471;
  float _10472;
  float _10473;
  float _10474;
  int _10476;
  int _10477;
  float _10479;
  float _10480;
  float _10481;
  float _10482;
  float _10484;
  float _10485;
  float _10486;
  float _10487;
  float _10489;
  float _10490;
  float _10491;
  float _10492;
  float _10494;
  float _10495;
  float _10496;
  float _10498;
  float _10499;
  float _10500;
  float _10501;
  float _10505;
  float _10509;
  float _10513;
  float _10515;
  float _10521;
  float _10524;
  float _10527;
  float _10530;
  float _10535;
  float _10544;
  float _10548;
  float _10549;
  bool _10550;
  bool _10551;
  float _10555;
  float _10561;
  float _10564;
  float _10566;
  bool _10569;
  bool _10570;
  bool _10571;
  bool _10572;
  float _10582;
  float _10583;
  float _10594;
  float _10596;
  float _10597;
  float _10598;
  float _10603;
  float _10612;
  float _10615;
  float _10616;
  float _10617;
  float _10628;
  float _10630;
  float _10634;
  float _10641;
  float _10642;
  float _10643;
  float _10646;
  float _10649;
  float _10666;
  float _10667;
  float _10668;
  float _10686;
  float _10690;
  float _10713;
  bool _10716;
  bool _10717;
  bool _10718;
  bool _10719;
  float _10751;
  float _10757;
  float _10762;
  float _10770;
  float _10774;
  uint _10804;
  float _10811;
  float _10827;
  float _10828;
  float _10829;
  float _10830;
  float _10831;
  float _10832;
  float _10833;
  float _10834;
  float _10835;
  int _10836;
  bool _10844;
  float4 _10864;
  float _10866;
  float _10867;
  float _10868;
  float _10869;
  float _10873;
  float _10878;
  float _10879;
  float _10881;
  float _10887;
  float _10909;
  float _10910;
  float _10926;
  float _10927;
  float _10929;
  float _10941;
  float _10945;
  float _10949;
  float _10966;
  float _10988;
  bool _10997;
  float _11022;
  float _11023;
  float _11024;
  float _11026;
  float _11027;
  float _11028;
  float _11030;
  float _11031;
  float _11032;
  float _11034;
  float _11035;
  float _11036;
  float _11038;
  float _11039;
  float _11040;
  float _11042;
  float _11043;
  float _11044;
  float _11045;
  float _11047;
  float _11048;
  float _11049;
  float _11050;
  int _11052;
  int _11053;
  float _11055;
  float _11056;
  float _11057;
  float _11058;
  float _11060;
  float _11061;
  float _11062;
  float _11063;
  float _11065;
  float _11066;
  float _11067;
  float _11068;
  float _11070;
  float _11071;
  float _11072;
  float _11074;
  float _11075;
  float _11076;
  float _11077;
  float _11081;
  float _11085;
  float _11089;
  float _11091;
  float _11097;
  float _11100;
  float _11103;
  float _11106;
  float _11111;
  float _11120;
  float _11124;
  float _11125;
  bool _11126;
  bool _11127;
  float _11131;
  float _11137;
  float _11140;
  float _11142;
  bool _11145;
  bool _11146;
  bool _11147;
  bool _11148;
  float _11158;
  float _11159;
  float _11170;
  float _11172;
  float _11173;
  float _11174;
  float _11179;
  float _11188;
  float _11191;
  float _11192;
  float _11193;
  float _11204;
  float _11206;
  float _11210;
  float _11217;
  float _11218;
  float _11219;
  float _11222;
  float _11225;
  float _11242;
  float _11243;
  float _11244;
  float _11262;
  float _11266;
  float _11289;
  bool _11292;
  bool _11293;
  bool _11294;
  bool _11295;
  float _11327;
  float _11333;
  float _11338;
  float _11346;
  float _11350;
  uint _11380;
  float _11388;
  float _11389;
  float _11390;
  float _11394;
  float _11399;
  float _11406;
  float _11428;
  float _11429;
  float _11445;
  float _11446;
  float _11448;
  float _11460;
  float _11464;
  float _11468;
  float _11485;
  float _11507;
  float _11540;
  float _11541;
  float _11542;
  float _11544;
  float _11545;
  float _11546;
  float _11548;
  float _11549;
  float _11550;
  float _11552;
  float _11553;
  float _11554;
  float _11556;
  float _11557;
  float _11558;
  float _11560;
  float _11561;
  float _11562;
  float _11563;
  float _11565;
  float _11566;
  float _11567;
  float _11568;
  int _11570;
  int _11571;
  float _11573;
  float _11574;
  float _11575;
  float _11576;
  float _11578;
  float _11579;
  float _11580;
  float _11581;
  float _11583;
  float _11584;
  float _11585;
  float _11586;
  float _11588;
  float _11589;
  float _11590;
  float _11592;
  float _11593;
  float _11594;
  float _11595;
  float _11599;
  float _11603;
  float _11607;
  float _11609;
  float _11615;
  float _11618;
  float _11621;
  float _11624;
  float _11629;
  float _11638;
  float _11642;
  float _11643;
  bool _11644;
  bool _11645;
  float _11649;
  float _11655;
  float _11658;
  float _11660;
  bool _11663;
  bool _11664;
  bool _11665;
  bool _11666;
  float _11676;
  float _11677;
  float _11688;
  float _11690;
  float _11691;
  float _11692;
  float _11697;
  float _11706;
  float _11709;
  float _11710;
  float _11711;
  float _11722;
  float _11724;
  float _11728;
  float _11735;
  float _11736;
  float _11737;
  float _11740;
  float _11743;
  float _11760;
  float _11761;
  float _11762;
  float _11780;
  float _11784;
  float _11807;
  bool _11810;
  bool _11811;
  bool _11812;
  bool _11813;
  float _11845;
  float _11851;
  float _11856;
  float _11864;
  float _11868;
  uint _11898;
  float _11912;
  float _11916;
  float _11924;
  float _11933;
  float _11958;
  float2 _11961;
  float _11964;
  float2 _11988;
  float _11991;
  float _11996;
  float _12001;
  float _12002;
  float _12003;
  float _12004;
  float _12005;
  float _12006;
  float _12013;
  float _12016;
  float _12018;
  float _12025;
  float _12026;
  float _12027;
  float _12036;
  float _12037;
  float _12038;
  float _12039;
  float _12040;
  float _12042;
  float _12043;
  float _12045;
  float _12046;
  float _12051;
  float _12052;
  float _12053;
  float _12069;
  float _12076;
  float _12080;
  float _12082;
  float _12083;
  float _12088;
  float _12089;
  float _12096;
  float _12110;
  float _12119;
  float _12120;
  float _12121;
  float _12134;
  float _12135;
  float _12136;
  float _12141;
  float _12142;
  float _12148;
  float _12149;
  float _12155;
  float _12156;
  float _12162;
  float _12163;
  float _12165;
  float _12166;
  float _12167;
  float _12169;
  float _12171;
  float _12176;
  float _12177;
  float _12178;
  float _12195;
  float _12200;
  float _12217;
  float _12220;
  float _12229;
  float _12241;
  float _12250;
  float _12259;
  float _12263;
  float _12264;
  float _12280;
  float _12281;
  float _12288;
  float _12289;
  float _12290;
  float _12308;
  float _12310;
  float _12311;
  float _12325;
  float _12332;
  float _12333;
  float _12334;
  float _12351;
  float _12365;
  uint _12397;
  float _12405;
  float _12410;
  float _12414;
  float _12426;
  float _12440;
  float _12441;
  float _12443;
  float _12444;
  float _12445;
  float _12446;
  float _12454;
  float _12455;
  float4 _12459;
  float _12471;
  float _12475;
  float _12484;
  float _12513;
  int _12516;
  float _12525;
  float _12528;
  float _12529;
  float _12530;
  float _12532;
  float _12533;
  float _12535;
  float _12536;
  float _12537;
  float _12538;
  float _12539;
  float _12542;
  float _12552;
  float _12560;
  float _12567;
  bool _12568;
  float _12592;
  float4 _12600;
  float4 _12636;
  float _12658;
  float _12659;
  float _12668;
  float _12669;
  float _12673;
  float _12674;
  float _12677;
  float _12678;
  float _12684;
  float _12685;
  float _12688;
  float _12691;
  float _12694;
  float _12701;
  float _12724;
  float _12725;
  float _12739;
  float _12740;
  float _12742;
  float _12758;
  float _12762;
  float _12779;
  float _12797;
  float _12836;
  float _12837;
  float _12838;
  float _12840;
  float _12841;
  float _12842;
  float _12844;
  float _12845;
  float _12846;
  float _12848;
  float _12849;
  float _12850;
  float _12852;
  float _12853;
  float _12854;
  float _12856;
  float _12857;
  float _12858;
  float _12859;
  float _12861;
  float _12862;
  float _12863;
  float _12864;
  int _12866;
  int _12867;
  float _12869;
  float _12870;
  float _12871;
  float _12872;
  float _12874;
  float _12875;
  float _12876;
  float _12877;
  float _12879;
  float _12880;
  float _12881;
  float _12882;
  float _12884;
  float _12885;
  float _12886;
  float _12888;
  float _12889;
  float _12890;
  float _12891;
  float _12895;
  float _12899;
  float _12903;
  float _12905;
  float _12911;
  float _12914;
  float _12917;
  float _12920;
  float _12925;
  float _12934;
  float _12938;
  float _12939;
  bool _12940;
  bool _12941;
  float _12945;
  float _12951;
  float _12954;
  float _12956;
  bool _12959;
  bool _12960;
  bool _12961;
  bool _12962;
  float _12972;
  float _12973;
  float _12984;
  float _12986;
  float _12987;
  float _12988;
  float _12993;
  float _13002;
  float _13005;
  float _13006;
  float _13007;
  float _13018;
  float _13020;
  float _13024;
  float _13031;
  float _13032;
  float _13033;
  float _13036;
  float _13039;
  float _13056;
  float _13057;
  float _13058;
  float _13076;
  float _13080;
  float _13103;
  bool _13106;
  bool _13107;
  bool _13108;
  bool _13109;
  float _13141;
  float _13147;
  float _13152;
  float _13159;
  float _13163;
  uint _13193;
  float _13202;
  float _13205;
  float _13211;
  float _13212;
  float _13213;
  float _13214;
  float _13215;
  float _13216;
  float _13237;
  float _13255;
  float _13256;
  float _13258;
  bool _13261;
  float _13262;
  float _13263;
  float _13264;
  bool _13265;
  float _13274;
  float _13277;
  float _13283;
  float _13306;
  float _13311;
  float _13313;
  float _13315;
  float _13321;
  float _13324;
  float _13325;
  float _13339;
  float _13374;
  float _13375;
  float _13376;
  float _13378;
  float _13379;
  float _13380;
  float _13382;
  float _13383;
  float _13384;
  float _13386;
  float _13387;
  float _13388;
  float _13392;
  float _13396;
  float _13400;
  float _13403;
  float _13406;
  float _13409;
  float _13410;
  float _13416;
  float _13422;
  float _13437;
  float _13438;
  float _13439;
  float _13443;
  float _13444;
  float _13445;
  float _13449;
  float _13450;
  float _13451;
  float _13462;
  float _13463;
  uint _13475;
  float _13484;
  float _13488;
  int _13509;
  float _13515;
  float _13516;
  float _13520;
  float _13527;
  float _13532;
  float _13535;
  float _13540;
  float _13549;
  float _13592;
  float _13593;
  float _13609;
  float _13610;
  float _13612;
  float _13624;
  float _13628;
  float _13632;
  float _13651;
  float _13667;
  float _13670;
  float _13671;
  float _13703;
  float _13704;
  float _13705;
  float _13707;
  float _13708;
  float _13709;
  float _13711;
  float _13712;
  float _13713;
  float _13715;
  float _13716;
  float _13717;
  float _13719;
  float _13720;
  float _13721;
  float _13723;
  float _13724;
  float _13725;
  float _13726;
  float _13728;
  float _13729;
  float _13730;
  float _13731;
  int _13733;
  int _13734;
  float _13736;
  float _13737;
  float _13738;
  float _13739;
  float _13741;
  float _13742;
  float _13743;
  float _13744;
  float _13746;
  float _13747;
  float _13748;
  float _13749;
  float _13751;
  float _13752;
  float _13753;
  float _13755;
  float _13756;
  float _13757;
  float _13758;
  float _13762;
  float _13766;
  float _13770;
  float _13772;
  float _13778;
  float _13781;
  float _13784;
  float _13787;
  float _13792;
  float _13801;
  float _13805;
  float _13806;
  bool _13807;
  bool _13808;
  float _13812;
  float _13818;
  float _13821;
  float _13823;
  bool _13826;
  bool _13827;
  bool _13828;
  bool _13829;
  float _13839;
  float _13840;
  float _13851;
  float _13853;
  float _13854;
  float _13855;
  float _13860;
  float _13869;
  float _13872;
  float _13873;
  float _13874;
  float _13885;
  float _13887;
  float _13891;
  float _13898;
  float _13899;
  float _13900;
  float _13903;
  float _13906;
  float _13923;
  float _13924;
  float _13925;
  float _13943;
  float _13947;
  float _13970;
  bool _13973;
  bool _13974;
  bool _13975;
  bool _13976;
  float _14008;
  float _14014;
  float _14019;
  float _14027;
  float _14031;
  uint _14061;
  float _14068;
  float _14084;
  float _14085;
  float _14086;
  float _14087;
  float _14088;
  float _14089;
  float _14090;
  float _14091;
  float _14092;
  int _14093;
  bool _14101;
  float4 _14121;
  float _14123;
  float _14124;
  float _14125;
  float _14126;
  float _14130;
  float _14135;
  float _14136;
  float _14138;
  float _14144;
  float _14166;
  float _14167;
  float _14183;
  float _14184;
  float _14186;
  float _14198;
  float _14202;
  float _14206;
  float _14223;
  float _14245;
  bool _14254;
  float _14279;
  float _14280;
  float _14281;
  float _14283;
  float _14284;
  float _14285;
  float _14287;
  float _14288;
  float _14289;
  float _14291;
  float _14292;
  float _14293;
  float _14295;
  float _14296;
  float _14297;
  float _14299;
  float _14300;
  float _14301;
  float _14302;
  float _14304;
  float _14305;
  float _14306;
  float _14307;
  int _14309;
  int _14310;
  float _14312;
  float _14313;
  float _14314;
  float _14315;
  float _14317;
  float _14318;
  float _14319;
  float _14320;
  float _14322;
  float _14323;
  float _14324;
  float _14325;
  float _14327;
  float _14328;
  float _14329;
  float _14331;
  float _14332;
  float _14333;
  float _14334;
  float _14338;
  float _14342;
  float _14346;
  float _14348;
  float _14354;
  float _14357;
  float _14360;
  float _14363;
  float _14368;
  float _14377;
  float _14381;
  float _14382;
  bool _14383;
  bool _14384;
  float _14388;
  float _14394;
  float _14397;
  float _14399;
  bool _14402;
  bool _14403;
  bool _14404;
  bool _14405;
  float _14415;
  float _14416;
  float _14427;
  float _14429;
  float _14430;
  float _14431;
  float _14436;
  float _14445;
  float _14448;
  float _14449;
  float _14450;
  float _14461;
  float _14463;
  float _14467;
  float _14474;
  float _14475;
  float _14476;
  float _14479;
  float _14482;
  float _14499;
  float _14500;
  float _14501;
  float _14519;
  float _14523;
  float _14546;
  bool _14549;
  bool _14550;
  bool _14551;
  bool _14552;
  float _14584;
  float _14590;
  float _14595;
  float _14603;
  float _14607;
  uint _14637;
  float _14645;
  float _14646;
  float _14647;
  float _14651;
  float _14656;
  float _14663;
  float _14685;
  float _14686;
  float _14702;
  float _14703;
  float _14705;
  float _14717;
  float _14721;
  float _14725;
  float _14742;
  float _14764;
  float _14797;
  float _14798;
  float _14799;
  float _14801;
  float _14802;
  float _14803;
  float _14805;
  float _14806;
  float _14807;
  float _14809;
  float _14810;
  float _14811;
  float _14813;
  float _14814;
  float _14815;
  float _14817;
  float _14818;
  float _14819;
  float _14820;
  float _14822;
  float _14823;
  float _14824;
  float _14825;
  int _14827;
  int _14828;
  float _14830;
  float _14831;
  float _14832;
  float _14833;
  float _14835;
  float _14836;
  float _14837;
  float _14838;
  float _14840;
  float _14841;
  float _14842;
  float _14843;
  float _14845;
  float _14846;
  float _14847;
  float _14849;
  float _14850;
  float _14851;
  float _14852;
  float _14856;
  float _14860;
  float _14864;
  float _14866;
  float _14872;
  float _14875;
  float _14878;
  float _14881;
  float _14886;
  float _14895;
  float _14899;
  float _14900;
  bool _14901;
  bool _14902;
  float _14906;
  float _14912;
  float _14915;
  float _14917;
  bool _14920;
  bool _14921;
  bool _14922;
  bool _14923;
  float _14933;
  float _14934;
  float _14945;
  float _14947;
  float _14948;
  float _14949;
  float _14954;
  float _14963;
  float _14966;
  float _14967;
  float _14968;
  float _14979;
  float _14981;
  float _14985;
  float _14992;
  float _14993;
  float _14994;
  float _14997;
  float _15000;
  float _15017;
  float _15018;
  float _15019;
  float _15037;
  float _15041;
  float _15064;
  bool _15067;
  bool _15068;
  bool _15069;
  bool _15070;
  float _15102;
  float _15108;
  float _15113;
  float _15121;
  float _15125;
  uint _15155;
  float _15169;
  float _15173;
  float _15181;
  float _15190;
  float _15215;
  float2 _15218;
  float _15221;
  float2 _15245;
  float _15256;
  float _15257;
  float _15258;
  float _15259;
  float _15260;
  float _15261;
  float _15268;
  float _15271;
  float _15273;
  float _15280;
  float _15281;
  float _15291;
  float _15292;
  float _15293;
  float _15295;
  float _15297;
  float _15300;
  float _15306;
  float _15307;
  float _15308;
  float _15324;
  float _15331;
  float _15335;
  float _15337;
  float _15338;
  float _15342;
  float _15344;
  float _15351;
  float _15358;
  float _15366;
  float _15375;
  float _15376;
  float _15377;
  float _15390;
  float _15391;
  float _15392;
  float _15394;
  float _15395;
  float _15396;
  float _15397;
  float _15398;
  float _15417;
  float _15421;
  float _15430;
  float _15431;
  float _15432;
  float _15445;
  float _15446;
  float _15447;
  float _15448;
  float _15453;
  float _15470;
  float _15473;
  float _15483;
  float _15484;
  float _15485;
  float _15486;
  float _15543;
  float _15544;
  float _15548;
  float _15552;
  float _15553;
  float _15560;
  float _15561;
  float _15567;
  float _15568;
  float _15569;
  float _15570;
  float _15573;
  float _15575;
  float _15578;
  float _15580;
  float _15582;
  float _15588;
  float _15589;
  float _15595;
  bool _15596;
  float _15620;
  float _15625;
  float4 _15628;
  float4 _15633;
  float _15640;
  float _15641;
  float _15645;
  float _15651;
  float _15652;
  float _15659;
  float _15660;
  float4 _15665;
  float4 _15670;
  float _15674;
  float _15680;
  float _15681;
  float _15682;
  float _15683;
  float _15686;
  float _15689;
  float _15696;
  float _15702;
  bool _15703;
  float _15727;
  float _15732;
  float4 _15733;
  float4 _15737;
  float4 _15747;
  float4 _15751;
  float _15764;
  float _15765;
  float _15766;
  float _15767;
  float _15768;
  float _15769;
  float _15775;
  float _15782;
  float _15783;
  float _15785;
  float _15786;
  float _15787;
  float _15788;
  float _15789;
  float _15810;
  float _15811;
  float _15812;
  float _15813;
  float _15814;
  float _15815;
  bool _15816;
  bool _15822;
  float _15858;
  float _15864;
  float _15871;
  float _15876;
  float _15883;
  float _15884;
  float _15885;
  float _15888;
  float _15908;
  float _15909;
  float _15914;
  float _15917;
  float _15920;
  float _15952;
  float _15979;
  float4 _15980;
  float4 _15984;
  float _15989;
  float _15990;
  float _16000;
  float4 _16004;
  float4 _16008;
  float _16039;
  float4 _16040;
  float4 _16044;
  float4 _16054;
  float4 _16058;
  float _16083;
  float _16084;
  float _16155;
  float _16166;
  float _16167;
  float _16168;
  float _16187;
  float _16188;
  float _16189;
  float _16218;
  float _16237;
  float _16238;
  float _16239;
  float _16240;
  float _16241;
  float _16242;
  float _16244;
  float _16245;
  float _16246;
  float _16249;
  float _16250;
  float _16254;
  float _16361;
  float _16364;
  float _16381;
  uint _16424;
  uint _16603;
  uint _16782;
  uint _16961;
  uint _17140;
  uint _17319;
  uint _17498;
  uint _17677;
  float _17922;
  float _17925;
  float _17931;
  float _17940;
  float _17943;
  float _17947;
  float _17955;
  float _17964;
  bool _17965;
  float _17979;
  float _18002;
  float _18003;
  float _18004;
  float _18005;
  float _18026;
  float _18027;
  float _18040;
  float _18041;
  float _18046;
  float _18049;
  float _18055;
  float _18063;
  float _18094;
  float _18109;
  float _18113;
  float _18128;
  float _18152;
  float _18189;
  float _18191;
  int __loop_jump_target = -1;
  float _30[4];
  float _31[4];
  _36 = (int)((int)((uint)(SV_DispatchThreadID.x) << 16)) | (int)((uint)(SV_DispatchThreadID.x) >> 16);
  _41 = (int)(((int)((uint)((uint)(_36)) << 1)) & -1431655766) | (int)(((uint)((uint)(_36)) >> 1) & 1431655765);
  _46 = (int)(((int)((uint)((uint)(_41)) << 2)) & -858993460) | (int)(((uint)((uint)(_41)) >> 2) & 858993459);
  _51 = (int)(((int)((uint)((uint)(_46)) << 4)) & -252645136) | (int)(((uint)((uint)(_46)) >> 4) & 252645135);
  _58 = ((float)((uint)((uint)((int)(((int)((uint)((uint)(_51)) << 8)) & -16711936) | (int)(((uint)((uint)(_51)) >> 8) & 16711935))))) * 1.4629181e-09f;
  _59 = 1.0f - (((float)((int)((int)(SV_DispatchThreadID.x)))) * 0.00390625f);
  _62 = sqrt(1.0f - (_59 * _59));
  _64 = cos(_58) * _62;
  _66 = sin(_58) * _62;
  _67 = (float)((uint)(SV_DispatchThreadID.x));
  _73 = frac(frac(dot(float2((_67 * 32.665f), (_67 * 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _76 = (_renderFlags.x > 0.5f);
  _79 = (uint)((uint)(_frameNumber.x)) % (uint)(6);
  if (!(_79 == 0)) {
    _82 = (uint)(SV_DispatchThreadID.x) << 2;
    _86 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(1))].w;
    _89 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(2))].x;
    _90 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(2))].y;
    _91 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(2))].z;
    _92 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(2))].w;
    _95 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(3))].x;
    _96 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(3))].y;
    _97 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(3))].z;
    _98 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_82) | (int)(3))].w;
    _100 = __3__39__0__1__g_precomputedAmbientCacheUAV[_82].x;
    _101 = __3__39__0__1__g_precomputedAmbientCacheUAV[_82].y;
    _102 = __3__39__0__1__g_precomputedAmbientCacheUAV[_82].z;
    _103 = __3__39__0__1__g_precomputedAmbientCacheUAV[_82].w;
    _108 = _98;
    _109 = ((int)(uint)((int)(_92 > 0.5f)));
    _110 = ((int)((uint)(_86)));
    _111 = _95;
    _112 = _96;
    _113 = _97;
    _114 = _89;
    _115 = _90;
    _116 = _91;
    _117 = _100;
    _118 = _101;
    _119 = _102;
    _120 = _103;
  } else {
    _108 = 128.0f;
    _109 = 0;
    _110 = 0;
    _111 = 0.0f;
    _112 = 0.0f;
    _113 = 0.0f;
    _114 = 0.0f;
    _115 = 0.0f;
    _116 = 0.0f;
    _117 = 0.0f;
    _118 = 0.0f;
    _119 = 0.0f;
    _120 = 0.0f;
  }
  _136 = _atmosphereThickness + _earthRadius;
  _137 = _earthRadius + _viewPos.y;
  _138 = dot(float3(_64, _59, _66), float3(_64, _59, _66));
  _140 = dot(float3(_viewPos.x, _137, _viewPos.z), float3(_64, _59, _66)) * 2.0f;
  _141 = dot(float3(_viewPos.x, _137, _viewPos.z), float3(_viewPos.x, _137, _viewPos.z));
  _144 = _140 * _140;
  _145 = _138 * 4.0f;
  _147 = _144 - ((_141 - (_136 * _136)) * _145);
  if (!(_147 < 0.0f)) {
    _155 = ((sqrt(_147) - _140) / (_138 * 2.0f));
  } else {
    _155 = -1.0f;
  }
  if (!(_155 <= 0.0f)) {
    _161 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
    _173 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
    _174 = _173 * 57.295776f;
    if (_174 > (_moonSizeAngle + _sunSizeAngle)) {
      _222 = (_sunSizeAngle * _sunSizeAngle);
      _223 = 0.0f;
    } else {
      _187 = _moonSizeAngle * _moonSizeAngle;
      _188 = _sunSizeAngle * _sunSizeAngle;
      if (!(_174 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
        _193 = _174 * _174;
        _196 = _173 * 114.59155f;
        _202 = acos(min(max((((_193 + _188) - _187) / (_196 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
        _210 = acos(min(max((((_193 - _188) + _187) / (_moonSizeAngle * _196)), -1.0f), 1.0f)) * 2.0f;
        _222 = _188;
        _223 = (((((_210 * _187) + (_202 * _188)) - (sin(_202) * _188)) - (sin(_210) * _187)) * 0.5f);
      } else {
        _222 = _188;
        _223 = (min(_188, _187) * 3.1415927f);
      }
    }
    _231 = min(16.0f, (_atmosphereThickness + -16.0f));
    _239 = max(_231, 0.0f);
    _246 = (-0.0f - sqrt((_239 + (_earthRadius * 2.0f)) * _239)) / (_239 + _earthRadius);
    _247 = (_246 < 1.0f);
    if (!_247) {
      _259 = ((exp2(log2(saturate((_246 + -1.0f) / (_246 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    } else {
      _259 = 0.99609375f;
    }
    _261 = (exp2(log2(saturate((_231 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
    // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
    // Description: Assembles the Rayleigh beta triple through the shared spectral helper so every site in this shader derives it identically; with Sky Scattering off the helper reproduces the native packed channels exactly.
    float3 _rndx_beta = SkySpectralRayleighBeta(_rayleighScatteringColor);
    _284 = _rndx_beta.r + (_ozoneRatio * SKY_OZONE_1);
    _285 = _rndx_beta.g + (_ozoneRatio * SKY_OZONE_2);
    _286 = _rndx_beta.b + (_ozoneRatio * SKY_OZONE_3);
    // RenoDX: <<< [Patch: SkySpectralRayleigh]
    _287 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_261, _259), 0.0f))).x) * -1.442695f;
    _299 = ((1.0f - saturate(_223 / (_222 * 3.1415927f))) * _161) * ((_sunLightPreset * _sunLightIntensity) / (dot(float3(exp2(_284 * _287), exp2(_285 * _287), exp2(_286 * _287)), float3(0.299f, 0.587f, 0.114f)) * _161));
    _300 = dot(float3(_64, _59, _66), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
    _303 = _cloudPhaseConstFront * _cloudPhaseConstFront;
    _310 = (_300 * _300) + 1.0f;
    _311 = _303 + 1.0f;
    _319 = (((1.0f - _303) * 3.0f) / ((_303 + 2.0f) * 2.0f)) * 0.07957747f;
    _320 = (_310 / exp2(log2(_311 - ((_300 * 2.0f) * _cloudPhaseConstFront)) * 1.5f)) * _319;
    _322 = _cloudPhaseConstBack * _cloudPhaseConstBack;
    _328 = _322 + 1.0f;
    _329 = _cloudPhaseConstBack * -2.0f;
    _336 = (((1.0f - _322) * 3.0f) / ((_322 + 2.0f) * 2.0f)) * 0.039788734f;
    _338 = ((_310 / exp2(log2(_328 - (_329 * _300)) * 1.5f)) * _336) + _320;
    _342 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
    if (!_247) {
      _357 = ((exp2(log2(saturate((_246 + -1.0f) / (_246 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    } else {
      _357 = 0.99609375f;
    }
    _360 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_261, _357), 0.0f))).x) * -1.442695f;
    _370 = ((_moonLightPreset * _moonLightIntensity) / (dot(float3(exp2(_360 * _284), exp2(_360 * _285), exp2(_360 * _286)), float3(0.299f, 0.587f, 0.114f)) * _342)) * _342;
    _371 = dot(float3(_64, _59, _66), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
    _373 = (_371 * _371) + 1.0f;
    _374 = _371 * 2.0f;
    _381 = (_373 / exp2(log2(_311 - (_374 * _cloudPhaseConstFront)) * 1.5f)) * _319;
    _389 = ((_373 / exp2(log2(_328 - (_329 * _371)) * 1.5f)) * _336) + _381;
    _392 = min(_cloudVisibleRange, _cloudVisibleRange);
    _393 = (_79 == 5);
    if (_76) {
      if ((_cloudDensityVolumeInfo.y & 1) == 0) {
        _521 = 0.0f;
        _522 = 3.4028235e+38f;
        _523 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
      } else {
        if (!(_cloudDensityVolumeInfo.x == 0)) {
          _408 = 0;
          _409 = 3.4028235e+38f;
          _410 = 0.0f;
          _411 = 0;
          while(true) {
            _414 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[0].x;
            _415 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[1].x;
            _416 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[2].x;
            _418 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[0].y;
            _419 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[1].y;
            _420 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[2].y;
            _422 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[0].z;
            _423 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[1].z;
            _424 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[2].z;
            _426 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[0].w;
            _427 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[1].w;
            _428 = __3__37__0__0__g_cloudDensityVolumes[_408]._relativeWorldToLocal[2].w;
            _432 = mad(_422, _viewPos.z, mad(_418, _viewPos.y, (_414 * _viewPos.x))) + _426;
            _436 = mad(_423, _viewPos.z, mad(_419, _viewPos.y, (_415 * _viewPos.x))) + _427;
            _440 = mad(_424, _viewPos.z, mad(_420, _viewPos.y, (_416 * _viewPos.x))) + _428;
            _443 = mad(_422, _66, mad(_418, _59, (_414 * _64)));
            _446 = mad(_423, _66, mad(_419, _59, (_415 * _64)));
            _449 = mad(_424, _66, mad(_420, _59, (_416 * _64)));
            _450 = abs(_443);
            if (!(_450 < 1e-06f) || !(abs(_432) > 0.5f)) {
              _456 = abs(_446);
              if (!(_456 < 1e-06f) || !(abs(_436) > 0.5f)) {
                _462 = abs(_449);
                if (!(_462 < 1e-06f) || !(abs(_440) > 0.5f)) {
                  _477 = max(_450, 1e-06f) * select((_443 < 0.0f), -1.0f, 1.0f);
                  _478 = max(_456, 1e-06f) * select((_446 < 0.0f), -1.0f, 1.0f);
                  _479 = max(_462, 1e-06f) * select((_449 < 0.0f), -1.0f, 1.0f);
                  _483 = (-0.5f - _432) / _477;
                  _484 = (-0.5f - _436) / _478;
                  _485 = (-0.5f - _440) / _479;
                  _489 = (0.5f - _432) / _477;
                  _490 = (0.5f - _436) / _478;
                  _491 = (0.5f - _440) / _479;
                  _502 = max(max(max(min(_483, _489), min(_484, _490)), min(_485, _491)), 0.0f);
                  _503 = min(min(min(max(_483, _489), max(_484, _490)), max(_485, _491)), _155);
                  if (!(_503 < _502)) {
                    _512 = min(_409, _502);
                    _513 = max(_410, _503);
                    _514 = ((int)(_411) | (int)((int)((uint)(1) << (_408 & 31))));
                  } else {
                    _512 = _409;
                    _513 = _410;
                    _514 = _411;
                  }
                } else {
                  _512 = _409;
                  _513 = _410;
                  _514 = _411;
                }
              } else {
                _512 = _409;
                _513 = _410;
                _514 = _411;
              }
            } else {
              _512 = _409;
              _513 = _410;
              _514 = _411;
            }
            _515 = (uint)((uint)(_408)) + (uint)(1);
            if ((uint)_515 < (uint)_cloudDensityVolumeInfo.x) {
              _408 = _515;
              _409 = _512;
              _410 = _513;
              _411 = _514;
              continue;
            }
            _521 = _512;
            _522 = _513;
            _523 = _514;
            break;
          }
        } else {
          _521 = 3.4028235e+38f;
          _522 = 0.0f;
          _523 = 0;
        }
      }
      _529 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0078125f));
      _535 = (uint)((uint)((int)((int)(_79) << 7) + (int)(128))) / (uint)(6);
      if ((uint)_110 < (uint)_535) {
        _539 = 1;
        _540 = 0.0f;
        _541 = 0.0f;
        _542 = 0.0f;
        _543 = 0.0f;
        _544 = _120;
        _545 = _119;
        _546 = _118;
        _547 = _117;
        _548 = _116;
        _549 = _115;
        _550 = _114;
        _551 = _113;
        _552 = _112;
        _553 = _111;
        _554 = _110;
        _555 = _109;
        _556 = _108;
        while(true) {
          _558 = (float)((int)(_554));
          _568 = (((exp2(select(((uint)_554 < (uint)12), (_558 * 0.33f), (_558 + -8.039999f)) * _529) + -1.0f) * (_392 + -128.0f)) / (exp2(_529 * 128.0f) + -1.0f)) + 128.0f;
          _569 = min(_568, _155);
          _571 = max(0.0f, (_569 - _556));
          _573 = (_571 * _73) + _556;
          _576 = _distanceScale * _571;
          _580 = (_573 * _64) + _viewPos.x;
          _581 = (_573 * _59) + _viewPos.y;
          _582 = (_573 * _66) + _viewPos.z;
          // [sem: _3__36__0__0__g_climateTex2_sampleLod]
          _604 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_580 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_582 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
          _611 = select(((_573 >= _521) && (_573 <= _522)), _523, 0);
          _615 = select(((_569 >= _521) && (_569 <= _522)), _523, 0);
          _619 = (_569 * _64) + _viewPos.x;
          _620 = (_569 * _59) + _viewPos.y;
          _621 = (_569 * _66) + _viewPos.z;
          _625 = _619 - _viewPos.x;
          _626 = _621 - _viewPos.z;
          _630 = sqrt((_625 * _625) + (_626 * _626));
          _637 = _cloudAltitude - (max(((_630 * _630) + -400000.0f), 0.0f) * 1e-06f);
          _640 = _cloudDetailScale * 0.004f;
          _643 = _cloudBaseScale * 0.0004f;
          _648 = _earthRadius + _620;
          _657 = ((sqrt(((_621 * _621) + (_619 * _619)) + (_648 * _648)) - _637) - _earthRadius) / _cloudThickness;
          if (!((_657 < 0.0f) || (_657 > 1.0f))) {
            _681 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _682 = _620 - _637;
            _698 = _640 / _643;
            _699 = _698 * _643;
            _701 = _698 * _681;
            _713 = saturate(max((_630 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
            _717 = (4.0f - (_713 * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _721 = _699 * 4.355f;
            _738 = 1.0f - sqrt(saturate((1.0f - _657) * 1.4285715f));
            _760 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_640 * _619) - (_699 * _cloudScroll.x)), ((_682 * _640) - _701), ((_640 * _621) - (_699 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_713 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_717 * _619) - (_721 * _cloudScroll.x)), ((_717 * _682) - (_701 * 4.355f)), ((_717 * _621) - (_721 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_657 * 4.0f) * 0.8f) + 0.2f);
            _767 = (saturate(((saturate(saturate(((_604.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_643 * (_619 - _cloudScroll.x)), ((_643 * _682) - _681), (_643 * (_621 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_738 * 0.5f), ((_738 * _738) * _738))) * saturate(_657 * 10.0f)) - _760) / (1.0f - _760)) * _cloudAlpha);
          } else {
            _767 = 0.0f;
          }
          _769 = (_cloudFadeRange > 1e-05f);
          if (_769) {
            _779 = saturate((((1.0f - _cloudNear) * _630) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _779 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_615 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _790 = 0.0f;
            _791 = 0;
            while(true) {
              _1155 = _790;
              if (!((((int)((uint)(1) << (_791 & 31))) & _615) == 0)) {
                _799 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[0].x;
                _800 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[1].x;
                _801 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[2].x;
                _803 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[0].y;
                _804 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[1].y;
                _805 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[2].y;
                _807 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[0].z;
                _808 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[1].z;
                _809 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[2].z;
                _811 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[0].w;
                _812 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[1].w;
                _813 = __3__37__0__0__g_cloudDensityVolumes[_791]._relativeWorldToLocal[2].w;
                _815 = __3__37__0__0__g_cloudDensityVolumes[_791]._shapeParameter.x;
                _816 = __3__37__0__0__g_cloudDensityVolumes[_791]._shapeParameter.z;
                _817 = __3__37__0__0__g_cloudDensityVolumes[_791]._shapeParameter.w;
                _819 = __3__37__0__0__g_cloudDensityVolumes[_791]._macroNoiseParameter.x;
                _820 = __3__37__0__0__g_cloudDensityVolumes[_791]._macroNoiseParameter.y;
                _821 = __3__37__0__0__g_cloudDensityVolumes[_791]._macroNoiseParameter.z;
                _822 = __3__37__0__0__g_cloudDensityVolumes[_791]._macroNoiseParameter.w;
                _824 = __3__37__0__0__g_cloudDensityVolumes[_791]._detailNoiseParameter.x;
                _825 = __3__37__0__0__g_cloudDensityVolumes[_791]._detailNoiseParameter.y;
                _826 = __3__37__0__0__g_cloudDensityVolumes[_791]._detailNoiseParameter.z;
                _827 = __3__37__0__0__g_cloudDensityVolumes[_791]._detailNoiseParameter.w;
                _829 = __3__37__0__0__g_cloudDensityVolumes[_791]._modeParameter.x;
                _830 = __3__37__0__0__g_cloudDensityVolumes[_791]._modeParameter.y;
                _832 = __3__37__0__0__g_cloudDensityVolumes[_791]._vortexParameter.x;
                _833 = __3__37__0__0__g_cloudDensityVolumes[_791]._vortexParameter.y;
                _834 = __3__37__0__0__g_cloudDensityVolumes[_791]._vortexParameter.z;
                _835 = __3__37__0__0__g_cloudDensityVolumes[_791]._vortexParameter.w;
                _837 = __3__37__0__0__g_cloudDensityVolumes[_791]._spiralParameter.x;
                _838 = __3__37__0__0__g_cloudDensityVolumes[_791]._spiralParameter.y;
                _839 = __3__37__0__0__g_cloudDensityVolumes[_791]._spiralParameter.z;
                _840 = __3__37__0__0__g_cloudDensityVolumes[_791]._spiralParameter.w;
                _842 = __3__37__0__0__g_cloudDensityVolumes[_791]._animationParameter.x;
                _843 = __3__37__0__0__g_cloudDensityVolumes[_791]._animationParameter.y;
                _844 = __3__37__0__0__g_cloudDensityVolumes[_791]._animationParameter.z;
                _845 = __3__37__0__0__g_cloudDensityVolumes[_791]._animationParameter.w;
                _847 = __3__37__0__0__g_cloudDensityVolumes[_791]._flowParameter.x;
                _848 = __3__37__0__0__g_cloudDensityVolumes[_791]._flowParameter.y;
                _849 = __3__37__0__0__g_cloudDensityVolumes[_791]._flowParameter.z;
                _851 = __3__37__0__0__g_cloudDensityVolumes[_791]._tornadoParameter.x;
                _852 = __3__37__0__0__g_cloudDensityVolumes[_791]._tornadoParameter.y;
                _853 = __3__37__0__0__g_cloudDensityVolumes[_791]._tornadoParameter.z;
                _854 = __3__37__0__0__g_cloudDensityVolumes[_791]._tornadoParameter.w;
                _858 = mad(_807, _621, mad(_803, _620, (_799 * _619))) + _811;
                _862 = mad(_808, _621, mad(_804, _620, (_800 * _619))) + _812;
                _866 = mad(_809, _621, mad(_805, _620, (_801 * _619))) + _813;
                _868 = abs(_862);
                _874 = max((abs(_858) + -0.5f), max((_868 + -0.5f), (abs(_866) + -0.5f)));
                if (!(_874 >= 0.0f)) {
                  _877 = __3__37__0__0__g_cloudDensityVolumes[_791]._shapeParameter.y;
                  _880 = max((saturate(_877) * 0.5f), 0.0001f);
                  _883 = saturate((_880 + _874) / _880);  // [sem: expr_sat]
                  _888 = 1.0f - ((_883 * _883) * (3.0f - (_883 * 2.0f)));
                  if (!(_888 <= 0.0f)) {
                    _897 = sqrt((_866 * _866) + (_858 * _858)) * 2.0f;
                    _901 = saturate(1.0f - (_897 / max(_833, 0.0001f)));  // [sem: expr_sat]
                    _902 = _time.x * _845;
                    _903 = (_829 == 1);
                    _904 = (_829 == 2);
                    if (_903) {
                      _981 = exp2(log2(_901) * max(_840, 0.0001f));
                      _983 = max(_839, 0.0001f);
                      _987 = _862 / (((max(_838, 0.0001f) - _983) * _981) + _983);
                      _994 = (((_901 * _901) * _832) * ((_897 * _834) + _862)) - (_901 * _902);
                      _995 = sin(_994);
                      _996 = cos(_994);
                      _999 = (_996 * _858) - (_995 * _866);
                      _1002 = (_996 * _866) + (_995 * _858);
                      if (_904) {
                        _1004 = 0.0f;
                        _1005 = 1.0f;
                        _1006 = _981;
                        _1007 = _901;
                        _1008 = _999;
                        _1009 = _987;
                        _1010 = _1002;
                        _1030 = _1005;
                        _1031 = _1006;
                        _1032 = _1007;
                        _1033 = _1008;
                        _1034 = _1009;
                        _1035 = _1010;
                        _1036 = max(_1004, ((_868 * 2.0f) + -1.0f));
                      } else {
                        _1015 = _981;
                        _1016 = _999;
                        _1017 = _987;
                        _1018 = _1002;
                        _1019 = _1016 * 2.0f;
                        _1020 = _1017 * 2.0f;
                        _1021 = _1018 * 2.0f;
                        _1030 = 1.0f;
                        _1031 = _1015;
                        _1032 = _901;
                        _1033 = _1016;
                        _1034 = _1017;
                        _1035 = _1018;
                        _1036 = (sqrt(((_1020 * _1020) + (_1019 * _1019)) + (_1021 * _1021)) + -1.0f);
                      }
                    } else {
                      if (_904) {
                        _908 = saturate(_862 + 0.5f);  // [sem: expr_sat]
                        _914 = max(_851, 0.0001f);
                        _917 = ((max(_852, 0.0001f) - _914) * exp2(log2(_908) * max(_853, 0.0001f))) + _914;
                        _919 = atan(_866 / _858);
                        _922 = (_858 < 0.0f);
                        _923 = (_858 == 0.0f);
                        _924 = (_866 >= 0.0f);
                        _925 = (_866 < 0.0f);
                        _935 = max(((float)((uint)((uint)(_830)))), 1.0f);
                        _936 = _908 * _834;
                        _947 = _917 * _827;
                        _949 = max((_917 - _947), 0.0f);
                        _950 = _897 - _949;
                        _951 = _949 * (acos(min(max(cos(((((_936 * -6.2831855f) - _902) + select((_923 && _924), 1.5707964f, select((_923 && _925), -1.5707964f, select((_922 && _925), (_919 + -3.1415927f), select((_922 && _924), (_919 + 3.1415927f), _919))))) * _935) + _837), -1.0f), 1.0f)) / _935);
                        _956 = _897 - _917;
                        _965 = saturate(1.0f - (_897 / _917));  // [sem: expr_sat]
                        _968 = ((_965 + _936) * _832) - _902;
                        _969 = sin(_968);
                        _970 = cos(_968);
                        _1004 = ((saturate(_835) * (((-0.0f - _956) - _947) + sqrt((_950 * _950) + (_951 * _951)))) + _956);
                        _1005 = _917;
                        _1006 = 0.0f;
                        _1007 = _965;
                        _1008 = ((_970 * _858) - (_969 * _866));
                        _1009 = _862;
                        _1010 = ((_970 * _866) + (_969 * _858));
                        _1030 = _1005;
                        _1031 = _1006;
                        _1032 = _1007;
                        _1033 = _1008;
                        _1034 = _1009;
                        _1035 = _1010;
                        _1036 = max(_1004, ((_868 * 2.0f) + -1.0f));
                      } else {
                        _1015 = 0.0f;
                        _1016 = _858;
                        _1017 = _862;
                        _1018 = _866;
                        _1019 = _1016 * 2.0f;
                        _1020 = _1017 * 2.0f;
                        _1021 = _1018 * 2.0f;
                        _1030 = 1.0f;
                        _1031 = _1015;
                        _1032 = _901;
                        _1033 = _1016;
                        _1034 = _1017;
                        _1035 = _1018;
                        _1036 = (sqrt(((_1020 * _1020) + (_1019 * _1019)) + (_1021 * _1021)) + -1.0f);
                      }
                    }
                    if (_820 > 0.0f) {
                      _1039 = _time.x * _843;
                      _1043 = max(_819, 0.0001f);
                      _1061 = (_1036 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1039 * _847) + _821) + (_1043 * _1033)), (((_1039 * _848) + _822) + (_1043 * _1034)), (((_1039 * _849) + _826) + (_1043 * _1035))), 0.0f)).x) + -0.5f) * _820));
                    } else {
                      _1061 = _1036;
                    }
                    if (_903 && (_835 > 0.0f)) {
                      _1066 = atan(_866 / _858);
                      _1069 = (_858 < 0.0f);
                      _1070 = (_858 == 0.0f);
                      _1071 = (_866 >= 0.0f);
                      _1072 = (_866 < 0.0f);
                      _1094 = (_1061 - (((_835 * 0.5f) * _1032) * cos(((((_897 * _834) - _902) + select((_1070 && _1071), 1.5707964f, select((_1070 && _1072), -1.5707964f, select((_1069 && _1072), (_1066 + -3.1415927f), select((_1069 && _1071), (_1066 + 3.1415927f), _1066))))) * max(((float)((uint)((uint)(_830)))), 1.0f)) + _837)));
                    } else {
                      _1094 = _1061;
                    }
                    if (_904 && (_854 > 0.0f)) {
                      _1102 = max(_1094, ((_1030 * _854) - _897));
                    } else {
                      _1102 = _1094;
                    }
                    _1104 = max(_817, 0.0001f);
                    _1110 = saturate((((_816 - (_1031 * _842)) + _1102) + _1104) / (_1104 * 2.0f));  // [sem: expr_sat]
                    _1115 = 1.0f - ((_1110 * _1110) * (3.0f - (_1110 * 2.0f)));
                    if (!((_1115 >= 1.0f) || ((_825 <= 0.0f) || (_1115 <= 0.0f)))) {
                      _1122 = _time.x * _844;
                      _1126 = max(_824, 0.0001f);
                      // [sem: expr_sat]
                      _1150 = saturate(_1115 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1122 * _847) + _821) + (_1126 * _1033)), (((_1122 * _848) + _822) + (_1126 * _1034)), (((_1122 * _849) + _826) + (_1126 * _1035))), 0.0f)).x) * _825) * saturate(1.0f - abs((_1115 * 2.0f) + -1.0f))));
                    } else {
                      _1150 = _1115;  // [sem: expr_sat]
                    }
                    _1155 = (((_888 * _815) * _1150) + _790);
                  } else {
                    _1155 = _790;
                  }
                } else {
                  _1155 = _790;
                }
              } else {
                _1155 = _790;
              }
              _1156 = (uint)((uint)(_791)) + (uint)(1);
              if ((uint)_1156 < (uint)_cloudDensityVolumeInfo.x) {
                _790 = _1155;
                _791 = _1156;
                continue;
              }
              while(true) {
                _1161 = saturate(_1155);  // [sem: _1155_sat]
                break;
              }
              break;
            }
          } else {
            _1161 = 0.0f;  // [sem: _1155_sat]
          }
          _1164 = (saturate(_1161 + (_779 * _767)) > 0.001f);
          if ((_555 != 0) && _1164) {
            _4305 = _556;
            _4306 = 0;
            _4307 = ((int)((uint)((uint)(_554)) + (uint)(-2)));
            _4308 = _553;
            _4309 = _552;
            _4310 = _551;
            _4311 = _550;
            _4312 = _549;
            _4313 = _548;
            _4314 = _547;
            _4315 = _546;
            _4316 = _545;
            _4317 = _544;
            _4318 = _543;
            _4319 = _542;
            _4320 = _541;
            _4321 = _540;
            _4322 = _539;
            _4323 = 0;
          } else {
            _1170 = ((uint)_554 < (uint)126);
            _1172 = ((int)(uint)(_1164)) ^ 1;
            _1175 = (uint)((uint)(_554)) + (uint)((uint)(select(_1170, _1172, 0)));
            _1177 = _cloudThickness + _cloudAltitude;
            if (!(_568 < _155) || !(((_523 != 0) && (_568 < _522)) || (_581 < _1177))) {
              _1187 = (_viewPos.y > _1177);
            } else {
              _1187 = true;
            }
            _1200 = _581 + _earthRadius;
            _1201 = _580 * _580;
            _1203 = _582 * _582;
            _1204 = _1203 + _1201;
            _1206 = sqrt(_1204 + (_1200 * _1200));
            _1207 = _580 / _1206;
            _1208 = _1200 / _1206;
            _1209 = _582 / _1206;
            _1210 = _1206 - _earthRadius;
            if (_1210 > 0.0f) {
              _1213 = dot(float3(_1207, _1208, _1209), float3(_64, _59, _66));
              _1223 = min(max(_1210, 16.0f), (_atmosphereThickness + -16.0f));
              _1231 = max(_1223, 0.0f);
              _1238 = (-0.0f - sqrt((_1231 + (_earthRadius * 2.0f)) * _1231)) / (_1231 + _earthRadius);
              _1239 = (_1213 > _1238);
              if (_1239) {
                _1261 = ((exp2(log2(saturate((_1213 - _1238) / (1.0f - _1238))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _1261 = ((exp2(log2(saturate((_1238 - _1213) / (_1238 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _1263 = (exp2(log2(saturate((_1223 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _1270 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1263, _1261, ((1.0f - exp2(-1.1541561f - (dot(float3(_1207, _1208, _1209), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_1239) {
                _1300 = ((exp2(log2(saturate((_1213 - _1238) / (1.0f - _1238))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _1300 = ((exp2(log2(saturate((_1238 - _1213) / (_1238 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _1306 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1263, _1300, ((1.0f - exp2(-1.1541561f - (dot(float3(_1207, _1208, _1209), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _1314 = _1270.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1315 = _1270.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1316 = _1270.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1317 = (_1306.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1318 = (_1306.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1319 = (_1306.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _1314 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1315 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1316 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1317 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1318 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _1319 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _1328 = max(_1210, 0.01f);
            _1329 = -0.0f - _1328;
            _1338 = exp2((_1329 / _rayleighScaledHeight) * 1.442695f);
            _1339 = exp2((_1329 / _mieScaledHeight) * 1.442695f);
            _1340 = _580 - _viewPos.x;
            _1341 = _582 - _viewPos.z;
            _1344 = (_1340 * _1340) + (_1341 * _1341);
            _1345 = sqrt(_1344);
            _1349 = max(((_1345 * _1345) + -400000.0f), 0.0f) * 1e-06f;
            _1350 = _cloudAltitude - _1349;
            _1351 = _earthRadius + _581;
            _1357 = ((sqrt((_1351 * _1351) + _1204) - _earthRadius) - _1350) / _cloudThickness;
            if (!((_1357 < 0.0f) || (_1357 > 1.0f))) {
              _1381 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _1382 = _581 - _1350;
              _1398 = _640 / _643;
              _1399 = _1398 * _643;
              _1401 = _1398 * _1381;
              _1417 = (4.0f - (saturate(max((_1345 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
              _1421 = _1399 * 4.355f;
              _1438 = 1.0f - sqrt(saturate((1.0f - _1357) * 1.4285715f));
              _1457 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_640 * _580) - (_1399 * _cloudScroll.x)), ((_1382 * _640) - _1401), ((_640 * _582) - (_1399 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1417 * _580) - (_1421 * _cloudScroll.x)), ((_1417 * _1382) - (_1401 * 4.355f)), ((_1417 * _582) - (_1421 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1357 * 4.0f) * 0.8f) + 0.2f);
              _1464 = (saturate(((saturate(saturate(((_604.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_643 * (_580 - _cloudScroll.x)), ((_1382 * _643) - _1381), (_643 * (_582 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1438 * 0.5f), ((_1438 * _1438) * _1438))) * saturate(_1357 * 10.0f)) - _1457) / (1.0f - _1457)) * _cloudAlpha);
            } else {
              _1464 = 0.0f;
            }
            if (_769) {
              _1474 = saturate(((_1345 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _1474 = 1.0f;  // [sem: expr_sat]
            }
            if (!((_611 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
              _1485 = 0.0f;
              _1486 = 0;
              while(true) {
                _1850 = _1485;
                if (!((((int)((uint)(1) << (_1486 & 31))) & _611) == 0)) {
                  _1494 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[0].x;
                  _1495 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[1].x;
                  _1496 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[2].x;
                  _1498 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[0].y;
                  _1499 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[1].y;
                  _1500 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[2].y;
                  _1502 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[0].z;
                  _1503 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[1].z;
                  _1504 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[2].z;
                  _1506 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[0].w;
                  _1507 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[1].w;
                  _1508 = __3__37__0__0__g_cloudDensityVolumes[_1486]._relativeWorldToLocal[2].w;
                  _1510 = __3__37__0__0__g_cloudDensityVolumes[_1486]._shapeParameter.x;
                  _1511 = __3__37__0__0__g_cloudDensityVolumes[_1486]._shapeParameter.z;
                  _1512 = __3__37__0__0__g_cloudDensityVolumes[_1486]._shapeParameter.w;
                  _1514 = __3__37__0__0__g_cloudDensityVolumes[_1486]._macroNoiseParameter.x;
                  _1515 = __3__37__0__0__g_cloudDensityVolumes[_1486]._macroNoiseParameter.y;
                  _1516 = __3__37__0__0__g_cloudDensityVolumes[_1486]._macroNoiseParameter.z;
                  _1517 = __3__37__0__0__g_cloudDensityVolumes[_1486]._macroNoiseParameter.w;
                  _1519 = __3__37__0__0__g_cloudDensityVolumes[_1486]._detailNoiseParameter.x;
                  _1520 = __3__37__0__0__g_cloudDensityVolumes[_1486]._detailNoiseParameter.y;
                  _1521 = __3__37__0__0__g_cloudDensityVolumes[_1486]._detailNoiseParameter.z;
                  _1522 = __3__37__0__0__g_cloudDensityVolumes[_1486]._detailNoiseParameter.w;
                  _1524 = __3__37__0__0__g_cloudDensityVolumes[_1486]._modeParameter.x;
                  _1525 = __3__37__0__0__g_cloudDensityVolumes[_1486]._modeParameter.y;
                  _1527 = __3__37__0__0__g_cloudDensityVolumes[_1486]._vortexParameter.x;
                  _1528 = __3__37__0__0__g_cloudDensityVolumes[_1486]._vortexParameter.y;
                  _1529 = __3__37__0__0__g_cloudDensityVolumes[_1486]._vortexParameter.z;
                  _1530 = __3__37__0__0__g_cloudDensityVolumes[_1486]._vortexParameter.w;
                  _1532 = __3__37__0__0__g_cloudDensityVolumes[_1486]._spiralParameter.x;
                  _1533 = __3__37__0__0__g_cloudDensityVolumes[_1486]._spiralParameter.y;
                  _1534 = __3__37__0__0__g_cloudDensityVolumes[_1486]._spiralParameter.z;
                  _1535 = __3__37__0__0__g_cloudDensityVolumes[_1486]._spiralParameter.w;
                  _1537 = __3__37__0__0__g_cloudDensityVolumes[_1486]._animationParameter.x;
                  _1538 = __3__37__0__0__g_cloudDensityVolumes[_1486]._animationParameter.y;
                  _1539 = __3__37__0__0__g_cloudDensityVolumes[_1486]._animationParameter.z;
                  _1540 = __3__37__0__0__g_cloudDensityVolumes[_1486]._animationParameter.w;
                  _1542 = __3__37__0__0__g_cloudDensityVolumes[_1486]._flowParameter.x;
                  _1543 = __3__37__0__0__g_cloudDensityVolumes[_1486]._flowParameter.y;
                  _1544 = __3__37__0__0__g_cloudDensityVolumes[_1486]._flowParameter.z;
                  _1546 = __3__37__0__0__g_cloudDensityVolumes[_1486]._tornadoParameter.x;
                  _1547 = __3__37__0__0__g_cloudDensityVolumes[_1486]._tornadoParameter.y;
                  _1548 = __3__37__0__0__g_cloudDensityVolumes[_1486]._tornadoParameter.z;
                  _1549 = __3__37__0__0__g_cloudDensityVolumes[_1486]._tornadoParameter.w;
                  _1553 = mad(_1502, _582, mad(_1498, _581, (_1494 * _580))) + _1506;
                  _1557 = mad(_1503, _582, mad(_1499, _581, (_1495 * _580))) + _1507;
                  _1561 = mad(_1504, _582, mad(_1500, _581, (_1496 * _580))) + _1508;
                  _1563 = abs(_1557);
                  _1569 = max((abs(_1553) + -0.5f), max((_1563 + -0.5f), (abs(_1561) + -0.5f)));
                  if (!(_1569 >= 0.0f)) {
                    _1572 = __3__37__0__0__g_cloudDensityVolumes[_1486]._shapeParameter.y;
                    _1575 = max((saturate(_1572) * 0.5f), 0.0001f);
                    _1578 = saturate((_1575 + _1569) / _1575);  // [sem: expr_sat]
                    _1583 = 1.0f - ((_1578 * _1578) * (3.0f - (_1578 * 2.0f)));
                    if (!(_1583 <= 0.0f)) {
                      _1592 = sqrt((_1561 * _1561) + (_1553 * _1553)) * 2.0f;
                      _1596 = saturate(1.0f - (_1592 / max(_1528, 0.0001f)));  // [sem: expr_sat]
                      _1597 = _time.x * _1540;
                      _1598 = (_1524 == 1);
                      _1599 = (_1524 == 2);
                      if (_1598) {
                        _1676 = exp2(log2(_1596) * max(_1535, 0.0001f));
                        _1678 = max(_1534, 0.0001f);
                        _1682 = _1557 / (((max(_1533, 0.0001f) - _1678) * _1676) + _1678);
                        _1689 = (((_1596 * _1596) * _1527) * ((_1592 * _1529) + _1557)) - (_1596 * _1597);
                        _1690 = sin(_1689);
                        _1691 = cos(_1689);
                        _1694 = (_1691 * _1553) - (_1690 * _1561);
                        _1697 = (_1691 * _1561) + (_1690 * _1553);
                        if (_1599) {
                          _1699 = 0.0f;
                          _1700 = 1.0f;
                          _1701 = _1676;
                          _1702 = _1596;
                          _1703 = _1694;
                          _1704 = _1682;
                          _1705 = _1697;
                          _1725 = _1700;
                          _1726 = _1701;
                          _1727 = _1702;
                          _1728 = _1703;
                          _1729 = _1704;
                          _1730 = _1705;
                          _1731 = max(_1699, ((_1563 * 2.0f) + -1.0f));
                        } else {
                          _1710 = _1676;
                          _1711 = _1694;
                          _1712 = _1682;
                          _1713 = _1697;
                          _1714 = _1711 * 2.0f;
                          _1715 = _1712 * 2.0f;
                          _1716 = _1713 * 2.0f;
                          _1725 = 1.0f;
                          _1726 = _1710;
                          _1727 = _1596;
                          _1728 = _1711;
                          _1729 = _1712;
                          _1730 = _1713;
                          _1731 = (sqrt(((_1715 * _1715) + (_1714 * _1714)) + (_1716 * _1716)) + -1.0f);
                        }
                      } else {
                        if (_1599) {
                          _1603 = saturate(_1557 + 0.5f);  // [sem: expr_sat]
                          _1609 = max(_1546, 0.0001f);
                          _1612 = ((max(_1547, 0.0001f) - _1609) * exp2(log2(_1603) * max(_1548, 0.0001f))) + _1609;
                          _1614 = atan(_1561 / _1553);
                          _1617 = (_1553 < 0.0f);
                          _1618 = (_1553 == 0.0f);
                          _1619 = (_1561 >= 0.0f);
                          _1620 = (_1561 < 0.0f);
                          _1630 = max(((float)((uint)((uint)(_1525)))), 1.0f);
                          _1631 = _1603 * _1529;
                          _1642 = _1612 * _1522;
                          _1644 = max((_1612 - _1642), 0.0f);
                          _1645 = _1592 - _1644;
                          _1646 = _1644 * (acos(min(max(cos(((((_1631 * -6.2831855f) - _1597) + select((_1618 && _1619), 1.5707964f, select((_1618 && _1620), -1.5707964f, select((_1617 && _1620), (_1614 + -3.1415927f), select((_1617 && _1619), (_1614 + 3.1415927f), _1614))))) * _1630) + _1532), -1.0f), 1.0f)) / _1630);
                          _1651 = _1592 - _1612;
                          _1660 = saturate(1.0f - (_1592 / _1612));  // [sem: expr_sat]
                          _1663 = ((_1660 + _1631) * _1527) - _1597;
                          _1664 = sin(_1663);
                          _1665 = cos(_1663);
                          _1699 = ((saturate(_1530) * (((-0.0f - _1651) - _1642) + sqrt((_1645 * _1645) + (_1646 * _1646)))) + _1651);
                          _1700 = _1612;
                          _1701 = 0.0f;
                          _1702 = _1660;
                          _1703 = ((_1665 * _1553) - (_1664 * _1561));
                          _1704 = _1557;
                          _1705 = ((_1665 * _1561) + (_1664 * _1553));
                          _1725 = _1700;
                          _1726 = _1701;
                          _1727 = _1702;
                          _1728 = _1703;
                          _1729 = _1704;
                          _1730 = _1705;
                          _1731 = max(_1699, ((_1563 * 2.0f) + -1.0f));
                        } else {
                          _1710 = 0.0f;
                          _1711 = _1553;
                          _1712 = _1557;
                          _1713 = _1561;
                          _1714 = _1711 * 2.0f;
                          _1715 = _1712 * 2.0f;
                          _1716 = _1713 * 2.0f;
                          _1725 = 1.0f;
                          _1726 = _1710;
                          _1727 = _1596;
                          _1728 = _1711;
                          _1729 = _1712;
                          _1730 = _1713;
                          _1731 = (sqrt(((_1715 * _1715) + (_1714 * _1714)) + (_1716 * _1716)) + -1.0f);
                        }
                      }
                      if (_1515 > 0.0f) {
                        _1734 = _time.x * _1538;
                        _1738 = max(_1514, 0.0001f);
                        _1756 = (_1731 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1734 * _1542) + _1516) + (_1738 * _1728)), (((_1734 * _1543) + _1517) + (_1738 * _1729)), (((_1734 * _1544) + _1521) + (_1738 * _1730))), 0.0f)).x) + -0.5f) * _1515));
                      } else {
                        _1756 = _1731;
                      }
                      if (_1598 && (_1530 > 0.0f)) {
                        _1761 = atan(_1561 / _1553);
                        _1764 = (_1553 < 0.0f);
                        _1765 = (_1553 == 0.0f);
                        _1766 = (_1561 >= 0.0f);
                        _1767 = (_1561 < 0.0f);
                        _1789 = (_1756 - (((_1530 * 0.5f) * _1727) * cos(((((_1592 * _1529) - _1597) + select((_1765 && _1766), 1.5707964f, select((_1765 && _1767), -1.5707964f, select((_1764 && _1767), (_1761 + -3.1415927f), select((_1764 && _1766), (_1761 + 3.1415927f), _1761))))) * max(((float)((uint)((uint)(_1525)))), 1.0f)) + _1532)));
                      } else {
                        _1789 = _1756;
                      }
                      if (_1599 && (_1549 > 0.0f)) {
                        _1797 = max(_1789, ((_1725 * _1549) - _1592));
                      } else {
                        _1797 = _1789;
                      }
                      _1799 = max(_1512, 0.0001f);
                      _1805 = saturate((((_1511 - (_1726 * _1537)) + _1797) + _1799) / (_1799 * 2.0f));  // [sem: expr_sat]
                      _1810 = 1.0f - ((_1805 * _1805) * (3.0f - (_1805 * 2.0f)));
                      if (!((_1810 >= 1.0f) || ((_1520 <= 0.0f) || (_1810 <= 0.0f)))) {
                        _1817 = _time.x * _1539;
                        _1821 = max(_1519, 0.0001f);
                        // [sem: expr_sat]
                        _1845 = saturate(_1810 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1817 * _1542) + _1516) + (_1821 * _1728)), (((_1817 * _1543) + _1517) + (_1821 * _1729)), (((_1817 * _1544) + _1521) + (_1821 * _1730))), 0.0f)).x) * _1520) * saturate(1.0f - abs((_1810 * 2.0f) + -1.0f))));
                      } else {
                        _1845 = _1810;  // [sem: expr_sat]
                      }
                      _1850 = (((_1583 * _1510) * _1845) + _1485);
                    } else {
                      _1850 = _1485;
                    }
                  } else {
                    _1850 = _1485;
                  }
                } else {
                  _1850 = _1485;
                }
                _1851 = (uint)((uint)(_1486)) + (uint)(1);
                if ((uint)_1851 < (uint)_cloudDensityVolumeInfo.x) {
                  _1485 = _1850;
                  _1486 = _1851;
                  continue;
                }
                while(true) {
                  _1856 = saturate(_1850);  // [sem: _1850_sat]
                  break;
                }
                break;
              }
            } else {
              _1856 = 0.0f;  // [sem: _1850_sat]
            }
            _1858 = saturate(_1856 + (_1474 * _1464));  // [sem: expr_sat]
            _1860 = _581 - _viewPos.y;
            _1863 = sqrt(_1344 + (_1860 * _1860));
            _1869 = max(1e-06f, (_heightFogScale * 0.0025f));
            _1872 = _1869 * _cloudScroll.x;
            _1873 = _1869 * _cloudScroll.y;
            _1874 = _1869 * _580;
            _1875 = _1869 * _581;
            _1876 = _1869 * _582;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _1902 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1874 * 6.393882f) - (_1872 * 1.871f)), (_1875 * 6.393882f), ((_1876 * 6.393882f) - (_1873 * 1.871f))), 0.0f);
            _1911 = _heightFogFalloff * -0.14426951f;
            _1926 = (((saturate(_1863 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1874 * 0.5127f) - _1872), (_1875 * 0.5127f), ((_1876 * 0.5127f) - _1873)), 0.0f)).x))) * (((0.5f - _1902.x) * saturate((_1863 + -300.0f) * 0.0025f)) + _1902.x)) * ((exp2(_1911 * max(0.001f, (_1328 - _heightFogBaseline))) * _heightFogDensity) + (exp2(_1911 * max(0.001f, ((_1328 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _604.z)))) * _604.y));
            _1927 = _581 - _cloudAltitude;
            _1929 = (_1349 + _1927) / _cloudThickness;
            _1932 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
            _1933 = select(_1932, _sunDirection.x, _moonDirection.x);
            _1934 = select(_1932, _sunDirection.y, _moonDirection.y);
            _1935 = select(_1932, _sunDirection.z, _moonDirection.z);
            _1936 = (_1934 > 0.0f);
            _1945 = ((0.5f - (((float)((int)((int)((int)(uint)(_1936)) - (int)((int)(uint)((int)(_1934 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _1350;
            if (_581 < _1350) {
              _1948 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1933, _1934, _1935));
              _1954 = select((abs(_1948) < 1e-08f), 1e+08f, ((_1945 - dot(float3(0.0f, 1.0f, 0.0f), float3(_580, _581, _582))) / _1948));
              _1960 = ((_1954 * _1933) + _580);
              _1961 = _1945;
              _1962 = ((_1954 * _1935) + _582);
            } else {
              _1960 = _580;
              _1961 = _581;
              _1962 = _582;
            }
            _1976 = _cloudScatteringCoefficient / _distanceScale;
            _1981 = abs(_1934);
            _1983 = saturate(_1981 * 4.0f);  // [sem: expr_sat]
            _1985 = (_1983 * _1983) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1960 - _viewPos.x) * 5e-05f) + 0.5f), ((_1961 - _cloudAltitude) / _cloudThickness), (((_1962 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _1976);
            _1991 = ((1.0f - _1985) * saturate((_1927 - _cloudThickness) * 0.1f)) + _1985;
            _1994 = -0.0f - _1976;
            _1995 = (log2(_1991) * 0.6931472f) / _1994;
            if ((_1858 > 0.001f) && ((_1856 > 0.001f) || ((_1929 >= 0.0f) && (_1929 <= 1.0f)))) {
              _2009 = (_581 - _1350) / _cloudThickness;
              if (((_2009 >= 0.0f) && (_2009 <= 1.0f)) && (_1981 > 0.001f)) {
                _2026 = min(300.0f, (((_1350 - _581) + select(_1936, _cloudThickness, 0.0f)) / _1934));
              } else {
                _2026 = 300.0f;
              }
              if ((_cloudDensityVolumeInfo.y & 1) == 0) {
                _2151 = 0.0f;
                _2152 = 3.4028235e+38f;
                _2153 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
              } else {
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _2038 = 0;
                  _2039 = 3.4028235e+38f;
                  _2040 = 0.0f;
                  _2041 = 0;
                  while(true) {
                    _2044 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[0].x;
                    _2045 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[1].x;
                    _2046 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[2].x;
                    _2048 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[0].y;
                    _2049 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[1].y;
                    _2050 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[2].y;
                    _2052 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[0].z;
                    _2053 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[1].z;
                    _2054 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[2].z;
                    _2056 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[0].w;
                    _2057 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[1].w;
                    _2058 = __3__37__0__0__g_cloudDensityVolumes[_2038]._relativeWorldToLocal[2].w;
                    _2062 = mad(_2052, _582, mad(_2048, _581, (_2044 * _580))) + _2056;
                    _2066 = mad(_2053, _582, mad(_2049, _581, (_2045 * _580))) + _2057;
                    _2070 = mad(_2054, _582, mad(_2050, _581, (_2046 * _580))) + _2058;
                    _2073 = mad(_2052, _1935, mad(_2048, _1934, (_2044 * _1933)));
                    _2076 = mad(_2053, _1935, mad(_2049, _1934, (_2045 * _1933)));
                    _2079 = mad(_2054, _1935, mad(_2050, _1934, (_2046 * _1933)));
                    _2080 = abs(_2073);
                    if (!(_2080 < 1e-06f) || !(abs(_2062) > 0.5f)) {
                      _2086 = abs(_2076);
                      if (!(_2086 < 1e-06f) || !(abs(_2066) > 0.5f)) {
                        _2092 = abs(_2079);
                        if (!(_2092 < 1e-06f) || !(abs(_2070) > 0.5f)) {
                          _2107 = max(_2080, 1e-06f) * select((_2073 < 0.0f), -1.0f, 1.0f);
                          _2108 = max(_2086, 1e-06f) * select((_2076 < 0.0f), -1.0f, 1.0f);
                          _2109 = max(_2092, 1e-06f) * select((_2079 < 0.0f), -1.0f, 1.0f);
                          _2113 = (-0.5f - _2062) / _2107;
                          _2114 = (-0.5f - _2066) / _2108;
                          _2115 = (-0.5f - _2070) / _2109;
                          _2119 = (0.5f - _2062) / _2107;
                          _2120 = (0.5f - _2066) / _2108;
                          _2121 = (0.5f - _2070) / _2109;
                          _2132 = max(max(max(min(_2113, _2119), min(_2114, _2120)), min(_2115, _2121)), 0.0f);
                          _2133 = min(min(min(max(_2113, _2119), max(_2114, _2120)), max(_2115, _2121)), 3.4028235e+38f);
                          if (!(_2133 < _2132)) {
                            _2142 = min(_2039, _2132);
                            _2143 = max(_2040, _2133);
                            _2144 = ((int)(_2041) | (int)((int)((uint)(1) << (_2038 & 31))));
                          } else {
                            _2142 = _2039;
                            _2143 = _2040;
                            _2144 = _2041;
                          }
                        } else {
                          _2142 = _2039;
                          _2143 = _2040;
                          _2144 = _2041;
                        }
                      } else {
                        _2142 = _2039;
                        _2143 = _2040;
                        _2144 = _2041;
                      }
                    } else {
                      _2142 = _2039;
                      _2143 = _2040;
                      _2144 = _2041;
                    }
                    _2145 = (uint)((uint)(_2038)) + (uint)(1);
                    if ((uint)_2145 < (uint)_cloudDensityVolumeInfo.x) {
                      _2038 = _2145;
                      _2039 = _2142;
                      _2040 = _2143;
                      _2041 = _2144;
                      continue;
                    }
                    _2151 = _2142;
                    _2152 = _2143;
                    _2153 = _2144;
                    break;
                  }
                } else {
                  _2151 = 3.4028235e+38f;
                  _2152 = 0.0f;
                  _2153 = 0;
                }
              }
              _2154 = _2026 * 0.2f;
              _2158 = _2026 * 0.1f;
              _2166 = 0.0f;
              _2167 = _2154;
              _2168 = (_2154 * _1933);
              _2169 = (_2154 * _1934);
              _2170 = (_2154 * _1935);
              _2171 = _2158;
              _2172 = ((_2158 * _1933) + _580);
              _2173 = ((_2158 * _1934) + _581);
              _2174 = ((_2158 * _1935) + _582);
              _2175 = 0;
              while(true) {
                _2179 = select(((_2171 >= _2151) && (_2171 <= _2152)), _2153, 0);
                _2185 = _2172 - _viewPos.x;
                _2186 = _2174 - _viewPos.z;
                _2190 = sqrt((_2185 * _2185) + (_2186 * _2186));
                _2197 = _cloudAltitude - (max(((_2190 * _2190) + -400000.0f), 0.0f) * 1e-06f);
                _2202 = _cloudDetailScale * 0.004f;
                _2205 = _cloudBaseScale * 0.0004f;
                _2210 = _earthRadius + _2173;
                _2219 = ((sqrt(((_2174 * _2174) + (_2172 * _2172)) + (_2210 * _2210)) - _2197) - _earthRadius) / _cloudThickness;
                if (!((_2219 < 0.0f) || (_2219 > 1.0f))) {
                  _2262 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _2263 = _2173 - _2197;
                  _2279 = _2202 / _2205;
                  _2280 = _2279 * _2205;
                  _2282 = _2279 * _2262;
                  _2294 = saturate(max((_2190 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _2298 = (4.0f - (_2294 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _2302 = _2280 * 4.355f;
                  _2321 = 1.0f - sqrt(saturate((1.0f - _2219) * 1.4285715f));
                  // [sem: expr_sat]
                  _2337 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_2172 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2174 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2205 * (_2172 - _cloudScroll.x)), ((_2205 * _2263) - _2262), (_2205 * (_2174 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2321 * 0.5f), ((_2321 * _2321) * _2321))) * saturate(_2219 * 10.0f);
                  _2340 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2298 * _2172) - (_2302 * _cloudScroll.x)), ((_2298 * _2263) - (_2282 * 4.355f)), ((_2298 * _2174) - (_2302 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2202 * _2172) - (_2280 * _cloudScroll.x)), ((_2202 * _2263) - _2282), ((_2202 * _2174) - (_2280 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_2219 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                  _2341 = _2340 * ((_2294 * 0.4f) + 0.1f);
                  _2353 = (saturate((_2337 - _2340) / (1.0f - _2340)) * _cloudAlpha);
                  _2354 = (saturate((_2337 - _2341) / (1.0f - _2341)) * _cloudAlpha);
                } else {
                  _2353 = 0.0f;
                  _2354 = 0.0f;
                }
                if (!((_2179 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                  _2364 = 0.0f;
                  _2365 = 0;
                  while(true) {
                    _2730 = _2364;
                    if (!((((int)((uint)(1) << (_2365 & 31))) & _2179) == 0)) {
                      _2373 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[0].x;
                      _2374 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[1].x;
                      _2375 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[2].x;
                      _2377 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[0].y;
                      _2378 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[1].y;
                      _2379 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[2].y;
                      _2381 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[0].z;
                      _2382 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[1].z;
                      _2383 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[2].z;
                      _2385 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[0].w;
                      _2386 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[1].w;
                      _2387 = __3__37__0__0__g_cloudDensityVolumes[_2365]._relativeWorldToLocal[2].w;
                      _2389 = __3__37__0__0__g_cloudDensityVolumes[_2365]._shapeParameter.x;
                      _2390 = __3__37__0__0__g_cloudDensityVolumes[_2365]._shapeParameter.z;
                      _2391 = __3__37__0__0__g_cloudDensityVolumes[_2365]._shapeParameter.w;
                      _2393 = __3__37__0__0__g_cloudDensityVolumes[_2365]._macroNoiseParameter.x;
                      _2394 = __3__37__0__0__g_cloudDensityVolumes[_2365]._macroNoiseParameter.y;
                      _2395 = __3__37__0__0__g_cloudDensityVolumes[_2365]._macroNoiseParameter.z;
                      _2396 = __3__37__0__0__g_cloudDensityVolumes[_2365]._macroNoiseParameter.w;
                      _2398 = __3__37__0__0__g_cloudDensityVolumes[_2365]._detailNoiseParameter.x;
                      _2399 = __3__37__0__0__g_cloudDensityVolumes[_2365]._detailNoiseParameter.y;
                      _2400 = __3__37__0__0__g_cloudDensityVolumes[_2365]._detailNoiseParameter.z;
                      _2401 = __3__37__0__0__g_cloudDensityVolumes[_2365]._detailNoiseParameter.w;
                      _2403 = __3__37__0__0__g_cloudDensityVolumes[_2365]._modeParameter.x;
                      _2404 = __3__37__0__0__g_cloudDensityVolumes[_2365]._modeParameter.y;
                      _2406 = __3__37__0__0__g_cloudDensityVolumes[_2365]._vortexParameter.x;
                      _2407 = __3__37__0__0__g_cloudDensityVolumes[_2365]._vortexParameter.y;
                      _2408 = __3__37__0__0__g_cloudDensityVolumes[_2365]._vortexParameter.z;
                      _2409 = __3__37__0__0__g_cloudDensityVolumes[_2365]._vortexParameter.w;
                      _2411 = __3__37__0__0__g_cloudDensityVolumes[_2365]._spiralParameter.x;
                      _2412 = __3__37__0__0__g_cloudDensityVolumes[_2365]._spiralParameter.y;
                      _2413 = __3__37__0__0__g_cloudDensityVolumes[_2365]._spiralParameter.z;
                      _2414 = __3__37__0__0__g_cloudDensityVolumes[_2365]._spiralParameter.w;
                      _2416 = __3__37__0__0__g_cloudDensityVolumes[_2365]._animationParameter.x;
                      _2417 = __3__37__0__0__g_cloudDensityVolumes[_2365]._animationParameter.y;
                      _2418 = __3__37__0__0__g_cloudDensityVolumes[_2365]._animationParameter.z;
                      _2419 = __3__37__0__0__g_cloudDensityVolumes[_2365]._animationParameter.w;
                      _2421 = __3__37__0__0__g_cloudDensityVolumes[_2365]._flowParameter.x;
                      _2422 = __3__37__0__0__g_cloudDensityVolumes[_2365]._flowParameter.y;
                      _2423 = __3__37__0__0__g_cloudDensityVolumes[_2365]._flowParameter.z;
                      _2425 = __3__37__0__0__g_cloudDensityVolumes[_2365]._tornadoParameter.x;
                      _2426 = __3__37__0__0__g_cloudDensityVolumes[_2365]._tornadoParameter.y;
                      _2427 = __3__37__0__0__g_cloudDensityVolumes[_2365]._tornadoParameter.z;
                      _2428 = __3__37__0__0__g_cloudDensityVolumes[_2365]._tornadoParameter.w;
                      _2432 = mad(_2381, _2174, mad(_2377, _2173, (_2373 * _2172))) + _2385;
                      _2436 = mad(_2382, _2174, mad(_2378, _2173, (_2374 * _2172))) + _2386;
                      _2440 = mad(_2383, _2174, mad(_2379, _2173, (_2375 * _2172))) + _2387;
                      _2442 = abs(_2436);
                      _2448 = max((abs(_2432) + -0.5f), max((_2442 + -0.5f), (abs(_2440) + -0.5f)));
                      if (!(_2448 >= 0.0f)) {
                        _2451 = __3__37__0__0__g_cloudDensityVolumes[_2365]._shapeParameter.y;
                        _2454 = max((saturate(_2451) * 0.5f), 0.0001f);
                        _2457 = saturate((_2454 + _2448) / _2454);  // [sem: expr_sat]
                        _2462 = 1.0f - ((_2457 * _2457) * (3.0f - (_2457 * 2.0f)));
                        if (!(_2462 <= 0.0f)) {
                          _2471 = sqrt((_2440 * _2440) + (_2432 * _2432)) * 2.0f;
                          _2475 = saturate(1.0f - (_2471 / max(_2407, 0.0001f)));  // [sem: expr_sat]
                          _2476 = _time.x * _2419;
                          _2477 = (_2403 == 1);
                          _2478 = (_2403 == 2);
                          if (_2477) {
                            _2555 = exp2(log2(_2475) * max(_2414, 0.0001f));
                            _2557 = max(_2413, 0.0001f);
                            _2561 = _2436 / (((max(_2412, 0.0001f) - _2557) * _2555) + _2557);
                            _2568 = (((_2475 * _2475) * _2406) * ((_2471 * _2408) + _2436)) - (_2475 * _2476);
                            _2569 = sin(_2568);
                            _2570 = cos(_2568);
                            _2573 = (_2570 * _2432) - (_2569 * _2440);
                            _2576 = (_2570 * _2440) + (_2569 * _2432);
                            if (_2478) {
                              _2578 = 0.0f;
                              _2579 = 1.0f;
                              _2580 = _2555;
                              _2581 = _2475;
                              _2582 = _2573;
                              _2583 = _2561;
                              _2584 = _2576;
                              _2604 = _2579;
                              _2605 = _2580;
                              _2606 = _2581;
                              _2607 = _2582;
                              _2608 = _2583;
                              _2609 = _2584;
                              _2610 = max(_2578, ((_2442 * 2.0f) + -1.0f));
                            } else {
                              _2589 = _2555;
                              _2590 = _2573;
                              _2591 = _2561;
                              _2592 = _2576;
                              _2593 = _2590 * 2.0f;
                              _2594 = _2591 * 2.0f;
                              _2595 = _2592 * 2.0f;
                              _2604 = 1.0f;
                              _2605 = _2589;
                              _2606 = _2475;
                              _2607 = _2590;
                              _2608 = _2591;
                              _2609 = _2592;
                              _2610 = (sqrt(((_2594 * _2594) + (_2593 * _2593)) + (_2595 * _2595)) + -1.0f);
                            }
                          } else {
                            if (_2478) {
                              _2482 = saturate(_2436 + 0.5f);  // [sem: expr_sat]
                              _2488 = max(_2425, 0.0001f);
                              _2491 = ((max(_2426, 0.0001f) - _2488) * exp2(log2(_2482) * max(_2427, 0.0001f))) + _2488;
                              _2493 = atan(_2440 / _2432);
                              _2496 = (_2432 < 0.0f);
                              _2497 = (_2432 == 0.0f);
                              _2498 = (_2440 >= 0.0f);
                              _2499 = (_2440 < 0.0f);
                              _2509 = max(((float)((uint)((uint)(_2404)))), 1.0f);
                              _2510 = _2482 * _2408;
                              _2521 = _2491 * _2401;
                              _2523 = max((_2491 - _2521), 0.0f);
                              _2524 = _2471 - _2523;
                              _2525 = _2523 * (acos(min(max(cos(((((_2510 * -6.2831855f) - _2476) + select((_2497 && _2498), 1.5707964f, select((_2497 && _2499), -1.5707964f, select((_2496 && _2499), (_2493 + -3.1415927f), select((_2496 && _2498), (_2493 + 3.1415927f), _2493))))) * _2509) + _2411), -1.0f), 1.0f)) / _2509);
                              _2530 = _2471 - _2491;
                              _2539 = saturate(1.0f - (_2471 / _2491));  // [sem: expr_sat]
                              _2542 = ((_2539 + _2510) * _2406) - _2476;
                              _2543 = sin(_2542);
                              _2544 = cos(_2542);
                              _2578 = ((saturate(_2409) * (((-0.0f - _2530) - _2521) + sqrt((_2524 * _2524) + (_2525 * _2525)))) + _2530);
                              _2579 = _2491;
                              _2580 = 0.0f;
                              _2581 = _2539;
                              _2582 = ((_2544 * _2432) - (_2543 * _2440));
                              _2583 = _2436;
                              _2584 = ((_2544 * _2440) + (_2543 * _2432));
                              _2604 = _2579;
                              _2605 = _2580;
                              _2606 = _2581;
                              _2607 = _2582;
                              _2608 = _2583;
                              _2609 = _2584;
                              _2610 = max(_2578, ((_2442 * 2.0f) + -1.0f));
                            } else {
                              _2589 = 0.0f;
                              _2590 = _2432;
                              _2591 = _2436;
                              _2592 = _2440;
                              _2593 = _2590 * 2.0f;
                              _2594 = _2591 * 2.0f;
                              _2595 = _2592 * 2.0f;
                              _2604 = 1.0f;
                              _2605 = _2589;
                              _2606 = _2475;
                              _2607 = _2590;
                              _2608 = _2591;
                              _2609 = _2592;
                              _2610 = (sqrt(((_2594 * _2594) + (_2593 * _2593)) + (_2595 * _2595)) + -1.0f);
                            }
                          }
                          if (_2394 > 0.0f) {
                            _2613 = _time.x * _2417;
                            _2617 = max(_2393, 0.0001f);
                            _2635 = (_2610 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2613 * _2421) + _2395) + (_2617 * _2607)), (((_2613 * _2422) + _2396) + (_2617 * _2608)), (((_2613 * _2423) + _2400) + (_2617 * _2609))), 0.0f)).x) + -0.5f) * _2394));
                          } else {
                            _2635 = _2610;
                          }
                          if (_2477 && (_2409 > 0.0f)) {
                            _2640 = atan(_2440 / _2432);
                            _2643 = (_2432 < 0.0f);
                            _2644 = (_2432 == 0.0f);
                            _2645 = (_2440 >= 0.0f);
                            _2646 = (_2440 < 0.0f);
                            _2668 = (_2635 - (((_2409 * 0.5f) * _2606) * cos(((((_2471 * _2408) - _2476) + select((_2644 && _2645), 1.5707964f, select((_2644 && _2646), -1.5707964f, select((_2643 && _2646), (_2640 + -3.1415927f), select((_2643 && _2645), (_2640 + 3.1415927f), _2640))))) * max(((float)((uint)((uint)(_2404)))), 1.0f)) + _2411)));
                          } else {
                            _2668 = _2635;
                          }
                          if (_2478 && (_2428 > 0.0f)) {
                            _2676 = max(_2668, ((_2604 * _2428) - _2471));
                          } else {
                            _2676 = _2668;
                          }
                          _2678 = max(_2391, 0.0001f);
                          _2684 = saturate((((_2390 - (_2605 * _2416)) + _2676) + _2678) / (_2678 * 2.0f));  // [sem: expr_sat]
                          _2689 = 1.0f - ((_2684 * _2684) * (3.0f - (_2684 * 2.0f)));
                          if (!((_2689 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_2399 <= 0.0f)) || (_2689 <= 0.0f)))) {
                            _2697 = _time.x * _2418;
                            _2701 = max(_2398, 0.0001f);
                            // [sem: expr_sat]
                            _2725 = saturate(_2689 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2697 * _2421) + _2395) + (_2701 * _2607)), (((_2697 * _2422) + _2396) + (_2701 * _2608)), (((_2697 * _2423) + _2400) + (_2701 * _2609))), 0.0f)).x) * _2399) * saturate(1.0f - abs((_2689 * 2.0f) + -1.0f))));
                          } else {
                            _2725 = _2689;  // [sem: expr_sat]
                          }
                          _2730 = (((_2462 * _2389) * _2725) + _2364);
                        } else {
                          _2730 = _2364;
                        }
                      } else {
                        _2730 = _2364;
                      }
                    } else {
                      _2730 = _2364;
                    }
                    _2731 = (uint)((uint)(_2365)) + (uint)(1);
                    if ((uint)_2731 < (uint)_cloudDensityVolumeInfo.x) {
                      _2364 = _2730;
                      _2365 = _2731;
                      continue;
                    }
                    while(true) {
                      _2736 = saturate(_2730);  // [sem: _2730_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _2736 = 0.0f;  // [sem: _2730_sat]
                }
                _2738 = saturate(_2736 + _2354);  // [sem: expr_sat]
                _2754 = (((exp2((((_2166 * -0.0072134747f) * _2167) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_2736 + _2353) - _2738)) + _2738) * _2167) + _2166;
                _2755 = _2171 + _2167;
                _2756 = _2172 + _2168;
                _2757 = _2173 + _2169;
                _2758 = _2174 + _2170;
                _2759 = _2167 * 1.3f;
                _2760 = _2168 * 1.3f;
                _2761 = _2169 * 1.3f;
                _2762 = _2170 * 1.3f;
                _2763 = (int)(_2175) + (int)(1);
                if (!(_2763 == 6)) {
                  _2166 = _2754;
                  _2167 = _2759;
                  _2168 = _2760;
                  _2169 = _2761;
                  _2170 = _2762;
                  _2171 = _2755;
                  _2172 = _2756;
                  _2173 = _2757;
                  _2174 = _2758;
                  _2175 = _2763;
                  continue;
                }
                _2771 = ((_cloudDensityVolumeInfo.y & 2) != 0);
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _2791 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_580 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_582 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2793 = _580 + 50.0f;
                _2794 = _581 + 200.0f;
                _2795 = _2793 - _viewPos.x;
                _2796 = _582 - _viewPos.z;
                _2800 = sqrt((_2795 * _2795) + (_2796 * _2796));
                _2805 = _cloudAltitude - (max(((_2800 * _2800) + -400000.0f), 0.0f) * 1e-06f);
                _2806 = _earthRadius + _2794;
                _2808 = _2806 * _2806;
                _2814 = ((sqrt(((_2793 * _2793) + _1203) + _2808) - _earthRadius) - _2805) / _cloudThickness;
                if (!((_2814 < 0.0f) || (_2814 > 1.0f))) {
                  _2836 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _2837 = _2794 - _2805;
                  _2853 = _2202 / _2205;
                  _2854 = _2853 * _2205;
                  _2856 = _2853 * _2836;
                  _2868 = saturate(max((_2800 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _2872 = (4.0f - (_2868 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _2876 = _2854 * 4.355f;
                  _2893 = 1.0f - sqrt(saturate((1.0f - _2814) * 1.4285715f));
                  _2915 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2202 * _2793) - (_2854 * _cloudScroll.x)), ((_2837 * _2202) - _2856), ((_2202 * _582) - (_2854 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_2868 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2872 * _2793) - (_2876 * _cloudScroll.x)), ((_2872 * _2837) - (_2856 * 4.355f)), ((_2872 * _582) - (_2876 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2814 * 4.0f) * 0.8f) + 0.2f);
                  _2922 = (saturate(((saturate(saturate(((_2791.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2205 * (_2793 - _cloudScroll.x)), ((_2837 * _2205) - _2836), (_2205 * (_582 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2893 * 0.5f), ((_2893 * _2893) * _2893))) * saturate(_2814 * 10.0f)) - _2915) / (1.0f - _2915)) * _cloudAlpha);
                } else {
                  _2922 = 0.0f;
                }
                _2924 = (_cloudFadeRange > 1e-05f);
                if (_2924) {
                  _2934 = saturate(((_2800 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _2934 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _2942 = 0.0f;
                  _2943 = 0;
                  while(true) {
                    _3306 = _2942;
                    if (!((uint)(_2943 & 16) > (uint)15)) {
                      _2949 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[0].x;
                      _2950 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[1].x;
                      _2951 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[2].x;
                      _2953 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[0].y;
                      _2954 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[1].y;
                      _2955 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[2].y;
                      _2957 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[0].z;
                      _2958 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[1].z;
                      _2959 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[2].z;
                      _2961 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[0].w;
                      _2962 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[1].w;
                      _2963 = __3__37__0__0__g_cloudDensityVolumes[_2943]._relativeWorldToLocal[2].w;
                      _2965 = __3__37__0__0__g_cloudDensityVolumes[_2943]._shapeParameter.x;
                      _2966 = __3__37__0__0__g_cloudDensityVolumes[_2943]._shapeParameter.z;
                      _2967 = __3__37__0__0__g_cloudDensityVolumes[_2943]._shapeParameter.w;
                      _2969 = __3__37__0__0__g_cloudDensityVolumes[_2943]._macroNoiseParameter.x;
                      _2970 = __3__37__0__0__g_cloudDensityVolumes[_2943]._macroNoiseParameter.y;
                      _2971 = __3__37__0__0__g_cloudDensityVolumes[_2943]._macroNoiseParameter.z;
                      _2972 = __3__37__0__0__g_cloudDensityVolumes[_2943]._macroNoiseParameter.w;
                      _2974 = __3__37__0__0__g_cloudDensityVolumes[_2943]._detailNoiseParameter.x;
                      _2975 = __3__37__0__0__g_cloudDensityVolumes[_2943]._detailNoiseParameter.y;
                      _2976 = __3__37__0__0__g_cloudDensityVolumes[_2943]._detailNoiseParameter.z;
                      _2977 = __3__37__0__0__g_cloudDensityVolumes[_2943]._detailNoiseParameter.w;
                      _2979 = __3__37__0__0__g_cloudDensityVolumes[_2943]._modeParameter.x;
                      _2980 = __3__37__0__0__g_cloudDensityVolumes[_2943]._modeParameter.y;
                      _2982 = __3__37__0__0__g_cloudDensityVolumes[_2943]._vortexParameter.x;
                      _2983 = __3__37__0__0__g_cloudDensityVolumes[_2943]._vortexParameter.y;
                      _2984 = __3__37__0__0__g_cloudDensityVolumes[_2943]._vortexParameter.z;
                      _2985 = __3__37__0__0__g_cloudDensityVolumes[_2943]._vortexParameter.w;
                      _2987 = __3__37__0__0__g_cloudDensityVolumes[_2943]._spiralParameter.x;
                      _2988 = __3__37__0__0__g_cloudDensityVolumes[_2943]._spiralParameter.y;
                      _2989 = __3__37__0__0__g_cloudDensityVolumes[_2943]._spiralParameter.z;
                      _2990 = __3__37__0__0__g_cloudDensityVolumes[_2943]._spiralParameter.w;
                      _2992 = __3__37__0__0__g_cloudDensityVolumes[_2943]._animationParameter.x;
                      _2993 = __3__37__0__0__g_cloudDensityVolumes[_2943]._animationParameter.y;
                      _2994 = __3__37__0__0__g_cloudDensityVolumes[_2943]._animationParameter.z;
                      _2995 = __3__37__0__0__g_cloudDensityVolumes[_2943]._animationParameter.w;
                      _2997 = __3__37__0__0__g_cloudDensityVolumes[_2943]._flowParameter.x;
                      _2998 = __3__37__0__0__g_cloudDensityVolumes[_2943]._flowParameter.y;
                      _2999 = __3__37__0__0__g_cloudDensityVolumes[_2943]._flowParameter.z;
                      _3001 = __3__37__0__0__g_cloudDensityVolumes[_2943]._tornadoParameter.x;
                      _3002 = __3__37__0__0__g_cloudDensityVolumes[_2943]._tornadoParameter.y;
                      _3003 = __3__37__0__0__g_cloudDensityVolumes[_2943]._tornadoParameter.z;
                      _3004 = __3__37__0__0__g_cloudDensityVolumes[_2943]._tornadoParameter.w;
                      _3008 = mad(_2957, _582, mad(_2953, _2794, (_2949 * _2793))) + _2961;
                      _3012 = mad(_2958, _582, mad(_2954, _2794, (_2950 * _2793))) + _2962;
                      _3016 = mad(_2959, _582, mad(_2955, _2794, (_2951 * _2793))) + _2963;
                      _3018 = abs(_3012);
                      _3024 = max((abs(_3008) + -0.5f), max((_3018 + -0.5f), (abs(_3016) + -0.5f)));
                      if (!(_3024 >= 0.0f)) {
                        _3027 = __3__37__0__0__g_cloudDensityVolumes[_2943]._shapeParameter.y;
                        _3030 = max((saturate(_3027) * 0.5f), 0.0001f);
                        _3033 = saturate((_3030 + _3024) / _3030);  // [sem: expr_sat]
                        _3038 = 1.0f - ((_3033 * _3033) * (3.0f - (_3033 * 2.0f)));
                        if (!(_3038 <= 0.0f)) {
                          _3047 = sqrt((_3016 * _3016) + (_3008 * _3008)) * 2.0f;
                          _3051 = saturate(1.0f - (_3047 / max(_2983, 0.0001f)));  // [sem: expr_sat]
                          _3052 = _time.x * _2995;
                          _3053 = (_2979 == 1);
                          _3054 = (_2979 == 2);
                          if (_3053) {
                            _3131 = exp2(log2(_3051) * max(_2990, 0.0001f));
                            _3133 = max(_2989, 0.0001f);
                            _3137 = _3012 / (((max(_2988, 0.0001f) - _3133) * _3131) + _3133);
                            _3144 = (((_3051 * _3051) * _2982) * ((_3047 * _2984) + _3012)) - (_3051 * _3052);
                            _3145 = sin(_3144);
                            _3146 = cos(_3144);
                            _3149 = (_3146 * _3008) - (_3145 * _3016);
                            _3152 = (_3146 * _3016) + (_3145 * _3008);
                            if (_3054) {
                              _3154 = 0.0f;
                              _3155 = 1.0f;
                              _3156 = _3131;
                              _3157 = _3051;
                              _3158 = _3149;
                              _3159 = _3137;
                              _3160 = _3152;
                              _3180 = _3155;
                              _3181 = _3156;
                              _3182 = _3157;
                              _3183 = _3158;
                              _3184 = _3159;
                              _3185 = _3160;
                              _3186 = max(_3154, ((_3018 * 2.0f) + -1.0f));
                            } else {
                              _3165 = _3131;
                              _3166 = _3149;
                              _3167 = _3137;
                              _3168 = _3152;
                              _3169 = _3166 * 2.0f;
                              _3170 = _3167 * 2.0f;
                              _3171 = _3168 * 2.0f;
                              _3180 = 1.0f;
                              _3181 = _3165;
                              _3182 = _3051;
                              _3183 = _3166;
                              _3184 = _3167;
                              _3185 = _3168;
                              _3186 = (sqrt(((_3170 * _3170) + (_3169 * _3169)) + (_3171 * _3171)) + -1.0f);
                            }
                          } else {
                            if (_3054) {
                              _3058 = saturate(_3012 + 0.5f);  // [sem: expr_sat]
                              _3064 = max(_3001, 0.0001f);
                              _3067 = ((max(_3002, 0.0001f) - _3064) * exp2(log2(_3058) * max(_3003, 0.0001f))) + _3064;
                              _3069 = atan(_3016 / _3008);
                              _3072 = (_3008 < 0.0f);
                              _3073 = (_3008 == 0.0f);
                              _3074 = (_3016 >= 0.0f);
                              _3075 = (_3016 < 0.0f);
                              _3085 = max(((float)((uint)((uint)(_2980)))), 1.0f);
                              _3086 = _3058 * _2984;
                              _3097 = _3067 * _2977;
                              _3099 = max((_3067 - _3097), 0.0f);
                              _3100 = _3047 - _3099;
                              _3101 = _3099 * (acos(min(max(cos(((((_3086 * -6.2831855f) - _3052) + select((_3073 && _3074), 1.5707964f, select((_3073 && _3075), -1.5707964f, select((_3072 && _3075), (_3069 + -3.1415927f), select((_3072 && _3074), (_3069 + 3.1415927f), _3069))))) * _3085) + _2987), -1.0f), 1.0f)) / _3085);
                              _3106 = _3047 - _3067;
                              _3115 = saturate(1.0f - (_3047 / _3067));  // [sem: expr_sat]
                              _3118 = ((_3115 + _3086) * _2982) - _3052;
                              _3119 = sin(_3118);
                              _3120 = cos(_3118);
                              _3154 = ((saturate(_2985) * (((-0.0f - _3106) - _3097) + sqrt((_3100 * _3100) + (_3101 * _3101)))) + _3106);
                              _3155 = _3067;
                              _3156 = 0.0f;
                              _3157 = _3115;
                              _3158 = ((_3120 * _3008) - (_3119 * _3016));
                              _3159 = _3012;
                              _3160 = ((_3120 * _3016) + (_3119 * _3008));
                              _3180 = _3155;
                              _3181 = _3156;
                              _3182 = _3157;
                              _3183 = _3158;
                              _3184 = _3159;
                              _3185 = _3160;
                              _3186 = max(_3154, ((_3018 * 2.0f) + -1.0f));
                            } else {
                              _3165 = 0.0f;
                              _3166 = _3008;
                              _3167 = _3012;
                              _3168 = _3016;
                              _3169 = _3166 * 2.0f;
                              _3170 = _3167 * 2.0f;
                              _3171 = _3168 * 2.0f;
                              _3180 = 1.0f;
                              _3181 = _3165;
                              _3182 = _3051;
                              _3183 = _3166;
                              _3184 = _3167;
                              _3185 = _3168;
                              _3186 = (sqrt(((_3170 * _3170) + (_3169 * _3169)) + (_3171 * _3171)) + -1.0f);
                            }
                          }
                          if (_2970 > 0.0f) {
                            _3189 = _time.x * _2993;
                            _3193 = max(_2969, 0.0001f);
                            _3211 = (_3186 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3189 * _2997) + _2971) + (_3193 * _3183)), (((_3189 * _2998) + _2972) + (_3193 * _3184)), (((_3189 * _2999) + _2976) + (_3193 * _3185))), 0.0f)).x) + -0.5f) * _2970));
                          } else {
                            _3211 = _3186;
                          }
                          if (_3053 && (_2985 > 0.0f)) {
                            _3216 = atan(_3016 / _3008);
                            _3219 = (_3008 < 0.0f);
                            _3220 = (_3008 == 0.0f);
                            _3221 = (_3016 >= 0.0f);
                            _3222 = (_3016 < 0.0f);
                            _3244 = (_3211 - (((_2985 * 0.5f) * _3182) * cos(((((_3047 * _2984) - _3052) + select((_3220 && _3221), 1.5707964f, select((_3220 && _3222), -1.5707964f, select((_3219 && _3222), (_3216 + -3.1415927f), select((_3219 && _3221), (_3216 + 3.1415927f), _3216))))) * max(((float)((uint)((uint)(_2980)))), 1.0f)) + _2987)));
                          } else {
                            _3244 = _3211;
                          }
                          if (_3054 && (_3004 > 0.0f)) {
                            _3252 = max(_3244, ((_3180 * _3004) - _3047));
                          } else {
                            _3252 = _3244;
                          }
                          _3254 = max(_2967, 0.0001f);
                          _3260 = saturate((((_2966 - (_3181 * _2992)) + _3252) + _3254) / (_3254 * 2.0f));  // [sem: expr_sat]
                          _3265 = 1.0f - ((_3260 * _3260) * (3.0f - (_3260 * 2.0f)));
                          if (!((_3265 >= 1.0f) || ((_2771 || (_2975 <= 0.0f)) || (_3265 <= 0.0f)))) {
                            _3273 = _time.x * _2994;
                            _3277 = max(_2974, 0.0001f);
                            // [sem: expr_sat]
                            _3301 = saturate(_3265 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3273 * _2997) + _2971) + (_3277 * _3183)), (((_3273 * _2998) + _2972) + (_3277 * _3184)), (((_3273 * _2999) + _2976) + (_3277 * _3185))), 0.0f)).x) * _2975) * saturate(1.0f - abs((_3265 * 2.0f) + -1.0f))));
                          } else {
                            _3301 = _3265;  // [sem: expr_sat]
                          }
                          _3306 = (((_3038 * _2965) * _3301) + _2942);
                        } else {
                          _3306 = _2942;
                        }
                      } else {
                        _3306 = _2942;
                      }
                    } else {
                      _3306 = _2942;
                    }
                    _3307 = (uint)((uint)(_2943)) + (uint)(1);
                    if ((uint)_3307 < (uint)_cloudDensityVolumeInfo.x) {
                      _2942 = _3306;
                      _2943 = _3307;
                      continue;
                    }
                    while(true) {
                      _3312 = saturate(_3306);  // [sem: _3306_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _3312 = 0.0f;  // [sem: _3306_sat]
                }
                _3315 = _582 + -50.0f;
                _3316 = _580 - _viewPos.x;
                _3317 = _3315 - _viewPos.z;
                _3321 = sqrt((_3316 * _3316) + (_3317 * _3317));
                _3326 = _cloudAltitude - (max(((_3321 * _3321) + -400000.0f), 0.0f) * 1e-06f);
                _3333 = ((sqrt(((_3315 * _3315) + _1201) + _2808) - _earthRadius) - _3326) / _cloudThickness;
                if (!((_3333 < 0.0f) || (_3333 > 1.0f))) {
                  _3355 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _3356 = _2794 - _3326;
                  _3372 = _2202 / _2205;
                  _3373 = _3372 * _2205;
                  _3375 = _3372 * _3355;
                  _3387 = saturate(max((_3321 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _3391 = (4.0f - (_3387 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _3395 = _3373 * 4.355f;
                  _3412 = 1.0f - sqrt(saturate((1.0f - _3333) * 1.4285715f));
                  _3434 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2202 * _580) - (_3373 * _cloudScroll.x)), ((_3356 * _2202) - _3375), ((_2202 * _3315) - (_3373 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_3387 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3391 * _580) - (_3395 * _cloudScroll.x)), ((_3391 * _3356) - (_3375 * 4.355f)), ((_3391 * _3315) - (_3395 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3333 * 4.0f) * 0.8f) + 0.2f);
                  _3441 = (saturate(((saturate(saturate(((_2791.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2205 * (_580 - _cloudScroll.x)), ((_3356 * _2205) - _3355), (_2205 * (_3315 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3412 * 0.5f), ((_3412 * _3412) * _3412))) * saturate(_3333 * 10.0f)) - _3434) / (1.0f - _3434)) * _cloudAlpha);
                } else {
                  _3441 = 0.0f;
                }
                if (_2924) {
                  _3451 = saturate(((_3321 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _3451 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _3460 = 0.0f;
                  _3461 = 0;
                  while(true) {
                    _3824 = _3460;
                    if (!((uint)(_3461 & 16) > (uint)15)) {
                      _3467 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[0].x;
                      _3468 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[1].x;
                      _3469 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[2].x;
                      _3471 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[0].y;
                      _3472 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[1].y;
                      _3473 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[2].y;
                      _3475 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[0].z;
                      _3476 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[1].z;
                      _3477 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[2].z;
                      _3479 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[0].w;
                      _3480 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[1].w;
                      _3481 = __3__37__0__0__g_cloudDensityVolumes[_3461]._relativeWorldToLocal[2].w;
                      _3483 = __3__37__0__0__g_cloudDensityVolumes[_3461]._shapeParameter.x;
                      _3484 = __3__37__0__0__g_cloudDensityVolumes[_3461]._shapeParameter.z;
                      _3485 = __3__37__0__0__g_cloudDensityVolumes[_3461]._shapeParameter.w;
                      _3487 = __3__37__0__0__g_cloudDensityVolumes[_3461]._macroNoiseParameter.x;
                      _3488 = __3__37__0__0__g_cloudDensityVolumes[_3461]._macroNoiseParameter.y;
                      _3489 = __3__37__0__0__g_cloudDensityVolumes[_3461]._macroNoiseParameter.z;
                      _3490 = __3__37__0__0__g_cloudDensityVolumes[_3461]._macroNoiseParameter.w;
                      _3492 = __3__37__0__0__g_cloudDensityVolumes[_3461]._detailNoiseParameter.x;
                      _3493 = __3__37__0__0__g_cloudDensityVolumes[_3461]._detailNoiseParameter.y;
                      _3494 = __3__37__0__0__g_cloudDensityVolumes[_3461]._detailNoiseParameter.z;
                      _3495 = __3__37__0__0__g_cloudDensityVolumes[_3461]._detailNoiseParameter.w;
                      _3497 = __3__37__0__0__g_cloudDensityVolumes[_3461]._modeParameter.x;
                      _3498 = __3__37__0__0__g_cloudDensityVolumes[_3461]._modeParameter.y;
                      _3500 = __3__37__0__0__g_cloudDensityVolumes[_3461]._vortexParameter.x;
                      _3501 = __3__37__0__0__g_cloudDensityVolumes[_3461]._vortexParameter.y;
                      _3502 = __3__37__0__0__g_cloudDensityVolumes[_3461]._vortexParameter.z;
                      _3503 = __3__37__0__0__g_cloudDensityVolumes[_3461]._vortexParameter.w;
                      _3505 = __3__37__0__0__g_cloudDensityVolumes[_3461]._spiralParameter.x;
                      _3506 = __3__37__0__0__g_cloudDensityVolumes[_3461]._spiralParameter.y;
                      _3507 = __3__37__0__0__g_cloudDensityVolumes[_3461]._spiralParameter.z;
                      _3508 = __3__37__0__0__g_cloudDensityVolumes[_3461]._spiralParameter.w;
                      _3510 = __3__37__0__0__g_cloudDensityVolumes[_3461]._animationParameter.x;
                      _3511 = __3__37__0__0__g_cloudDensityVolumes[_3461]._animationParameter.y;
                      _3512 = __3__37__0__0__g_cloudDensityVolumes[_3461]._animationParameter.z;
                      _3513 = __3__37__0__0__g_cloudDensityVolumes[_3461]._animationParameter.w;
                      _3515 = __3__37__0__0__g_cloudDensityVolumes[_3461]._flowParameter.x;
                      _3516 = __3__37__0__0__g_cloudDensityVolumes[_3461]._flowParameter.y;
                      _3517 = __3__37__0__0__g_cloudDensityVolumes[_3461]._flowParameter.z;
                      _3519 = __3__37__0__0__g_cloudDensityVolumes[_3461]._tornadoParameter.x;
                      _3520 = __3__37__0__0__g_cloudDensityVolumes[_3461]._tornadoParameter.y;
                      _3521 = __3__37__0__0__g_cloudDensityVolumes[_3461]._tornadoParameter.z;
                      _3522 = __3__37__0__0__g_cloudDensityVolumes[_3461]._tornadoParameter.w;
                      _3526 = mad(_3475, _3315, mad(_3471, _2794, (_3467 * _580))) + _3479;
                      _3530 = mad(_3476, _3315, mad(_3472, _2794, (_3468 * _580))) + _3480;
                      _3534 = mad(_3477, _3315, mad(_3473, _2794, (_3469 * _580))) + _3481;
                      _3536 = abs(_3530);
                      _3542 = max((abs(_3526) + -0.5f), max((_3536 + -0.5f), (abs(_3534) + -0.5f)));
                      if (!(_3542 >= 0.0f)) {
                        _3545 = __3__37__0__0__g_cloudDensityVolumes[_3461]._shapeParameter.y;
                        _3548 = max((saturate(_3545) * 0.5f), 0.0001f);
                        _3551 = saturate((_3548 + _3542) / _3548);  // [sem: expr_sat]
                        _3556 = 1.0f - ((_3551 * _3551) * (3.0f - (_3551 * 2.0f)));
                        if (!(_3556 <= 0.0f)) {
                          _3565 = sqrt((_3534 * _3534) + (_3526 * _3526)) * 2.0f;
                          _3569 = saturate(1.0f - (_3565 / max(_3501, 0.0001f)));  // [sem: expr_sat]
                          _3570 = _time.x * _3513;
                          _3571 = (_3497 == 1);
                          _3572 = (_3497 == 2);
                          if (_3571) {
                            _3649 = exp2(log2(_3569) * max(_3508, 0.0001f));
                            _3651 = max(_3507, 0.0001f);
                            _3655 = _3530 / (((max(_3506, 0.0001f) - _3651) * _3649) + _3651);
                            _3662 = (((_3569 * _3569) * _3500) * ((_3565 * _3502) + _3530)) - (_3569 * _3570);
                            _3663 = sin(_3662);
                            _3664 = cos(_3662);
                            _3667 = (_3664 * _3526) - (_3663 * _3534);
                            _3670 = (_3664 * _3534) + (_3663 * _3526);
                            if (_3572) {
                              _3672 = 0.0f;
                              _3673 = 1.0f;
                              _3674 = _3649;
                              _3675 = _3569;
                              _3676 = _3667;
                              _3677 = _3655;
                              _3678 = _3670;
                              _3698 = _3673;
                              _3699 = _3674;
                              _3700 = _3675;
                              _3701 = _3676;
                              _3702 = _3677;
                              _3703 = _3678;
                              _3704 = max(_3672, ((_3536 * 2.0f) + -1.0f));
                            } else {
                              _3683 = _3649;
                              _3684 = _3667;
                              _3685 = _3655;
                              _3686 = _3670;
                              _3687 = _3684 * 2.0f;
                              _3688 = _3685 * 2.0f;
                              _3689 = _3686 * 2.0f;
                              _3698 = 1.0f;
                              _3699 = _3683;
                              _3700 = _3569;
                              _3701 = _3684;
                              _3702 = _3685;
                              _3703 = _3686;
                              _3704 = (sqrt(((_3688 * _3688) + (_3687 * _3687)) + (_3689 * _3689)) + -1.0f);
                            }
                          } else {
                            if (_3572) {
                              _3576 = saturate(_3530 + 0.5f);  // [sem: expr_sat]
                              _3582 = max(_3519, 0.0001f);
                              _3585 = ((max(_3520, 0.0001f) - _3582) * exp2(log2(_3576) * max(_3521, 0.0001f))) + _3582;
                              _3587 = atan(_3534 / _3526);
                              _3590 = (_3526 < 0.0f);
                              _3591 = (_3526 == 0.0f);
                              _3592 = (_3534 >= 0.0f);
                              _3593 = (_3534 < 0.0f);
                              _3603 = max(((float)((uint)((uint)(_3498)))), 1.0f);
                              _3604 = _3576 * _3502;
                              _3615 = _3585 * _3495;
                              _3617 = max((_3585 - _3615), 0.0f);
                              _3618 = _3565 - _3617;
                              _3619 = _3617 * (acos(min(max(cos(((((_3604 * -6.2831855f) - _3570) + select((_3591 && _3592), 1.5707964f, select((_3591 && _3593), -1.5707964f, select((_3590 && _3593), (_3587 + -3.1415927f), select((_3590 && _3592), (_3587 + 3.1415927f), _3587))))) * _3603) + _3505), -1.0f), 1.0f)) / _3603);
                              _3624 = _3565 - _3585;
                              _3633 = saturate(1.0f - (_3565 / _3585));  // [sem: expr_sat]
                              _3636 = ((_3633 + _3604) * _3500) - _3570;
                              _3637 = sin(_3636);
                              _3638 = cos(_3636);
                              _3672 = ((saturate(_3503) * (((-0.0f - _3624) - _3615) + sqrt((_3618 * _3618) + (_3619 * _3619)))) + _3624);
                              _3673 = _3585;
                              _3674 = 0.0f;
                              _3675 = _3633;
                              _3676 = ((_3638 * _3526) - (_3637 * _3534));
                              _3677 = _3530;
                              _3678 = ((_3638 * _3534) + (_3637 * _3526));
                              _3698 = _3673;
                              _3699 = _3674;
                              _3700 = _3675;
                              _3701 = _3676;
                              _3702 = _3677;
                              _3703 = _3678;
                              _3704 = max(_3672, ((_3536 * 2.0f) + -1.0f));
                            } else {
                              _3683 = 0.0f;
                              _3684 = _3526;
                              _3685 = _3530;
                              _3686 = _3534;
                              _3687 = _3684 * 2.0f;
                              _3688 = _3685 * 2.0f;
                              _3689 = _3686 * 2.0f;
                              _3698 = 1.0f;
                              _3699 = _3683;
                              _3700 = _3569;
                              _3701 = _3684;
                              _3702 = _3685;
                              _3703 = _3686;
                              _3704 = (sqrt(((_3688 * _3688) + (_3687 * _3687)) + (_3689 * _3689)) + -1.0f);
                            }
                          }
                          if (_3488 > 0.0f) {
                            _3707 = _time.x * _3511;
                            _3711 = max(_3487, 0.0001f);
                            _3729 = (_3704 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3707 * _3515) + _3489) + (_3711 * _3701)), (((_3707 * _3516) + _3490) + (_3711 * _3702)), (((_3707 * _3517) + _3494) + (_3711 * _3703))), 0.0f)).x) + -0.5f) * _3488));
                          } else {
                            _3729 = _3704;
                          }
                          if (_3571 && (_3503 > 0.0f)) {
                            _3734 = atan(_3534 / _3526);
                            _3737 = (_3526 < 0.0f);
                            _3738 = (_3526 == 0.0f);
                            _3739 = (_3534 >= 0.0f);
                            _3740 = (_3534 < 0.0f);
                            _3762 = (_3729 - (((_3503 * 0.5f) * _3700) * cos(((((_3565 * _3502) - _3570) + select((_3738 && _3739), 1.5707964f, select((_3738 && _3740), -1.5707964f, select((_3737 && _3740), (_3734 + -3.1415927f), select((_3737 && _3739), (_3734 + 3.1415927f), _3734))))) * max(((float)((uint)((uint)(_3498)))), 1.0f)) + _3505)));
                          } else {
                            _3762 = _3729;
                          }
                          if (_3572 && (_3522 > 0.0f)) {
                            _3770 = max(_3762, ((_3698 * _3522) - _3565));
                          } else {
                            _3770 = _3762;
                          }
                          _3772 = max(_3485, 0.0001f);
                          _3778 = saturate((((_3484 - (_3699 * _3510)) + _3770) + _3772) / (_3772 * 2.0f));  // [sem: expr_sat]
                          _3783 = 1.0f - ((_3778 * _3778) * (3.0f - (_3778 * 2.0f)));
                          if (!((_3783 >= 1.0f) || ((_2771 || (_3493 <= 0.0f)) || (_3783 <= 0.0f)))) {
                            _3791 = _time.x * _3512;
                            _3795 = max(_3492, 0.0001f);
                            // [sem: expr_sat]
                            _3819 = saturate(_3783 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3791 * _3515) + _3489) + (_3795 * _3701)), (((_3791 * _3516) + _3490) + (_3795 * _3702)), (((_3791 * _3517) + _3494) + (_3795 * _3703))), 0.0f)).x) * _3493) * saturate(1.0f - abs((_3783 * 2.0f) + -1.0f))));
                          } else {
                            _3819 = _3783;  // [sem: expr_sat]
                          }
                          _3824 = (((_3556 * _3483) * _3819) + _3460);
                        } else {
                          _3824 = _3460;
                        }
                      } else {
                        _3824 = _3460;
                      }
                    } else {
                      _3824 = _3460;
                    }
                    _3825 = (uint)((uint)(_3461)) + (uint)(1);
                    if ((uint)_3825 < (uint)_cloudDensityVolumeInfo.x) {
                      _3460 = _3824;
                      _3461 = _3825;
                      continue;
                    }
                    while(true) {
                      _3830 = saturate(_3824);  // [sem: _3824_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _3830 = 0.0f;  // [sem: _3824_sat]
                }
                _3837 = max(_1995, (_2754 * _distanceScale));
                _3838 = ((_distanceScale * 20.0f) * (saturate(_3830 + (_3451 * _3441)) + saturate(_3312 + (_2934 * _2922))));
                break;
              }
            } else {
              _3837 = _1995;
              _3838 = ((log2(max(_1991, 0.5f)) * 0.6931472f) / _1994);
            }
            _3839 = dot(float3(_1207, _1208, _1209), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _3843 = min(max(_1328, 16.0f), (_atmosphereThickness + -16.0f));
            _3851 = max(_3843, 0.0f);
            _3860 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3851) * _3851)) / (_earthRadius + _3851);
            if (_3839 > _3860) {
              _3883 = ((exp2(log2(saturate((_3839 - _3860) / (1.0f - _3860))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3883 = ((exp2(log2(saturate((_3860 - _3839) / (_3860 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _3885 = (exp2(log2(saturate((_3843 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3888 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3885, _3883), 0.0f);
            _3891 = dot(float3(_1207, _1208, _1209), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_3891 > _3860) {
              _3914 = ((exp2(log2(saturate((_3891 - _3860) / (1.0f - _3860))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3914 = ((exp2(log2(saturate((_3860 - _3891) / (_3860 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3915 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3885, _3914), 0.0f);
            _3918 = _1858 * saturate((1.0f - saturate(_573 / _392)) * 10.0f);
            _3923 = _576 * 0.5f;
            _3928 = ((_1338 + _543) * _3923) + _547;
            _3929 = ((_1339 + _542) * _3923) + _546;
            _3930 = ((_3918 + _541) * _3923) + _545;
            _3931 = ((_1926 + _540) * _3923) + _544;
            _3932 = _3931 + _3930;
            _3933 = _3888.x + _3928;
            _3940 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _3943 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _3945 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _3952 = _mieAerosolDensity * 2e-05f;
            _3953 = _3952 * (_mieAerosolAbsorption + 1.0f);
            _3954 = _3953 * (_3888.y + _3929);
            _3963 = _cloudScatteringCoefficient / _distanceScale;
            _3964 = _3963 * (_3837 + _3932);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3965 = SkySpectralRayleighBeta(_rayleighScatteringColor).r + (_ozoneRatio * SKY_OZONE_1);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3966 = _3965 * _3933;
            _3967 = _3964 + _3954;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3969 = SkySpectralRayleighBeta(_rayleighScatteringColor).g + (_ozoneRatio * SKY_OZONE_2);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3970 = _3969 * _3933;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3972 = SkySpectralRayleighBeta(_rayleighScatteringColor).b + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3973 = _3972 * _3933;
            _3978 = exp2((_3966 + _3967) * -1.442695f);
            _3979 = exp2((_3970 + _3967) * -1.442695f);
            _3980 = exp2((_3973 + _3967) * -1.442695f);
            _3996 = _3963 * _distanceScale;
            _4003 = exp2(log2(1.0f - exp2((_3996 * -14.42695f) * _3918)) * 1.25f);
            _4007 = 1.0f - exp2((_3996 * -288.539f) * _1926);
            _4009 = _1338 * 1.9607843e-07f;
            _4010 = (_310 * 0.059683103f) * _4009;
            _4015 = _4003 * (_3918 * 64.0f);
            _4016 = _4015 * _320;
            _4023 = ((_338 * 2.0f) * _1926) * _4007;
            _4037 = (_3963 * (_3838 + _3932)) + (_3953 * _3929);
            _4046 = exp2(((_3965 * _3928) + _4037) * -1.442695f);
            _4047 = exp2(((_3969 * _3928) + _4037) * -1.442695f);
            _4048 = exp2(((_3972 * _3928) + _4037) * -1.442695f);
            _4061 = ((_4047 * 0.33951f) + (_4046 * 0.61312f)) + (_4048 * 0.04737f);
            _4062 = ((_4047 * 0.91636f) + (_4046 * 0.0702f)) + (_4048 * 0.01345f);
            _4063 = ((_4047 * 0.10958f) + (_4046 * 0.02062f)) + (_4048 * 0.8698f);
            _4068 = _3963 * (_1926 + _3918);
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's sun-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix instead of collapsing each output row onto its own
            //              channel — the single-scatter term against the view transmittance triple
            //              (_3978/_3979/_3980) and the multi-scatter gather against the sun
            //              transmittance triple (_4046/_4047/_4048), with the per-wavelength gather
            //              weight folded into the beta arguments. Volume fog, cloud and the cloud/fog
            //              share of the gather carry display-referred colour and keep the vanilla
            //              matrix, as does transmittance. Each Off arm is the complete native
            //              expression.
            _4069 = (_3940 * _4009) + _4068;
            _4075 = SPECTRAL_SKY_AMBIENT
              ? (((((_4023 * _volumeFogScatterColor.x) + _4016) * _3963) * SKY_VAN_DOT(0, _3978, _3979, _3980)) + SKY_RAY_INSCATTER(0, _3978, _3979, _3980, _3940, _3943, _3945, _4010) + SKY_RAY_INSCATTER(0, _4046, _4047, _4048, (_3940 * _1314), (_3943 * _1315), (_3945 * _1316), _4009) + ((_4068 * _1314) * _4061)) * _576
              : ((((((_4023 * _volumeFogScatterColor.x) + _4016) * _3963) + (_3940 * _4010)) * (((_3979 * 0.33951f) + (_3978 * 0.61312f)) + (_3980 * 0.04737f))) + ((_4069 * _1314) * _4061)) * _576;
            _4076 = (_3943 * _4009) + _4068;
            _4082 = SPECTRAL_SKY_AMBIENT
              ? (((((_4023 * _volumeFogScatterColor.y) + _4016) * _3963) * SKY_VAN_DOT(1, _3978, _3979, _3980)) + SKY_RAY_INSCATTER(1, _3978, _3979, _3980, _3940, _3943, _3945, _4010) + SKY_RAY_INSCATTER(1, _4046, _4047, _4048, (_3940 * _1314), (_3943 * _1315), (_3945 * _1316), _4009) + ((_4068 * _1315) * _4062)) * _576
              : ((((((_4023 * _volumeFogScatterColor.y) + _4016) * _3963) + (_3943 * _4010)) * (((_3979 * 0.91636f) + (_3978 * 0.0702f)) + (_3980 * 0.01345f))) + ((_4076 * _1315) * _4062)) * _576;
            _4083 = _4068 + (_3945 * _4009);
            _4089 = SPECTRAL_SKY_AMBIENT
              ? (((((_4023 * _volumeFogScatterColor.z) + _4016) * _3963) * SKY_VAN_DOT(2, _3978, _3979, _3980)) + SKY_RAY_INSCATTER(2, _3978, _3979, _3980, _3940, _3943, _3945, _4010) + SKY_RAY_INSCATTER(2, _4046, _4047, _4048, (_3940 * _1314), (_3943 * _1315), (_3945 * _1316), _4009) + ((_4068 * _1316) * _4063)) * _576
              : ((((((_4023 * _volumeFogScatterColor.z) + _4016) * _3963) + (_3945 * _4010)) * (((_3979 * 0.10958f) + (_3978 * 0.02062f)) + (_3980 * 0.8698f))) + ((_4083 * _1316) * _4063)) * _576;
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            _4090 = _3915.x + _3928;
            _4092 = _3953 * (_3915.y + _3929);
            _4093 = _3965 * _4090;
            _4094 = _3964 + _4092;
            _4096 = _3969 * _4090;
            _4098 = _3972 * _4090;
            _4103 = exp2((_4093 + _4094) * -1.442695f);
            _4104 = exp2((_4096 + _4094) * -1.442695f);
            _4105 = exp2((_4098 + _4094) * -1.442695f);
            _4122 = (_373 * 0.059683103f) * _4009;
            _4127 = _miePhaseConst * _miePhaseConst;
            _4144 = _1339 * _3952;
            _4147 = ((_4144 * 0.07957747f) * (((1.0f - _4127) * 3.0f) / ((_4127 + 2.0f) * 2.0f))) * (_373 / exp2(log2((_4127 + 1.0f) - (_miePhaseConst * _374)) * 1.5f));
            _4156 = ((((_389 * 2.0f) * _1926) * _4007) + (_4015 * _381)) * _3963;
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's moon-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix — the single-scatter term against the moon transmittance
            //              triple (_4103/_4104/_4105) and the multi-scatter gather against the sun
            //              transmittance triple (_4046/_4047/_4048) the game mixes it with, with the
            //              per-wavelength gather weight folded into the beta arguments. Cloud, Mie and
            //              the cloud/fog share of the gather keep the vanilla matrix, as does
            //              transmittance. Each Off arm is the complete native expression.
            _4168 = SPECTRAL_SKY_AMBIENT
              ? ((((_4061 * _1317) * (_4068 + (_mieScatterColor.x * _4144))) + ((_4156 + (_4147 * _mieScatterColor.x)) * SKY_VAN_DOT(0, _4103, _4104, _4105)) + SKY_RAY_INSCATTER(0, _4103, _4104, _4105, _3940, _3943, _3945, _4122) + SKY_RAY_INSCATTER(0, _4046, _4047, _4048, (_3940 * _1317), (_3943 * _1318), (_3945 * _1319), _4009)) * _576) + _553
              : ((((_4061 * _1317) * (_4069 + (_mieScatterColor.x * _4144))) + (((_4156 + (_3940 * _4122)) + (_4147 * _mieScatterColor.x)) * (((_4104 * 0.33951f) + (_4103 * 0.61312f)) + (_4105 * 0.04737f)))) * _576) + _553;
            _4177 = SPECTRAL_SKY_AMBIENT
              ? ((((_4062 * _1318) * (_4068 + (_mieScatterColor.y * _4144))) + ((_4156 + (_4147 * _mieScatterColor.y)) * SKY_VAN_DOT(1, _4103, _4104, _4105)) + SKY_RAY_INSCATTER(1, _4103, _4104, _4105, _3940, _3943, _3945, _4122) + SKY_RAY_INSCATTER(1, _4046, _4047, _4048, (_3940 * _1317), (_3943 * _1318), (_3945 * _1319), _4009)) * _576) + _552
              : ((((_4062 * _1318) * (_4076 + (_mieScatterColor.y * _4144))) + (((_4156 + (_3943 * _4122)) + (_4147 * _mieScatterColor.y)) * (((_4104 * 0.91636f) + (_4103 * 0.0702f)) + (_4105 * 0.01345f)))) * _576) + _552;
            _4186 = SPECTRAL_SKY_AMBIENT
              ? ((((_4063 * _1319) * (_4068 + (_mieScatterColor.z * _4144))) + ((_4156 + (_4147 * _mieScatterColor.z)) * SKY_VAN_DOT(2, _4103, _4104, _4105)) + SKY_RAY_INSCATTER(2, _4103, _4104, _4105, _3940, _3943, _3945, _4122) + SKY_RAY_INSCATTER(2, _4046, _4047, _4048, (_3940 * _1317), (_3943 * _1318), (_3945 * _1319), _4009)) * _576) + _551
              : ((((_4063 * _1319) * (_4083 + (_mieScatterColor.z * _4144))) + (((_4156 + (_3945 * _4122)) + (_4147 * _mieScatterColor.z)) * (((_4104 * 0.10958f) + (_4103 * 0.02062f)) + (_4105 * 0.8698f)))) * _576) + _551;
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            if (_3918 > 0.001f) {
              _4190 = _cloudPhaseConstFront * 0.5f;
              _4191 = _4190 * _4190;
              _4207 = _3963 * ((_3837 * 0.2f) + _3932);
              _4208 = _4207 + _3954;
              _4215 = exp2((_3966 + _4208) * -1.442695f);
              _4216 = exp2((_3970 + _4208) * -1.442695f);
              _4217 = exp2((_3973 + _4208) * -1.442695f);
              _4235 = ((((1.0f - _4191) * 3.0f) / ((_4191 + 2.0f) * 2.0f)) * 0.07957747f) * ((_576 * 51.2f) * _3918);
              _4237 = _4003 * _3963;
              _4238 = _4237 * (_4235 * (_310 / exp2(log2((1.0f - (_cloudPhaseConstFront * _300)) + _4191) * 1.5f)));
              _4252 = _4207 + _4092;
              _4259 = exp2((_4093 + _4252) * -1.442695f);
              _4260 = exp2((_4096 + _4252) * -1.442695f);
              _4261 = exp2((_4098 + _4252) * -1.442695f);
              _4278 = _4237 * (_4235 * (_373 / exp2(log2((1.0f - (_cloudPhaseConstFront * _371)) + _4191) * 1.5f)));
              _4286 = ((_4278 * (((_4260 * 0.33951f) + (_4259 * 0.61312f)) + (_4261 * 0.04737f))) + _4168);
              _4287 = ((_4278 * (((_4260 * 0.91636f) + (_4259 * 0.0702f)) + (_4261 * 0.01345f))) + _4177);
              _4288 = ((_4278 * (((_4260 * 0.10958f) + (_4259 * 0.02062f)) + (_4261 * 0.8698f))) + _4186);
              _4289 = ((_4238 * (((_4216 * 0.33951f) + (_4215 * 0.61312f)) + (_4217 * 0.04737f))) + _4075);
              _4290 = ((_4238 * (((_4216 * 0.91636f) + (_4215 * 0.0702f)) + (_4217 * 0.01345f))) + _4082);
              _4291 = ((_4238 * (((_4216 * 0.10958f) + (_4215 * 0.02062f)) + (_4217 * 0.8698f))) + _4089);
            } else {
              _4286 = _4168;
              _4287 = _4177;
              _4288 = _4186;
              _4289 = _4075;
              _4290 = _4082;
              _4291 = _4089;
            }
            _4292 = saturate(((float)((int)((int)(((float)((uint)((uint)(_1175)))) * 0.33f)))) + _73) * _299;
            _4305 = _569;
            _4306 = select(_1170, _1172, 0);
            _4307 = _1175;
            _4308 = _4286;
            _4309 = _4287;
            _4310 = _4288;
            _4311 = ((_4289 * _4292) + _550);
            _4312 = ((_4290 * _4292) + _549);
            _4313 = ((_4291 * _4292) + _548);
            _4314 = _3928;
            _4315 = _3929;
            _4316 = _3930;
            _4317 = _3931;
            _4318 = _1338;
            _4319 = _1339;
            _4320 = _3918;
            _4321 = _1926;
            _4322 = ((int)(uint)(_1187));
            _4323 = ((int)(uint)((int)(exp2((_3932 * -1.442695f) * _3963) < 0.001f)));
          }
          _4324 = (uint)((uint)(_4307)) + (uint)(1);
          if ((((uint)_4324 < (uint)_535) && (_4322 != 0)) && (_4323 == 0)) {
            _539 = _4322;
            _540 = _4321;
            _541 = _4320;
            _542 = _4319;
            _543 = _4318;
            _544 = _4317;
            _545 = _4316;
            _546 = _4315;
            _547 = _4314;
            _548 = _4313;
            _549 = _4312;
            _550 = _4311;
            _551 = _4310;
            _552 = _4309;
            _553 = _4308;
            _554 = _4324;
            _555 = _4306;
            _556 = _4305;
            continue;
          }
          _4332 = _4323;
          _4333 = _568;
          _4334 = _4321;
          _4335 = _4320;
          _4336 = _4319;
          _4337 = _4318;
          _4338 = _4317;
          _4339 = _4316;
          _4340 = _4315;
          _4341 = _4314;
          _4342 = _4313;
          _4343 = _4312;
          _4344 = _4311;
          _4345 = _4310;
          _4346 = _4309;
          _4347 = _4308;
          _4348 = _4306;
          _4349 = _4305;
          break;
        }
      } else {
        _4332 = 0;
        _4333 = 0.0f;
        _4334 = 0.0f;
        _4335 = 0.0f;
        _4336 = 0.0f;
        _4337 = 0.0f;
        _4338 = _120;
        _4339 = _119;
        _4340 = _118;
        _4341 = _117;
        _4342 = _116;
        _4343 = _115;
        _4344 = _114;
        _4345 = _113;
        _4346 = _112;
        _4347 = _111;
        _4348 = _109;
        _4349 = _108;
      }
      _4351 = select((_4332 != 0), 1e+06f, _4339);
      if (_393) {
        _4357 = _cloudCirrusAltitude + _earthRadius;
        _4361 = _144 - ((_141 - (_4357 * _4357)) * _145);
        if (!(_4361 < 0.0f)) {
          _4369 = ((sqrt(_4361) - _140) / (_138 * 2.0f));
        } else {
          _4369 = -1.0f;
        }
        _4373 = _144 - ((_141 - (_earthRadius * _earthRadius)) * _145);
        if (!(_4373 < 0.0f)) {
          _4381 = ((sqrt(_4373) - _140) / (_138 * 2.0f));
        } else {
          _4381 = -1.0f;
        }
        if ((_4369 >= 0.0f) && (_4381 <= 0.0f)) {
          _4387 = _cloudCirrusScale * 5e-05f;
          _4388 = _4369 * _64;
          _4390 = _4369 * _66;
          _4391 = _4388 + _viewPos.x;
          _4392 = (_4369 * _59) + _viewPos.y;
          _4393 = _4390 + _viewPos.z;
          _4401 = (_4391 * _4387) - (_cloudScroll.y * 0.0003f);
          _4402 = (_4393 * _4387) - (_cloudScroll.x * 0.0003f);
          // [sem: _3__36__0__0__g_texCirrus_SampleBias]
          _4406 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_4401, _4402), -1.0f, int2(0, 0));
          _31[0] = _4406.x;
          _31[1] = _4406.y;
          _31[2] = _4406.z;
          _31[3] = _4406.w;
          _4418 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
          _4422 = sqrt((_4388 * _4388) + (_4390 * _4390));
          if (!(_4422 > _4418)) {
            _4430 = (1.0f - cos((1.5707964f / _4418) * _4422));
          } else {
            _4430 = 1.0f;
          }
          _4431 = _4430 * _cloudCirrusDensity;
          _31[0] = ((_4406.x * _cloudCirrusWeightR) * _4431);
          _31[1] = ((_4431 * _4406.y) * _cloudCirrusWeightG);
          _31[2] = ((_4431 * _4406.z) * _cloudCirrusWeightB);
          _4460 = ((((sin(mad(_4402, -0.6f, (_4401 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_4402, 0.8f, (_4401 * 0.6f)) * 3.03f)) + ((sin(_4401 * 1.5f) * 0.5f) * sin(_4402 * 1.5f))) * 1.6000001f) + 1.5f;
          _4463 = (int)(min(max(_4460, 0.0f), 2.0f));
          _4472 = _31[min((uint)(_4463), 3u)];
          _4475 = (((_31[min((uint)(((int)((int)(_4463) + (int)(1)) % (int)(3))), 3u)]) - _4472) * saturate(_4460 - ((float)((int)(_4463))))) + _4472;
          _4476 = _4392 + _earthRadius;
          _4477 = _4391 * _4391;
          _4479 = _4393 * _4393;
          _4480 = _4479 + _4477;
          _4482 = sqrt(_4480 + (_4476 * _4476));
          _4483 = _4391 / _4482;
          _4484 = _4476 / _4482;
          _4485 = _4393 / _4482;
          _4486 = _4482 - _earthRadius;
          if (_4486 > 0.0f) {
            _4489 = dot(float3(_4483, _4484, _4485), float3(_64, _59, _66));
            _4499 = min(max(_4486, 16.0f), (_atmosphereThickness + -16.0f));
            _4507 = max(_4499, 0.0f);
            _4514 = (-0.0f - sqrt((_4507 + (_earthRadius * 2.0f)) * _4507)) / (_4507 + _earthRadius);
            _4515 = (_4489 > _4514);
            if (_4515) {
              _4537 = ((exp2(log2(saturate((_4489 - _4514) / (1.0f - _4514))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4537 = ((exp2(log2(saturate((_4514 - _4489) / (_4514 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4539 = (exp2(log2(saturate((_4499 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _4547 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4539, _4537, ((1.0f - exp2(-1.1541561f - (dot(float3(_4483, _4484, _4485), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            if (_4515) {
              _4577 = ((exp2(log2(saturate((_4489 - _4514) / (1.0f - _4514))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4577 = ((exp2(log2(saturate((_4514 - _4489) / (_4514 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _4583 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4539, _4577, ((1.0f - exp2(-1.1541561f - (dot(float3(_4483, _4484, _4485), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            _4591 = _4547.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4592 = _4547.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4593 = _4547.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4594 = (_4583.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4595 = (_4583.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4596 = (_4583.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          } else {
            _4591 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4592 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4593 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4594 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4595 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _4596 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          }
          _4605 = max(_4486, 0.01f);
          _4606 = -0.0f - _4605;
          _4615 = exp2((_4606 / _rayleighScaledHeight) * 1.442695f);
          _4616 = exp2((_4606 / _mieScaledHeight) * 1.442695f);
          _4620 = _4391 - _viewPos.x;
          _4621 = _4393 - _viewPos.z;
          _4624 = (_4620 * _4620) + (_4621 * _4621);
          _4625 = sqrt(_4624);
          _4631 = max(((_4625 * _4625) + -400000.0f), 0.0f) * 1e-06f;
          _4632 = _cloudAltitude - _4631;
          _4635 = _cloudDetailScale * 0.004f;
          _4638 = _cloudBaseScale * 0.0004f;
          _4641 = _4392 + _earthRadius;
          _4648 = (((-0.0f - _earthRadius) - _4632) + sqrt(_4480 + (_4641 * _4641))) / _cloudThickness;
          if (!((_4648 < 0.0f) || (_4648 > 1.0f))) {
            _4671 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
            _4672 = _4392 - _4632;
            _4686 = _4635 / _4638;
            _4687 = _4686 * _4638;
            _4689 = _4686 * _4671;
            _4705 = (4.0f - (saturate(max((_4625 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _4709 = _4687 * 4.355f;
            _4726 = 1.0f - sqrt(saturate((1.0f - _4648) * 1.4285715f));
            _4744 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4635 * _4391) - (_4687 * _cloudScroll.x)), ((_4672 * _4635) - _4689), ((_4635 * _4393) - (_4687 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4705 * _4391) - (_4709 * _cloudScroll.x)), ((_4705 * _4672) - (_4689 * 4.355f)), ((_4705 * _4393) - (_4709 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_4648 * 4.0f) * 0.8f) + 0.2f);
            _4751 = (saturate(((saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_4638 * (_4391 - _cloudScroll.x)), ((_4638 * _4672) - _4671), (_4638 * (_4393 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_4726 * 0.5f), ((_4726 * _4726) * _4726))) * saturate(_4648 * 10.0f)) - _4744) / (1.0f - _4744)) * _cloudAlpha);
          } else {
            _4751 = 0.0f;
          }
          if (_cloudFadeRange > 1e-05f) {
            _4763 = saturate((((1.0f - _cloudNear) * _4625) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _4763 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_523 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _4774 = 0.0f;
            _4775 = 0;
            while(true) {
              _5139 = _4774;
              if (!((((int)((uint)(1) << (_4775 & 31))) & _523) == 0)) {
                _4783 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[0].x;
                _4784 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[1].x;
                _4785 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[2].x;
                _4787 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[0].y;
                _4788 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[1].y;
                _4789 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[2].y;
                _4791 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[0].z;
                _4792 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[1].z;
                _4793 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[2].z;
                _4795 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[0].w;
                _4796 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[1].w;
                _4797 = __3__37__0__0__g_cloudDensityVolumes[_4775]._relativeWorldToLocal[2].w;
                _4799 = __3__37__0__0__g_cloudDensityVolumes[_4775]._shapeParameter.x;
                _4800 = __3__37__0__0__g_cloudDensityVolumes[_4775]._shapeParameter.z;
                _4801 = __3__37__0__0__g_cloudDensityVolumes[_4775]._shapeParameter.w;
                _4803 = __3__37__0__0__g_cloudDensityVolumes[_4775]._macroNoiseParameter.x;
                _4804 = __3__37__0__0__g_cloudDensityVolumes[_4775]._macroNoiseParameter.y;
                _4805 = __3__37__0__0__g_cloudDensityVolumes[_4775]._macroNoiseParameter.z;
                _4806 = __3__37__0__0__g_cloudDensityVolumes[_4775]._macroNoiseParameter.w;
                _4808 = __3__37__0__0__g_cloudDensityVolumes[_4775]._detailNoiseParameter.x;
                _4809 = __3__37__0__0__g_cloudDensityVolumes[_4775]._detailNoiseParameter.y;
                _4810 = __3__37__0__0__g_cloudDensityVolumes[_4775]._detailNoiseParameter.z;
                _4811 = __3__37__0__0__g_cloudDensityVolumes[_4775]._detailNoiseParameter.w;
                _4813 = __3__37__0__0__g_cloudDensityVolumes[_4775]._modeParameter.x;
                _4814 = __3__37__0__0__g_cloudDensityVolumes[_4775]._modeParameter.y;
                _4816 = __3__37__0__0__g_cloudDensityVolumes[_4775]._vortexParameter.x;
                _4817 = __3__37__0__0__g_cloudDensityVolumes[_4775]._vortexParameter.y;
                _4818 = __3__37__0__0__g_cloudDensityVolumes[_4775]._vortexParameter.z;
                _4819 = __3__37__0__0__g_cloudDensityVolumes[_4775]._vortexParameter.w;
                _4821 = __3__37__0__0__g_cloudDensityVolumes[_4775]._spiralParameter.x;
                _4822 = __3__37__0__0__g_cloudDensityVolumes[_4775]._spiralParameter.y;
                _4823 = __3__37__0__0__g_cloudDensityVolumes[_4775]._spiralParameter.z;
                _4824 = __3__37__0__0__g_cloudDensityVolumes[_4775]._spiralParameter.w;
                _4826 = __3__37__0__0__g_cloudDensityVolumes[_4775]._animationParameter.x;
                _4827 = __3__37__0__0__g_cloudDensityVolumes[_4775]._animationParameter.y;
                _4828 = __3__37__0__0__g_cloudDensityVolumes[_4775]._animationParameter.z;
                _4829 = __3__37__0__0__g_cloudDensityVolumes[_4775]._animationParameter.w;
                _4831 = __3__37__0__0__g_cloudDensityVolumes[_4775]._flowParameter.x;
                _4832 = __3__37__0__0__g_cloudDensityVolumes[_4775]._flowParameter.y;
                _4833 = __3__37__0__0__g_cloudDensityVolumes[_4775]._flowParameter.z;
                _4835 = __3__37__0__0__g_cloudDensityVolumes[_4775]._tornadoParameter.x;
                _4836 = __3__37__0__0__g_cloudDensityVolumes[_4775]._tornadoParameter.y;
                _4837 = __3__37__0__0__g_cloudDensityVolumes[_4775]._tornadoParameter.z;
                _4838 = __3__37__0__0__g_cloudDensityVolumes[_4775]._tornadoParameter.w;
                _4842 = mad(_4791, _4393, mad(_4787, _4392, (_4783 * _4391))) + _4795;
                _4846 = mad(_4792, _4393, mad(_4788, _4392, (_4784 * _4391))) + _4796;
                _4850 = mad(_4793, _4393, mad(_4789, _4392, (_4785 * _4391))) + _4797;
                _4852 = abs(_4846);
                _4858 = max((abs(_4842) + -0.5f), max((_4852 + -0.5f), (abs(_4850) + -0.5f)));
                if (!(_4858 >= 0.0f)) {
                  _4861 = __3__37__0__0__g_cloudDensityVolumes[_4775]._shapeParameter.y;
                  _4864 = max((saturate(_4861) * 0.5f), 0.0001f);
                  _4867 = saturate((_4864 + _4858) / _4864);  // [sem: expr_sat]
                  _4872 = 1.0f - ((_4867 * _4867) * (3.0f - (_4867 * 2.0f)));
                  if (!(_4872 <= 0.0f)) {
                    _4881 = sqrt((_4850 * _4850) + (_4842 * _4842)) * 2.0f;
                    _4885 = saturate(1.0f - (_4881 / max(_4817, 0.0001f)));  // [sem: expr_sat]
                    _4886 = _time.x * _4829;
                    _4887 = (_4813 == 1);
                    _4888 = (_4813 == 2);
                    if (_4887) {
                      _4965 = exp2(log2(_4885) * max(_4824, 0.0001f));
                      _4967 = max(_4823, 0.0001f);
                      _4971 = _4846 / (((max(_4822, 0.0001f) - _4967) * _4965) + _4967);
                      _4978 = (((_4885 * _4885) * _4816) * ((_4881 * _4818) + _4846)) - (_4885 * _4886);
                      _4979 = sin(_4978);
                      _4980 = cos(_4978);
                      _4983 = (_4980 * _4842) - (_4979 * _4850);
                      _4986 = (_4980 * _4850) + (_4979 * _4842);
                      if (_4888) {
                        _4988 = 0.0f;
                        _4989 = 1.0f;
                        _4990 = _4965;
                        _4991 = _4885;
                        _4992 = _4983;
                        _4993 = _4971;
                        _4994 = _4986;
                        _5014 = _4989;
                        _5015 = _4990;
                        _5016 = _4991;
                        _5017 = _4992;
                        _5018 = _4993;
                        _5019 = _4994;
                        _5020 = max(_4988, ((_4852 * 2.0f) + -1.0f));
                      } else {
                        _4999 = _4965;
                        _5000 = _4983;
                        _5001 = _4971;
                        _5002 = _4986;
                        _5003 = _5000 * 2.0f;
                        _5004 = _5001 * 2.0f;
                        _5005 = _5002 * 2.0f;
                        _5014 = 1.0f;
                        _5015 = _4999;
                        _5016 = _4885;
                        _5017 = _5000;
                        _5018 = _5001;
                        _5019 = _5002;
                        _5020 = (sqrt(((_5004 * _5004) + (_5003 * _5003)) + (_5005 * _5005)) + -1.0f);
                      }
                    } else {
                      if (_4888) {
                        _4892 = saturate(_4846 + 0.5f);  // [sem: expr_sat]
                        _4898 = max(_4835, 0.0001f);
                        _4901 = ((max(_4836, 0.0001f) - _4898) * exp2(log2(_4892) * max(_4837, 0.0001f))) + _4898;
                        _4903 = atan(_4850 / _4842);
                        _4906 = (_4842 < 0.0f);
                        _4907 = (_4842 == 0.0f);
                        _4908 = (_4850 >= 0.0f);
                        _4909 = (_4850 < 0.0f);
                        _4919 = max(((float)((uint)((uint)(_4814)))), 1.0f);
                        _4920 = _4892 * _4818;
                        _4931 = _4901 * _4811;
                        _4933 = max((_4901 - _4931), 0.0f);
                        _4934 = _4881 - _4933;
                        _4935 = _4933 * (acos(min(max(cos(((((_4920 * -6.2831855f) - _4886) + select((_4907 && _4908), 1.5707964f, select((_4907 && _4909), -1.5707964f, select((_4906 && _4909), (_4903 + -3.1415927f), select((_4906 && _4908), (_4903 + 3.1415927f), _4903))))) * _4919) + _4821), -1.0f), 1.0f)) / _4919);
                        _4940 = _4881 - _4901;
                        _4949 = saturate(1.0f - (_4881 / _4901));  // [sem: expr_sat]
                        _4952 = ((_4949 + _4920) * _4816) - _4886;
                        _4953 = sin(_4952);
                        _4954 = cos(_4952);
                        _4988 = ((saturate(_4819) * (((-0.0f - _4940) - _4931) + sqrt((_4934 * _4934) + (_4935 * _4935)))) + _4940);
                        _4989 = _4901;
                        _4990 = 0.0f;
                        _4991 = _4949;
                        _4992 = ((_4954 * _4842) - (_4953 * _4850));
                        _4993 = _4846;
                        _4994 = ((_4954 * _4850) + (_4953 * _4842));
                        _5014 = _4989;
                        _5015 = _4990;
                        _5016 = _4991;
                        _5017 = _4992;
                        _5018 = _4993;
                        _5019 = _4994;
                        _5020 = max(_4988, ((_4852 * 2.0f) + -1.0f));
                      } else {
                        _4999 = 0.0f;
                        _5000 = _4842;
                        _5001 = _4846;
                        _5002 = _4850;
                        _5003 = _5000 * 2.0f;
                        _5004 = _5001 * 2.0f;
                        _5005 = _5002 * 2.0f;
                        _5014 = 1.0f;
                        _5015 = _4999;
                        _5016 = _4885;
                        _5017 = _5000;
                        _5018 = _5001;
                        _5019 = _5002;
                        _5020 = (sqrt(((_5004 * _5004) + (_5003 * _5003)) + (_5005 * _5005)) + -1.0f);
                      }
                    }
                    if (_4804 > 0.0f) {
                      _5023 = _time.x * _4827;
                      _5027 = max(_4803, 0.0001f);
                      _5045 = (_5020 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5023 * _4831) + _4805) + (_5027 * _5017)), (((_5023 * _4832) + _4806) + (_5027 * _5018)), (((_5023 * _4833) + _4810) + (_5027 * _5019))), 0.0f)).x) + -0.5f) * _4804));
                    } else {
                      _5045 = _5020;
                    }
                    if (_4887 && (_4819 > 0.0f)) {
                      _5050 = atan(_4850 / _4842);
                      _5053 = (_4842 < 0.0f);
                      _5054 = (_4842 == 0.0f);
                      _5055 = (_4850 >= 0.0f);
                      _5056 = (_4850 < 0.0f);
                      _5078 = (_5045 - (((_4819 * 0.5f) * _5016) * cos(((((_4881 * _4818) - _4886) + select((_5054 && _5055), 1.5707964f, select((_5054 && _5056), -1.5707964f, select((_5053 && _5056), (_5050 + -3.1415927f), select((_5053 && _5055), (_5050 + 3.1415927f), _5050))))) * max(((float)((uint)((uint)(_4814)))), 1.0f)) + _4821)));
                    } else {
                      _5078 = _5045;
                    }
                    if (_4888 && (_4838 > 0.0f)) {
                      _5086 = max(_5078, ((_5014 * _4838) - _4881));
                    } else {
                      _5086 = _5078;
                    }
                    _5088 = max(_4801, 0.0001f);
                    _5094 = saturate((((_4800 - (_5015 * _4826)) + _5086) + _5088) / (_5088 * 2.0f));  // [sem: expr_sat]
                    _5099 = 1.0f - ((_5094 * _5094) * (3.0f - (_5094 * 2.0f)));
                    if (!((_5099 >= 1.0f) || ((_4809 <= 0.0f) || (_5099 <= 0.0f)))) {
                      _5106 = _time.x * _4828;
                      _5110 = max(_4808, 0.0001f);
                      // [sem: expr_sat]
                      _5134 = saturate(_5099 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5106 * _4831) + _4805) + (_5110 * _5017)), (((_5106 * _4832) + _4806) + (_5110 * _5018)), (((_5106 * _4833) + _4810) + (_5110 * _5019))), 0.0f)).x) * _4809) * saturate(1.0f - abs((_5099 * 2.0f) + -1.0f))));
                    } else {
                      _5134 = _5099;  // [sem: expr_sat]
                    }
                    _5139 = (((_4872 * _4799) * _5134) + _4774);
                  } else {
                    _5139 = _4774;
                  }
                } else {
                  _5139 = _4774;
                }
              } else {
                _5139 = _4774;
              }
              _5140 = (uint)((uint)(_4775)) + (uint)(1);
              if ((uint)_5140 < (uint)_cloudDensityVolumeInfo.x) {
                _4774 = _5139;
                _4775 = _5140;
                continue;
              }
              while(true) {
                _5145 = saturate(_5139);  // [sem: _5139_sat]
                break;
              }
              break;
            }
          } else {
            _5145 = 0.0f;  // [sem: _5139_sat]
          }
          _5149 = _4392 - _viewPos.y;
          _5152 = sqrt(_4624 + (_5149 * _5149));
          _5158 = max(1e-06f, (_heightFogScale * 0.0025f));
          _5159 = _5158 * _cloudScroll.x;
          _5160 = _5158 * _cloudScroll.y;
          _5161 = _5158 * _4391;
          _5162 = _5158 * _4392;
          _5163 = _5158 * _4393;
          // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
          _5184 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5161 * 6.393882f) - (_5159 * 1.871f)), (_5162 * 6.393882f), ((_5163 * 6.393882f) - (_5160 * 1.871f))), 0.0f);
          _5202 = ((((saturate(_5152 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5161 * 0.5127f) - _5159), (_5162 * 0.5127f), ((_5163 * 0.5127f) - _5160)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_4605 - _heightFogBaseline)))) * (((0.5f - _5184.x) * saturate((_5152 + -300.0f) * 0.0025f)) + _5184.x)) * _heightFogDensity;
          _5203 = _4392 - _cloudAltitude;
          _5205 = (_5203 + _4631) / _cloudThickness;
          _5208 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
          _5209 = select(_5208, _sunDirection.x, _moonDirection.x);
          _5210 = select(_5208, _sunDirection.y, _moonDirection.y);
          _5211 = select(_5208, _sunDirection.z, _moonDirection.z);
          _5212 = (_5210 > 0.0f);
          _5221 = ((0.5f - (((float)((int)((int)((int)(uint)(_5212)) - (int)((int)(uint)((int)(_5210 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _4632;
          if (_4392 < _4632) {
            _5224 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5209, _5210, _5211));
            _5230 = select((abs(_5224) < 1e-08f), 1e+08f, ((_5221 - dot(float3(0.0f, 1.0f, 0.0f), float3(_4391, _4392, _4393))) / _5224));
            _5236 = ((_5230 * _5209) + _4391);
            _5237 = _5221;
            _5238 = ((_5230 * _5211) + _4393);
          } else {
            _5236 = _4391;
            _5237 = _4392;
            _5238 = _4393;
          }
          _5253 = _cloudScatteringCoefficient / _distanceScale;
          _5258 = abs(_5210);
          _5260 = saturate(_5258 * 4.0f);  // [sem: expr_sat]
          _5262 = (_5260 * _5260) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_5236 - _viewPos.x) * 5e-05f) + 0.5f), ((_5237 - _cloudAltitude) / _cloudThickness), (((_5238 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _5253);
          _5268 = ((1.0f - _5262) * saturate((_5203 - _cloudThickness) * 0.1f)) + _5262;
          _5271 = -0.0f - _5253;
          _5272 = (log2(_5268) * 0.6931472f) / _5271;
          if ((saturate(_5145 + (_4763 * _4751)) > 0.001f) && ((_5145 > 0.001f) || ((_5205 >= 0.0f) && (_5205 <= 1.0f)))) {
            _5286 = (_4392 - _4632) / _cloudThickness;
            if (((_5286 >= 0.0f) && (_5286 <= 1.0f)) && (_5258 > 0.001f)) {
              _5303 = min(300.0f, (((_4632 - _4392) + select(_5212, _cloudThickness, 0.0f)) / _5210));
            } else {
              _5303 = 300.0f;
            }
            if ((_cloudDensityVolumeInfo.y & 1) == 0) {
              _5428 = 0.0f;
              _5429 = 3.4028235e+38f;
              _5430 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
            } else {
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _5315 = 0;
                _5316 = 3.4028235e+38f;
                _5317 = 0.0f;
                _5318 = 0;
                while(true) {
                  _5321 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[0].x;
                  _5322 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[1].x;
                  _5323 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[2].x;
                  _5325 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[0].y;
                  _5326 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[1].y;
                  _5327 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[2].y;
                  _5329 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[0].z;
                  _5330 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[1].z;
                  _5331 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[2].z;
                  _5333 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[0].w;
                  _5334 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[1].w;
                  _5335 = __3__37__0__0__g_cloudDensityVolumes[_5315]._relativeWorldToLocal[2].w;
                  _5339 = mad(_5329, _4393, mad(_5325, _4392, (_5321 * _4391))) + _5333;
                  _5343 = mad(_5330, _4393, mad(_5326, _4392, (_5322 * _4391))) + _5334;
                  _5347 = mad(_5331, _4393, mad(_5327, _4392, (_5323 * _4391))) + _5335;
                  _5350 = mad(_5329, _5211, mad(_5325, _5210, (_5321 * _5209)));
                  _5353 = mad(_5330, _5211, mad(_5326, _5210, (_5322 * _5209)));
                  _5356 = mad(_5331, _5211, mad(_5327, _5210, (_5323 * _5209)));
                  _5357 = abs(_5350);
                  if (!(_5357 < 1e-06f) || !(abs(_5339) > 0.5f)) {
                    _5363 = abs(_5353);
                    if (!(_5363 < 1e-06f) || !(abs(_5343) > 0.5f)) {
                      _5369 = abs(_5356);
                      if (!(_5369 < 1e-06f) || !(abs(_5347) > 0.5f)) {
                        _5384 = max(_5357, 1e-06f) * select((_5350 < 0.0f), -1.0f, 1.0f);
                        _5385 = max(_5363, 1e-06f) * select((_5353 < 0.0f), -1.0f, 1.0f);
                        _5386 = max(_5369, 1e-06f) * select((_5356 < 0.0f), -1.0f, 1.0f);
                        _5390 = (-0.5f - _5339) / _5384;
                        _5391 = (-0.5f - _5343) / _5385;
                        _5392 = (-0.5f - _5347) / _5386;
                        _5396 = (0.5f - _5339) / _5384;
                        _5397 = (0.5f - _5343) / _5385;
                        _5398 = (0.5f - _5347) / _5386;
                        _5409 = max(max(max(min(_5390, _5396), min(_5391, _5397)), min(_5392, _5398)), 0.0f);
                        _5410 = min(min(min(max(_5390, _5396), max(_5391, _5397)), max(_5392, _5398)), 3.4028235e+38f);
                        if (!(_5410 < _5409)) {
                          _5419 = min(_5316, _5409);
                          _5420 = max(_5317, _5410);
                          _5421 = ((int)(_5318) | (int)((int)((uint)(1) << (_5315 & 31))));
                        } else {
                          _5419 = _5316;
                          _5420 = _5317;
                          _5421 = _5318;
                        }
                      } else {
                        _5419 = _5316;
                        _5420 = _5317;
                        _5421 = _5318;
                      }
                    } else {
                      _5419 = _5316;
                      _5420 = _5317;
                      _5421 = _5318;
                    }
                  } else {
                    _5419 = _5316;
                    _5420 = _5317;
                    _5421 = _5318;
                  }
                  _5422 = (uint)((uint)(_5315)) + (uint)(1);
                  if ((uint)_5422 < (uint)_cloudDensityVolumeInfo.x) {
                    _5315 = _5422;
                    _5316 = _5419;
                    _5317 = _5420;
                    _5318 = _5421;
                    continue;
                  }
                  _5428 = _5419;
                  _5429 = _5420;
                  _5430 = _5421;
                  break;
                }
              } else {
                _5428 = 3.4028235e+38f;
                _5429 = 0.0f;
                _5430 = 0;
              }
            }
            _5431 = _5303 * 0.2f;
            _5435 = _5303 * 0.1f;
            _5443 = 0.0f;
            _5444 = _5431;
            _5445 = (_5431 * _5209);
            _5446 = (_5431 * _5210);
            _5447 = (_5431 * _5211);
            _5448 = _5435;
            _5449 = ((_5435 * _5209) + _4391);
            _5450 = ((_5435 * _5210) + _4392);
            _5451 = ((_5435 * _5211) + _4393);
            _5452 = 0;
            while(true) {
              _5456 = select(((_5448 >= _5428) && (_5448 <= _5429)), _5430, 0);
              _5462 = _5449 - _viewPos.x;
              _5463 = _5451 - _viewPos.z;
              _5467 = sqrt((_5462 * _5462) + (_5463 * _5463));
              _5474 = _cloudAltitude - (max(((_5467 * _5467) + -400000.0f), 0.0f) * 1e-06f);
              _5479 = _cloudDetailScale * 0.004f;
              _5482 = _cloudBaseScale * 0.0004f;
              _5487 = _earthRadius + _5450;
              _5496 = ((sqrt(((_5451 * _5451) + (_5449 * _5449)) + (_5487 * _5487)) - _5474) - _earthRadius) / _cloudThickness;
              if (!((_5496 < 0.0f) || (_5496 > 1.0f))) {
                _5539 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _5540 = _5450 - _5474;
                _5556 = _5479 / _5482;
                _5557 = _5556 * _5482;
                _5559 = _5556 * _5539;
                _5571 = saturate(max((_5467 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _5575 = (4.0f - (_5571 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _5579 = _5557 * 4.355f;
                _5598 = 1.0f - sqrt(saturate((1.0f - _5496) * 1.4285715f));
                // [sem: expr_sat]
                _5614 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_5449 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5451 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5482 * (_5449 - _cloudScroll.x)), ((_5482 * _5540) - _5539), (_5482 * (_5451 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5598 * 0.5f), ((_5598 * _5598) * _5598))) * saturate(_5496 * 10.0f);
                _5617 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5575 * _5449) - (_5579 * _cloudScroll.x)), ((_5575 * _5540) - (_5559 * 4.355f)), ((_5575 * _5451) - (_5579 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5479 * _5449) - (_5557 * _cloudScroll.x)), ((_5479 * _5540) - _5559), ((_5479 * _5451) - (_5557 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_5496 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                _5618 = _5617 * ((_5571 * 0.4f) + 0.1f);
                _5630 = (saturate((_5614 - _5617) / (1.0f - _5617)) * _cloudAlpha);
                _5631 = (saturate((_5614 - _5618) / (1.0f - _5618)) * _cloudAlpha);
              } else {
                _5630 = 0.0f;
                _5631 = 0.0f;
              }
              if (!((_5456 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                _5641 = 0.0f;
                _5642 = 0;
                while(true) {
                  _6007 = _5641;
                  if (!((((int)((uint)(1) << (_5642 & 31))) & _5456) == 0)) {
                    _5650 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[0].x;
                    _5651 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[1].x;
                    _5652 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[2].x;
                    _5654 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[0].y;
                    _5655 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[1].y;
                    _5656 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[2].y;
                    _5658 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[0].z;
                    _5659 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[1].z;
                    _5660 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[2].z;
                    _5662 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[0].w;
                    _5663 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[1].w;
                    _5664 = __3__37__0__0__g_cloudDensityVolumes[_5642]._relativeWorldToLocal[2].w;
                    _5666 = __3__37__0__0__g_cloudDensityVolumes[_5642]._shapeParameter.x;
                    _5667 = __3__37__0__0__g_cloudDensityVolumes[_5642]._shapeParameter.z;
                    _5668 = __3__37__0__0__g_cloudDensityVolumes[_5642]._shapeParameter.w;
                    _5670 = __3__37__0__0__g_cloudDensityVolumes[_5642]._macroNoiseParameter.x;
                    _5671 = __3__37__0__0__g_cloudDensityVolumes[_5642]._macroNoiseParameter.y;
                    _5672 = __3__37__0__0__g_cloudDensityVolumes[_5642]._macroNoiseParameter.z;
                    _5673 = __3__37__0__0__g_cloudDensityVolumes[_5642]._macroNoiseParameter.w;
                    _5675 = __3__37__0__0__g_cloudDensityVolumes[_5642]._detailNoiseParameter.x;
                    _5676 = __3__37__0__0__g_cloudDensityVolumes[_5642]._detailNoiseParameter.y;
                    _5677 = __3__37__0__0__g_cloudDensityVolumes[_5642]._detailNoiseParameter.z;
                    _5678 = __3__37__0__0__g_cloudDensityVolumes[_5642]._detailNoiseParameter.w;
                    _5680 = __3__37__0__0__g_cloudDensityVolumes[_5642]._modeParameter.x;
                    _5681 = __3__37__0__0__g_cloudDensityVolumes[_5642]._modeParameter.y;
                    _5683 = __3__37__0__0__g_cloudDensityVolumes[_5642]._vortexParameter.x;
                    _5684 = __3__37__0__0__g_cloudDensityVolumes[_5642]._vortexParameter.y;
                    _5685 = __3__37__0__0__g_cloudDensityVolumes[_5642]._vortexParameter.z;
                    _5686 = __3__37__0__0__g_cloudDensityVolumes[_5642]._vortexParameter.w;
                    _5688 = __3__37__0__0__g_cloudDensityVolumes[_5642]._spiralParameter.x;
                    _5689 = __3__37__0__0__g_cloudDensityVolumes[_5642]._spiralParameter.y;
                    _5690 = __3__37__0__0__g_cloudDensityVolumes[_5642]._spiralParameter.z;
                    _5691 = __3__37__0__0__g_cloudDensityVolumes[_5642]._spiralParameter.w;
                    _5693 = __3__37__0__0__g_cloudDensityVolumes[_5642]._animationParameter.x;
                    _5694 = __3__37__0__0__g_cloudDensityVolumes[_5642]._animationParameter.y;
                    _5695 = __3__37__0__0__g_cloudDensityVolumes[_5642]._animationParameter.z;
                    _5696 = __3__37__0__0__g_cloudDensityVolumes[_5642]._animationParameter.w;
                    _5698 = __3__37__0__0__g_cloudDensityVolumes[_5642]._flowParameter.x;
                    _5699 = __3__37__0__0__g_cloudDensityVolumes[_5642]._flowParameter.y;
                    _5700 = __3__37__0__0__g_cloudDensityVolumes[_5642]._flowParameter.z;
                    _5702 = __3__37__0__0__g_cloudDensityVolumes[_5642]._tornadoParameter.x;
                    _5703 = __3__37__0__0__g_cloudDensityVolumes[_5642]._tornadoParameter.y;
                    _5704 = __3__37__0__0__g_cloudDensityVolumes[_5642]._tornadoParameter.z;
                    _5705 = __3__37__0__0__g_cloudDensityVolumes[_5642]._tornadoParameter.w;
                    _5709 = mad(_5658, _5451, mad(_5654, _5450, (_5650 * _5449))) + _5662;
                    _5713 = mad(_5659, _5451, mad(_5655, _5450, (_5651 * _5449))) + _5663;
                    _5717 = mad(_5660, _5451, mad(_5656, _5450, (_5652 * _5449))) + _5664;
                    _5719 = abs(_5713);
                    _5725 = max((abs(_5709) + -0.5f), max((_5719 + -0.5f), (abs(_5717) + -0.5f)));
                    if (!(_5725 >= 0.0f)) {
                      _5728 = __3__37__0__0__g_cloudDensityVolumes[_5642]._shapeParameter.y;
                      _5731 = max((saturate(_5728) * 0.5f), 0.0001f);
                      _5734 = saturate((_5731 + _5725) / _5731);  // [sem: expr_sat]
                      _5739 = 1.0f - ((_5734 * _5734) * (3.0f - (_5734 * 2.0f)));
                      if (!(_5739 <= 0.0f)) {
                        _5748 = sqrt((_5717 * _5717) + (_5709 * _5709)) * 2.0f;
                        _5752 = saturate(1.0f - (_5748 / max(_5684, 0.0001f)));  // [sem: expr_sat]
                        _5753 = _time.x * _5696;
                        _5754 = (_5680 == 1);
                        _5755 = (_5680 == 2);
                        if (_5754) {
                          _5832 = exp2(log2(_5752) * max(_5691, 0.0001f));
                          _5834 = max(_5690, 0.0001f);
                          _5838 = _5713 / (((max(_5689, 0.0001f) - _5834) * _5832) + _5834);
                          _5845 = (((_5752 * _5752) * _5683) * ((_5748 * _5685) + _5713)) - (_5752 * _5753);
                          _5846 = sin(_5845);
                          _5847 = cos(_5845);
                          _5850 = (_5847 * _5709) - (_5846 * _5717);
                          _5853 = (_5847 * _5717) + (_5846 * _5709);
                          if (_5755) {
                            _5855 = 0.0f;
                            _5856 = 1.0f;
                            _5857 = _5832;
                            _5858 = _5752;
                            _5859 = _5850;
                            _5860 = _5838;
                            _5861 = _5853;
                            _5881 = _5856;
                            _5882 = _5857;
                            _5883 = _5858;
                            _5884 = _5859;
                            _5885 = _5860;
                            _5886 = _5861;
                            _5887 = max(_5855, ((_5719 * 2.0f) + -1.0f));
                          } else {
                            _5866 = _5832;
                            _5867 = _5850;
                            _5868 = _5838;
                            _5869 = _5853;
                            _5870 = _5867 * 2.0f;
                            _5871 = _5868 * 2.0f;
                            _5872 = _5869 * 2.0f;
                            _5881 = 1.0f;
                            _5882 = _5866;
                            _5883 = _5752;
                            _5884 = _5867;
                            _5885 = _5868;
                            _5886 = _5869;
                            _5887 = (sqrt(((_5871 * _5871) + (_5870 * _5870)) + (_5872 * _5872)) + -1.0f);
                          }
                        } else {
                          if (_5755) {
                            _5759 = saturate(_5713 + 0.5f);  // [sem: expr_sat]
                            _5765 = max(_5702, 0.0001f);
                            _5768 = ((max(_5703, 0.0001f) - _5765) * exp2(log2(_5759) * max(_5704, 0.0001f))) + _5765;
                            _5770 = atan(_5717 / _5709);
                            _5773 = (_5709 < 0.0f);
                            _5774 = (_5709 == 0.0f);
                            _5775 = (_5717 >= 0.0f);
                            _5776 = (_5717 < 0.0f);
                            _5786 = max(((float)((uint)((uint)(_5681)))), 1.0f);
                            _5787 = _5759 * _5685;
                            _5798 = _5768 * _5678;
                            _5800 = max((_5768 - _5798), 0.0f);
                            _5801 = _5748 - _5800;
                            _5802 = _5800 * (acos(min(max(cos(((((_5787 * -6.2831855f) - _5753) + select((_5774 && _5775), 1.5707964f, select((_5774 && _5776), -1.5707964f, select((_5773 && _5776), (_5770 + -3.1415927f), select((_5773 && _5775), (_5770 + 3.1415927f), _5770))))) * _5786) + _5688), -1.0f), 1.0f)) / _5786);
                            _5807 = _5748 - _5768;
                            _5816 = saturate(1.0f - (_5748 / _5768));  // [sem: expr_sat]
                            _5819 = ((_5816 + _5787) * _5683) - _5753;
                            _5820 = sin(_5819);
                            _5821 = cos(_5819);
                            _5855 = ((saturate(_5686) * (((-0.0f - _5807) - _5798) + sqrt((_5801 * _5801) + (_5802 * _5802)))) + _5807);
                            _5856 = _5768;
                            _5857 = 0.0f;
                            _5858 = _5816;
                            _5859 = ((_5821 * _5709) - (_5820 * _5717));
                            _5860 = _5713;
                            _5861 = ((_5821 * _5717) + (_5820 * _5709));
                            _5881 = _5856;
                            _5882 = _5857;
                            _5883 = _5858;
                            _5884 = _5859;
                            _5885 = _5860;
                            _5886 = _5861;
                            _5887 = max(_5855, ((_5719 * 2.0f) + -1.0f));
                          } else {
                            _5866 = 0.0f;
                            _5867 = _5709;
                            _5868 = _5713;
                            _5869 = _5717;
                            _5870 = _5867 * 2.0f;
                            _5871 = _5868 * 2.0f;
                            _5872 = _5869 * 2.0f;
                            _5881 = 1.0f;
                            _5882 = _5866;
                            _5883 = _5752;
                            _5884 = _5867;
                            _5885 = _5868;
                            _5886 = _5869;
                            _5887 = (sqrt(((_5871 * _5871) + (_5870 * _5870)) + (_5872 * _5872)) + -1.0f);
                          }
                        }
                        if (_5671 > 0.0f) {
                          _5890 = _time.x * _5694;
                          _5894 = max(_5670, 0.0001f);
                          _5912 = (_5887 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5890 * _5698) + _5672) + (_5894 * _5884)), (((_5890 * _5699) + _5673) + (_5894 * _5885)), (((_5890 * _5700) + _5677) + (_5894 * _5886))), 0.0f)).x) + -0.5f) * _5671));
                        } else {
                          _5912 = _5887;
                        }
                        if (_5754 && (_5686 > 0.0f)) {
                          _5917 = atan(_5717 / _5709);
                          _5920 = (_5709 < 0.0f);
                          _5921 = (_5709 == 0.0f);
                          _5922 = (_5717 >= 0.0f);
                          _5923 = (_5717 < 0.0f);
                          _5945 = (_5912 - (((_5686 * 0.5f) * _5883) * cos(((((_5748 * _5685) - _5753) + select((_5921 && _5922), 1.5707964f, select((_5921 && _5923), -1.5707964f, select((_5920 && _5923), (_5917 + -3.1415927f), select((_5920 && _5922), (_5917 + 3.1415927f), _5917))))) * max(((float)((uint)((uint)(_5681)))), 1.0f)) + _5688)));
                        } else {
                          _5945 = _5912;
                        }
                        if (_5755 && (_5705 > 0.0f)) {
                          _5953 = max(_5945, ((_5881 * _5705) - _5748));
                        } else {
                          _5953 = _5945;
                        }
                        _5955 = max(_5668, 0.0001f);
                        _5961 = saturate((((_5667 - (_5882 * _5693)) + _5953) + _5955) / (_5955 * 2.0f));  // [sem: expr_sat]
                        _5966 = 1.0f - ((_5961 * _5961) * (3.0f - (_5961 * 2.0f)));
                        if (!((_5966 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_5676 <= 0.0f)) || (_5966 <= 0.0f)))) {
                          _5974 = _time.x * _5695;
                          _5978 = max(_5675, 0.0001f);
                          // [sem: expr_sat]
                          _6002 = saturate(_5966 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5974 * _5698) + _5672) + (_5978 * _5884)), (((_5974 * _5699) + _5673) + (_5978 * _5885)), (((_5974 * _5700) + _5677) + (_5978 * _5886))), 0.0f)).x) * _5676) * saturate(1.0f - abs((_5966 * 2.0f) + -1.0f))));
                        } else {
                          _6002 = _5966;  // [sem: expr_sat]
                        }
                        _6007 = (((_5739 * _5666) * _6002) + _5641);
                      } else {
                        _6007 = _5641;
                      }
                    } else {
                      _6007 = _5641;
                    }
                  } else {
                    _6007 = _5641;
                  }
                  _6008 = (uint)((uint)(_5642)) + (uint)(1);
                  if ((uint)_6008 < (uint)_cloudDensityVolumeInfo.x) {
                    _5641 = _6007;
                    _5642 = _6008;
                    continue;
                  }
                  while(true) {
                    _6013 = saturate(_6007);  // [sem: _6007_sat]
                    break;
                  }
                  break;
                }
              } else {
                _6013 = 0.0f;  // [sem: _6007_sat]
              }
              _6015 = saturate(_6013 + _5631);  // [sem: expr_sat]
              _6031 = (((exp2((((_5443 * -0.0072134747f) * _5444) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_6013 + _5630) - _6015)) + _6015) * _5444) + _5443;
              _6032 = _5448 + _5444;
              _6033 = _5449 + _5445;
              _6034 = _5450 + _5446;
              _6035 = _5451 + _5447;
              _6036 = _5444 * 1.3f;
              _6037 = _5445 * 1.3f;
              _6038 = _5446 * 1.3f;
              _6039 = _5447 * 1.3f;
              _6040 = (int)(_5452) + (int)(1);
              if (!(_6040 == 6)) {
                _5443 = _6031;
                _5444 = _6036;
                _5445 = _6037;
                _5446 = _6038;
                _5447 = _6039;
                _5448 = _6032;
                _5449 = _6033;
                _5450 = _6034;
                _5451 = _6035;
                _5452 = _6040;
                continue;
              }
              _6048 = ((_cloudDensityVolumeInfo.y & 2) != 0);
              // [sem: _3__36__0__0__g_climateTex2_sampleLod]
              _6068 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_4391 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_4393 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
              _6070 = _4391 + 50.0f;
              _6071 = _4392 + 200.0f;
              _6072 = _6070 - _viewPos.x;
              _6073 = _4393 - _viewPos.z;
              _6077 = sqrt((_6072 * _6072) + (_6073 * _6073));
              _6082 = _cloudAltitude - (max(((_6077 * _6077) + -400000.0f), 0.0f) * 1e-06f);
              _6083 = _earthRadius + _6071;
              _6085 = _6083 * _6083;
              _6091 = ((sqrt(((_6070 * _6070) + _4479) + _6085) - _earthRadius) - _6082) / _cloudThickness;
              if (!((_6091 < 0.0f) || (_6091 > 1.0f))) {
                _6113 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _6114 = _6071 - _6082;
                _6130 = _5479 / _5482;
                _6131 = _6130 * _5482;
                _6133 = _6130 * _6113;
                _6145 = saturate(max((_6077 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _6149 = (4.0f - (_6145 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _6153 = _6131 * 4.355f;
                _6170 = 1.0f - sqrt(saturate((1.0f - _6091) * 1.4285715f));
                _6192 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5479 * _6070) - (_6131 * _cloudScroll.x)), ((_6114 * _5479) - _6133), ((_5479 * _4393) - (_6131 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6145 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6149 * _6070) - (_6153 * _cloudScroll.x)), ((_6149 * _6114) - (_6133 * 4.355f)), ((_6149 * _4393) - (_6153 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6091 * 4.0f) * 0.8f) + 0.2f);
                _6199 = (saturate(((saturate(saturate(((_6068.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5482 * (_6070 - _cloudScroll.x)), ((_6114 * _5482) - _6113), (_5482 * (_4393 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6170 * 0.5f), ((_6170 * _6170) * _6170))) * saturate(_6091 * 10.0f)) - _6192) / (1.0f - _6192)) * _cloudAlpha);
              } else {
                _6199 = 0.0f;
              }
              _6201 = (_cloudFadeRange > 1e-05f);
              if (_6201) {
                _6211 = saturate(((_6077 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _6211 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _6219 = 0.0f;
                _6220 = 0;
                while(true) {
                  _6583 = _6219;
                  if (!((uint)(_6220 & 16) > (uint)15)) {
                    _6226 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[0].x;
                    _6227 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[1].x;
                    _6228 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[2].x;
                    _6230 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[0].y;
                    _6231 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[1].y;
                    _6232 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[2].y;
                    _6234 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[0].z;
                    _6235 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[1].z;
                    _6236 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[2].z;
                    _6238 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[0].w;
                    _6239 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[1].w;
                    _6240 = __3__37__0__0__g_cloudDensityVolumes[_6220]._relativeWorldToLocal[2].w;
                    _6242 = __3__37__0__0__g_cloudDensityVolumes[_6220]._shapeParameter.x;
                    _6243 = __3__37__0__0__g_cloudDensityVolumes[_6220]._shapeParameter.z;
                    _6244 = __3__37__0__0__g_cloudDensityVolumes[_6220]._shapeParameter.w;
                    _6246 = __3__37__0__0__g_cloudDensityVolumes[_6220]._macroNoiseParameter.x;
                    _6247 = __3__37__0__0__g_cloudDensityVolumes[_6220]._macroNoiseParameter.y;
                    _6248 = __3__37__0__0__g_cloudDensityVolumes[_6220]._macroNoiseParameter.z;
                    _6249 = __3__37__0__0__g_cloudDensityVolumes[_6220]._macroNoiseParameter.w;
                    _6251 = __3__37__0__0__g_cloudDensityVolumes[_6220]._detailNoiseParameter.x;
                    _6252 = __3__37__0__0__g_cloudDensityVolumes[_6220]._detailNoiseParameter.y;
                    _6253 = __3__37__0__0__g_cloudDensityVolumes[_6220]._detailNoiseParameter.z;
                    _6254 = __3__37__0__0__g_cloudDensityVolumes[_6220]._detailNoiseParameter.w;
                    _6256 = __3__37__0__0__g_cloudDensityVolumes[_6220]._modeParameter.x;
                    _6257 = __3__37__0__0__g_cloudDensityVolumes[_6220]._modeParameter.y;
                    _6259 = __3__37__0__0__g_cloudDensityVolumes[_6220]._vortexParameter.x;
                    _6260 = __3__37__0__0__g_cloudDensityVolumes[_6220]._vortexParameter.y;
                    _6261 = __3__37__0__0__g_cloudDensityVolumes[_6220]._vortexParameter.z;
                    _6262 = __3__37__0__0__g_cloudDensityVolumes[_6220]._vortexParameter.w;
                    _6264 = __3__37__0__0__g_cloudDensityVolumes[_6220]._spiralParameter.x;
                    _6265 = __3__37__0__0__g_cloudDensityVolumes[_6220]._spiralParameter.y;
                    _6266 = __3__37__0__0__g_cloudDensityVolumes[_6220]._spiralParameter.z;
                    _6267 = __3__37__0__0__g_cloudDensityVolumes[_6220]._spiralParameter.w;
                    _6269 = __3__37__0__0__g_cloudDensityVolumes[_6220]._animationParameter.x;
                    _6270 = __3__37__0__0__g_cloudDensityVolumes[_6220]._animationParameter.y;
                    _6271 = __3__37__0__0__g_cloudDensityVolumes[_6220]._animationParameter.z;
                    _6272 = __3__37__0__0__g_cloudDensityVolumes[_6220]._animationParameter.w;
                    _6274 = __3__37__0__0__g_cloudDensityVolumes[_6220]._flowParameter.x;
                    _6275 = __3__37__0__0__g_cloudDensityVolumes[_6220]._flowParameter.y;
                    _6276 = __3__37__0__0__g_cloudDensityVolumes[_6220]._flowParameter.z;
                    _6278 = __3__37__0__0__g_cloudDensityVolumes[_6220]._tornadoParameter.x;
                    _6279 = __3__37__0__0__g_cloudDensityVolumes[_6220]._tornadoParameter.y;
                    _6280 = __3__37__0__0__g_cloudDensityVolumes[_6220]._tornadoParameter.z;
                    _6281 = __3__37__0__0__g_cloudDensityVolumes[_6220]._tornadoParameter.w;
                    _6285 = mad(_6234, _4393, mad(_6230, _6071, (_6226 * _6070))) + _6238;
                    _6289 = mad(_6235, _4393, mad(_6231, _6071, (_6227 * _6070))) + _6239;
                    _6293 = mad(_6236, _4393, mad(_6232, _6071, (_6228 * _6070))) + _6240;
                    _6295 = abs(_6289);
                    _6301 = max((abs(_6285) + -0.5f), max((_6295 + -0.5f), (abs(_6293) + -0.5f)));
                    if (!(_6301 >= 0.0f)) {
                      _6304 = __3__37__0__0__g_cloudDensityVolumes[_6220]._shapeParameter.y;
                      _6307 = max((saturate(_6304) * 0.5f), 0.0001f);
                      _6310 = saturate((_6307 + _6301) / _6307);  // [sem: expr_sat]
                      _6315 = 1.0f - ((_6310 * _6310) * (3.0f - (_6310 * 2.0f)));
                      if (!(_6315 <= 0.0f)) {
                        _6324 = sqrt((_6293 * _6293) + (_6285 * _6285)) * 2.0f;
                        _6328 = saturate(1.0f - (_6324 / max(_6260, 0.0001f)));  // [sem: expr_sat]
                        _6329 = _time.x * _6272;
                        _6330 = (_6256 == 1);
                        _6331 = (_6256 == 2);
                        if (_6330) {
                          _6408 = exp2(log2(_6328) * max(_6267, 0.0001f));
                          _6410 = max(_6266, 0.0001f);
                          _6414 = _6289 / (((max(_6265, 0.0001f) - _6410) * _6408) + _6410);
                          _6421 = (((_6328 * _6328) * _6259) * ((_6324 * _6261) + _6289)) - (_6328 * _6329);
                          _6422 = sin(_6421);
                          _6423 = cos(_6421);
                          _6426 = (_6423 * _6285) - (_6422 * _6293);
                          _6429 = (_6423 * _6293) + (_6422 * _6285);
                          if (_6331) {
                            _6431 = 0.0f;
                            _6432 = 1.0f;
                            _6433 = _6408;
                            _6434 = _6328;
                            _6435 = _6426;
                            _6436 = _6414;
                            _6437 = _6429;
                            _6457 = _6432;
                            _6458 = _6433;
                            _6459 = _6434;
                            _6460 = _6435;
                            _6461 = _6436;
                            _6462 = _6437;
                            _6463 = max(_6431, ((_6295 * 2.0f) + -1.0f));
                          } else {
                            _6442 = _6408;
                            _6443 = _6426;
                            _6444 = _6414;
                            _6445 = _6429;
                            _6446 = _6443 * 2.0f;
                            _6447 = _6444 * 2.0f;
                            _6448 = _6445 * 2.0f;
                            _6457 = 1.0f;
                            _6458 = _6442;
                            _6459 = _6328;
                            _6460 = _6443;
                            _6461 = _6444;
                            _6462 = _6445;
                            _6463 = (sqrt(((_6447 * _6447) + (_6446 * _6446)) + (_6448 * _6448)) + -1.0f);
                          }
                        } else {
                          if (_6331) {
                            _6335 = saturate(_6289 + 0.5f);  // [sem: expr_sat]
                            _6341 = max(_6278, 0.0001f);
                            _6344 = ((max(_6279, 0.0001f) - _6341) * exp2(log2(_6335) * max(_6280, 0.0001f))) + _6341;
                            _6346 = atan(_6293 / _6285);
                            _6349 = (_6285 < 0.0f);
                            _6350 = (_6285 == 0.0f);
                            _6351 = (_6293 >= 0.0f);
                            _6352 = (_6293 < 0.0f);
                            _6362 = max(((float)((uint)((uint)(_6257)))), 1.0f);
                            _6363 = _6335 * _6261;
                            _6374 = _6344 * _6254;
                            _6376 = max((_6344 - _6374), 0.0f);
                            _6377 = _6324 - _6376;
                            _6378 = _6376 * (acos(min(max(cos(((((_6363 * -6.2831855f) - _6329) + select((_6350 && _6351), 1.5707964f, select((_6350 && _6352), -1.5707964f, select((_6349 && _6352), (_6346 + -3.1415927f), select((_6349 && _6351), (_6346 + 3.1415927f), _6346))))) * _6362) + _6264), -1.0f), 1.0f)) / _6362);
                            _6383 = _6324 - _6344;
                            _6392 = saturate(1.0f - (_6324 / _6344));  // [sem: expr_sat]
                            _6395 = ((_6392 + _6363) * _6259) - _6329;
                            _6396 = sin(_6395);
                            _6397 = cos(_6395);
                            _6431 = ((saturate(_6262) * (((-0.0f - _6383) - _6374) + sqrt((_6377 * _6377) + (_6378 * _6378)))) + _6383);
                            _6432 = _6344;
                            _6433 = 0.0f;
                            _6434 = _6392;
                            _6435 = ((_6397 * _6285) - (_6396 * _6293));
                            _6436 = _6289;
                            _6437 = ((_6397 * _6293) + (_6396 * _6285));
                            _6457 = _6432;
                            _6458 = _6433;
                            _6459 = _6434;
                            _6460 = _6435;
                            _6461 = _6436;
                            _6462 = _6437;
                            _6463 = max(_6431, ((_6295 * 2.0f) + -1.0f));
                          } else {
                            _6442 = 0.0f;
                            _6443 = _6285;
                            _6444 = _6289;
                            _6445 = _6293;
                            _6446 = _6443 * 2.0f;
                            _6447 = _6444 * 2.0f;
                            _6448 = _6445 * 2.0f;
                            _6457 = 1.0f;
                            _6458 = _6442;
                            _6459 = _6328;
                            _6460 = _6443;
                            _6461 = _6444;
                            _6462 = _6445;
                            _6463 = (sqrt(((_6447 * _6447) + (_6446 * _6446)) + (_6448 * _6448)) + -1.0f);
                          }
                        }
                        if (_6247 > 0.0f) {
                          _6466 = _time.x * _6270;
                          _6470 = max(_6246, 0.0001f);
                          _6488 = (_6463 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6466 * _6274) + _6248) + (_6470 * _6460)), (((_6466 * _6275) + _6249) + (_6470 * _6461)), (((_6466 * _6276) + _6253) + (_6470 * _6462))), 0.0f)).x) + -0.5f) * _6247));
                        } else {
                          _6488 = _6463;
                        }
                        if (_6330 && (_6262 > 0.0f)) {
                          _6493 = atan(_6293 / _6285);
                          _6496 = (_6285 < 0.0f);
                          _6497 = (_6285 == 0.0f);
                          _6498 = (_6293 >= 0.0f);
                          _6499 = (_6293 < 0.0f);
                          _6521 = (_6488 - (((_6262 * 0.5f) * _6459) * cos(((((_6324 * _6261) - _6329) + select((_6497 && _6498), 1.5707964f, select((_6497 && _6499), -1.5707964f, select((_6496 && _6499), (_6493 + -3.1415927f), select((_6496 && _6498), (_6493 + 3.1415927f), _6493))))) * max(((float)((uint)((uint)(_6257)))), 1.0f)) + _6264)));
                        } else {
                          _6521 = _6488;
                        }
                        if (_6331 && (_6281 > 0.0f)) {
                          _6529 = max(_6521, ((_6457 * _6281) - _6324));
                        } else {
                          _6529 = _6521;
                        }
                        _6531 = max(_6244, 0.0001f);
                        _6537 = saturate((((_6243 - (_6458 * _6269)) + _6529) + _6531) / (_6531 * 2.0f));  // [sem: expr_sat]
                        _6542 = 1.0f - ((_6537 * _6537) * (3.0f - (_6537 * 2.0f)));
                        if (!((_6542 >= 1.0f) || ((_6048 || (_6252 <= 0.0f)) || (_6542 <= 0.0f)))) {
                          _6550 = _time.x * _6271;
                          _6554 = max(_6251, 0.0001f);
                          // [sem: expr_sat]
                          _6578 = saturate(_6542 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6550 * _6274) + _6248) + (_6554 * _6460)), (((_6550 * _6275) + _6249) + (_6554 * _6461)), (((_6550 * _6276) + _6253) + (_6554 * _6462))), 0.0f)).x) * _6252) * saturate(1.0f - abs((_6542 * 2.0f) + -1.0f))));
                        } else {
                          _6578 = _6542;  // [sem: expr_sat]
                        }
                        _6583 = (((_6315 * _6242) * _6578) + _6219);
                      } else {
                        _6583 = _6219;
                      }
                    } else {
                      _6583 = _6219;
                    }
                  } else {
                    _6583 = _6219;
                  }
                  _6584 = (uint)((uint)(_6220)) + (uint)(1);
                  if ((uint)_6584 < (uint)_cloudDensityVolumeInfo.x) {
                    _6219 = _6583;
                    _6220 = _6584;
                    continue;
                  }
                  while(true) {
                    _6589 = saturate(_6583);  // [sem: _6583_sat]
                    break;
                  }
                  break;
                }
              } else {
                _6589 = 0.0f;  // [sem: _6583_sat]
              }
              _6592 = _4393 + -50.0f;
              _6593 = _4391 - _viewPos.x;
              _6594 = _6592 - _viewPos.z;
              _6598 = sqrt((_6593 * _6593) + (_6594 * _6594));
              _6603 = _cloudAltitude - (max(((_6598 * _6598) + -400000.0f), 0.0f) * 1e-06f);
              _6610 = ((sqrt(((_6592 * _6592) + _4477) + _6085) - _earthRadius) - _6603) / _cloudThickness;
              if (!((_6610 < 0.0f) || (_6610 > 1.0f))) {
                _6632 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _6633 = _6071 - _6603;
                _6649 = _5479 / _5482;
                _6650 = _6649 * _5482;
                _6652 = _6649 * _6632;
                _6664 = saturate(max((_6598 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _6668 = (4.0f - (_6664 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _6672 = _6650 * 4.355f;
                _6689 = 1.0f - sqrt(saturate((1.0f - _6610) * 1.4285715f));
                _6711 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5479 * _4391) - (_6650 * _cloudScroll.x)), ((_6633 * _5479) - _6652), ((_5479 * _6592) - (_6650 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6664 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6668 * _4391) - (_6672 * _cloudScroll.x)), ((_6668 * _6633) - (_6652 * 4.355f)), ((_6668 * _6592) - (_6672 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6610 * 4.0f) * 0.8f) + 0.2f);
                _6718 = (saturate(((saturate(saturate(((_6068.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5482 * (_4391 - _cloudScroll.x)), ((_6633 * _5482) - _6632), (_5482 * (_6592 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6689 * 0.5f), ((_6689 * _6689) * _6689))) * saturate(_6610 * 10.0f)) - _6711) / (1.0f - _6711)) * _cloudAlpha);
              } else {
                _6718 = 0.0f;
              }
              if (_6201) {
                _6728 = saturate(((_6598 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _6728 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _6737 = 0.0f;
                _6738 = 0;
                while(true) {
                  _7101 = _6737;
                  if (!((uint)(_6738 & 16) > (uint)15)) {
                    _6744 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[0].x;
                    _6745 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[1].x;
                    _6746 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[2].x;
                    _6748 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[0].y;
                    _6749 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[1].y;
                    _6750 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[2].y;
                    _6752 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[0].z;
                    _6753 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[1].z;
                    _6754 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[2].z;
                    _6756 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[0].w;
                    _6757 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[1].w;
                    _6758 = __3__37__0__0__g_cloudDensityVolumes[_6738]._relativeWorldToLocal[2].w;
                    _6760 = __3__37__0__0__g_cloudDensityVolumes[_6738]._shapeParameter.x;
                    _6761 = __3__37__0__0__g_cloudDensityVolumes[_6738]._shapeParameter.z;
                    _6762 = __3__37__0__0__g_cloudDensityVolumes[_6738]._shapeParameter.w;
                    _6764 = __3__37__0__0__g_cloudDensityVolumes[_6738]._macroNoiseParameter.x;
                    _6765 = __3__37__0__0__g_cloudDensityVolumes[_6738]._macroNoiseParameter.y;
                    _6766 = __3__37__0__0__g_cloudDensityVolumes[_6738]._macroNoiseParameter.z;
                    _6767 = __3__37__0__0__g_cloudDensityVolumes[_6738]._macroNoiseParameter.w;
                    _6769 = __3__37__0__0__g_cloudDensityVolumes[_6738]._detailNoiseParameter.x;
                    _6770 = __3__37__0__0__g_cloudDensityVolumes[_6738]._detailNoiseParameter.y;
                    _6771 = __3__37__0__0__g_cloudDensityVolumes[_6738]._detailNoiseParameter.z;
                    _6772 = __3__37__0__0__g_cloudDensityVolumes[_6738]._detailNoiseParameter.w;
                    _6774 = __3__37__0__0__g_cloudDensityVolumes[_6738]._modeParameter.x;
                    _6775 = __3__37__0__0__g_cloudDensityVolumes[_6738]._modeParameter.y;
                    _6777 = __3__37__0__0__g_cloudDensityVolumes[_6738]._vortexParameter.x;
                    _6778 = __3__37__0__0__g_cloudDensityVolumes[_6738]._vortexParameter.y;
                    _6779 = __3__37__0__0__g_cloudDensityVolumes[_6738]._vortexParameter.z;
                    _6780 = __3__37__0__0__g_cloudDensityVolumes[_6738]._vortexParameter.w;
                    _6782 = __3__37__0__0__g_cloudDensityVolumes[_6738]._spiralParameter.x;
                    _6783 = __3__37__0__0__g_cloudDensityVolumes[_6738]._spiralParameter.y;
                    _6784 = __3__37__0__0__g_cloudDensityVolumes[_6738]._spiralParameter.z;
                    _6785 = __3__37__0__0__g_cloudDensityVolumes[_6738]._spiralParameter.w;
                    _6787 = __3__37__0__0__g_cloudDensityVolumes[_6738]._animationParameter.x;
                    _6788 = __3__37__0__0__g_cloudDensityVolumes[_6738]._animationParameter.y;
                    _6789 = __3__37__0__0__g_cloudDensityVolumes[_6738]._animationParameter.z;
                    _6790 = __3__37__0__0__g_cloudDensityVolumes[_6738]._animationParameter.w;
                    _6792 = __3__37__0__0__g_cloudDensityVolumes[_6738]._flowParameter.x;
                    _6793 = __3__37__0__0__g_cloudDensityVolumes[_6738]._flowParameter.y;
                    _6794 = __3__37__0__0__g_cloudDensityVolumes[_6738]._flowParameter.z;
                    _6796 = __3__37__0__0__g_cloudDensityVolumes[_6738]._tornadoParameter.x;
                    _6797 = __3__37__0__0__g_cloudDensityVolumes[_6738]._tornadoParameter.y;
                    _6798 = __3__37__0__0__g_cloudDensityVolumes[_6738]._tornadoParameter.z;
                    _6799 = __3__37__0__0__g_cloudDensityVolumes[_6738]._tornadoParameter.w;
                    _6803 = mad(_6752, _6592, mad(_6748, _6071, (_6744 * _4391))) + _6756;
                    _6807 = mad(_6753, _6592, mad(_6749, _6071, (_6745 * _4391))) + _6757;
                    _6811 = mad(_6754, _6592, mad(_6750, _6071, (_6746 * _4391))) + _6758;
                    _6813 = abs(_6807);
                    _6819 = max((abs(_6803) + -0.5f), max((_6813 + -0.5f), (abs(_6811) + -0.5f)));
                    if (!(_6819 >= 0.0f)) {
                      _6822 = __3__37__0__0__g_cloudDensityVolumes[_6738]._shapeParameter.y;
                      _6825 = max((saturate(_6822) * 0.5f), 0.0001f);
                      _6828 = saturate((_6825 + _6819) / _6825);  // [sem: expr_sat]
                      _6833 = 1.0f - ((_6828 * _6828) * (3.0f - (_6828 * 2.0f)));
                      if (!(_6833 <= 0.0f)) {
                        _6842 = sqrt((_6811 * _6811) + (_6803 * _6803)) * 2.0f;
                        _6846 = saturate(1.0f - (_6842 / max(_6778, 0.0001f)));  // [sem: expr_sat]
                        _6847 = _time.x * _6790;
                        _6848 = (_6774 == 1);
                        _6849 = (_6774 == 2);
                        if (_6848) {
                          _6926 = exp2(log2(_6846) * max(_6785, 0.0001f));
                          _6928 = max(_6784, 0.0001f);
                          _6932 = _6807 / (((max(_6783, 0.0001f) - _6928) * _6926) + _6928);
                          _6939 = (((_6846 * _6846) * _6777) * ((_6842 * _6779) + _6807)) - (_6846 * _6847);
                          _6940 = sin(_6939);
                          _6941 = cos(_6939);
                          _6944 = (_6941 * _6803) - (_6940 * _6811);
                          _6947 = (_6941 * _6811) + (_6940 * _6803);
                          if (_6849) {
                            _6949 = 0.0f;
                            _6950 = 1.0f;
                            _6951 = _6926;
                            _6952 = _6846;
                            _6953 = _6944;
                            _6954 = _6932;
                            _6955 = _6947;
                            _6975 = _6950;
                            _6976 = _6951;
                            _6977 = _6952;
                            _6978 = _6953;
                            _6979 = _6954;
                            _6980 = _6955;
                            _6981 = max(_6949, ((_6813 * 2.0f) + -1.0f));
                          } else {
                            _6960 = _6926;
                            _6961 = _6944;
                            _6962 = _6932;
                            _6963 = _6947;
                            _6964 = _6961 * 2.0f;
                            _6965 = _6962 * 2.0f;
                            _6966 = _6963 * 2.0f;
                            _6975 = 1.0f;
                            _6976 = _6960;
                            _6977 = _6846;
                            _6978 = _6961;
                            _6979 = _6962;
                            _6980 = _6963;
                            _6981 = (sqrt(((_6965 * _6965) + (_6964 * _6964)) + (_6966 * _6966)) + -1.0f);
                          }
                        } else {
                          if (_6849) {
                            _6853 = saturate(_6807 + 0.5f);  // [sem: expr_sat]
                            _6859 = max(_6796, 0.0001f);
                            _6862 = ((max(_6797, 0.0001f) - _6859) * exp2(log2(_6853) * max(_6798, 0.0001f))) + _6859;
                            _6864 = atan(_6811 / _6803);
                            _6867 = (_6803 < 0.0f);
                            _6868 = (_6803 == 0.0f);
                            _6869 = (_6811 >= 0.0f);
                            _6870 = (_6811 < 0.0f);
                            _6880 = max(((float)((uint)((uint)(_6775)))), 1.0f);
                            _6881 = _6853 * _6779;
                            _6892 = _6862 * _6772;
                            _6894 = max((_6862 - _6892), 0.0f);
                            _6895 = _6842 - _6894;
                            _6896 = _6894 * (acos(min(max(cos(((((_6881 * -6.2831855f) - _6847) + select((_6868 && _6869), 1.5707964f, select((_6868 && _6870), -1.5707964f, select((_6867 && _6870), (_6864 + -3.1415927f), select((_6867 && _6869), (_6864 + 3.1415927f), _6864))))) * _6880) + _6782), -1.0f), 1.0f)) / _6880);
                            _6901 = _6842 - _6862;
                            _6910 = saturate(1.0f - (_6842 / _6862));  // [sem: expr_sat]
                            _6913 = ((_6910 + _6881) * _6777) - _6847;
                            _6914 = sin(_6913);
                            _6915 = cos(_6913);
                            _6949 = ((saturate(_6780) * (((-0.0f - _6901) - _6892) + sqrt((_6895 * _6895) + (_6896 * _6896)))) + _6901);
                            _6950 = _6862;
                            _6951 = 0.0f;
                            _6952 = _6910;
                            _6953 = ((_6915 * _6803) - (_6914 * _6811));
                            _6954 = _6807;
                            _6955 = ((_6915 * _6811) + (_6914 * _6803));
                            _6975 = _6950;
                            _6976 = _6951;
                            _6977 = _6952;
                            _6978 = _6953;
                            _6979 = _6954;
                            _6980 = _6955;
                            _6981 = max(_6949, ((_6813 * 2.0f) + -1.0f));
                          } else {
                            _6960 = 0.0f;
                            _6961 = _6803;
                            _6962 = _6807;
                            _6963 = _6811;
                            _6964 = _6961 * 2.0f;
                            _6965 = _6962 * 2.0f;
                            _6966 = _6963 * 2.0f;
                            _6975 = 1.0f;
                            _6976 = _6960;
                            _6977 = _6846;
                            _6978 = _6961;
                            _6979 = _6962;
                            _6980 = _6963;
                            _6981 = (sqrt(((_6965 * _6965) + (_6964 * _6964)) + (_6966 * _6966)) + -1.0f);
                          }
                        }
                        if (_6765 > 0.0f) {
                          _6984 = _time.x * _6788;
                          _6988 = max(_6764, 0.0001f);
                          _7006 = (_6981 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6984 * _6792) + _6766) + (_6988 * _6978)), (((_6984 * _6793) + _6767) + (_6988 * _6979)), (((_6984 * _6794) + _6771) + (_6988 * _6980))), 0.0f)).x) + -0.5f) * _6765));
                        } else {
                          _7006 = _6981;
                        }
                        if (_6848 && (_6780 > 0.0f)) {
                          _7011 = atan(_6811 / _6803);
                          _7014 = (_6803 < 0.0f);
                          _7015 = (_6803 == 0.0f);
                          _7016 = (_6811 >= 0.0f);
                          _7017 = (_6811 < 0.0f);
                          _7039 = (_7006 - (((_6780 * 0.5f) * _6977) * cos(((((_6842 * _6779) - _6847) + select((_7015 && _7016), 1.5707964f, select((_7015 && _7017), -1.5707964f, select((_7014 && _7017), (_7011 + -3.1415927f), select((_7014 && _7016), (_7011 + 3.1415927f), _7011))))) * max(((float)((uint)((uint)(_6775)))), 1.0f)) + _6782)));
                        } else {
                          _7039 = _7006;
                        }
                        if (_6849 && (_6799 > 0.0f)) {
                          _7047 = max(_7039, ((_6975 * _6799) - _6842));
                        } else {
                          _7047 = _7039;
                        }
                        _7049 = max(_6762, 0.0001f);
                        _7055 = saturate((((_6761 - (_6976 * _6787)) + _7047) + _7049) / (_7049 * 2.0f));  // [sem: expr_sat]
                        _7060 = 1.0f - ((_7055 * _7055) * (3.0f - (_7055 * 2.0f)));
                        if (!((_7060 >= 1.0f) || ((_6048 || (_6770 <= 0.0f)) || (_7060 <= 0.0f)))) {
                          _7068 = _time.x * _6789;
                          _7072 = max(_6769, 0.0001f);
                          // [sem: expr_sat]
                          _7096 = saturate(_7060 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_7068 * _6792) + _6766) + (_7072 * _6978)), (((_7068 * _6793) + _6767) + (_7072 * _6979)), (((_7068 * _6794) + _6771) + (_7072 * _6980))), 0.0f)).x) * _6770) * saturate(1.0f - abs((_7060 * 2.0f) + -1.0f))));
                        } else {
                          _7096 = _7060;  // [sem: expr_sat]
                        }
                        _7101 = (((_6833 * _6760) * _7096) + _6737);
                      } else {
                        _7101 = _6737;
                      }
                    } else {
                      _7101 = _6737;
                    }
                  } else {
                    _7101 = _6737;
                  }
                  _7102 = (uint)((uint)(_6738)) + (uint)(1);
                  if ((uint)_7102 < (uint)_cloudDensityVolumeInfo.x) {
                    _6737 = _7101;
                    _6738 = _7102;
                    continue;
                  }
                  while(true) {
                    _7107 = saturate(_7101);  // [sem: _7101_sat]
                    break;
                  }
                  break;
                }
              } else {
                _7107 = 0.0f;  // [sem: _7101_sat]
              }
              _7114 = max(_5272, (_6031 * _distanceScale));
              _7115 = ((_distanceScale * 20.0f) * (saturate(_7107 + (_6728 * _6718)) + saturate(_6589 + (_6211 * _6199))));
              break;
            }
          } else {
            _7114 = _5272;
            _7115 = ((log2(max(_5268, 0.5f)) * 0.6931472f) / _5271);
          }
          _7116 = dot(float3(_4483, _4484, _4485), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _7120 = min(max(_4605, 16.0f), (_atmosphereThickness + -16.0f));
          _7128 = max(_7120, 0.0f);
          _7137 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _7128) * _7128)) / (_earthRadius + _7128);
          if (_7116 > _7137) {
            _7160 = ((exp2(log2(saturate((_7116 - _7137) / (1.0f - _7137))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7160 = ((exp2(log2(saturate((_7137 - _7116) / (_7137 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7162 = (exp2(log2(saturate((_7120 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _7165 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7162, _7160), 0.0f);
          _7168 = dot(float3(_4483, _4484, _4485), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_7168 > _7137) {
            _7191 = ((exp2(log2(saturate((_7168 - _7137) / (1.0f - _7137))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7191 = ((exp2(log2(saturate((_7137 - _7168) / (_7137 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _7192 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7162, _7191), 0.0f);
          _7203 = ((_4615 + _4337) * 12.5f) + _4341;
          _7204 = ((_4616 + _4336) * 12.5f) + _4340;
          _7205 = ((_4475 + _4335) * 12.5f) + _4351;
          _7206 = ((_5202 + _4334) * 12.5f) + _4338;
          _7207 = _7206 + _7205;
          _7208 = _7165.x + _7203;
          _7215 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
          _7218 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
          _7220 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
          _7227 = _mieAerosolDensity * 2e-05f;
          _7228 = _7227 * (_mieAerosolAbsorption + 1.0f);
          _7238 = _cloudScatteringCoefficient / _distanceScale;
          _7239 = _7238 * (_7114 + _7207);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _7240 = SkySpectralRayleighBeta(_rayleighScatteringColor).r + (_ozoneRatio * SKY_OZONE_1);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7242 = _7239 + (_7228 * (_7165.y + _7204));
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _7244 = SkySpectralRayleighBeta(_rayleighScatteringColor).g + (_ozoneRatio * SKY_OZONE_2);
          _7247 = SkySpectralRayleighBeta(_rayleighScatteringColor).b + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7253 = exp2(((_7240 * _7208) + _7242) * -1.442695f);
          _7254 = exp2(((_7244 * _7208) + _7242) * -1.442695f);
          _7255 = exp2(((_7247 * _7208) + _7242) * -1.442695f);
          _7271 = _7238 * _distanceScale;
          _7278 = exp2(log2(1.0f - exp2((_7271 * -14.42695f) * _4475)) * 1.25f);
          _7282 = 1.0f - exp2((_7271 * -288.539f) * _5202);
          _7284 = _4615 * 4.901961e-06f;
          _7285 = (_310 * 0.059683103f) * _7284;
          _7289 = _4475 * 64.0f;
          _7291 = (_7289 * _320) * _7278;
          _7298 = ((_338 * 2.0f) * _5202) * _7282;
          _7305 = _7238 * 25.0f;
          _7313 = (_7238 * (_7115 + _7207)) + (_7228 * _7204);
          _7322 = exp2(((_7240 * _7203) + _7313) * -1.442695f);
          _7323 = exp2(((_7244 * _7203) + _7313) * -1.442695f);
          _7324 = exp2(((_7247 * _7203) + _7313) * -1.442695f);
          _7337 = ((_7323 * 0.33951f) + (_7322 * 0.61312f)) + (_7324 * 0.04737f);
          _7338 = ((_7323 * 0.91636f) + (_7322 * 0.0702f)) + (_7324 * 0.01345f);
          _7339 = ((_7323 * 0.10958f) + (_7322 * 0.02062f)) + (_7324 * 0.8698f);
          _7341 = _7215 * _7284;
          _7342 = _7218 * _7284;
          _7343 = _7220 * _7284;
          _7344 = _7238 * (_5202 + _4475);
          _7345 = _7344 * 25.0f;
          _7364 = _7192.x + _7203;
          _7368 = _7239 + (_7228 * (_7192.y + _7204));
          _7377 = exp2(((_7240 * _7364) + _7368) * -1.442695f);
          _7378 = exp2(((_7244 * _7364) + _7368) * -1.442695f);
          _7379 = exp2(((_7247 * _7364) + _7368) * -1.442695f);
          _7392 = ((_7378 * 0.33951f) + (_7377 * 0.61312f)) + (_7379 * 0.04737f);
          _7393 = ((_7378 * 0.91636f) + (_7377 * 0.0702f)) + (_7379 * 0.01345f);
          _7394 = ((_7378 * 0.10958f) + (_7377 * 0.02062f)) + (_7379 * 0.8698f);
          _7395 = _373 * 0.059683103f;
          _7400 = _miePhaseConst * _miePhaseConst;
          _7417 = _4616 * _7227;
          _7420 = ((_7417 * 0.07957747f) * (((1.0f - _7400) * 3.0f) / ((_7400 + 2.0f) * 2.0f))) * (_373 / exp2(log2((_7400 + 1.0f) - (_miePhaseConst * _374)) * 1.5f));
          _7430 = ((((_389 * 2.0f) * _5202) * _7282) + ((_7289 * _381) * _7278)) * _7238;
          _7431 = _7337 * _4594;
          _7432 = _7338 * _4595;
          _7433 = _7339 * _4596;
          _7474 = _4349;
          _7475 = _4348;
          // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
          // Description: Converts this region's moon-path Rayleigh in-scatter per wavelength through
          //              the spectral matrix — the single-scatter term against the moon transmittance
          //              triple (_7377/_7378/_7379) and the multi-scatter gather against the sun
          //              transmittance triple (_7322/_7323/_7324) the game mixes it with, with the
          //              per-wavelength gather weight folded into the beta arguments. Cloud, Mie and
          //              the cloud/fog share of the gather keep the vanilla matrix, as does
          //              transmittance. Each Off arm is the complete native expression.
          _7476 = SPECTRAL_SKY_AMBIENT
            ? (((SKY_RAY_INSCATTER(0, _7377, _7378, _7379, _7215, _7218, _7220, (_7395 * _7284)) + SKY_RAY_INSCATTER(0, _7322, _7323, _7324, (_7215 * _4594), (_7218 * _4595), (_7220 * _4596), _7284)) + _4347) + (((((_7420 * _mieScatterColor.x) + _7430) * _7392) + (_7431 * ((_mieScatterColor.x * _7417) + _7344))) * 25.0f))
            : (((_7341 * ((_7392 * _7395) + _7431)) + _4347) + (((((_7420 * _mieScatterColor.x) + _7430) * _7392) + (_7431 * ((_mieScatterColor.x * _7417) + _7344))) * 25.0f));
          _7477 = SPECTRAL_SKY_AMBIENT
            ? (((SKY_RAY_INSCATTER(1, _7377, _7378, _7379, _7215, _7218, _7220, (_7395 * _7284)) + SKY_RAY_INSCATTER(1, _7322, _7323, _7324, (_7215 * _4594), (_7218 * _4595), (_7220 * _4596), _7284)) + _4346) + (((((_7420 * _mieScatterColor.y) + _7430) * _7393) + (_7432 * ((_mieScatterColor.y * _7417) + _7344))) * 25.0f))
            : (((_7342 * ((_7393 * _7395) + _7432)) + _4346) + (((((_7420 * _mieScatterColor.y) + _7430) * _7393) + (_7432 * ((_mieScatterColor.y * _7417) + _7344))) * 25.0f));
          _7478 = SPECTRAL_SKY_AMBIENT
            ? (((SKY_RAY_INSCATTER(2, _7377, _7378, _7379, _7215, _7218, _7220, (_7395 * _7284)) + SKY_RAY_INSCATTER(2, _7322, _7323, _7324, (_7215 * _4594), (_7218 * _4595), (_7220 * _4596), _7284)) + _4345) + (((((_7420 * _mieScatterColor.z) + _7430) * _7394) + (_7433 * ((_mieScatterColor.z * _7417) + _7344))) * 25.0f))
            : (((_7343 * ((_7394 * _7395) + _7433)) + _4345) + (((((_7420 * _mieScatterColor.z) + _7430) * _7394) + (_7433 * ((_mieScatterColor.z * _7417) + _7344))) * 25.0f));
          // RenoDX: <<< [Patch: SpectralSkyAmbient]
          // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
          // Description: Converts this region's sun-path Rayleigh in-scatter per wavelength through
          //              the spectral matrix instead of collapsing each output row onto its own
          //              channel — the single-scatter term against the view transmittance triple
          //              (_7253/_7254/_7255) and the multi-scatter gather against the sun
          //              transmittance triple (_7322/_7323/_7324), with the per-wavelength gather
          //              weight folded into the beta arguments. Volume fog, cloud and the cloud/fog
          //              share of the gather carry display-referred colour and keep the vanilla
          //              matrix, as does transmittance. Each Off arm is the complete native
          //              expression.
          _7479 = SPECTRAL_SKY_AMBIENT
            ? (((((((_7298 * _volumeFogScatterColor.x) + _7291) * _7305) * SKY_VAN_DOT(0, _7253, _7254, _7255)) + SKY_RAY_INSCATTER(0, _7253, _7254, _7255, _7215, _7218, _7220, _7285) + SKY_RAY_INSCATTER(0, _7322, _7323, _7324, (_7215 * _4591), (_7218 * _4592), (_7220 * _4593), _7284) + ((_7345 * _4591) * _7337)) * _299) + _4344)
            : ((((((((_7298 * _volumeFogScatterColor.x) + _7291) * _7305) + (_7215 * _7285)) * (((_7254 * 0.33951f) + (_7253 * 0.61312f)) + (_7255 * 0.04737f))) + (((_7341 + _7345) * _4591) * _7337)) * _299) + _4344);
          _7480 = SPECTRAL_SKY_AMBIENT
            ? (((((((_7298 * _volumeFogScatterColor.y) + _7291) * _7305) * SKY_VAN_DOT(1, _7253, _7254, _7255)) + SKY_RAY_INSCATTER(1, _7253, _7254, _7255, _7215, _7218, _7220, _7285) + SKY_RAY_INSCATTER(1, _7322, _7323, _7324, (_7215 * _4591), (_7218 * _4592), (_7220 * _4593), _7284) + ((_7345 * _4592) * _7338)) * _299) + _4343)
            : ((((((((_7298 * _volumeFogScatterColor.y) + _7291) * _7305) + (_7218 * _7285)) * (((_7254 * 0.91636f) + (_7253 * 0.0702f)) + (_7255 * 0.01345f))) + (((_7342 + _7345) * _4592) * _7338)) * _299) + _4343);
          _7481 = SPECTRAL_SKY_AMBIENT
            ? (((((((_7298 * _volumeFogScatterColor.z) + _7291) * _7305) * SKY_VAN_DOT(2, _7253, _7254, _7255)) + SKY_RAY_INSCATTER(2, _7253, _7254, _7255, _7215, _7218, _7220, _7285) + SKY_RAY_INSCATTER(2, _7322, _7323, _7324, (_7215 * _4591), (_7218 * _4592), (_7220 * _4593), _7284) + ((_7345 * _4593) * _7339)) * _299) + _4342)
            : ((((((((_7298 * _volumeFogScatterColor.z) + _7291) * _7305) + (_7220 * _7285)) * (((_7254 * 0.10958f) + (_7253 * 0.02062f)) + (_7255 * 0.8698f))) + (((_7343 + _7345) * _4593) * _7339)) * _299) + _4342);
          // RenoDX: <<< [Patch: SpectralSkyAmbient]
          _7482 = _7203;
          _7483 = _7204;
          _7484 = _7205;
          _7485 = _7206;
          _7486 = _4333;
        } else {
          _7474 = _4349;
          _7475 = _4348;
          _7476 = _4347;
          _7477 = _4346;
          _7478 = _4345;
          _7479 = _4344;
          _7480 = _4343;
          _7481 = _4342;
          _7482 = _4341;
          _7483 = _4340;
          _7484 = _4351;
          _7485 = _4338;
          _7486 = _4333;
        }
        if (_7486 < _155) {
          _7493 = (_155 * _64) + _viewPos.x;
          _7494 = (_155 * _66) + _viewPos.z;
          _7498 = min((_distanceScale * _7486), _155);
          _7502 = (_7498 * _64) + _viewPos.x;
          _7503 = (_7498 * _66) + _viewPos.z;
          _7510 = _earthRadius + _viewPos.y;
          _7511 = _7510 + (_7498 * _59);
          _7517 = sqrt(((_7503 * _7503) + (_7502 * _7502)) + (_7511 * _7511));
          _7518 = _7502 / _7517;
          _7519 = _7511 / _7517;
          _7520 = _7503 / _7517;
          _7523 = dot(float3(_7518, _7519, _7520), float3(_64, _59, _66));
          _7525 = dot(float3(_64, _59, _66), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _7528 = _atmosphereThickness + -16.0f;
          _7530 = min(max(max((_7517 - _earthRadius), 0.01f), 16.0f), _7528);
          _7532 = _atmosphereThickness + -32.0f;
          _7538 = max(_7530, 0.0f);
          _7539 = _earthRadius * 2.0f;
          _7545 = (-0.0f - sqrt((_7538 + _7539) * _7538)) / (_7538 + _earthRadius);
          _7546 = (_7523 > _7545);
          if (_7546) {
            _7568 = ((exp2(log2(saturate((_7523 - _7545) / (1.0f - _7545))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7568 = ((exp2(log2(saturate((_7545 - _7523) / (_7545 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7570 = (exp2(log2(saturate((_7530 + -16.0f) / _7532)) * 0.5f) * 0.96875f) + 0.015625f;
          _7575 = (1.0f - exp2(-1.1541561f - (dot(float3(_7518, _7519, _7520), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7578 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7583 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          _7590 = (_7525 * _7525) + 1.0f;
          _7591 = _7590 * 0.059683103f;
          _7595 = _miePhaseConst * _miePhaseConst;
          _7601 = _7595 + 1.0f;
          _7602 = _miePhaseConst * 2.0f;
          _7609 = (((1.0f - _7595) * 3.0f) / ((_7595 + 2.0f) * 2.0f)) * 0.07957747f;
          _7610 = (_7590 / exp2(log2(_7601 - (_7602 * _7525)) * 1.5f)) * _7609;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7615 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7620 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          _7624 = _7510 + (_155 * _59);
          _7630 = sqrt(((_7494 * _7494) + (_7493 * _7493)) + (_7624 * _7624));
          _7631 = _7493 / _7630;
          _7632 = _7624 / _7630;
          _7633 = _7494 / _7630;
          _7636 = dot(float3(_7631, _7632, _7633), float3(_64, _59, _66));
          _7639 = min(max(max((_7630 - _earthRadius), 0.01f), 16.0f), _7528);
          _7646 = max(_7639, 0.0f);
          _7652 = (-0.0f - sqrt((_7646 + _7539) * _7646)) / (_7646 + _earthRadius);
          _7653 = (_7636 > _7652);
          if (_7653) {
            _7675 = ((exp2(log2(saturate((_7636 - _7652) / (1.0f - _7652))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7675 = ((exp2(log2(saturate((_7652 - _7636) / (_7652 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7677 = (exp2(log2(saturate((_7639 + -16.0f) / _7532)) * 0.5f) * 0.96875f) + 0.015625f;
          _7682 = (1.0f - exp2(-1.1541561f - (dot(float3(_7631, _7632, _7633), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7683 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7687 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7697 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7701 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          _7714 = dot(float3(_7502, _7511, _7503), float3(_64, _59, _66));
          _7715 = _7714 / _7517;
          _7716 = _7498 - _155;
          _7717 = _7716 * _64;
          _7718 = _7716 * _59;
          _7719 = _7716 * _66;
          _7725 = sqrt(((_7717 * _7717) + (_7718 * _7718)) + (_7719 * _7719));
          _7732 = sqrt((0.5f / _rayleighScaledHeight) * _7517);
          _7733 = sqrt((0.5f / _mieScaledHeight) * _7517);
          _7735 = (_7725 + _7714) / _7517;
          _7736 = _7732 * _7715;
          _7737 = _7735 * _7732;
          _7738 = _7733 * _7715;
          _7739 = _7735 * _7733;
          _7760 = (float)((int)((int)((int)(uint)((int)(_7736 > 0.0f))) - (int)((int)(uint)((int)(_7736 < 0.0f)))));
          _7761 = (float)((int)((int)((int)(uint)((int)(_7737 > 0.0f))) - (int)((int)(uint)((int)(_7737 < 0.0f)))));
          _7762 = (float)((int)((int)((int)(uint)((int)(_7738 > 0.0f))) - (int)((int)(uint)((int)(_7738 < 0.0f)))));
          _7763 = (float)((int)((int)((int)(uint)((int)(_7739 > 0.0f))) - (int)((int)(uint)((int)(_7739 < 0.0f)))));
          _7764 = _7736 * _7736;
          _7765 = _7738 * _7738;
          _7766 = (_7761 > _7760);
          if (_7766) {
            _7771 = exp2(_7764 * 1.442695f);
          } else {
            _7771 = 0.0f;
          }
          _7772 = (_7763 > _7762);
          if (_7772) {
            _7777 = exp2(_7765 * 1.442695f);
          } else {
            _7777 = 0.0f;
          }
          _7808 = -0.0f - _7725;
          _7814 = ((_7725 / (_7517 * 2.0f)) + _7715) * 1.442695f;
          _7821 = _7517 * 6.2831f;
          _7826 = _earthRadius - _7517;
          _7833 = exp2((_7826 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7821);
          _7834 = dot(float2((_7760 / (sqrt((_7764 * 1.52f) + 4.0f) + (abs(_7736) * 2.3193f))), (exp2(_7814 * (_7808 / _rayleighScaledHeight)) * (_7761 / (sqrt(((_7737 * _7737) * 1.52f) + 4.0f) + (abs(_7737) * 2.3193f))))), float2(1.0f, -1.0f));
          _7835 = dot(float2((_7762 / (sqrt((_7765 * 1.52f) + 4.0f) + (abs(_7738) * 2.3193f))), (exp2(_7814 * (_7808 / _mieScaledHeight)) * (_7763 / (sqrt(((_7739 * _7739) * 1.52f) + 4.0f) + (abs(_7739) * 2.3193f))))), float2(1.0f, -1.0f));
          _7838 = (_7834 + _7771) * _7833;
          _7858 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _7821) * 2e-05f) * exp2((_7826 / _mieScaledHeight) * 1.442695f));
          _7859 = _7858 * (_7835 + _7777);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          float3 _rndx_beta_7864 = SkySpectralRayleighBeta(_rayleighScatteringColor);
          _7864 = _rndx_beta_7864.r + (_ozoneRatio * SKY_OZONE_1);
          _7867 = _rndx_beta_7864.g + (_ozoneRatio * SKY_OZONE_2);
          _7870 = _rndx_beta_7864.b + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7902 = dot(float3(_64, _59, _66), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_7546) {
            _7924 = ((exp2(log2(saturate((_7523 - _7545) / (1.0f - _7545))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7924 = ((exp2(log2(saturate((_7545 - _7523) / (_7545 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7929 = (1.0f - exp2(-1.1541561f - (dot(float3(_7518, _7519, _7520), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7930 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7934 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          _7939 = (_7902 * _7902) + 1.0f;
          _7940 = _7939 * 0.059683103f;
          _7950 = (_7939 / exp2(log2(_7601 - (_7602 * _7902)) * 1.5f)) * _7609;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7954 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7958 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          if (_7653) {
            _7984 = ((exp2(log2(saturate((_7636 - _7652) / (1.0f - _7652))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7984 = ((exp2(log2(saturate((_7652 - _7636) / (_7652 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7989 = (1.0f - exp2(-1.1541561f - (dot(float3(_7631, _7632, _7633), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7990 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7994 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8004 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8008 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          if (_7766) {
            _8025 = exp2(_7764 * 1.442695f);
          } else {
            _8025 = 0.0f;
          }
          if (_7772) {
            _8030 = exp2(_7765 * 1.442695f);
          } else {
            _8030 = 0.0f;
          }
          _8033 = (_8025 + _7834) * _7833;
          _8034 = _7858 * (_8030 + _7835);
          _8066 = max(0.0f, (((((_7610 * _7583.x) + (_7578.x * _7591)) + _7615.x) + _7620.x) - (exp2(((_7864 * _7838) + _7859) * -1.442695f) * ((((_7687.x * _7610) + (_7683.x * _7591)) + _7697.x) + _7701.x))));
          _8067 = max(0.0f, (((((_7610 * _7583.y) + (_7578.y * _7591)) + _7615.y) + _7620.y) - (exp2(((_7867 * _7838) + _7859) * -1.442695f) * ((((_7687.y * _7610) + (_7683.y * _7591)) + _7697.y) + _7701.y))));
          _8068 = max(0.0f, (((((_7610 * _7583.z) + (_7578.z * _7591)) + _7615.z) + _7620.z) - (exp2(((_7870 * _7838) + _7859) * -1.442695f) * ((((_7687.z * _7610) + (_7683.z * _7591)) + _7697.z) + _7701.z))));
          _8069 = max(0.0f, (((((_7950 * _7934.x) + (_7930.x * _7940)) + _7954.x) + _7958.x) - (exp2((_8034 + (_8033 * _7864)) * -1.442695f) * ((((_7994.x * _7950) + (_7990.x * _7940)) + _8004.x) + _8008.x))));
          _8070 = max(0.0f, (((((_7950 * _7934.y) + (_7930.y * _7940)) + _7954.y) + _7958.y) - (exp2((_8034 + (_8033 * _7867)) * -1.442695f) * ((((_7994.y * _7950) + (_7990.y * _7940)) + _8004.y) + _8008.y))));
          _8071 = max(0.0f, (((((_7950 * _7934.z) + (_7930.z * _7940)) + _7954.z) + _7958.z) - (exp2((_8034 + (_8033 * _7870)) * -1.442695f) * ((((_7994.z * _7950) + (_7990.z * _7940)) + _8004.z) + _8008.z))));
        } else {
          _8066 = 0.0f;
          _8067 = 0.0f;
          _8068 = 0.0f;
          _8069 = 0.0f;
          _8070 = 0.0f;
          _8071 = 0.0f;
        }
        _8105 = ((_cloudScatteringCoefficient / _distanceScale) * (_7485 + _7484)) + (((_7483 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        float3 _rndx_beta_8116 = SkySpectralRayleighBeta(_rayleighScatteringColor);
        _8116 = exp2((((_rndx_beta_8116.r + (_ozoneRatio * SKY_OZONE_1)) * _7482) + _8105) * -1.442695f);
        _8117 = exp2((((_rndx_beta_8116.g + (_ozoneRatio * SKY_OZONE_2)) * _7482) + _8105) * -1.442695f);
        _8118 = exp2((_8105 + (((_ozoneRatio * SKY_OZONE_3) + _rndx_beta_8116.b) * _7482)) * -1.442695f);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _8137 = (((_8066 * _299) * _8116) + _7479) + (((_8116 * _8069) + _7476) * _370);
        _8138 = (((_8067 * _299) * _8117) + _7480) + (((_8117 * _8070) + _7477) * _370);
        _8139 = (((_8068 * _299) * _8118) + _7481) + (((_8118 * _8071) + _7478) * _370);
        if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
          // [sem: expr_sat]
          _8168 = saturate(max(0.0f, (((-0.0f - (_59 * (_atmosphereThickness + _earthRadius))) - _viewPos.y) + _atmosphereSeaBaseline)) * 2.0f);
          _8177 = (((1.0f - ((_8168 * _8168) * (3.0f - (_8168 * 2.0f)))) * 0.98f) + 0.02f);
        } else {
          _8177 = 1.0f;
        }
        _8182 = _7474;
        _8183 = _7475;
        _8184 = _7476;
        _8185 = _7477;
        _8186 = _7478;
        _8187 = _7479;
        _8188 = _7480;
        _8189 = _7481;
        _8190 = _7482;
        _8191 = _7483;
        _8192 = _7484;
        _8193 = _7485;
        _8194 = (_8177 * (((_8138 * 0.33951f) + (_8137 * 0.61312f)) + (_8139 * 0.04737f)));
        _8195 = (_8177 * (((_8138 * 0.91636f) + (_8137 * 0.0702f)) + (_8139 * 0.01345f)));
        _8196 = (_8177 * (((_8138 * 0.10958f) + (_8137 * 0.02062f)) + (_8139 * 0.8698f)));
      } else {
        _8182 = _4349;
        _8183 = _4348;
        _8184 = _4347;
        _8185 = _4346;
        _8186 = _4345;
        _8187 = _4344;
        _8188 = _4343;
        _8189 = _4342;
        _8190 = _4341;
        _8191 = _4340;
        _8192 = _4351;
        _8193 = _4338;
        _8194 = 0.0f;
        _8195 = 0.0f;
        _8196 = 0.0f;
      }
    } else {
      _7474 = _108;
      _7475 = _109;
      _7476 = _111;
      _7477 = _112;
      _7478 = _113;
      _7479 = _114;
      _7480 = _115;
      _7481 = _116;
      _7482 = _117;
      _7483 = _118;
      _7484 = _119;
      _7485 = _120;
      _7486 = 0.0f;
      if (_393) {
        if (_7486 < _155) {
          _7493 = (_155 * _64) + _viewPos.x;
          _7494 = (_155 * _66) + _viewPos.z;
          _7498 = min((_distanceScale * _7486), _155);
          _7502 = (_7498 * _64) + _viewPos.x;
          _7503 = (_7498 * _66) + _viewPos.z;
          _7510 = _earthRadius + _viewPos.y;
          _7511 = _7510 + (_7498 * _59);
          _7517 = sqrt(((_7503 * _7503) + (_7502 * _7502)) + (_7511 * _7511));
          _7518 = _7502 / _7517;
          _7519 = _7511 / _7517;
          _7520 = _7503 / _7517;
          _7523 = dot(float3(_7518, _7519, _7520), float3(_64, _59, _66));
          _7525 = dot(float3(_64, _59, _66), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _7528 = _atmosphereThickness + -16.0f;
          _7530 = min(max(max((_7517 - _earthRadius), 0.01f), 16.0f), _7528);
          _7532 = _atmosphereThickness + -32.0f;
          _7538 = max(_7530, 0.0f);
          _7539 = _earthRadius * 2.0f;
          _7545 = (-0.0f - sqrt((_7538 + _7539) * _7538)) / (_7538 + _earthRadius);
          _7546 = (_7523 > _7545);
          if (_7546) {
            _7568 = ((exp2(log2(saturate((_7523 - _7545) / (1.0f - _7545))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7568 = ((exp2(log2(saturate((_7545 - _7523) / (_7545 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7570 = (exp2(log2(saturate((_7530 + -16.0f) / _7532)) * 0.5f) * 0.96875f) + 0.015625f;
          _7575 = (1.0f - exp2(-1.1541561f - (dot(float3(_7518, _7519, _7520), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7578 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7583 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          _7590 = (_7525 * _7525) + 1.0f;
          _7591 = _7590 * 0.059683103f;
          _7595 = _miePhaseConst * _miePhaseConst;
          _7601 = _7595 + 1.0f;
          _7602 = _miePhaseConst * 2.0f;
          _7609 = (((1.0f - _7595) * 3.0f) / ((_7595 + 2.0f) * 2.0f)) * 0.07957747f;
          _7610 = (_7590 / exp2(log2(_7601 - (_7602 * _7525)) * 1.5f)) * _7609;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7615 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7620 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7568, _7575), 0.0f);
          _7624 = _7510 + (_155 * _59);
          _7630 = sqrt(((_7494 * _7494) + (_7493 * _7493)) + (_7624 * _7624));
          _7631 = _7493 / _7630;
          _7632 = _7624 / _7630;
          _7633 = _7494 / _7630;
          _7636 = dot(float3(_7631, _7632, _7633), float3(_64, _59, _66));
          _7639 = min(max(max((_7630 - _earthRadius), 0.01f), 16.0f), _7528);
          _7646 = max(_7639, 0.0f);
          _7652 = (-0.0f - sqrt((_7646 + _7539) * _7646)) / (_7646 + _earthRadius);
          _7653 = (_7636 > _7652);
          if (_7653) {
            _7675 = ((exp2(log2(saturate((_7636 - _7652) / (1.0f - _7652))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7675 = ((exp2(log2(saturate((_7652 - _7636) / (_7652 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7677 = (exp2(log2(saturate((_7639 + -16.0f) / _7532)) * 0.5f) * 0.96875f) + 0.015625f;
          _7682 = (1.0f - exp2(-1.1541561f - (dot(float3(_7631, _7632, _7633), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7683 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7687 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7697 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7701 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7675, _7682), 0.0f);
          _7714 = dot(float3(_7502, _7511, _7503), float3(_64, _59, _66));
          _7715 = _7714 / _7517;
          _7716 = _7498 - _155;
          _7717 = _7716 * _64;
          _7718 = _7716 * _59;
          _7719 = _7716 * _66;
          _7725 = sqrt(((_7717 * _7717) + (_7718 * _7718)) + (_7719 * _7719));
          _7732 = sqrt((0.5f / _rayleighScaledHeight) * _7517);
          _7733 = sqrt((0.5f / _mieScaledHeight) * _7517);
          _7735 = (_7725 + _7714) / _7517;
          _7736 = _7732 * _7715;
          _7737 = _7735 * _7732;
          _7738 = _7733 * _7715;
          _7739 = _7735 * _7733;
          _7760 = (float)((int)((int)((int)(uint)((int)(_7736 > 0.0f))) - (int)((int)(uint)((int)(_7736 < 0.0f)))));
          _7761 = (float)((int)((int)((int)(uint)((int)(_7737 > 0.0f))) - (int)((int)(uint)((int)(_7737 < 0.0f)))));
          _7762 = (float)((int)((int)((int)(uint)((int)(_7738 > 0.0f))) - (int)((int)(uint)((int)(_7738 < 0.0f)))));
          _7763 = (float)((int)((int)((int)(uint)((int)(_7739 > 0.0f))) - (int)((int)(uint)((int)(_7739 < 0.0f)))));
          _7764 = _7736 * _7736;
          _7765 = _7738 * _7738;
          _7766 = (_7761 > _7760);
          if (_7766) {
            _7771 = exp2(_7764 * 1.442695f);
          } else {
            _7771 = 0.0f;
          }
          _7772 = (_7763 > _7762);
          if (_7772) {
            _7777 = exp2(_7765 * 1.442695f);
          } else {
            _7777 = 0.0f;
          }
          _7808 = -0.0f - _7725;
          _7814 = ((_7725 / (_7517 * 2.0f)) + _7715) * 1.442695f;
          _7821 = _7517 * 6.2831f;
          _7826 = _earthRadius - _7517;
          _7833 = exp2((_7826 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7821);
          _7834 = dot(float2((_7760 / (sqrt((_7764 * 1.52f) + 4.0f) + (abs(_7736) * 2.3193f))), (exp2(_7814 * (_7808 / _rayleighScaledHeight)) * (_7761 / (sqrt(((_7737 * _7737) * 1.52f) + 4.0f) + (abs(_7737) * 2.3193f))))), float2(1.0f, -1.0f));
          _7835 = dot(float2((_7762 / (sqrt((_7765 * 1.52f) + 4.0f) + (abs(_7738) * 2.3193f))), (exp2(_7814 * (_7808 / _mieScaledHeight)) * (_7763 / (sqrt(((_7739 * _7739) * 1.52f) + 4.0f) + (abs(_7739) * 2.3193f))))), float2(1.0f, -1.0f));
          _7838 = (_7834 + _7771) * _7833;
          _7858 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _7821) * 2e-05f) * exp2((_7826 / _mieScaledHeight) * 1.442695f));
          _7859 = _7858 * (_7835 + _7777);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          float3 _rndx_beta_7864 = SkySpectralRayleighBeta(_rayleighScatteringColor);
          _7864 = _rndx_beta_7864.r + (_ozoneRatio * SKY_OZONE_1);
          _7867 = _rndx_beta_7864.g + (_ozoneRatio * SKY_OZONE_2);
          _7870 = _rndx_beta_7864.b + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7902 = dot(float3(_64, _59, _66), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_7546) {
            _7924 = ((exp2(log2(saturate((_7523 - _7545) / (1.0f - _7545))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7924 = ((exp2(log2(saturate((_7545 - _7523) / (_7545 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7929 = (1.0f - exp2(-1.1541561f - (dot(float3(_7518, _7519, _7520), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7930 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7934 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          _7939 = (_7902 * _7902) + 1.0f;
          _7940 = _7939 * 0.059683103f;
          _7950 = (_7939 / exp2(log2(_7601 - (_7602 * _7902)) * 1.5f)) * _7609;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7954 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7958 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7570, _7924, _7929), 0.0f);
          if (_7653) {
            _7984 = ((exp2(log2(saturate((_7636 - _7652) / (1.0f - _7652))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7984 = ((exp2(log2(saturate((_7652 - _7636) / (_7652 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7989 = (1.0f - exp2(-1.1541561f - (dot(float3(_7631, _7632, _7633), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7990 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7994 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8004 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8008 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7677, _7984, _7989), 0.0f);
          if (_7766) {
            _8025 = exp2(_7764 * 1.442695f);
          } else {
            _8025 = 0.0f;
          }
          if (_7772) {
            _8030 = exp2(_7765 * 1.442695f);
          } else {
            _8030 = 0.0f;
          }
          _8033 = (_8025 + _7834) * _7833;
          _8034 = _7858 * (_8030 + _7835);
          _8066 = max(0.0f, (((((_7610 * _7583.x) + (_7578.x * _7591)) + _7615.x) + _7620.x) - (exp2(((_7864 * _7838) + _7859) * -1.442695f) * ((((_7687.x * _7610) + (_7683.x * _7591)) + _7697.x) + _7701.x))));
          _8067 = max(0.0f, (((((_7610 * _7583.y) + (_7578.y * _7591)) + _7615.y) + _7620.y) - (exp2(((_7867 * _7838) + _7859) * -1.442695f) * ((((_7687.y * _7610) + (_7683.y * _7591)) + _7697.y) + _7701.y))));
          _8068 = max(0.0f, (((((_7610 * _7583.z) + (_7578.z * _7591)) + _7615.z) + _7620.z) - (exp2(((_7870 * _7838) + _7859) * -1.442695f) * ((((_7687.z * _7610) + (_7683.z * _7591)) + _7697.z) + _7701.z))));
          _8069 = max(0.0f, (((((_7950 * _7934.x) + (_7930.x * _7940)) + _7954.x) + _7958.x) - (exp2((_8034 + (_8033 * _7864)) * -1.442695f) * ((((_7994.x * _7950) + (_7990.x * _7940)) + _8004.x) + _8008.x))));
          _8070 = max(0.0f, (((((_7950 * _7934.y) + (_7930.y * _7940)) + _7954.y) + _7958.y) - (exp2((_8034 + (_8033 * _7867)) * -1.442695f) * ((((_7994.y * _7950) + (_7990.y * _7940)) + _8004.y) + _8008.y))));
          _8071 = max(0.0f, (((((_7950 * _7934.z) + (_7930.z * _7940)) + _7954.z) + _7958.z) - (exp2((_8034 + (_8033 * _7870)) * -1.442695f) * ((((_7994.z * _7950) + (_7990.z * _7940)) + _8004.z) + _8008.z))));
        } else {
          _8066 = 0.0f;
          _8067 = 0.0f;
          _8068 = 0.0f;
          _8069 = 0.0f;
          _8070 = 0.0f;
          _8071 = 0.0f;
        }
        _8105 = ((_cloudScatteringCoefficient / _distanceScale) * (_7485 + _7484)) + (((_7483 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        float3 _rndx_beta_8116 = SkySpectralRayleighBeta(_rayleighScatteringColor);
        _8116 = exp2((((_rndx_beta_8116.r + (_ozoneRatio * SKY_OZONE_1)) * _7482) + _8105) * -1.442695f);
        _8117 = exp2((((_rndx_beta_8116.g + (_ozoneRatio * SKY_OZONE_2)) * _7482) + _8105) * -1.442695f);
        _8118 = exp2((_8105 + (((_ozoneRatio * SKY_OZONE_3) + _rndx_beta_8116.b) * _7482)) * -1.442695f);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _8137 = (((_8066 * _299) * _8116) + _7479) + (((_8116 * _8069) + _7476) * _370);
        _8138 = (((_8067 * _299) * _8117) + _7480) + (((_8117 * _8070) + _7477) * _370);
        _8139 = (((_8068 * _299) * _8118) + _7481) + (((_8118 * _8071) + _7478) * _370);
        if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
          // [sem: expr_sat]
          _8168 = saturate(max(0.0f, (((-0.0f - (_59 * (_atmosphereThickness + _earthRadius))) - _viewPos.y) + _atmosphereSeaBaseline)) * 2.0f);
          _8177 = (((1.0f - ((_8168 * _8168) * (3.0f - (_8168 * 2.0f)))) * 0.98f) + 0.02f);
        } else {
          _8177 = 1.0f;
        }
        _8182 = _7474;
        _8183 = _7475;
        _8184 = _7476;
        _8185 = _7477;
        _8186 = _7478;
        _8187 = _7479;
        _8188 = _7480;
        _8189 = _7481;
        _8190 = _7482;
        _8191 = _7483;
        _8192 = _7484;
        _8193 = _7485;
        _8194 = (_8177 * (((_8138 * 0.33951f) + (_8137 * 0.61312f)) + (_8139 * 0.04737f)));
        _8195 = (_8177 * (((_8138 * 0.91636f) + (_8137 * 0.0702f)) + (_8139 * 0.01345f)));
        _8196 = (_8177 * (((_8138 * 0.10958f) + (_8137 * 0.02062f)) + (_8139 * 0.8698f)));
      } else {
        _8182 = _7474;
        _8183 = _7475;
        _8184 = _7476;
        _8185 = _7477;
        _8186 = _7478;
        _8187 = _7479;
        _8188 = _7480;
        _8189 = _7481;
        _8190 = _7482;
        _8191 = _7483;
        _8192 = _7484;
        _8193 = _7485;
        _8194 = 0.0f;
        _8195 = 0.0f;
        _8196 = 0.0f;
      }
    }
  } else {
    _8182 = _108;
    _8183 = _109;
    _8184 = _111;
    _8185 = _112;
    _8186 = _113;
    _8187 = _114;
    _8188 = _115;
    _8189 = _116;
    _8190 = _117;
    _8191 = _118;
    _8192 = _119;
    _8193 = _120;
    _8194 = 0.0f;
    _8195 = 0.0f;
    _8196 = 0.0f;
  }
  _8197 = (uint)(SV_DispatchThreadID.x) << 2;
  __3__39__0__1__g_precomputedAmbientCacheUAV[_8197] = float4(_8190, _8191, _8192, _8193);
  __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_8197) | (int)(2))] = float4(_8187, _8188, _8189, select((_8183 != 0), 0.0f, 1.0f));
  __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_8197) | (int)(3))] = float4(_8184, _8185, _8186, _8182);
  if (_temporalReprojectionParams.w > 0.5f) {
    _8213 = _atmosphereThickness + _earthRadius;
    _8220 = _viewPos.y + _earthRadius;
    _8222 = dot(float3(_viewPos.x, _8220, _viewPos.z), float3(_64, _59, _66)) * 2.0f;
    _8223 = dot(float3(_viewPos.x, _8220, _viewPos.z), float3(_viewPos.x, _8220, _viewPos.z));
    _8226 = _8222 * _8222;
    _8228 = _8226 - ((_8223 - (_8213 * _8213)) * _145);
    if (!(_8228 < 0.0f)) {
      _8236 = ((sqrt(_8228) - _8222) / (_138 * 2.0f));
    } else {
      _8236 = -1.0f;
    }
    if (!(_8236 <= 0.0f)) {
      _8242 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
      _8254 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
      _8255 = _8254 * 57.295776f;
      if (_8255 > (_moonSizeAngle + _sunSizeAngle)) {
        _8303 = (_sunSizeAngle * _sunSizeAngle);
        _8304 = 0.0f;
      } else {
        _8268 = _moonSizeAngle * _moonSizeAngle;
        _8269 = _sunSizeAngle * _sunSizeAngle;
        if (!(_8255 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
          _8274 = _8255 * _8255;
          _8277 = _8254 * 114.59155f;
          _8283 = acos(min(max((((_8274 + _8269) - _8268) / (_8277 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
          _8291 = acos(min(max((((_8274 - _8269) + _8268) / (_moonSizeAngle * _8277)), -1.0f), 1.0f)) * 2.0f;
          _8303 = _8269;
          _8304 = (((((_8291 * _8268) + (_8283 * _8269)) - (sin(_8283) * _8269)) - (sin(_8291) * _8268)) * 0.5f);
        } else {
          _8303 = _8269;
          _8304 = (min(_8269, _8268) * 3.1415927f);
        }
      }
      _8312 = min(16.0f, (_atmosphereThickness + -16.0f));
      _8320 = max(_8312, 0.0f);
      _8327 = (-0.0f - sqrt((_8320 + (_earthRadius * 2.0f)) * _8320)) / (_8320 + _earthRadius);
      _8328 = (_8327 < 1.0f);
      if (!_8328) {
        _8340 = ((exp2(log2(saturate((_8327 + -1.0f) / (_8327 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      } else {
        _8340 = 0.99609375f;
      }
      _8342 = (exp2(log2(saturate((_8312 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      float3 _rndx_beta_8365 = SkySpectralRayleighBeta(_rayleighScatteringColor);
      _8365 = _rndx_beta_8365.r + (_ozoneRatio * SKY_OZONE_1);
      _8366 = _rndx_beta_8365.g + (_ozoneRatio * SKY_OZONE_2);
      _8367 = _rndx_beta_8365.b + (_ozoneRatio * SKY_OZONE_3);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _8368 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_8342, _8340), 0.0f))).x) * -1.442695f;
      _8380 = ((1.0f - saturate(_8304 / (_8303 * 3.1415927f))) * _8242) * ((_sunLightPreset * _sunLightIntensity) / (dot(float3(exp2(_8365 * _8368), exp2(_8366 * _8368), exp2(_8367 * _8368)), float3(0.299f, 0.587f, 0.114f)) * _8242));
      _8381 = dot(float3(_64, _59, _66), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _8384 = _cloudPhaseConstFront * _cloudPhaseConstFront;
      _8391 = (_8381 * _8381) + 1.0f;
      _8392 = _8384 + 1.0f;
      _8400 = (((1.0f - _8384) * 3.0f) / ((_8384 + 2.0f) * 2.0f)) * 0.07957747f;
      _8401 = (_8391 / exp2(log2(_8392 - ((_8381 * 2.0f) * _cloudPhaseConstFront)) * 1.5f)) * _8400;
      _8403 = _cloudPhaseConstBack * _cloudPhaseConstBack;
      _8409 = _8403 + 1.0f;
      _8410 = _cloudPhaseConstBack * -2.0f;
      _8417 = (((1.0f - _8403) * 3.0f) / ((_8403 + 2.0f) * 2.0f)) * 0.039788734f;
      _8419 = ((_8391 / exp2(log2(_8409 - (_8410 * _8381)) * 1.5f)) * _8417) + _8401;
      _8423 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
      if (!_8328) {
        _8438 = ((exp2(log2(saturate((_8327 + -1.0f) / (_8327 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      } else {
        _8438 = 0.99609375f;
      }
      _8441 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_8342, _8438), 0.0f))).x) * -1.442695f;
      _8451 = ((_moonLightPreset * _moonLightIntensity) / (dot(float3(exp2(_8441 * _8365), exp2(_8441 * _8366), exp2(_8441 * _8367)), float3(0.299f, 0.587f, 0.114f)) * _8423)) * _8423;
      _8452 = dot(float3(_64, _59, _66), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      _8454 = (_8452 * _8452) + 1.0f;
      _8455 = _8452 * 2.0f;
      _8462 = (_8454 / exp2(log2(_8392 - (_8455 * _cloudPhaseConstFront)) * 1.5f)) * _8400;
      _8470 = ((_8454 / exp2(log2(_8409 - (_8410 * _8452)) * 1.5f)) * _8417) + _8462;
      _8471 = min(_cloudVisibleRange, _cloudVisibleRange);
      if (_76) {
        if ((_cloudDensityVolumeInfo.y & 1) == 0) {
          _8599 = 0.0f;
          _8600 = 3.4028235e+38f;
          _8601 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
        } else {
          if (!(_cloudDensityVolumeInfo.x == 0)) {
            _8486 = 0;
            _8487 = 3.4028235e+38f;
            _8488 = 0.0f;
            _8489 = 0;
            while(true) {
              _8492 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[0].x;
              _8493 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[1].x;
              _8494 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[2].x;
              _8496 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[0].y;
              _8497 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[1].y;
              _8498 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[2].y;
              _8500 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[0].z;
              _8501 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[1].z;
              _8502 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[2].z;
              _8504 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[0].w;
              _8505 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[1].w;
              _8506 = __3__37__0__0__g_cloudDensityVolumes[_8486]._relativeWorldToLocal[2].w;
              _8510 = mad(_8500, _viewPos.z, mad(_8496, _viewPos.y, (_8492 * _viewPos.x))) + _8504;
              _8514 = mad(_8501, _viewPos.z, mad(_8497, _viewPos.y, (_8493 * _viewPos.x))) + _8505;
              _8518 = mad(_8502, _viewPos.z, mad(_8498, _viewPos.y, (_8494 * _viewPos.x))) + _8506;
              _8521 = mad(_8500, _66, mad(_8496, _59, (_8492 * _64)));
              _8524 = mad(_8501, _66, mad(_8497, _59, (_8493 * _64)));
              _8527 = mad(_8502, _66, mad(_8498, _59, (_8494 * _64)));
              _8528 = abs(_8521);
              if (!(_8528 < 1e-06f) || !(abs(_8510) > 0.5f)) {
                _8534 = abs(_8524);
                if (!(_8534 < 1e-06f) || !(abs(_8514) > 0.5f)) {
                  _8540 = abs(_8527);
                  if (!(_8540 < 1e-06f) || !(abs(_8518) > 0.5f)) {
                    _8555 = max(_8528, 1e-06f) * select((_8521 < 0.0f), -1.0f, 1.0f);
                    _8556 = max(_8534, 1e-06f) * select((_8524 < 0.0f), -1.0f, 1.0f);
                    _8557 = max(_8540, 1e-06f) * select((_8527 < 0.0f), -1.0f, 1.0f);
                    _8561 = (-0.5f - _8510) / _8555;
                    _8562 = (-0.5f - _8514) / _8556;
                    _8563 = (-0.5f - _8518) / _8557;
                    _8567 = (0.5f - _8510) / _8555;
                    _8568 = (0.5f - _8514) / _8556;
                    _8569 = (0.5f - _8518) / _8557;
                    _8580 = max(max(max(min(_8561, _8567), min(_8562, _8568)), min(_8563, _8569)), 0.0f);
                    _8581 = min(min(min(max(_8561, _8567), max(_8562, _8568)), max(_8563, _8569)), _8236);
                    if (!(_8581 < _8580)) {
                      _8590 = min(_8487, _8580);
                      _8591 = max(_8488, _8581);
                      _8592 = ((int)(_8489) | (int)((int)((uint)(1) << (_8486 & 31))));
                    } else {
                      _8590 = _8487;
                      _8591 = _8488;
                      _8592 = _8489;
                    }
                  } else {
                    _8590 = _8487;
                    _8591 = _8488;
                    _8592 = _8489;
                  }
                } else {
                  _8590 = _8487;
                  _8591 = _8488;
                  _8592 = _8489;
                }
              } else {
                _8590 = _8487;
                _8591 = _8488;
                _8592 = _8489;
              }
              _8593 = (uint)((uint)(_8486)) + (uint)(1);
              if ((uint)_8593 < (uint)_cloudDensityVolumeInfo.x) {
                _8486 = _8593;
                _8487 = _8590;
                _8488 = _8591;
                _8489 = _8592;
                continue;
              }
              _8599 = _8590;
              _8600 = _8591;
              _8601 = _8592;
              break;
            }
          } else {
            _8599 = 3.4028235e+38f;
            _8600 = 0.0f;
            _8601 = 0;
          }
        }
        _8607 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0078125f));
        _8612 = 0.0f;
        _8613 = 0.0f;
        _8614 = 0.0f;
        _8615 = 0.0f;
        _8616 = 0.0f;
        _8617 = 0.0f;
        _8618 = 0.0f;
        _8619 = 0.0f;
        _8620 = 0.0f;
        _8621 = 0.0f;
        _8622 = 0;
        _8623 = 0;
        _8624 = 128.0f;
        _8625 = 1;
        _8626 = 0.0f;
        _8627 = 0.0f;
        _8628 = 0.0f;
        _8629 = 0.0f;
        while(true) {
          _8631 = (float)((int)(_8622));
          _8641 = (((exp2(select(((uint)_8622 < (uint)12), (_8631 * 0.33f), (_8631 + -8.039999f)) * _8607) + -1.0f) * (_8471 + -128.0f)) / (exp2(_8607 * 128.0f) + -1.0f)) + 128.0f;
          _8642 = min(_8641, _8236);
          _8644 = max(0.0f, (_8642 - _8624));
          _8646 = (_8644 * _73) + _8624;
          _8649 = _distanceScale * _8644;
          _8653 = (_8646 * _64) + _viewPos.x;
          _8654 = (_8646 * _59) + _viewPos.y;
          _8655 = (_8646 * _66) + _viewPos.z;
          // [sem: _3__36__0__0__g_climateTex2_sampleLod]
          _8677 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_8653 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_8655 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
          _8684 = select(((_8646 >= _8599) && (_8646 <= _8600)), _8601, 0);
          _8688 = select(((_8642 >= _8599) && (_8642 <= _8600)), _8601, 0);
          _8692 = (_8642 * _64) + _viewPos.x;
          _8693 = (_8642 * _59) + _viewPos.y;
          _8694 = (_8642 * _66) + _viewPos.z;
          _8698 = _8692 - _viewPos.x;
          _8699 = _8694 - _viewPos.z;
          _8703 = sqrt((_8698 * _8698) + (_8699 * _8699));
          _8710 = _cloudAltitude - (max(((_8703 * _8703) + -400000.0f), 0.0f) * 1e-06f);
          _8713 = _cloudDetailScale * 0.004f;
          _8716 = _cloudBaseScale * 0.0004f;
          _8721 = _earthRadius + _8693;
          _8730 = ((sqrt(((_8694 * _8694) + (_8692 * _8692)) + (_8721 * _8721)) - _8710) - _earthRadius) / _cloudThickness;
          if (!((_8730 < 0.0f) || (_8730 > 1.0f))) {
            _8754 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _8755 = _8693 - _8710;
            _8771 = _8713 / _8716;
            _8772 = _8771 * _8716;
            _8774 = _8771 * _8754;
            _8786 = saturate(max((_8703 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
            _8790 = (4.0f - (_8786 * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _8794 = _8772 * 4.355f;
            _8811 = 1.0f - sqrt(saturate((1.0f - _8730) * 1.4285715f));
            _8833 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_8713 * _8692) - (_8772 * _cloudScroll.x)), ((_8755 * _8713) - _8774), ((_8713 * _8694) - (_8772 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_8786 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_8790 * _8692) - (_8794 * _cloudScroll.x)), ((_8790 * _8755) - (_8774 * 4.355f)), ((_8790 * _8694) - (_8794 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_8730 * 4.0f) * 0.8f) + 0.2f);
            _8840 = (saturate(((saturate(saturate(((_8677.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_8716 * (_8692 - _cloudScroll.x)), ((_8716 * _8755) - _8754), (_8716 * (_8694 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_8811 * 0.5f), ((_8811 * _8811) * _8811))) * saturate(_8730 * 10.0f)) - _8833) / (1.0f - _8833)) * _cloudAlpha);
          } else {
            _8840 = 0.0f;
          }
          _8842 = (_cloudFadeRange > 1e-05f);
          if (_8842) {
            _8852 = saturate((((1.0f - _cloudNear) * _8703) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _8852 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_8688 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _8863 = 0.0f;
            _8864 = 0;
            while(true) {
              _9228 = _8863;
              if (!((((int)((uint)(1) << (_8864 & 31))) & _8688) == 0)) {
                _8872 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[0].x;
                _8873 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[1].x;
                _8874 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[2].x;
                _8876 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[0].y;
                _8877 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[1].y;
                _8878 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[2].y;
                _8880 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[0].z;
                _8881 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[1].z;
                _8882 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[2].z;
                _8884 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[0].w;
                _8885 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[1].w;
                _8886 = __3__37__0__0__g_cloudDensityVolumes[_8864]._relativeWorldToLocal[2].w;
                _8888 = __3__37__0__0__g_cloudDensityVolumes[_8864]._shapeParameter.x;
                _8889 = __3__37__0__0__g_cloudDensityVolumes[_8864]._shapeParameter.z;
                _8890 = __3__37__0__0__g_cloudDensityVolumes[_8864]._shapeParameter.w;
                _8892 = __3__37__0__0__g_cloudDensityVolumes[_8864]._macroNoiseParameter.x;
                _8893 = __3__37__0__0__g_cloudDensityVolumes[_8864]._macroNoiseParameter.y;
                _8894 = __3__37__0__0__g_cloudDensityVolumes[_8864]._macroNoiseParameter.z;
                _8895 = __3__37__0__0__g_cloudDensityVolumes[_8864]._macroNoiseParameter.w;
                _8897 = __3__37__0__0__g_cloudDensityVolumes[_8864]._detailNoiseParameter.x;
                _8898 = __3__37__0__0__g_cloudDensityVolumes[_8864]._detailNoiseParameter.y;
                _8899 = __3__37__0__0__g_cloudDensityVolumes[_8864]._detailNoiseParameter.z;
                _8900 = __3__37__0__0__g_cloudDensityVolumes[_8864]._detailNoiseParameter.w;
                _8902 = __3__37__0__0__g_cloudDensityVolumes[_8864]._modeParameter.x;
                _8903 = __3__37__0__0__g_cloudDensityVolumes[_8864]._modeParameter.y;
                _8905 = __3__37__0__0__g_cloudDensityVolumes[_8864]._vortexParameter.x;
                _8906 = __3__37__0__0__g_cloudDensityVolumes[_8864]._vortexParameter.y;
                _8907 = __3__37__0__0__g_cloudDensityVolumes[_8864]._vortexParameter.z;
                _8908 = __3__37__0__0__g_cloudDensityVolumes[_8864]._vortexParameter.w;
                _8910 = __3__37__0__0__g_cloudDensityVolumes[_8864]._spiralParameter.x;
                _8911 = __3__37__0__0__g_cloudDensityVolumes[_8864]._spiralParameter.y;
                _8912 = __3__37__0__0__g_cloudDensityVolumes[_8864]._spiralParameter.z;
                _8913 = __3__37__0__0__g_cloudDensityVolumes[_8864]._spiralParameter.w;
                _8915 = __3__37__0__0__g_cloudDensityVolumes[_8864]._animationParameter.x;
                _8916 = __3__37__0__0__g_cloudDensityVolumes[_8864]._animationParameter.y;
                _8917 = __3__37__0__0__g_cloudDensityVolumes[_8864]._animationParameter.z;
                _8918 = __3__37__0__0__g_cloudDensityVolumes[_8864]._animationParameter.w;
                _8920 = __3__37__0__0__g_cloudDensityVolumes[_8864]._flowParameter.x;
                _8921 = __3__37__0__0__g_cloudDensityVolumes[_8864]._flowParameter.y;
                _8922 = __3__37__0__0__g_cloudDensityVolumes[_8864]._flowParameter.z;
                _8924 = __3__37__0__0__g_cloudDensityVolumes[_8864]._tornadoParameter.x;
                _8925 = __3__37__0__0__g_cloudDensityVolumes[_8864]._tornadoParameter.y;
                _8926 = __3__37__0__0__g_cloudDensityVolumes[_8864]._tornadoParameter.z;
                _8927 = __3__37__0__0__g_cloudDensityVolumes[_8864]._tornadoParameter.w;
                _8931 = mad(_8880, _8694, mad(_8876, _8693, (_8872 * _8692))) + _8884;
                _8935 = mad(_8881, _8694, mad(_8877, _8693, (_8873 * _8692))) + _8885;
                _8939 = mad(_8882, _8694, mad(_8878, _8693, (_8874 * _8692))) + _8886;
                _8941 = abs(_8935);
                _8947 = max((abs(_8931) + -0.5f), max((_8941 + -0.5f), (abs(_8939) + -0.5f)));
                if (!(_8947 >= 0.0f)) {
                  _8950 = __3__37__0__0__g_cloudDensityVolumes[_8864]._shapeParameter.y;
                  _8953 = max((saturate(_8950) * 0.5f), 0.0001f);
                  _8956 = saturate((_8953 + _8947) / _8953);  // [sem: expr_sat]
                  _8961 = 1.0f - ((_8956 * _8956) * (3.0f - (_8956 * 2.0f)));
                  if (!(_8961 <= 0.0f)) {
                    _8970 = sqrt((_8939 * _8939) + (_8931 * _8931)) * 2.0f;
                    _8974 = saturate(1.0f - (_8970 / max(_8906, 0.0001f)));  // [sem: expr_sat]
                    _8975 = _time.x * _8918;
                    _8976 = (_8902 == 1);
                    _8977 = (_8902 == 2);
                    if (_8976) {
                      _9054 = exp2(log2(_8974) * max(_8913, 0.0001f));
                      _9056 = max(_8912, 0.0001f);
                      _9060 = _8935 / (((max(_8911, 0.0001f) - _9056) * _9054) + _9056);
                      _9067 = (((_8974 * _8974) * _8905) * ((_8970 * _8907) + _8935)) - (_8974 * _8975);
                      _9068 = sin(_9067);
                      _9069 = cos(_9067);
                      _9072 = (_9069 * _8931) - (_9068 * _8939);
                      _9075 = (_9069 * _8939) + (_9068 * _8931);
                      if (_8977) {
                        _9077 = 0.0f;
                        _9078 = 1.0f;
                        _9079 = _9054;
                        _9080 = _8974;
                        _9081 = _9072;
                        _9082 = _9060;
                        _9083 = _9075;
                        _9103 = _9078;
                        _9104 = _9079;
                        _9105 = _9080;
                        _9106 = _9081;
                        _9107 = _9082;
                        _9108 = _9083;
                        _9109 = max(_9077, ((_8941 * 2.0f) + -1.0f));
                      } else {
                        _9088 = _9054;
                        _9089 = _9072;
                        _9090 = _9060;
                        _9091 = _9075;
                        _9092 = _9089 * 2.0f;
                        _9093 = _9090 * 2.0f;
                        _9094 = _9091 * 2.0f;
                        _9103 = 1.0f;
                        _9104 = _9088;
                        _9105 = _8974;
                        _9106 = _9089;
                        _9107 = _9090;
                        _9108 = _9091;
                        _9109 = (sqrt(((_9093 * _9093) + (_9092 * _9092)) + (_9094 * _9094)) + -1.0f);
                      }
                    } else {
                      if (_8977) {
                        _8981 = saturate(_8935 + 0.5f);  // [sem: expr_sat]
                        _8987 = max(_8924, 0.0001f);
                        _8990 = ((max(_8925, 0.0001f) - _8987) * exp2(log2(_8981) * max(_8926, 0.0001f))) + _8987;
                        _8992 = atan(_8939 / _8931);
                        _8995 = (_8931 < 0.0f);
                        _8996 = (_8931 == 0.0f);
                        _8997 = (_8939 >= 0.0f);
                        _8998 = (_8939 < 0.0f);
                        _9008 = max(((float)((uint)((uint)(_8903)))), 1.0f);
                        _9009 = _8981 * _8907;
                        _9020 = _8990 * _8900;
                        _9022 = max((_8990 - _9020), 0.0f);
                        _9023 = _8970 - _9022;
                        _9024 = _9022 * (acos(min(max(cos(((((_9009 * -6.2831855f) - _8975) + select((_8996 && _8997), 1.5707964f, select((_8996 && _8998), -1.5707964f, select((_8995 && _8998), (_8992 + -3.1415927f), select((_8995 && _8997), (_8992 + 3.1415927f), _8992))))) * _9008) + _8910), -1.0f), 1.0f)) / _9008);
                        _9029 = _8970 - _8990;
                        _9038 = saturate(1.0f - (_8970 / _8990));  // [sem: expr_sat]
                        _9041 = ((_9038 + _9009) * _8905) - _8975;
                        _9042 = sin(_9041);
                        _9043 = cos(_9041);
                        _9077 = ((saturate(_8908) * (((-0.0f - _9029) - _9020) + sqrt((_9023 * _9023) + (_9024 * _9024)))) + _9029);
                        _9078 = _8990;
                        _9079 = 0.0f;
                        _9080 = _9038;
                        _9081 = ((_9043 * _8931) - (_9042 * _8939));
                        _9082 = _8935;
                        _9083 = ((_9043 * _8939) + (_9042 * _8931));
                        _9103 = _9078;
                        _9104 = _9079;
                        _9105 = _9080;
                        _9106 = _9081;
                        _9107 = _9082;
                        _9108 = _9083;
                        _9109 = max(_9077, ((_8941 * 2.0f) + -1.0f));
                      } else {
                        _9088 = 0.0f;
                        _9089 = _8931;
                        _9090 = _8935;
                        _9091 = _8939;
                        _9092 = _9089 * 2.0f;
                        _9093 = _9090 * 2.0f;
                        _9094 = _9091 * 2.0f;
                        _9103 = 1.0f;
                        _9104 = _9088;
                        _9105 = _8974;
                        _9106 = _9089;
                        _9107 = _9090;
                        _9108 = _9091;
                        _9109 = (sqrt(((_9093 * _9093) + (_9092 * _9092)) + (_9094 * _9094)) + -1.0f);
                      }
                    }
                    if (_8893 > 0.0f) {
                      _9112 = _time.x * _8916;
                      _9116 = max(_8892, 0.0001f);
                      _9134 = (_9109 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_9112 * _8920) + _8894) + (_9116 * _9106)), (((_9112 * _8921) + _8895) + (_9116 * _9107)), (((_9112 * _8922) + _8899) + (_9116 * _9108))), 0.0f)).x) + -0.5f) * _8893));
                    } else {
                      _9134 = _9109;
                    }
                    if (_8976 && (_8908 > 0.0f)) {
                      _9139 = atan(_8939 / _8931);
                      _9142 = (_8931 < 0.0f);
                      _9143 = (_8931 == 0.0f);
                      _9144 = (_8939 >= 0.0f);
                      _9145 = (_8939 < 0.0f);
                      _9167 = (_9134 - (((_8908 * 0.5f) * _9105) * cos(((((_8970 * _8907) - _8975) + select((_9143 && _9144), 1.5707964f, select((_9143 && _9145), -1.5707964f, select((_9142 && _9145), (_9139 + -3.1415927f), select((_9142 && _9144), (_9139 + 3.1415927f), _9139))))) * max(((float)((uint)((uint)(_8903)))), 1.0f)) + _8910)));
                    } else {
                      _9167 = _9134;
                    }
                    if (_8977 && (_8927 > 0.0f)) {
                      _9175 = max(_9167, ((_9103 * _8927) - _8970));
                    } else {
                      _9175 = _9167;
                    }
                    _9177 = max(_8890, 0.0001f);
                    _9183 = saturate((((_8889 - (_9104 * _8915)) + _9175) + _9177) / (_9177 * 2.0f));  // [sem: expr_sat]
                    _9188 = 1.0f - ((_9183 * _9183) * (3.0f - (_9183 * 2.0f)));
                    if (!((_9188 >= 1.0f) || ((_8898 <= 0.0f) || (_9188 <= 0.0f)))) {
                      _9195 = _time.x * _8917;
                      _9199 = max(_8897, 0.0001f);
                      // [sem: expr_sat]
                      _9223 = saturate(_9188 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_9195 * _8920) + _8894) + (_9199 * _9106)), (((_9195 * _8921) + _8895) + (_9199 * _9107)), (((_9195 * _8922) + _8899) + (_9199 * _9108))), 0.0f)).x) * _8898) * saturate(1.0f - abs((_9188 * 2.0f) + -1.0f))));
                    } else {
                      _9223 = _9188;  // [sem: expr_sat]
                    }
                    _9228 = (((_8961 * _8888) * _9223) + _8863);
                  } else {
                    _9228 = _8863;
                  }
                } else {
                  _9228 = _8863;
                }
              } else {
                _9228 = _8863;
              }
              _9229 = (uint)((uint)(_8864)) + (uint)(1);
              if ((uint)_9229 < (uint)_cloudDensityVolumeInfo.x) {
                _8863 = _9228;
                _8864 = _9229;
                continue;
              }
              while(true) {
                _9234 = saturate(_9228);  // [sem: _9228_sat]
                break;
              }
              break;
            }
          } else {
            _9234 = 0.0f;  // [sem: _9228_sat]
          }
          _9237 = (saturate(_9234 + (_8852 * _8840)) > 0.001f);
          if ((_8623 != 0) && _9237) {
            _12378 = _8629;
            _12379 = _8628;
            _12380 = _8627;
            _12381 = _8626;
            _12382 = _8625;
            _12383 = 0;
            _12384 = _8624;
            _12385 = 0;
            _12386 = ((int)((uint)((uint)(_8622)) + (uint)(-2)));
            _12387 = _8621;
            _12388 = _8620;
            _12389 = _8619;
            _12390 = _8618;
            _12391 = _8617;
            _12392 = _8616;
            _12393 = _8615;
            _12394 = _8614;
            _12395 = _8613;
            _12396 = _8612;
          } else {
            _9243 = ((uint)_8622 < (uint)126);
            _9245 = ((int)(uint)(_9237)) ^ 1;
            _9248 = (uint)((uint)(_8622)) + (uint)((uint)(select(_9243, _9245, 0)));
            _9250 = _cloudThickness + _cloudAltitude;
            if (!(_8641 < _8236) || !(((_8601 != 0) && (_8641 < _8600)) || (_8654 < _9250))) {
              _9260 = (_viewPos.y > _9250);
            } else {
              _9260 = true;
            }
            _9273 = _8654 + _earthRadius;
            _9274 = _8653 * _8653;
            _9276 = _8655 * _8655;
            _9277 = _9276 + _9274;
            _9279 = sqrt(_9277 + (_9273 * _9273));
            _9280 = _8653 / _9279;
            _9281 = _9273 / _9279;
            _9282 = _8655 / _9279;
            _9283 = _9279 - _earthRadius;
            if (_9283 > 0.0f) {
              _9286 = dot(float3(_9280, _9281, _9282), float3(_64, _59, _66));
              _9296 = min(max(_9283, 16.0f), (_atmosphereThickness + -16.0f));
              _9304 = max(_9296, 0.0f);
              _9311 = (-0.0f - sqrt((_9304 + (_earthRadius * 2.0f)) * _9304)) / (_9304 + _earthRadius);
              _9312 = (_9286 > _9311);
              if (_9312) {
                _9334 = ((exp2(log2(saturate((_9286 - _9311) / (1.0f - _9311))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _9334 = ((exp2(log2(saturate((_9311 - _9286) / (_9311 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _9336 = (exp2(log2(saturate((_9296 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _9343 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_9336, _9334, ((1.0f - exp2(-1.1541561f - (dot(float3(_9280, _9281, _9282), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_9312) {
                _9373 = ((exp2(log2(saturate((_9286 - _9311) / (1.0f - _9311))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _9373 = ((exp2(log2(saturate((_9311 - _9286) / (_9311 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _9379 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_9336, _9373, ((1.0f - exp2(-1.1541561f - (dot(float3(_9280, _9281, _9282), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _9387 = _9343.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9388 = _9343.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9389 = _9343.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9390 = (_9379.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9391 = (_9379.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9392 = (_9379.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _9387 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9388 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9389 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9390 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9391 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _9392 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _9401 = max(_9283, 0.01f);
            _9402 = -0.0f - _9401;
            _9411 = exp2((_9402 / _rayleighScaledHeight) * 1.442695f);
            _9412 = exp2((_9402 / _mieScaledHeight) * 1.442695f);
            _9413 = _8653 - _viewPos.x;
            _9414 = _8655 - _viewPos.z;
            _9417 = (_9413 * _9413) + (_9414 * _9414);
            _9418 = sqrt(_9417);
            _9422 = max(((_9418 * _9418) + -400000.0f), 0.0f) * 1e-06f;
            _9423 = _cloudAltitude - _9422;
            _9424 = _earthRadius + _8654;
            _9430 = ((sqrt((_9424 * _9424) + _9277) - _earthRadius) - _9423) / _cloudThickness;
            if (!((_9430 < 0.0f) || (_9430 > 1.0f))) {
              _9454 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _9455 = _8654 - _9423;
              _9471 = _8713 / _8716;
              _9472 = _9471 * _8716;
              _9474 = _9471 * _9454;
              _9490 = (4.0f - (saturate(max((_9418 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
              _9494 = _9472 * 4.355f;
              _9511 = 1.0f - sqrt(saturate((1.0f - _9430) * 1.4285715f));
              _9530 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_8713 * _8653) - (_9472 * _cloudScroll.x)), ((_9455 * _8713) - _9474), ((_8713 * _8655) - (_9472 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_9490 * _8653) - (_9494 * _cloudScroll.x)), ((_9490 * _9455) - (_9474 * 4.355f)), ((_9490 * _8655) - (_9494 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_9430 * 4.0f) * 0.8f) + 0.2f);
              _9537 = (saturate(((saturate(saturate(((_8677.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_8716 * (_8653 - _cloudScroll.x)), ((_9455 * _8716) - _9454), (_8716 * (_8655 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_9511 * 0.5f), ((_9511 * _9511) * _9511))) * saturate(_9430 * 10.0f)) - _9530) / (1.0f - _9530)) * _cloudAlpha);
            } else {
              _9537 = 0.0f;
            }
            if (_8842) {
              _9547 = saturate(((_9418 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _9547 = 1.0f;  // [sem: expr_sat]
            }
            if (!((_8684 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
              _9558 = 0.0f;
              _9559 = 0;
              while(true) {
                _9923 = _9558;
                if (!((((int)((uint)(1) << (_9559 & 31))) & _8684) == 0)) {
                  _9567 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[0].x;
                  _9568 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[1].x;
                  _9569 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[2].x;
                  _9571 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[0].y;
                  _9572 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[1].y;
                  _9573 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[2].y;
                  _9575 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[0].z;
                  _9576 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[1].z;
                  _9577 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[2].z;
                  _9579 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[0].w;
                  _9580 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[1].w;
                  _9581 = __3__37__0__0__g_cloudDensityVolumes[_9559]._relativeWorldToLocal[2].w;
                  _9583 = __3__37__0__0__g_cloudDensityVolumes[_9559]._shapeParameter.x;
                  _9584 = __3__37__0__0__g_cloudDensityVolumes[_9559]._shapeParameter.z;
                  _9585 = __3__37__0__0__g_cloudDensityVolumes[_9559]._shapeParameter.w;
                  _9587 = __3__37__0__0__g_cloudDensityVolumes[_9559]._macroNoiseParameter.x;
                  _9588 = __3__37__0__0__g_cloudDensityVolumes[_9559]._macroNoiseParameter.y;
                  _9589 = __3__37__0__0__g_cloudDensityVolumes[_9559]._macroNoiseParameter.z;
                  _9590 = __3__37__0__0__g_cloudDensityVolumes[_9559]._macroNoiseParameter.w;
                  _9592 = __3__37__0__0__g_cloudDensityVolumes[_9559]._detailNoiseParameter.x;
                  _9593 = __3__37__0__0__g_cloudDensityVolumes[_9559]._detailNoiseParameter.y;
                  _9594 = __3__37__0__0__g_cloudDensityVolumes[_9559]._detailNoiseParameter.z;
                  _9595 = __3__37__0__0__g_cloudDensityVolumes[_9559]._detailNoiseParameter.w;
                  _9597 = __3__37__0__0__g_cloudDensityVolumes[_9559]._modeParameter.x;
                  _9598 = __3__37__0__0__g_cloudDensityVolumes[_9559]._modeParameter.y;
                  _9600 = __3__37__0__0__g_cloudDensityVolumes[_9559]._vortexParameter.x;
                  _9601 = __3__37__0__0__g_cloudDensityVolumes[_9559]._vortexParameter.y;
                  _9602 = __3__37__0__0__g_cloudDensityVolumes[_9559]._vortexParameter.z;
                  _9603 = __3__37__0__0__g_cloudDensityVolumes[_9559]._vortexParameter.w;
                  _9605 = __3__37__0__0__g_cloudDensityVolumes[_9559]._spiralParameter.x;
                  _9606 = __3__37__0__0__g_cloudDensityVolumes[_9559]._spiralParameter.y;
                  _9607 = __3__37__0__0__g_cloudDensityVolumes[_9559]._spiralParameter.z;
                  _9608 = __3__37__0__0__g_cloudDensityVolumes[_9559]._spiralParameter.w;
                  _9610 = __3__37__0__0__g_cloudDensityVolumes[_9559]._animationParameter.x;
                  _9611 = __3__37__0__0__g_cloudDensityVolumes[_9559]._animationParameter.y;
                  _9612 = __3__37__0__0__g_cloudDensityVolumes[_9559]._animationParameter.z;
                  _9613 = __3__37__0__0__g_cloudDensityVolumes[_9559]._animationParameter.w;
                  _9615 = __3__37__0__0__g_cloudDensityVolumes[_9559]._flowParameter.x;
                  _9616 = __3__37__0__0__g_cloudDensityVolumes[_9559]._flowParameter.y;
                  _9617 = __3__37__0__0__g_cloudDensityVolumes[_9559]._flowParameter.z;
                  _9619 = __3__37__0__0__g_cloudDensityVolumes[_9559]._tornadoParameter.x;
                  _9620 = __3__37__0__0__g_cloudDensityVolumes[_9559]._tornadoParameter.y;
                  _9621 = __3__37__0__0__g_cloudDensityVolumes[_9559]._tornadoParameter.z;
                  _9622 = __3__37__0__0__g_cloudDensityVolumes[_9559]._tornadoParameter.w;
                  _9626 = mad(_9575, _8655, mad(_9571, _8654, (_9567 * _8653))) + _9579;
                  _9630 = mad(_9576, _8655, mad(_9572, _8654, (_9568 * _8653))) + _9580;
                  _9634 = mad(_9577, _8655, mad(_9573, _8654, (_9569 * _8653))) + _9581;
                  _9636 = abs(_9630);
                  _9642 = max((abs(_9626) + -0.5f), max((_9636 + -0.5f), (abs(_9634) + -0.5f)));
                  if (!(_9642 >= 0.0f)) {
                    _9645 = __3__37__0__0__g_cloudDensityVolumes[_9559]._shapeParameter.y;
                    _9648 = max((saturate(_9645) * 0.5f), 0.0001f);
                    _9651 = saturate((_9648 + _9642) / _9648);  // [sem: expr_sat]
                    _9656 = 1.0f - ((_9651 * _9651) * (3.0f - (_9651 * 2.0f)));
                    if (!(_9656 <= 0.0f)) {
                      _9665 = sqrt((_9634 * _9634) + (_9626 * _9626)) * 2.0f;
                      _9669 = saturate(1.0f - (_9665 / max(_9601, 0.0001f)));  // [sem: expr_sat]
                      _9670 = _time.x * _9613;
                      _9671 = (_9597 == 1);
                      _9672 = (_9597 == 2);
                      if (_9671) {
                        _9749 = exp2(log2(_9669) * max(_9608, 0.0001f));
                        _9751 = max(_9607, 0.0001f);
                        _9755 = _9630 / (((max(_9606, 0.0001f) - _9751) * _9749) + _9751);
                        _9762 = (((_9669 * _9669) * _9600) * ((_9665 * _9602) + _9630)) - (_9669 * _9670);
                        _9763 = sin(_9762);
                        _9764 = cos(_9762);
                        _9767 = (_9764 * _9626) - (_9763 * _9634);
                        _9770 = (_9764 * _9634) + (_9763 * _9626);
                        if (_9672) {
                          _9772 = 0.0f;
                          _9773 = 1.0f;
                          _9774 = _9749;
                          _9775 = _9669;
                          _9776 = _9767;
                          _9777 = _9755;
                          _9778 = _9770;
                          _9798 = _9773;
                          _9799 = _9774;
                          _9800 = _9775;
                          _9801 = _9776;
                          _9802 = _9777;
                          _9803 = _9778;
                          _9804 = max(_9772, ((_9636 * 2.0f) + -1.0f));
                        } else {
                          _9783 = _9749;
                          _9784 = _9767;
                          _9785 = _9755;
                          _9786 = _9770;
                          _9787 = _9784 * 2.0f;
                          _9788 = _9785 * 2.0f;
                          _9789 = _9786 * 2.0f;
                          _9798 = 1.0f;
                          _9799 = _9783;
                          _9800 = _9669;
                          _9801 = _9784;
                          _9802 = _9785;
                          _9803 = _9786;
                          _9804 = (sqrt(((_9788 * _9788) + (_9787 * _9787)) + (_9789 * _9789)) + -1.0f);
                        }
                      } else {
                        if (_9672) {
                          _9676 = saturate(_9630 + 0.5f);  // [sem: expr_sat]
                          _9682 = max(_9619, 0.0001f);
                          _9685 = ((max(_9620, 0.0001f) - _9682) * exp2(log2(_9676) * max(_9621, 0.0001f))) + _9682;
                          _9687 = atan(_9634 / _9626);
                          _9690 = (_9626 < 0.0f);
                          _9691 = (_9626 == 0.0f);
                          _9692 = (_9634 >= 0.0f);
                          _9693 = (_9634 < 0.0f);
                          _9703 = max(((float)((uint)((uint)(_9598)))), 1.0f);
                          _9704 = _9676 * _9602;
                          _9715 = _9685 * _9595;
                          _9717 = max((_9685 - _9715), 0.0f);
                          _9718 = _9665 - _9717;
                          _9719 = _9717 * (acos(min(max(cos(((((_9704 * -6.2831855f) - _9670) + select((_9691 && _9692), 1.5707964f, select((_9691 && _9693), -1.5707964f, select((_9690 && _9693), (_9687 + -3.1415927f), select((_9690 && _9692), (_9687 + 3.1415927f), _9687))))) * _9703) + _9605), -1.0f), 1.0f)) / _9703);
                          _9724 = _9665 - _9685;
                          _9733 = saturate(1.0f - (_9665 / _9685));  // [sem: expr_sat]
                          _9736 = ((_9733 + _9704) * _9600) - _9670;
                          _9737 = sin(_9736);
                          _9738 = cos(_9736);
                          _9772 = ((saturate(_9603) * (((-0.0f - _9724) - _9715) + sqrt((_9718 * _9718) + (_9719 * _9719)))) + _9724);
                          _9773 = _9685;
                          _9774 = 0.0f;
                          _9775 = _9733;
                          _9776 = ((_9738 * _9626) - (_9737 * _9634));
                          _9777 = _9630;
                          _9778 = ((_9738 * _9634) + (_9737 * _9626));
                          _9798 = _9773;
                          _9799 = _9774;
                          _9800 = _9775;
                          _9801 = _9776;
                          _9802 = _9777;
                          _9803 = _9778;
                          _9804 = max(_9772, ((_9636 * 2.0f) + -1.0f));
                        } else {
                          _9783 = 0.0f;
                          _9784 = _9626;
                          _9785 = _9630;
                          _9786 = _9634;
                          _9787 = _9784 * 2.0f;
                          _9788 = _9785 * 2.0f;
                          _9789 = _9786 * 2.0f;
                          _9798 = 1.0f;
                          _9799 = _9783;
                          _9800 = _9669;
                          _9801 = _9784;
                          _9802 = _9785;
                          _9803 = _9786;
                          _9804 = (sqrt(((_9788 * _9788) + (_9787 * _9787)) + (_9789 * _9789)) + -1.0f);
                        }
                      }
                      if (_9588 > 0.0f) {
                        _9807 = _time.x * _9611;
                        _9811 = max(_9587, 0.0001f);
                        _9829 = (_9804 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_9807 * _9615) + _9589) + (_9811 * _9801)), (((_9807 * _9616) + _9590) + (_9811 * _9802)), (((_9807 * _9617) + _9594) + (_9811 * _9803))), 0.0f)).x) + -0.5f) * _9588));
                      } else {
                        _9829 = _9804;
                      }
                      if (_9671 && (_9603 > 0.0f)) {
                        _9834 = atan(_9634 / _9626);
                        _9837 = (_9626 < 0.0f);
                        _9838 = (_9626 == 0.0f);
                        _9839 = (_9634 >= 0.0f);
                        _9840 = (_9634 < 0.0f);
                        _9862 = (_9829 - (((_9603 * 0.5f) * _9800) * cos(((((_9665 * _9602) - _9670) + select((_9838 && _9839), 1.5707964f, select((_9838 && _9840), -1.5707964f, select((_9837 && _9840), (_9834 + -3.1415927f), select((_9837 && _9839), (_9834 + 3.1415927f), _9834))))) * max(((float)((uint)((uint)(_9598)))), 1.0f)) + _9605)));
                      } else {
                        _9862 = _9829;
                      }
                      if (_9672 && (_9622 > 0.0f)) {
                        _9870 = max(_9862, ((_9798 * _9622) - _9665));
                      } else {
                        _9870 = _9862;
                      }
                      _9872 = max(_9585, 0.0001f);
                      _9878 = saturate((((_9584 - (_9799 * _9610)) + _9870) + _9872) / (_9872 * 2.0f));  // [sem: expr_sat]
                      _9883 = 1.0f - ((_9878 * _9878) * (3.0f - (_9878 * 2.0f)));
                      if (!((_9883 >= 1.0f) || ((_9593 <= 0.0f) || (_9883 <= 0.0f)))) {
                        _9890 = _time.x * _9612;
                        _9894 = max(_9592, 0.0001f);
                        // [sem: expr_sat]
                        _9918 = saturate(_9883 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_9890 * _9615) + _9589) + (_9894 * _9801)), (((_9890 * _9616) + _9590) + (_9894 * _9802)), (((_9890 * _9617) + _9594) + (_9894 * _9803))), 0.0f)).x) * _9593) * saturate(1.0f - abs((_9883 * 2.0f) + -1.0f))));
                      } else {
                        _9918 = _9883;  // [sem: expr_sat]
                      }
                      _9923 = (((_9656 * _9583) * _9918) + _9558);
                    } else {
                      _9923 = _9558;
                    }
                  } else {
                    _9923 = _9558;
                  }
                } else {
                  _9923 = _9558;
                }
                _9924 = (uint)((uint)(_9559)) + (uint)(1);
                if ((uint)_9924 < (uint)_cloudDensityVolumeInfo.x) {
                  _9558 = _9923;
                  _9559 = _9924;
                  continue;
                }
                while(true) {
                  _9929 = saturate(_9923);  // [sem: _9923_sat]
                  break;
                }
                break;
              }
            } else {
              _9929 = 0.0f;  // [sem: _9923_sat]
            }
            _9931 = saturate(_9929 + (_9547 * _9537));  // [sem: expr_sat]
            _9933 = _8654 - _viewPos.y;
            _9936 = sqrt(_9417 + (_9933 * _9933));
            _9942 = max(1e-06f, (_heightFogScale * 0.0025f));
            _9945 = _9942 * _cloudScroll.x;
            _9946 = _9942 * _cloudScroll.y;
            _9947 = _9942 * _8653;
            _9948 = _9942 * _8654;
            _9949 = _9942 * _8655;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _9975 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_9947 * 6.393882f) - (_9945 * 1.871f)), (_9948 * 6.393882f), ((_9949 * 6.393882f) - (_9946 * 1.871f))), 0.0f);
            _9984 = _heightFogFalloff * -0.14426951f;
            _9999 = (((saturate(_9936 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_9947 * 0.5127f) - _9945), (_9948 * 0.5127f), ((_9949 * 0.5127f) - _9946)), 0.0f)).x))) * (((0.5f - _9975.x) * saturate((_9936 + -300.0f) * 0.0025f)) + _9975.x)) * ((exp2(_9984 * max(0.001f, (_9401 - _heightFogBaseline))) * _heightFogDensity) + (exp2(_9984 * max(0.001f, ((_9401 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _8677.z)))) * _8677.y));
            _10000 = _8654 - _cloudAltitude;
            _10002 = (_9422 + _10000) / _cloudThickness;
            _10005 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
            _10006 = select(_10005, _sunDirection.x, _moonDirection.x);
            _10007 = select(_10005, _sunDirection.y, _moonDirection.y);
            _10008 = select(_10005, _sunDirection.z, _moonDirection.z);
            _10009 = (_10007 > 0.0f);
            _10018 = ((0.5f - (((float)((int)((int)((int)(uint)(_10009)) - (int)((int)(uint)((int)(_10007 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _9423;
            if (_8654 < _9423) {
              _10021 = dot(float3(0.0f, 1.0f, 0.0f), float3(_10006, _10007, _10008));
              _10027 = select((abs(_10021) < 1e-08f), 1e+08f, ((_10018 - dot(float3(0.0f, 1.0f, 0.0f), float3(_8653, _8654, _8655))) / _10021));
              _10033 = ((_10027 * _10006) + _8653);
              _10034 = _10018;
              _10035 = ((_10027 * _10008) + _8655);
            } else {
              _10033 = _8653;
              _10034 = _8654;
              _10035 = _8655;
            }
            _10049 = _cloudScatteringCoefficient / _distanceScale;
            _10054 = abs(_10007);
            _10056 = saturate(_10054 * 4.0f);  // [sem: expr_sat]
            _10058 = (_10056 * _10056) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_10033 - _viewPos.x) * 5e-05f) + 0.5f), ((_10034 - _cloudAltitude) / _cloudThickness), (((_10035 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _10049);
            _10064 = ((1.0f - _10058) * saturate((_10000 - _cloudThickness) * 0.1f)) + _10058;
            _10067 = -0.0f - _10049;
            _10068 = (log2(_10064) * 0.6931472f) / _10067;
            if ((_9931 > 0.001f) && ((_9929 > 0.001f) || ((_10002 >= 0.0f) && (_10002 <= 1.0f)))) {
              _10082 = (_8654 - _9423) / _cloudThickness;
              if (((_10082 >= 0.0f) && (_10082 <= 1.0f)) && (_10054 > 0.001f)) {
                _10099 = min(300.0f, (((_9423 - _8654) + select(_10009, _cloudThickness, 0.0f)) / _10007));
              } else {
                _10099 = 300.0f;
              }
              if ((_cloudDensityVolumeInfo.y & 1) == 0) {
                _10224 = 0.0f;
                _10225 = 3.4028235e+38f;
                _10226 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
              } else {
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _10111 = 0;
                  _10112 = 3.4028235e+38f;
                  _10113 = 0.0f;
                  _10114 = 0;
                  while(true) {
                    _10117 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[0].x;
                    _10118 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[1].x;
                    _10119 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[2].x;
                    _10121 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[0].y;
                    _10122 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[1].y;
                    _10123 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[2].y;
                    _10125 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[0].z;
                    _10126 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[1].z;
                    _10127 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[2].z;
                    _10129 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[0].w;
                    _10130 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[1].w;
                    _10131 = __3__37__0__0__g_cloudDensityVolumes[_10111]._relativeWorldToLocal[2].w;
                    _10135 = mad(_10125, _8655, mad(_10121, _8654, (_10117 * _8653))) + _10129;
                    _10139 = mad(_10126, _8655, mad(_10122, _8654, (_10118 * _8653))) + _10130;
                    _10143 = mad(_10127, _8655, mad(_10123, _8654, (_10119 * _8653))) + _10131;
                    _10146 = mad(_10125, _10008, mad(_10121, _10007, (_10117 * _10006)));
                    _10149 = mad(_10126, _10008, mad(_10122, _10007, (_10118 * _10006)));
                    _10152 = mad(_10127, _10008, mad(_10123, _10007, (_10119 * _10006)));
                    _10153 = abs(_10146);
                    if (!(_10153 < 1e-06f) || !(abs(_10135) > 0.5f)) {
                      _10159 = abs(_10149);
                      if (!(_10159 < 1e-06f) || !(abs(_10139) > 0.5f)) {
                        _10165 = abs(_10152);
                        if (!(_10165 < 1e-06f) || !(abs(_10143) > 0.5f)) {
                          _10180 = max(_10153, 1e-06f) * select((_10146 < 0.0f), -1.0f, 1.0f);
                          _10181 = max(_10159, 1e-06f) * select((_10149 < 0.0f), -1.0f, 1.0f);
                          _10182 = max(_10165, 1e-06f) * select((_10152 < 0.0f), -1.0f, 1.0f);
                          _10186 = (-0.5f - _10135) / _10180;
                          _10187 = (-0.5f - _10139) / _10181;
                          _10188 = (-0.5f - _10143) / _10182;
                          _10192 = (0.5f - _10135) / _10180;
                          _10193 = (0.5f - _10139) / _10181;
                          _10194 = (0.5f - _10143) / _10182;
                          _10205 = max(max(max(min(_10186, _10192), min(_10187, _10193)), min(_10188, _10194)), 0.0f);
                          _10206 = min(min(min(max(_10186, _10192), max(_10187, _10193)), max(_10188, _10194)), 3.4028235e+38f);
                          if (!(_10206 < _10205)) {
                            _10215 = min(_10112, _10205);
                            _10216 = max(_10113, _10206);
                            _10217 = ((int)(_10114) | (int)((int)((uint)(1) << (_10111 & 31))));
                          } else {
                            _10215 = _10112;
                            _10216 = _10113;
                            _10217 = _10114;
                          }
                        } else {
                          _10215 = _10112;
                          _10216 = _10113;
                          _10217 = _10114;
                        }
                      } else {
                        _10215 = _10112;
                        _10216 = _10113;
                        _10217 = _10114;
                      }
                    } else {
                      _10215 = _10112;
                      _10216 = _10113;
                      _10217 = _10114;
                    }
                    _10218 = (uint)((uint)(_10111)) + (uint)(1);
                    if ((uint)_10218 < (uint)_cloudDensityVolumeInfo.x) {
                      _10111 = _10218;
                      _10112 = _10215;
                      _10113 = _10216;
                      _10114 = _10217;
                      continue;
                    }
                    _10224 = _10215;
                    _10225 = _10216;
                    _10226 = _10217;
                    break;
                  }
                } else {
                  _10224 = 3.4028235e+38f;
                  _10225 = 0.0f;
                  _10226 = 0;
                }
              }
              _10227 = _10099 * 0.2f;
              _10231 = _10099 * 0.1f;
              _10239 = 0.0f;
              _10240 = _10227;
              _10241 = (_10227 * _10006);
              _10242 = (_10227 * _10007);
              _10243 = (_10227 * _10008);
              _10244 = _10231;
              _10245 = ((_10231 * _10006) + _8653);
              _10246 = ((_10231 * _10007) + _8654);
              _10247 = ((_10231 * _10008) + _8655);
              _10248 = 0;
              while(true) {
                _10252 = select(((_10244 >= _10224) && (_10244 <= _10225)), _10226, 0);
                _10258 = _10245 - _viewPos.x;
                _10259 = _10247 - _viewPos.z;
                _10263 = sqrt((_10258 * _10258) + (_10259 * _10259));
                _10270 = _cloudAltitude - (max(((_10263 * _10263) + -400000.0f), 0.0f) * 1e-06f);
                _10275 = _cloudDetailScale * 0.004f;
                _10278 = _cloudBaseScale * 0.0004f;
                _10283 = _earthRadius + _10246;
                _10292 = ((sqrt(((_10247 * _10247) + (_10245 * _10245)) + (_10283 * _10283)) - _10270) - _earthRadius) / _cloudThickness;
                if (!((_10292 < 0.0f) || (_10292 > 1.0f))) {
                  _10335 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _10336 = _10246 - _10270;
                  _10352 = _10275 / _10278;
                  _10353 = _10352 * _10278;
                  _10355 = _10352 * _10335;
                  _10367 = saturate(max((_10263 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _10371 = (4.0f - (_10367 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _10375 = _10353 * 4.355f;
                  _10394 = 1.0f - sqrt(saturate((1.0f - _10292) * 1.4285715f));
                  // [sem: expr_sat]
                  _10410 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_10245 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_10247 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_10278 * (_10245 - _cloudScroll.x)), ((_10278 * _10336) - _10335), (_10278 * (_10247 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_10394 * 0.5f), ((_10394 * _10394) * _10394))) * saturate(_10292 * 10.0f);
                  _10413 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_10371 * _10245) - (_10375 * _cloudScroll.x)), ((_10371 * _10336) - (_10355 * 4.355f)), ((_10371 * _10247) - (_10375 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_10275 * _10245) - (_10353 * _cloudScroll.x)), ((_10275 * _10336) - _10355), ((_10275 * _10247) - (_10353 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_10292 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                  _10414 = _10413 * ((_10367 * 0.4f) + 0.1f);
                  _10426 = (saturate((_10410 - _10413) / (1.0f - _10413)) * _cloudAlpha);
                  _10427 = (saturate((_10410 - _10414) / (1.0f - _10414)) * _cloudAlpha);
                } else {
                  _10426 = 0.0f;
                  _10427 = 0.0f;
                }
                if (!((_10252 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                  _10437 = 0.0f;
                  _10438 = 0;
                  while(true) {
                    _10803 = _10437;
                    if (!((((int)((uint)(1) << (_10438 & 31))) & _10252) == 0)) {
                      _10446 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[0].x;
                      _10447 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[1].x;
                      _10448 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[2].x;
                      _10450 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[0].y;
                      _10451 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[1].y;
                      _10452 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[2].y;
                      _10454 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[0].z;
                      _10455 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[1].z;
                      _10456 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[2].z;
                      _10458 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[0].w;
                      _10459 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[1].w;
                      _10460 = __3__37__0__0__g_cloudDensityVolumes[_10438]._relativeWorldToLocal[2].w;
                      _10462 = __3__37__0__0__g_cloudDensityVolumes[_10438]._shapeParameter.x;
                      _10463 = __3__37__0__0__g_cloudDensityVolumes[_10438]._shapeParameter.z;
                      _10464 = __3__37__0__0__g_cloudDensityVolumes[_10438]._shapeParameter.w;
                      _10466 = __3__37__0__0__g_cloudDensityVolumes[_10438]._macroNoiseParameter.x;
                      _10467 = __3__37__0__0__g_cloudDensityVolumes[_10438]._macroNoiseParameter.y;
                      _10468 = __3__37__0__0__g_cloudDensityVolumes[_10438]._macroNoiseParameter.z;
                      _10469 = __3__37__0__0__g_cloudDensityVolumes[_10438]._macroNoiseParameter.w;
                      _10471 = __3__37__0__0__g_cloudDensityVolumes[_10438]._detailNoiseParameter.x;
                      _10472 = __3__37__0__0__g_cloudDensityVolumes[_10438]._detailNoiseParameter.y;
                      _10473 = __3__37__0__0__g_cloudDensityVolumes[_10438]._detailNoiseParameter.z;
                      _10474 = __3__37__0__0__g_cloudDensityVolumes[_10438]._detailNoiseParameter.w;
                      _10476 = __3__37__0__0__g_cloudDensityVolumes[_10438]._modeParameter.x;
                      _10477 = __3__37__0__0__g_cloudDensityVolumes[_10438]._modeParameter.y;
                      _10479 = __3__37__0__0__g_cloudDensityVolumes[_10438]._vortexParameter.x;
                      _10480 = __3__37__0__0__g_cloudDensityVolumes[_10438]._vortexParameter.y;
                      _10481 = __3__37__0__0__g_cloudDensityVolumes[_10438]._vortexParameter.z;
                      _10482 = __3__37__0__0__g_cloudDensityVolumes[_10438]._vortexParameter.w;
                      _10484 = __3__37__0__0__g_cloudDensityVolumes[_10438]._spiralParameter.x;
                      _10485 = __3__37__0__0__g_cloudDensityVolumes[_10438]._spiralParameter.y;
                      _10486 = __3__37__0__0__g_cloudDensityVolumes[_10438]._spiralParameter.z;
                      _10487 = __3__37__0__0__g_cloudDensityVolumes[_10438]._spiralParameter.w;
                      _10489 = __3__37__0__0__g_cloudDensityVolumes[_10438]._animationParameter.x;
                      _10490 = __3__37__0__0__g_cloudDensityVolumes[_10438]._animationParameter.y;
                      _10491 = __3__37__0__0__g_cloudDensityVolumes[_10438]._animationParameter.z;
                      _10492 = __3__37__0__0__g_cloudDensityVolumes[_10438]._animationParameter.w;
                      _10494 = __3__37__0__0__g_cloudDensityVolumes[_10438]._flowParameter.x;
                      _10495 = __3__37__0__0__g_cloudDensityVolumes[_10438]._flowParameter.y;
                      _10496 = __3__37__0__0__g_cloudDensityVolumes[_10438]._flowParameter.z;
                      _10498 = __3__37__0__0__g_cloudDensityVolumes[_10438]._tornadoParameter.x;
                      _10499 = __3__37__0__0__g_cloudDensityVolumes[_10438]._tornadoParameter.y;
                      _10500 = __3__37__0__0__g_cloudDensityVolumes[_10438]._tornadoParameter.z;
                      _10501 = __3__37__0__0__g_cloudDensityVolumes[_10438]._tornadoParameter.w;
                      _10505 = mad(_10454, _10247, mad(_10450, _10246, (_10446 * _10245))) + _10458;
                      _10509 = mad(_10455, _10247, mad(_10451, _10246, (_10447 * _10245))) + _10459;
                      _10513 = mad(_10456, _10247, mad(_10452, _10246, (_10448 * _10245))) + _10460;
                      _10515 = abs(_10509);
                      _10521 = max((abs(_10505) + -0.5f), max((_10515 + -0.5f), (abs(_10513) + -0.5f)));
                      if (!(_10521 >= 0.0f)) {
                        _10524 = __3__37__0__0__g_cloudDensityVolumes[_10438]._shapeParameter.y;
                        _10527 = max((saturate(_10524) * 0.5f), 0.0001f);
                        _10530 = saturate((_10527 + _10521) / _10527);  // [sem: expr_sat]
                        _10535 = 1.0f - ((_10530 * _10530) * (3.0f - (_10530 * 2.0f)));
                        if (!(_10535 <= 0.0f)) {
                          _10544 = sqrt((_10513 * _10513) + (_10505 * _10505)) * 2.0f;
                          _10548 = saturate(1.0f - (_10544 / max(_10480, 0.0001f)));  // [sem: expr_sat]
                          _10549 = _time.x * _10492;
                          _10550 = (_10476 == 1);
                          _10551 = (_10476 == 2);
                          if (_10550) {
                            _10628 = exp2(log2(_10548) * max(_10487, 0.0001f));
                            _10630 = max(_10486, 0.0001f);
                            _10634 = _10509 / (((max(_10485, 0.0001f) - _10630) * _10628) + _10630);
                            _10641 = (((_10548 * _10548) * _10479) * ((_10544 * _10481) + _10509)) - (_10548 * _10549);
                            _10642 = sin(_10641);
                            _10643 = cos(_10641);
                            _10646 = (_10643 * _10505) - (_10642 * _10513);
                            _10649 = (_10643 * _10513) + (_10642 * _10505);
                            if (_10551) {
                              _10651 = 0.0f;
                              _10652 = 1.0f;
                              _10653 = _10628;
                              _10654 = _10548;
                              _10655 = _10646;
                              _10656 = _10634;
                              _10657 = _10649;
                              _10677 = _10652;
                              _10678 = _10653;
                              _10679 = _10654;
                              _10680 = _10655;
                              _10681 = _10656;
                              _10682 = _10657;
                              _10683 = max(_10651, ((_10515 * 2.0f) + -1.0f));
                            } else {
                              _10662 = _10628;
                              _10663 = _10646;
                              _10664 = _10634;
                              _10665 = _10649;
                              _10666 = _10663 * 2.0f;
                              _10667 = _10664 * 2.0f;
                              _10668 = _10665 * 2.0f;
                              _10677 = 1.0f;
                              _10678 = _10662;
                              _10679 = _10548;
                              _10680 = _10663;
                              _10681 = _10664;
                              _10682 = _10665;
                              _10683 = (sqrt(((_10667 * _10667) + (_10666 * _10666)) + (_10668 * _10668)) + -1.0f);
                            }
                          } else {
                            if (_10551) {
                              _10555 = saturate(_10509 + 0.5f);  // [sem: expr_sat]
                              _10561 = max(_10498, 0.0001f);
                              _10564 = ((max(_10499, 0.0001f) - _10561) * exp2(log2(_10555) * max(_10500, 0.0001f))) + _10561;
                              _10566 = atan(_10513 / _10505);
                              _10569 = (_10505 < 0.0f);
                              _10570 = (_10505 == 0.0f);
                              _10571 = (_10513 >= 0.0f);
                              _10572 = (_10513 < 0.0f);
                              _10582 = max(((float)((uint)((uint)(_10477)))), 1.0f);
                              _10583 = _10555 * _10481;
                              _10594 = _10564 * _10474;
                              _10596 = max((_10564 - _10594), 0.0f);
                              _10597 = _10544 - _10596;
                              _10598 = _10596 * (acos(min(max(cos(((((_10583 * -6.2831855f) - _10549) + select((_10570 && _10571), 1.5707964f, select((_10570 && _10572), -1.5707964f, select((_10569 && _10572), (_10566 + -3.1415927f), select((_10569 && _10571), (_10566 + 3.1415927f), _10566))))) * _10582) + _10484), -1.0f), 1.0f)) / _10582);
                              _10603 = _10544 - _10564;
                              _10612 = saturate(1.0f - (_10544 / _10564));  // [sem: expr_sat]
                              _10615 = ((_10612 + _10583) * _10479) - _10549;
                              _10616 = sin(_10615);
                              _10617 = cos(_10615);
                              _10651 = ((saturate(_10482) * (((-0.0f - _10603) - _10594) + sqrt((_10597 * _10597) + (_10598 * _10598)))) + _10603);
                              _10652 = _10564;
                              _10653 = 0.0f;
                              _10654 = _10612;
                              _10655 = ((_10617 * _10505) - (_10616 * _10513));
                              _10656 = _10509;
                              _10657 = ((_10617 * _10513) + (_10616 * _10505));
                              _10677 = _10652;
                              _10678 = _10653;
                              _10679 = _10654;
                              _10680 = _10655;
                              _10681 = _10656;
                              _10682 = _10657;
                              _10683 = max(_10651, ((_10515 * 2.0f) + -1.0f));
                            } else {
                              _10662 = 0.0f;
                              _10663 = _10505;
                              _10664 = _10509;
                              _10665 = _10513;
                              _10666 = _10663 * 2.0f;
                              _10667 = _10664 * 2.0f;
                              _10668 = _10665 * 2.0f;
                              _10677 = 1.0f;
                              _10678 = _10662;
                              _10679 = _10548;
                              _10680 = _10663;
                              _10681 = _10664;
                              _10682 = _10665;
                              _10683 = (sqrt(((_10667 * _10667) + (_10666 * _10666)) + (_10668 * _10668)) + -1.0f);
                            }
                          }
                          if (_10467 > 0.0f) {
                            _10686 = _time.x * _10490;
                            _10690 = max(_10466, 0.0001f);
                            _10708 = (_10683 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_10686 * _10494) + _10468) + (_10690 * _10680)), (((_10686 * _10495) + _10469) + (_10690 * _10681)), (((_10686 * _10496) + _10473) + (_10690 * _10682))), 0.0f)).x) + -0.5f) * _10467));
                          } else {
                            _10708 = _10683;
                          }
                          if (_10550 && (_10482 > 0.0f)) {
                            _10713 = atan(_10513 / _10505);
                            _10716 = (_10505 < 0.0f);
                            _10717 = (_10505 == 0.0f);
                            _10718 = (_10513 >= 0.0f);
                            _10719 = (_10513 < 0.0f);
                            _10741 = (_10708 - (((_10482 * 0.5f) * _10679) * cos(((((_10544 * _10481) - _10549) + select((_10717 && _10718), 1.5707964f, select((_10717 && _10719), -1.5707964f, select((_10716 && _10719), (_10713 + -3.1415927f), select((_10716 && _10718), (_10713 + 3.1415927f), _10713))))) * max(((float)((uint)((uint)(_10477)))), 1.0f)) + _10484)));
                          } else {
                            _10741 = _10708;
                          }
                          if (_10551 && (_10501 > 0.0f)) {
                            _10749 = max(_10741, ((_10677 * _10501) - _10544));
                          } else {
                            _10749 = _10741;
                          }
                          _10751 = max(_10464, 0.0001f);
                          _10757 = saturate((((_10463 - (_10678 * _10489)) + _10749) + _10751) / (_10751 * 2.0f));  // [sem: expr_sat]
                          _10762 = 1.0f - ((_10757 * _10757) * (3.0f - (_10757 * 2.0f)));
                          if (!((_10762 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_10472 <= 0.0f)) || (_10762 <= 0.0f)))) {
                            _10770 = _time.x * _10491;
                            _10774 = max(_10471, 0.0001f);
                            // [sem: expr_sat]
                            _10798 = saturate(_10762 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_10770 * _10494) + _10468) + (_10774 * _10680)), (((_10770 * _10495) + _10469) + (_10774 * _10681)), (((_10770 * _10496) + _10473) + (_10774 * _10682))), 0.0f)).x) * _10472) * saturate(1.0f - abs((_10762 * 2.0f) + -1.0f))));
                          } else {
                            _10798 = _10762;  // [sem: expr_sat]
                          }
                          _10803 = (((_10535 * _10462) * _10798) + _10437);
                        } else {
                          _10803 = _10437;
                        }
                      } else {
                        _10803 = _10437;
                      }
                    } else {
                      _10803 = _10437;
                    }
                    _10804 = (uint)((uint)(_10438)) + (uint)(1);
                    if ((uint)_10804 < (uint)_cloudDensityVolumeInfo.x) {
                      _10437 = _10803;
                      _10438 = _10804;
                      continue;
                    }
                    while(true) {
                      _10809 = saturate(_10803);  // [sem: _10803_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _10809 = 0.0f;  // [sem: _10803_sat]
                }
                _10811 = saturate(_10809 + _10427);  // [sem: expr_sat]
                _10827 = (((exp2((((_10239 * -0.0072134747f) * _10240) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_10809 + _10426) - _10811)) + _10811) * _10240) + _10239;
                _10828 = _10244 + _10240;
                _10829 = _10245 + _10241;
                _10830 = _10246 + _10242;
                _10831 = _10247 + _10243;
                _10832 = _10240 * 1.3f;
                _10833 = _10241 * 1.3f;
                _10834 = _10242 * 1.3f;
                _10835 = _10243 * 1.3f;
                _10836 = (int)(_10248) + (int)(1);
                if (!(_10836 == 6)) {
                  _10239 = _10827;
                  _10240 = _10832;
                  _10241 = _10833;
                  _10242 = _10834;
                  _10243 = _10835;
                  _10244 = _10828;
                  _10245 = _10829;
                  _10246 = _10830;
                  _10247 = _10831;
                  _10248 = _10836;
                  continue;
                }
                _10844 = ((_cloudDensityVolumeInfo.y & 2) != 0);
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _10864 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_8653 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_8655 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _10866 = _8653 + 50.0f;
                _10867 = _8654 + 200.0f;
                _10868 = _10866 - _viewPos.x;
                _10869 = _8655 - _viewPos.z;
                _10873 = sqrt((_10868 * _10868) + (_10869 * _10869));
                _10878 = _cloudAltitude - (max(((_10873 * _10873) + -400000.0f), 0.0f) * 1e-06f);
                _10879 = _earthRadius + _10867;
                _10881 = _10879 * _10879;
                _10887 = ((sqrt(((_10866 * _10866) + _9276) + _10881) - _earthRadius) - _10878) / _cloudThickness;
                if (!((_10887 < 0.0f) || (_10887 > 1.0f))) {
                  _10909 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _10910 = _10867 - _10878;
                  _10926 = _10275 / _10278;
                  _10927 = _10926 * _10278;
                  _10929 = _10926 * _10909;
                  _10941 = saturate(max((_10873 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _10945 = (4.0f - (_10941 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _10949 = _10927 * 4.355f;
                  _10966 = 1.0f - sqrt(saturate((1.0f - _10887) * 1.4285715f));
                  _10988 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_10275 * _10866) - (_10927 * _cloudScroll.x)), ((_10910 * _10275) - _10929), ((_10275 * _8655) - (_10927 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_10941 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_10945 * _10866) - (_10949 * _cloudScroll.x)), ((_10945 * _10910) - (_10929 * 4.355f)), ((_10945 * _8655) - (_10949 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_10887 * 4.0f) * 0.8f) + 0.2f);
                  _10995 = (saturate(((saturate(saturate(((_10864.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_10278 * (_10866 - _cloudScroll.x)), ((_10910 * _10278) - _10909), (_10278 * (_8655 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_10966 * 0.5f), ((_10966 * _10966) * _10966))) * saturate(_10887 * 10.0f)) - _10988) / (1.0f - _10988)) * _cloudAlpha);
                } else {
                  _10995 = 0.0f;
                }
                _10997 = (_cloudFadeRange > 1e-05f);
                if (_10997) {
                  _11007 = saturate(((_10873 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _11007 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _11015 = 0.0f;
                  _11016 = 0;
                  while(true) {
                    _11379 = _11015;
                    if (!((uint)(_11016 & 16) > (uint)15)) {
                      _11022 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[0].x;
                      _11023 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[1].x;
                      _11024 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[2].x;
                      _11026 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[0].y;
                      _11027 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[1].y;
                      _11028 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[2].y;
                      _11030 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[0].z;
                      _11031 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[1].z;
                      _11032 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[2].z;
                      _11034 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[0].w;
                      _11035 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[1].w;
                      _11036 = __3__37__0__0__g_cloudDensityVolumes[_11016]._relativeWorldToLocal[2].w;
                      _11038 = __3__37__0__0__g_cloudDensityVolumes[_11016]._shapeParameter.x;
                      _11039 = __3__37__0__0__g_cloudDensityVolumes[_11016]._shapeParameter.z;
                      _11040 = __3__37__0__0__g_cloudDensityVolumes[_11016]._shapeParameter.w;
                      _11042 = __3__37__0__0__g_cloudDensityVolumes[_11016]._macroNoiseParameter.x;
                      _11043 = __3__37__0__0__g_cloudDensityVolumes[_11016]._macroNoiseParameter.y;
                      _11044 = __3__37__0__0__g_cloudDensityVolumes[_11016]._macroNoiseParameter.z;
                      _11045 = __3__37__0__0__g_cloudDensityVolumes[_11016]._macroNoiseParameter.w;
                      _11047 = __3__37__0__0__g_cloudDensityVolumes[_11016]._detailNoiseParameter.x;
                      _11048 = __3__37__0__0__g_cloudDensityVolumes[_11016]._detailNoiseParameter.y;
                      _11049 = __3__37__0__0__g_cloudDensityVolumes[_11016]._detailNoiseParameter.z;
                      _11050 = __3__37__0__0__g_cloudDensityVolumes[_11016]._detailNoiseParameter.w;
                      _11052 = __3__37__0__0__g_cloudDensityVolumes[_11016]._modeParameter.x;
                      _11053 = __3__37__0__0__g_cloudDensityVolumes[_11016]._modeParameter.y;
                      _11055 = __3__37__0__0__g_cloudDensityVolumes[_11016]._vortexParameter.x;
                      _11056 = __3__37__0__0__g_cloudDensityVolumes[_11016]._vortexParameter.y;
                      _11057 = __3__37__0__0__g_cloudDensityVolumes[_11016]._vortexParameter.z;
                      _11058 = __3__37__0__0__g_cloudDensityVolumes[_11016]._vortexParameter.w;
                      _11060 = __3__37__0__0__g_cloudDensityVolumes[_11016]._spiralParameter.x;
                      _11061 = __3__37__0__0__g_cloudDensityVolumes[_11016]._spiralParameter.y;
                      _11062 = __3__37__0__0__g_cloudDensityVolumes[_11016]._spiralParameter.z;
                      _11063 = __3__37__0__0__g_cloudDensityVolumes[_11016]._spiralParameter.w;
                      _11065 = __3__37__0__0__g_cloudDensityVolumes[_11016]._animationParameter.x;
                      _11066 = __3__37__0__0__g_cloudDensityVolumes[_11016]._animationParameter.y;
                      _11067 = __3__37__0__0__g_cloudDensityVolumes[_11016]._animationParameter.z;
                      _11068 = __3__37__0__0__g_cloudDensityVolumes[_11016]._animationParameter.w;
                      _11070 = __3__37__0__0__g_cloudDensityVolumes[_11016]._flowParameter.x;
                      _11071 = __3__37__0__0__g_cloudDensityVolumes[_11016]._flowParameter.y;
                      _11072 = __3__37__0__0__g_cloudDensityVolumes[_11016]._flowParameter.z;
                      _11074 = __3__37__0__0__g_cloudDensityVolumes[_11016]._tornadoParameter.x;
                      _11075 = __3__37__0__0__g_cloudDensityVolumes[_11016]._tornadoParameter.y;
                      _11076 = __3__37__0__0__g_cloudDensityVolumes[_11016]._tornadoParameter.z;
                      _11077 = __3__37__0__0__g_cloudDensityVolumes[_11016]._tornadoParameter.w;
                      _11081 = mad(_11030, _8655, mad(_11026, _10867, (_11022 * _10866))) + _11034;
                      _11085 = mad(_11031, _8655, mad(_11027, _10867, (_11023 * _10866))) + _11035;
                      _11089 = mad(_11032, _8655, mad(_11028, _10867, (_11024 * _10866))) + _11036;
                      _11091 = abs(_11085);
                      _11097 = max((abs(_11081) + -0.5f), max((_11091 + -0.5f), (abs(_11089) + -0.5f)));
                      if (!(_11097 >= 0.0f)) {
                        _11100 = __3__37__0__0__g_cloudDensityVolumes[_11016]._shapeParameter.y;
                        _11103 = max((saturate(_11100) * 0.5f), 0.0001f);
                        _11106 = saturate((_11103 + _11097) / _11103);  // [sem: expr_sat]
                        _11111 = 1.0f - ((_11106 * _11106) * (3.0f - (_11106 * 2.0f)));
                        if (!(_11111 <= 0.0f)) {
                          _11120 = sqrt((_11089 * _11089) + (_11081 * _11081)) * 2.0f;
                          _11124 = saturate(1.0f - (_11120 / max(_11056, 0.0001f)));  // [sem: expr_sat]
                          _11125 = _time.x * _11068;
                          _11126 = (_11052 == 1);
                          _11127 = (_11052 == 2);
                          if (_11126) {
                            _11204 = exp2(log2(_11124) * max(_11063, 0.0001f));
                            _11206 = max(_11062, 0.0001f);
                            _11210 = _11085 / (((max(_11061, 0.0001f) - _11206) * _11204) + _11206);
                            _11217 = (((_11124 * _11124) * _11055) * ((_11120 * _11057) + _11085)) - (_11124 * _11125);
                            _11218 = sin(_11217);
                            _11219 = cos(_11217);
                            _11222 = (_11219 * _11081) - (_11218 * _11089);
                            _11225 = (_11219 * _11089) + (_11218 * _11081);
                            if (_11127) {
                              _11227 = 0.0f;
                              _11228 = 1.0f;
                              _11229 = _11204;
                              _11230 = _11124;
                              _11231 = _11222;
                              _11232 = _11210;
                              _11233 = _11225;
                              _11253 = _11228;
                              _11254 = _11229;
                              _11255 = _11230;
                              _11256 = _11231;
                              _11257 = _11232;
                              _11258 = _11233;
                              _11259 = max(_11227, ((_11091 * 2.0f) + -1.0f));
                            } else {
                              _11238 = _11204;
                              _11239 = _11222;
                              _11240 = _11210;
                              _11241 = _11225;
                              _11242 = _11239 * 2.0f;
                              _11243 = _11240 * 2.0f;
                              _11244 = _11241 * 2.0f;
                              _11253 = 1.0f;
                              _11254 = _11238;
                              _11255 = _11124;
                              _11256 = _11239;
                              _11257 = _11240;
                              _11258 = _11241;
                              _11259 = (sqrt(((_11243 * _11243) + (_11242 * _11242)) + (_11244 * _11244)) + -1.0f);
                            }
                          } else {
                            if (_11127) {
                              _11131 = saturate(_11085 + 0.5f);  // [sem: expr_sat]
                              _11137 = max(_11074, 0.0001f);
                              _11140 = ((max(_11075, 0.0001f) - _11137) * exp2(log2(_11131) * max(_11076, 0.0001f))) + _11137;
                              _11142 = atan(_11089 / _11081);
                              _11145 = (_11081 < 0.0f);
                              _11146 = (_11081 == 0.0f);
                              _11147 = (_11089 >= 0.0f);
                              _11148 = (_11089 < 0.0f);
                              _11158 = max(((float)((uint)((uint)(_11053)))), 1.0f);
                              _11159 = _11131 * _11057;
                              _11170 = _11140 * _11050;
                              _11172 = max((_11140 - _11170), 0.0f);
                              _11173 = _11120 - _11172;
                              _11174 = _11172 * (acos(min(max(cos(((((_11159 * -6.2831855f) - _11125) + select((_11146 && _11147), 1.5707964f, select((_11146 && _11148), -1.5707964f, select((_11145 && _11148), (_11142 + -3.1415927f), select((_11145 && _11147), (_11142 + 3.1415927f), _11142))))) * _11158) + _11060), -1.0f), 1.0f)) / _11158);
                              _11179 = _11120 - _11140;
                              _11188 = saturate(1.0f - (_11120 / _11140));  // [sem: expr_sat]
                              _11191 = ((_11188 + _11159) * _11055) - _11125;
                              _11192 = sin(_11191);
                              _11193 = cos(_11191);
                              _11227 = ((saturate(_11058) * (((-0.0f - _11179) - _11170) + sqrt((_11173 * _11173) + (_11174 * _11174)))) + _11179);
                              _11228 = _11140;
                              _11229 = 0.0f;
                              _11230 = _11188;
                              _11231 = ((_11193 * _11081) - (_11192 * _11089));
                              _11232 = _11085;
                              _11233 = ((_11193 * _11089) + (_11192 * _11081));
                              _11253 = _11228;
                              _11254 = _11229;
                              _11255 = _11230;
                              _11256 = _11231;
                              _11257 = _11232;
                              _11258 = _11233;
                              _11259 = max(_11227, ((_11091 * 2.0f) + -1.0f));
                            } else {
                              _11238 = 0.0f;
                              _11239 = _11081;
                              _11240 = _11085;
                              _11241 = _11089;
                              _11242 = _11239 * 2.0f;
                              _11243 = _11240 * 2.0f;
                              _11244 = _11241 * 2.0f;
                              _11253 = 1.0f;
                              _11254 = _11238;
                              _11255 = _11124;
                              _11256 = _11239;
                              _11257 = _11240;
                              _11258 = _11241;
                              _11259 = (sqrt(((_11243 * _11243) + (_11242 * _11242)) + (_11244 * _11244)) + -1.0f);
                            }
                          }
                          if (_11043 > 0.0f) {
                            _11262 = _time.x * _11066;
                            _11266 = max(_11042, 0.0001f);
                            _11284 = (_11259 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_11262 * _11070) + _11044) + (_11266 * _11256)), (((_11262 * _11071) + _11045) + (_11266 * _11257)), (((_11262 * _11072) + _11049) + (_11266 * _11258))), 0.0f)).x) + -0.5f) * _11043));
                          } else {
                            _11284 = _11259;
                          }
                          if (_11126 && (_11058 > 0.0f)) {
                            _11289 = atan(_11089 / _11081);
                            _11292 = (_11081 < 0.0f);
                            _11293 = (_11081 == 0.0f);
                            _11294 = (_11089 >= 0.0f);
                            _11295 = (_11089 < 0.0f);
                            _11317 = (_11284 - (((_11058 * 0.5f) * _11255) * cos(((((_11120 * _11057) - _11125) + select((_11293 && _11294), 1.5707964f, select((_11293 && _11295), -1.5707964f, select((_11292 && _11295), (_11289 + -3.1415927f), select((_11292 && _11294), (_11289 + 3.1415927f), _11289))))) * max(((float)((uint)((uint)(_11053)))), 1.0f)) + _11060)));
                          } else {
                            _11317 = _11284;
                          }
                          if (_11127 && (_11077 > 0.0f)) {
                            _11325 = max(_11317, ((_11253 * _11077) - _11120));
                          } else {
                            _11325 = _11317;
                          }
                          _11327 = max(_11040, 0.0001f);
                          _11333 = saturate((((_11039 - (_11254 * _11065)) + _11325) + _11327) / (_11327 * 2.0f));  // [sem: expr_sat]
                          _11338 = 1.0f - ((_11333 * _11333) * (3.0f - (_11333 * 2.0f)));
                          if (!((_11338 >= 1.0f) || ((_10844 || (_11048 <= 0.0f)) || (_11338 <= 0.0f)))) {
                            _11346 = _time.x * _11067;
                            _11350 = max(_11047, 0.0001f);
                            // [sem: expr_sat]
                            _11374 = saturate(_11338 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_11346 * _11070) + _11044) + (_11350 * _11256)), (((_11346 * _11071) + _11045) + (_11350 * _11257)), (((_11346 * _11072) + _11049) + (_11350 * _11258))), 0.0f)).x) * _11048) * saturate(1.0f - abs((_11338 * 2.0f) + -1.0f))));
                          } else {
                            _11374 = _11338;  // [sem: expr_sat]
                          }
                          _11379 = (((_11111 * _11038) * _11374) + _11015);
                        } else {
                          _11379 = _11015;
                        }
                      } else {
                        _11379 = _11015;
                      }
                    } else {
                      _11379 = _11015;
                    }
                    _11380 = (uint)((uint)(_11016)) + (uint)(1);
                    if ((uint)_11380 < (uint)_cloudDensityVolumeInfo.x) {
                      _11015 = _11379;
                      _11016 = _11380;
                      continue;
                    }
                    while(true) {
                      _11385 = saturate(_11379);  // [sem: _11379_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _11385 = 0.0f;  // [sem: _11379_sat]
                }
                _11388 = _8655 + -50.0f;
                _11389 = _8653 - _viewPos.x;
                _11390 = _11388 - _viewPos.z;
                _11394 = sqrt((_11389 * _11389) + (_11390 * _11390));
                _11399 = _cloudAltitude - (max(((_11394 * _11394) + -400000.0f), 0.0f) * 1e-06f);
                _11406 = ((sqrt(((_11388 * _11388) + _9274) + _10881) - _earthRadius) - _11399) / _cloudThickness;
                if (!((_11406 < 0.0f) || (_11406 > 1.0f))) {
                  _11428 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _11429 = _10867 - _11399;
                  _11445 = _10275 / _10278;
                  _11446 = _11445 * _10278;
                  _11448 = _11445 * _11428;
                  _11460 = saturate(max((_11394 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _11464 = (4.0f - (_11460 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _11468 = _11446 * 4.355f;
                  _11485 = 1.0f - sqrt(saturate((1.0f - _11406) * 1.4285715f));
                  _11507 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_10275 * _8653) - (_11446 * _cloudScroll.x)), ((_11429 * _10275) - _11448), ((_10275 * _11388) - (_11446 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_11460 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_11464 * _8653) - (_11468 * _cloudScroll.x)), ((_11464 * _11429) - (_11448 * 4.355f)), ((_11464 * _11388) - (_11468 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_11406 * 4.0f) * 0.8f) + 0.2f);
                  _11514 = (saturate(((saturate(saturate(((_10864.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_10278 * (_8653 - _cloudScroll.x)), ((_11429 * _10278) - _11428), (_10278 * (_11388 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_11485 * 0.5f), ((_11485 * _11485) * _11485))) * saturate(_11406 * 10.0f)) - _11507) / (1.0f - _11507)) * _cloudAlpha);
                } else {
                  _11514 = 0.0f;
                }
                if (_10997) {
                  _11524 = saturate(((_11394 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _11524 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _11533 = 0.0f;
                  _11534 = 0;
                  while(true) {
                    _11897 = _11533;
                    if (!((uint)(_11534 & 16) > (uint)15)) {
                      _11540 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[0].x;
                      _11541 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[1].x;
                      _11542 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[2].x;
                      _11544 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[0].y;
                      _11545 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[1].y;
                      _11546 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[2].y;
                      _11548 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[0].z;
                      _11549 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[1].z;
                      _11550 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[2].z;
                      _11552 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[0].w;
                      _11553 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[1].w;
                      _11554 = __3__37__0__0__g_cloudDensityVolumes[_11534]._relativeWorldToLocal[2].w;
                      _11556 = __3__37__0__0__g_cloudDensityVolumes[_11534]._shapeParameter.x;
                      _11557 = __3__37__0__0__g_cloudDensityVolumes[_11534]._shapeParameter.z;
                      _11558 = __3__37__0__0__g_cloudDensityVolumes[_11534]._shapeParameter.w;
                      _11560 = __3__37__0__0__g_cloudDensityVolumes[_11534]._macroNoiseParameter.x;
                      _11561 = __3__37__0__0__g_cloudDensityVolumes[_11534]._macroNoiseParameter.y;
                      _11562 = __3__37__0__0__g_cloudDensityVolumes[_11534]._macroNoiseParameter.z;
                      _11563 = __3__37__0__0__g_cloudDensityVolumes[_11534]._macroNoiseParameter.w;
                      _11565 = __3__37__0__0__g_cloudDensityVolumes[_11534]._detailNoiseParameter.x;
                      _11566 = __3__37__0__0__g_cloudDensityVolumes[_11534]._detailNoiseParameter.y;
                      _11567 = __3__37__0__0__g_cloudDensityVolumes[_11534]._detailNoiseParameter.z;
                      _11568 = __3__37__0__0__g_cloudDensityVolumes[_11534]._detailNoiseParameter.w;
                      _11570 = __3__37__0__0__g_cloudDensityVolumes[_11534]._modeParameter.x;
                      _11571 = __3__37__0__0__g_cloudDensityVolumes[_11534]._modeParameter.y;
                      _11573 = __3__37__0__0__g_cloudDensityVolumes[_11534]._vortexParameter.x;
                      _11574 = __3__37__0__0__g_cloudDensityVolumes[_11534]._vortexParameter.y;
                      _11575 = __3__37__0__0__g_cloudDensityVolumes[_11534]._vortexParameter.z;
                      _11576 = __3__37__0__0__g_cloudDensityVolumes[_11534]._vortexParameter.w;
                      _11578 = __3__37__0__0__g_cloudDensityVolumes[_11534]._spiralParameter.x;
                      _11579 = __3__37__0__0__g_cloudDensityVolumes[_11534]._spiralParameter.y;
                      _11580 = __3__37__0__0__g_cloudDensityVolumes[_11534]._spiralParameter.z;
                      _11581 = __3__37__0__0__g_cloudDensityVolumes[_11534]._spiralParameter.w;
                      _11583 = __3__37__0__0__g_cloudDensityVolumes[_11534]._animationParameter.x;
                      _11584 = __3__37__0__0__g_cloudDensityVolumes[_11534]._animationParameter.y;
                      _11585 = __3__37__0__0__g_cloudDensityVolumes[_11534]._animationParameter.z;
                      _11586 = __3__37__0__0__g_cloudDensityVolumes[_11534]._animationParameter.w;
                      _11588 = __3__37__0__0__g_cloudDensityVolumes[_11534]._flowParameter.x;
                      _11589 = __3__37__0__0__g_cloudDensityVolumes[_11534]._flowParameter.y;
                      _11590 = __3__37__0__0__g_cloudDensityVolumes[_11534]._flowParameter.z;
                      _11592 = __3__37__0__0__g_cloudDensityVolumes[_11534]._tornadoParameter.x;
                      _11593 = __3__37__0__0__g_cloudDensityVolumes[_11534]._tornadoParameter.y;
                      _11594 = __3__37__0__0__g_cloudDensityVolumes[_11534]._tornadoParameter.z;
                      _11595 = __3__37__0__0__g_cloudDensityVolumes[_11534]._tornadoParameter.w;
                      _11599 = mad(_11548, _11388, mad(_11544, _10867, (_11540 * _8653))) + _11552;
                      _11603 = mad(_11549, _11388, mad(_11545, _10867, (_11541 * _8653))) + _11553;
                      _11607 = mad(_11550, _11388, mad(_11546, _10867, (_11542 * _8653))) + _11554;
                      _11609 = abs(_11603);
                      _11615 = max((abs(_11599) + -0.5f), max((_11609 + -0.5f), (abs(_11607) + -0.5f)));
                      if (!(_11615 >= 0.0f)) {
                        _11618 = __3__37__0__0__g_cloudDensityVolumes[_11534]._shapeParameter.y;
                        _11621 = max((saturate(_11618) * 0.5f), 0.0001f);
                        _11624 = saturate((_11621 + _11615) / _11621);  // [sem: expr_sat]
                        _11629 = 1.0f - ((_11624 * _11624) * (3.0f - (_11624 * 2.0f)));
                        if (!(_11629 <= 0.0f)) {
                          _11638 = sqrt((_11607 * _11607) + (_11599 * _11599)) * 2.0f;
                          _11642 = saturate(1.0f - (_11638 / max(_11574, 0.0001f)));  // [sem: expr_sat]
                          _11643 = _time.x * _11586;
                          _11644 = (_11570 == 1);
                          _11645 = (_11570 == 2);
                          if (_11644) {
                            _11722 = exp2(log2(_11642) * max(_11581, 0.0001f));
                            _11724 = max(_11580, 0.0001f);
                            _11728 = _11603 / (((max(_11579, 0.0001f) - _11724) * _11722) + _11724);
                            _11735 = (((_11642 * _11642) * _11573) * ((_11638 * _11575) + _11603)) - (_11642 * _11643);
                            _11736 = sin(_11735);
                            _11737 = cos(_11735);
                            _11740 = (_11737 * _11599) - (_11736 * _11607);
                            _11743 = (_11737 * _11607) + (_11736 * _11599);
                            if (_11645) {
                              _11745 = 0.0f;
                              _11746 = 1.0f;
                              _11747 = _11722;
                              _11748 = _11642;
                              _11749 = _11740;
                              _11750 = _11728;
                              _11751 = _11743;
                              _11771 = _11746;
                              _11772 = _11747;
                              _11773 = _11748;
                              _11774 = _11749;
                              _11775 = _11750;
                              _11776 = _11751;
                              _11777 = max(_11745, ((_11609 * 2.0f) + -1.0f));
                            } else {
                              _11756 = _11722;
                              _11757 = _11740;
                              _11758 = _11728;
                              _11759 = _11743;
                              _11760 = _11757 * 2.0f;
                              _11761 = _11758 * 2.0f;
                              _11762 = _11759 * 2.0f;
                              _11771 = 1.0f;
                              _11772 = _11756;
                              _11773 = _11642;
                              _11774 = _11757;
                              _11775 = _11758;
                              _11776 = _11759;
                              _11777 = (sqrt(((_11761 * _11761) + (_11760 * _11760)) + (_11762 * _11762)) + -1.0f);
                            }
                          } else {
                            if (_11645) {
                              _11649 = saturate(_11603 + 0.5f);  // [sem: expr_sat]
                              _11655 = max(_11592, 0.0001f);
                              _11658 = ((max(_11593, 0.0001f) - _11655) * exp2(log2(_11649) * max(_11594, 0.0001f))) + _11655;
                              _11660 = atan(_11607 / _11599);
                              _11663 = (_11599 < 0.0f);
                              _11664 = (_11599 == 0.0f);
                              _11665 = (_11607 >= 0.0f);
                              _11666 = (_11607 < 0.0f);
                              _11676 = max(((float)((uint)((uint)(_11571)))), 1.0f);
                              _11677 = _11649 * _11575;
                              _11688 = _11658 * _11568;
                              _11690 = max((_11658 - _11688), 0.0f);
                              _11691 = _11638 - _11690;
                              _11692 = _11690 * (acos(min(max(cos(((((_11677 * -6.2831855f) - _11643) + select((_11664 && _11665), 1.5707964f, select((_11664 && _11666), -1.5707964f, select((_11663 && _11666), (_11660 + -3.1415927f), select((_11663 && _11665), (_11660 + 3.1415927f), _11660))))) * _11676) + _11578), -1.0f), 1.0f)) / _11676);
                              _11697 = _11638 - _11658;
                              _11706 = saturate(1.0f - (_11638 / _11658));  // [sem: expr_sat]
                              _11709 = ((_11706 + _11677) * _11573) - _11643;
                              _11710 = sin(_11709);
                              _11711 = cos(_11709);
                              _11745 = ((saturate(_11576) * (((-0.0f - _11697) - _11688) + sqrt((_11691 * _11691) + (_11692 * _11692)))) + _11697);
                              _11746 = _11658;
                              _11747 = 0.0f;
                              _11748 = _11706;
                              _11749 = ((_11711 * _11599) - (_11710 * _11607));
                              _11750 = _11603;
                              _11751 = ((_11711 * _11607) + (_11710 * _11599));
                              _11771 = _11746;
                              _11772 = _11747;
                              _11773 = _11748;
                              _11774 = _11749;
                              _11775 = _11750;
                              _11776 = _11751;
                              _11777 = max(_11745, ((_11609 * 2.0f) + -1.0f));
                            } else {
                              _11756 = 0.0f;
                              _11757 = _11599;
                              _11758 = _11603;
                              _11759 = _11607;
                              _11760 = _11757 * 2.0f;
                              _11761 = _11758 * 2.0f;
                              _11762 = _11759 * 2.0f;
                              _11771 = 1.0f;
                              _11772 = _11756;
                              _11773 = _11642;
                              _11774 = _11757;
                              _11775 = _11758;
                              _11776 = _11759;
                              _11777 = (sqrt(((_11761 * _11761) + (_11760 * _11760)) + (_11762 * _11762)) + -1.0f);
                            }
                          }
                          if (_11561 > 0.0f) {
                            _11780 = _time.x * _11584;
                            _11784 = max(_11560, 0.0001f);
                            _11802 = (_11777 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_11780 * _11588) + _11562) + (_11784 * _11774)), (((_11780 * _11589) + _11563) + (_11784 * _11775)), (((_11780 * _11590) + _11567) + (_11784 * _11776))), 0.0f)).x) + -0.5f) * _11561));
                          } else {
                            _11802 = _11777;
                          }
                          if (_11644 && (_11576 > 0.0f)) {
                            _11807 = atan(_11607 / _11599);
                            _11810 = (_11599 < 0.0f);
                            _11811 = (_11599 == 0.0f);
                            _11812 = (_11607 >= 0.0f);
                            _11813 = (_11607 < 0.0f);
                            _11835 = (_11802 - (((_11576 * 0.5f) * _11773) * cos(((((_11638 * _11575) - _11643) + select((_11811 && _11812), 1.5707964f, select((_11811 && _11813), -1.5707964f, select((_11810 && _11813), (_11807 + -3.1415927f), select((_11810 && _11812), (_11807 + 3.1415927f), _11807))))) * max(((float)((uint)((uint)(_11571)))), 1.0f)) + _11578)));
                          } else {
                            _11835 = _11802;
                          }
                          if (_11645 && (_11595 > 0.0f)) {
                            _11843 = max(_11835, ((_11771 * _11595) - _11638));
                          } else {
                            _11843 = _11835;
                          }
                          _11845 = max(_11558, 0.0001f);
                          _11851 = saturate((((_11557 - (_11772 * _11583)) + _11843) + _11845) / (_11845 * 2.0f));  // [sem: expr_sat]
                          _11856 = 1.0f - ((_11851 * _11851) * (3.0f - (_11851 * 2.0f)));
                          if (!((_11856 >= 1.0f) || ((_10844 || (_11566 <= 0.0f)) || (_11856 <= 0.0f)))) {
                            _11864 = _time.x * _11585;
                            _11868 = max(_11565, 0.0001f);
                            // [sem: expr_sat]
                            _11892 = saturate(_11856 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_11864 * _11588) + _11562) + (_11868 * _11774)), (((_11864 * _11589) + _11563) + (_11868 * _11775)), (((_11864 * _11590) + _11567) + (_11868 * _11776))), 0.0f)).x) * _11566) * saturate(1.0f - abs((_11856 * 2.0f) + -1.0f))));
                          } else {
                            _11892 = _11856;  // [sem: expr_sat]
                          }
                          _11897 = (((_11629 * _11556) * _11892) + _11533);
                        } else {
                          _11897 = _11533;
                        }
                      } else {
                        _11897 = _11533;
                      }
                    } else {
                      _11897 = _11533;
                    }
                    _11898 = (uint)((uint)(_11534)) + (uint)(1);
                    if ((uint)_11898 < (uint)_cloudDensityVolumeInfo.x) {
                      _11533 = _11897;
                      _11534 = _11898;
                      continue;
                    }
                    while(true) {
                      _11903 = saturate(_11897);  // [sem: _11897_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _11903 = 0.0f;  // [sem: _11897_sat]
                }
                _11910 = max(_10068, (_10827 * _distanceScale));
                _11911 = ((_distanceScale * 20.0f) * (saturate(_11903 + (_11524 * _11514)) + saturate(_11385 + (_11007 * _10995))));
                break;
              }
            } else {
              _11910 = _10068;
              _11911 = ((log2(max(_10064, 0.5f)) * 0.6931472f) / _10067);
            }
            _11912 = dot(float3(_9280, _9281, _9282), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _11916 = min(max(_9401, 16.0f), (_atmosphereThickness + -16.0f));
            _11924 = max(_11916, 0.0f);
            _11933 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _11924) * _11924)) / (_earthRadius + _11924);
            if (_11912 > _11933) {
              _11956 = ((exp2(log2(saturate((_11912 - _11933) / (1.0f - _11933))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _11956 = ((exp2(log2(saturate((_11933 - _11912) / (_11933 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _11958 = (exp2(log2(saturate((_11916 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _11961 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_11958, _11956), 0.0f);
            _11964 = dot(float3(_9280, _9281, _9282), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_11964 > _11933) {
              _11987 = ((exp2(log2(saturate((_11964 - _11933) / (1.0f - _11933))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _11987 = ((exp2(log2(saturate((_11933 - _11964) / (_11933 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _11988 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_11958, _11987), 0.0f);
            _11991 = _9931 * saturate((1.0f - saturate(_8646 / _8471)) * 10.0f);
            _11996 = _8649 * 0.5f;
            _12001 = ((_9411 + _8629) * _11996) + _8615;
            _12002 = ((_9412 + _8628) * _11996) + _8614;
            _12003 = ((_11991 + _8627) * _11996) + _8613;
            _12004 = ((_9999 + _8626) * _11996) + _8612;
            _12005 = _12004 + _12003;
            _12006 = _11961.x + _12001;
            _12013 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _12016 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _12018 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _12025 = _mieAerosolDensity * 2e-05f;
            _12026 = _12025 * (_mieAerosolAbsorption + 1.0f);
            _12027 = _12026 * (_11961.y + _12002);
            _12036 = _cloudScatteringCoefficient / _distanceScale;
            _12037 = _12036 * (_11910 + _12005);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _12038 = SkySpectralRayleighBeta(_rayleighScatteringColor).r + (_ozoneRatio * SKY_OZONE_1);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _12039 = _12038 * _12006;
            _12040 = _12037 + _12027;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _12042 = SkySpectralRayleighBeta(_rayleighScatteringColor).g + (_ozoneRatio * SKY_OZONE_2);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _12043 = _12042 * _12006;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _12045 = SkySpectralRayleighBeta(_rayleighScatteringColor).b + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _12046 = _12045 * _12006;
            _12051 = exp2((_12039 + _12040) * -1.442695f);
            _12052 = exp2((_12043 + _12040) * -1.442695f);
            _12053 = exp2((_12046 + _12040) * -1.442695f);
            _12069 = _12036 * _distanceScale;
            _12076 = exp2(log2(1.0f - exp2((_12069 * -14.42695f) * _11991)) * 1.25f);
            _12080 = 1.0f - exp2((_12069 * -288.539f) * _9999);
            _12082 = _9411 * 1.9607843e-07f;
            _12083 = (_8391 * 0.059683103f) * _12082;
            _12088 = _12076 * (_11991 * 64.0f);
            _12089 = _12088 * _8401;
            _12096 = ((_8419 * 2.0f) * _9999) * _12080;
            _12110 = (_12036 * (_11911 + _12005)) + (_12026 * _12002);
            _12119 = exp2(((_12038 * _12001) + _12110) * -1.442695f);
            _12120 = exp2(((_12042 * _12001) + _12110) * -1.442695f);
            _12121 = exp2(((_12045 * _12001) + _12110) * -1.442695f);
            _12134 = ((_12120 * 0.33951f) + (_12119 * 0.61312f)) + (_12121 * 0.04737f);
            _12135 = ((_12120 * 0.91636f) + (_12119 * 0.0702f)) + (_12121 * 0.01345f);
            _12136 = ((_12120 * 0.10958f) + (_12119 * 0.02062f)) + (_12121 * 0.8698f);
            _12141 = _12036 * (_9999 + _11991);
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's sun-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix instead of collapsing each output row onto its own
            //              channel — the single-scatter term against the view transmittance triple
            //              (_12051/_12052/_12053) and the multi-scatter gather against the sun
            //              transmittance triple (_12119/_12120/_12121), with the per-wavelength gather
            //              weight folded into the beta arguments. Volume fog, cloud and the cloud/fog
            //              share of the gather carry display-referred colour and keep the vanilla
            //              matrix, as does transmittance. Each Off arm is the complete native
            //              expression.
            _12142 = (_12013 * _12082) + _12141;
            _12148 = SPECTRAL_SKY_AMBIENT
              ? (((((_12096 * _volumeFogScatterColor.x) + _12089) * _12036) * SKY_VAN_DOT(0, _12051, _12052, _12053)) + SKY_RAY_INSCATTER(0, _12051, _12052, _12053, _12013, _12016, _12018, _12083) + SKY_RAY_INSCATTER(0, _12119, _12120, _12121, (_12013 * _9387), (_12016 * _9388), (_12018 * _9389), _12082) + ((_12141 * _9387) * _12134)) * _8649
              : ((((((_12096 * _volumeFogScatterColor.x) + _12089) * _12036) + (_12013 * _12083)) * (((_12052 * 0.33951f) + (_12051 * 0.61312f)) + (_12053 * 0.04737f))) + ((_12142 * _9387) * _12134)) * _8649;
            _12149 = (_12016 * _12082) + _12141;
            _12155 = SPECTRAL_SKY_AMBIENT
              ? (((((_12096 * _volumeFogScatterColor.y) + _12089) * _12036) * SKY_VAN_DOT(1, _12051, _12052, _12053)) + SKY_RAY_INSCATTER(1, _12051, _12052, _12053, _12013, _12016, _12018, _12083) + SKY_RAY_INSCATTER(1, _12119, _12120, _12121, (_12013 * _9387), (_12016 * _9388), (_12018 * _9389), _12082) + ((_12141 * _9388) * _12135)) * _8649
              : ((((((_12096 * _volumeFogScatterColor.y) + _12089) * _12036) + (_12016 * _12083)) * (((_12052 * 0.91636f) + (_12051 * 0.0702f)) + (_12053 * 0.01345f))) + ((_12149 * _9388) * _12135)) * _8649;
            _12156 = _12141 + (_12018 * _12082);
            _12162 = SPECTRAL_SKY_AMBIENT
              ? (((((_12096 * _volumeFogScatterColor.z) + _12089) * _12036) * SKY_VAN_DOT(2, _12051, _12052, _12053)) + SKY_RAY_INSCATTER(2, _12051, _12052, _12053, _12013, _12016, _12018, _12083) + SKY_RAY_INSCATTER(2, _12119, _12120, _12121, (_12013 * _9387), (_12016 * _9388), (_12018 * _9389), _12082) + ((_12141 * _9389) * _12136)) * _8649
              : ((((((_12096 * _volumeFogScatterColor.z) + _12089) * _12036) + (_12018 * _12083)) * (((_12052 * 0.10958f) + (_12051 * 0.02062f)) + (_12053 * 0.8698f))) + ((_12156 * _9389) * _12136)) * _8649;
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            _12163 = _11988.x + _12001;
            _12165 = _12026 * (_11988.y + _12002);
            _12166 = _12038 * _12163;
            _12167 = _12037 + _12165;
            _12169 = _12042 * _12163;
            _12171 = _12045 * _12163;
            _12176 = exp2((_12166 + _12167) * -1.442695f);
            _12177 = exp2((_12169 + _12167) * -1.442695f);
            _12178 = exp2((_12171 + _12167) * -1.442695f);
            _12195 = (_8454 * 0.059683103f) * _12082;
            _12200 = _miePhaseConst * _miePhaseConst;
            _12217 = _9412 * _12025;
            _12220 = ((_12217 * 0.07957747f) * (((1.0f - _12200) * 3.0f) / ((_12200 + 2.0f) * 2.0f))) * (_8454 / exp2(log2((_12200 + 1.0f) - (_miePhaseConst * _8455)) * 1.5f));
            _12229 = ((((_8470 * 2.0f) * _9999) * _12080) + (_12088 * _8462)) * _12036;
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's moon-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix — the single-scatter term against the moon transmittance
            //              triple (_12176/_12177/_12178) and the multi-scatter gather against the sun
            //              transmittance triple (_12119/_12120/_12121) the game mixes it with, with the
            //              per-wavelength gather weight folded into the beta arguments. Cloud, Mie and
            //              the cloud/fog share of the gather keep the vanilla matrix, as does
            //              transmittance. Each Off arm is the complete native expression.
            _12241 = SPECTRAL_SKY_AMBIENT
              ? ((((_12134 * _9390) * (_12141 + (_mieScatterColor.x * _12217))) + ((_12229 + (_12220 * _mieScatterColor.x)) * SKY_VAN_DOT(0, _12176, _12177, _12178)) + SKY_RAY_INSCATTER(0, _12176, _12177, _12178, _12013, _12016, _12018, _12195) + SKY_RAY_INSCATTER(0, _12119, _12120, _12121, (_12013 * _9390), (_12016 * _9391), (_12018 * _9392), _12082)) * _8649) + _8621
              : ((((_12134 * _9390) * (_12142 + (_mieScatterColor.x * _12217))) + (((_12229 + (_12013 * _12195)) + (_12220 * _mieScatterColor.x)) * (((_12177 * 0.33951f) + (_12176 * 0.61312f)) + (_12178 * 0.04737f)))) * _8649) + _8621;
            _12250 = SPECTRAL_SKY_AMBIENT
              ? ((((_12135 * _9391) * (_12141 + (_mieScatterColor.y * _12217))) + ((_12229 + (_12220 * _mieScatterColor.y)) * SKY_VAN_DOT(1, _12176, _12177, _12178)) + SKY_RAY_INSCATTER(1, _12176, _12177, _12178, _12013, _12016, _12018, _12195) + SKY_RAY_INSCATTER(1, _12119, _12120, _12121, (_12013 * _9390), (_12016 * _9391), (_12018 * _9392), _12082)) * _8649) + _8620
              : ((((_12135 * _9391) * (_12149 + (_mieScatterColor.y * _12217))) + (((_12229 + (_12016 * _12195)) + (_12220 * _mieScatterColor.y)) * (((_12177 * 0.91636f) + (_12176 * 0.0702f)) + (_12178 * 0.01345f)))) * _8649) + _8620;
            _12259 = SPECTRAL_SKY_AMBIENT
              ? ((((_12136 * _9392) * (_12141 + (_mieScatterColor.z * _12217))) + ((_12229 + (_12220 * _mieScatterColor.z)) * SKY_VAN_DOT(2, _12176, _12177, _12178)) + SKY_RAY_INSCATTER(2, _12176, _12177, _12178, _12013, _12016, _12018, _12195) + SKY_RAY_INSCATTER(2, _12119, _12120, _12121, (_12013 * _9390), (_12016 * _9391), (_12018 * _9392), _12082)) * _8649) + _8619
              : ((((_12136 * _9392) * (_12156 + (_mieScatterColor.z * _12217))) + (((_12229 + (_12018 * _12195)) + (_12220 * _mieScatterColor.z)) * (((_12177 * 0.10958f) + (_12176 * 0.02062f)) + (_12178 * 0.8698f)))) * _8649) + _8619;
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            if (_11991 > 0.001f) {
              _12263 = _cloudPhaseConstFront * 0.5f;
              _12264 = _12263 * _12263;
              _12280 = _12036 * ((_11910 * 0.2f) + _12005);
              _12281 = _12280 + _12027;
              _12288 = exp2((_12039 + _12281) * -1.442695f);
              _12289 = exp2((_12043 + _12281) * -1.442695f);
              _12290 = exp2((_12046 + _12281) * -1.442695f);
              _12308 = ((((1.0f - _12264) * 3.0f) / ((_12264 + 2.0f) * 2.0f)) * 0.07957747f) * ((_8649 * 51.2f) * _11991);
              _12310 = _12076 * _12036;
              _12311 = _12310 * (_12308 * (_8391 / exp2(log2((1.0f - (_cloudPhaseConstFront * _8381)) + _12264) * 1.5f)));
              _12325 = _12280 + _12165;
              _12332 = exp2((_12166 + _12325) * -1.442695f);
              _12333 = exp2((_12169 + _12325) * -1.442695f);
              _12334 = exp2((_12171 + _12325) * -1.442695f);
              _12351 = _12310 * (_12308 * (_8454 / exp2(log2((1.0f - (_cloudPhaseConstFront * _8452)) + _12264) * 1.5f)));
              _12359 = ((_12311 * (((_12289 * 0.33951f) + (_12288 * 0.61312f)) + (_12290 * 0.04737f))) + _12148);
              _12360 = ((_12311 * (((_12289 * 0.91636f) + (_12288 * 0.0702f)) + (_12290 * 0.01345f))) + _12155);
              _12361 = ((_12311 * (((_12289 * 0.10958f) + (_12288 * 0.02062f)) + (_12290 * 0.8698f))) + _12162);
              _12362 = ((_12351 * (((_12333 * 0.33951f) + (_12332 * 0.61312f)) + (_12334 * 0.04737f))) + _12241);
              _12363 = ((_12351 * (((_12333 * 0.91636f) + (_12332 * 0.0702f)) + (_12334 * 0.01345f))) + _12250);
              _12364 = ((_12351 * (((_12333 * 0.10958f) + (_12332 * 0.02062f)) + (_12334 * 0.8698f))) + _12259);
            } else {
              _12359 = _12148;
              _12360 = _12155;
              _12361 = _12162;
              _12362 = _12241;
              _12363 = _12250;
              _12364 = _12259;
            }
            _12365 = saturate(((float)((int)((int)(((float)((uint)((uint)(_9248)))) * 0.33f)))) + _73) * _8380;
            _12378 = _9411;
            _12379 = _9412;
            _12380 = _11991;
            _12381 = _9999;
            _12382 = ((int)(uint)(_9260));
            _12383 = ((int)(uint)((int)(exp2((_12005 * -1.442695f) * _12036) < 0.001f)));
            _12384 = _8642;
            _12385 = select(_9243, _9245, 0);
            _12386 = _9248;
            _12387 = _12362;
            _12388 = _12363;
            _12389 = _12364;
            _12390 = ((_12359 * _12365) + _8618);
            _12391 = ((_12360 * _12365) + _8617);
            _12392 = ((_12361 * _12365) + _8616);
            _12393 = _12001;
            _12394 = _12002;
            _12395 = _12003;
            _12396 = _12004;
          }
          _12397 = (uint)((uint)(_12386)) + (uint)(1);
          if ((_12383 == 0) && ((_12382 != 0) && ((uint)_12397 < (uint)128))) {
            _8612 = _12396;
            _8613 = _12395;
            _8614 = _12394;
            _8615 = _12393;
            _8616 = _12392;
            _8617 = _12391;
            _8618 = _12390;
            _8619 = _12389;
            _8620 = _12388;
            _8621 = _12387;
            _8622 = _12397;
            _8623 = _12385;
            _8624 = _12384;
            _8625 = _12382;
            _8626 = _12381;
            _8627 = _12380;
            _8628 = _12379;
            _8629 = _12378;
            continue;
          }
          _12405 = select((_12383 != 0), 1e+06f, _12395);
          _12410 = _cloudCirrusAltitude + _earthRadius;
          _12414 = _8226 - ((_8223 - (_12410 * _12410)) * _145);
          if (!(_12414 < 0.0f)) {
            _12422 = ((sqrt(_12414) - _8222) / (_138 * 2.0f));
          } else {
            _12422 = -1.0f;
          }
          _12426 = _8226 - ((_8223 - (_earthRadius * _earthRadius)) * _145);
          if (!(_12426 < 0.0f)) {
            _12434 = ((sqrt(_12426) - _8222) / (_138 * 2.0f));
          } else {
            _12434 = -1.0f;
          }
          if ((_12422 >= 0.0f) && (_12434 <= 0.0f)) {
            _12440 = _cloudCirrusScale * 5e-05f;
            _12441 = _12422 * _64;
            _12443 = _12422 * _66;
            _12444 = _12441 + _viewPos.x;
            _12445 = (_12422 * _59) + _viewPos.y;
            _12446 = _12443 + _viewPos.z;
            _12454 = (_12444 * _12440) - (_cloudScroll.y * 0.0003f);
            _12455 = (_12446 * _12440) - (_cloudScroll.x * 0.0003f);
            // [sem: _3__36__0__0__g_texCirrus_SampleBias]
            _12459 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_12454, _12455), -1.0f, int2(0, 0));
            _30[0] = _12459.x;
            _30[1] = _12459.y;
            _30[2] = _12459.z;
            _30[3] = _12459.w;
            _12471 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
            _12475 = sqrt((_12441 * _12441) + (_12443 * _12443));
            if (!(_12475 > _12471)) {
              _12483 = (1.0f - cos((1.5707964f / _12471) * _12475));
            } else {
              _12483 = 1.0f;
            }
            _12484 = _12483 * _cloudCirrusDensity;
            _30[0] = ((_12459.x * _cloudCirrusWeightR) * _12484);
            _30[1] = ((_12484 * _12459.y) * _cloudCirrusWeightG);
            _30[2] = ((_12484 * _12459.z) * _cloudCirrusWeightB);
            _12513 = ((((sin(mad(_12455, -0.6f, (_12454 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_12455, 0.8f, (_12454 * 0.6f)) * 3.03f)) + ((sin(_12454 * 1.5f) * 0.5f) * sin(_12455 * 1.5f))) * 1.6000001f) + 1.5f;
            _12516 = (int)(min(max(_12513, 0.0f), 2.0f));
            _12525 = _30[min((uint)(_12516), 3u)];
            _12528 = (((_30[min((uint)(((int)((int)(_12516) + (int)(1)) % (int)(3))), 3u)]) - _12525) * saturate(_12513 - ((float)((int)(_12516))))) + _12525;
            _12529 = _12445 + _earthRadius;
            _12530 = _12444 * _12444;
            _12532 = _12446 * _12446;
            _12533 = _12532 + _12530;
            _12535 = sqrt(_12533 + (_12529 * _12529));
            _12536 = _12444 / _12535;
            _12537 = _12529 / _12535;
            _12538 = _12446 / _12535;
            _12539 = _12535 - _earthRadius;
            if (_12539 > 0.0f) {
              _12542 = dot(float3(_12536, _12537, _12538), float3(_64, _59, _66));
              _12552 = min(max(_12539, 16.0f), (_atmosphereThickness + -16.0f));
              _12560 = max(_12552, 0.0f);
              _12567 = (-0.0f - sqrt((_12560 + (_earthRadius * 2.0f)) * _12560)) / (_12560 + _earthRadius);
              _12568 = (_12542 > _12567);
              if (_12568) {
                _12590 = ((exp2(log2(saturate((_12542 - _12567) / (1.0f - _12567))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _12590 = ((exp2(log2(saturate((_12567 - _12542) / (_12567 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _12592 = (exp2(log2(saturate((_12552 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _12600 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_12592, _12590, ((1.0f - exp2(-1.1541561f - (dot(float3(_12536, _12537, _12538), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_12568) {
                _12630 = ((exp2(log2(saturate((_12542 - _12567) / (1.0f - _12567))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _12630 = ((exp2(log2(saturate((_12567 - _12542) / (_12567 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _12636 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_12592, _12630, ((1.0f - exp2(-1.1541561f - (dot(float3(_12536, _12537, _12538), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _12644 = _12600.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12645 = _12600.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12646 = _12600.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12647 = (_12636.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12648 = (_12636.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12649 = (_12636.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _12644 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12645 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12646 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12647 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12648 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _12649 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _12658 = max(_12539, 0.01f);
            _12659 = -0.0f - _12658;
            _12668 = exp2((_12659 / _rayleighScaledHeight) * 1.442695f);
            _12669 = exp2((_12659 / _mieScaledHeight) * 1.442695f);
            _12673 = _12444 - _viewPos.x;
            _12674 = _12446 - _viewPos.z;
            _12677 = (_12673 * _12673) + (_12674 * _12674);
            _12678 = sqrt(_12677);
            _12684 = max(((_12678 * _12678) + -400000.0f), 0.0f) * 1e-06f;
            _12685 = _cloudAltitude - _12684;
            _12688 = _cloudDetailScale * 0.004f;
            _12691 = _cloudBaseScale * 0.0004f;
            _12694 = _12445 + _earthRadius;
            _12701 = (((-0.0f - _earthRadius) - _12685) + sqrt(_12533 + (_12694 * _12694))) / _cloudThickness;
            if (!((_12701 < 0.0f) || (_12701 > 1.0f))) {
              _12724 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
              _12725 = _12445 - _12685;
              _12739 = _12688 / _12691;
              _12740 = _12739 * _12691;
              _12742 = _12739 * _12724;
              _12758 = (4.0f - (saturate(max((_12678 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
              _12762 = _12740 * 4.355f;
              _12779 = 1.0f - sqrt(saturate((1.0f - _12701) * 1.4285715f));
              _12797 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_12688 * _12444) - (_12740 * _cloudScroll.x)), ((_12725 * _12688) - _12742), ((_12688 * _12446) - (_12740 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_12758 * _12444) - (_12762 * _cloudScroll.x)), ((_12758 * _12725) - (_12742 * 4.355f)), ((_12758 * _12446) - (_12762 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_12701 * 4.0f) * 0.8f) + 0.2f);
              _12804 = (saturate(((saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_12691 * (_12444 - _cloudScroll.x)), ((_12691 * _12725) - _12724), (_12691 * (_12446 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_12779 * 0.5f), ((_12779 * _12779) * _12779))) * saturate(_12701 * 10.0f)) - _12797) / (1.0f - _12797)) * _cloudAlpha);
            } else {
              _12804 = 0.0f;
            }
            if (_cloudFadeRange > 1e-05f) {
              _12816 = saturate((((1.0f - _cloudNear) * _12678) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _12816 = 1.0f;  // [sem: expr_sat]
            }
            if (!((_8601 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
              _12827 = 0.0f;
              _12828 = 0;
              while(true) {
                _13192 = _12827;
                if (!((((int)((uint)(1) << (_12828 & 31))) & _8601) == 0)) {
                  _12836 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[0].x;
                  _12837 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[1].x;
                  _12838 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[2].x;
                  _12840 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[0].y;
                  _12841 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[1].y;
                  _12842 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[2].y;
                  _12844 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[0].z;
                  _12845 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[1].z;
                  _12846 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[2].z;
                  _12848 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[0].w;
                  _12849 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[1].w;
                  _12850 = __3__37__0__0__g_cloudDensityVolumes[_12828]._relativeWorldToLocal[2].w;
                  _12852 = __3__37__0__0__g_cloudDensityVolumes[_12828]._shapeParameter.x;
                  _12853 = __3__37__0__0__g_cloudDensityVolumes[_12828]._shapeParameter.z;
                  _12854 = __3__37__0__0__g_cloudDensityVolumes[_12828]._shapeParameter.w;
                  _12856 = __3__37__0__0__g_cloudDensityVolumes[_12828]._macroNoiseParameter.x;
                  _12857 = __3__37__0__0__g_cloudDensityVolumes[_12828]._macroNoiseParameter.y;
                  _12858 = __3__37__0__0__g_cloudDensityVolumes[_12828]._macroNoiseParameter.z;
                  _12859 = __3__37__0__0__g_cloudDensityVolumes[_12828]._macroNoiseParameter.w;
                  _12861 = __3__37__0__0__g_cloudDensityVolumes[_12828]._detailNoiseParameter.x;
                  _12862 = __3__37__0__0__g_cloudDensityVolumes[_12828]._detailNoiseParameter.y;
                  _12863 = __3__37__0__0__g_cloudDensityVolumes[_12828]._detailNoiseParameter.z;
                  _12864 = __3__37__0__0__g_cloudDensityVolumes[_12828]._detailNoiseParameter.w;
                  _12866 = __3__37__0__0__g_cloudDensityVolumes[_12828]._modeParameter.x;
                  _12867 = __3__37__0__0__g_cloudDensityVolumes[_12828]._modeParameter.y;
                  _12869 = __3__37__0__0__g_cloudDensityVolumes[_12828]._vortexParameter.x;
                  _12870 = __3__37__0__0__g_cloudDensityVolumes[_12828]._vortexParameter.y;
                  _12871 = __3__37__0__0__g_cloudDensityVolumes[_12828]._vortexParameter.z;
                  _12872 = __3__37__0__0__g_cloudDensityVolumes[_12828]._vortexParameter.w;
                  _12874 = __3__37__0__0__g_cloudDensityVolumes[_12828]._spiralParameter.x;
                  _12875 = __3__37__0__0__g_cloudDensityVolumes[_12828]._spiralParameter.y;
                  _12876 = __3__37__0__0__g_cloudDensityVolumes[_12828]._spiralParameter.z;
                  _12877 = __3__37__0__0__g_cloudDensityVolumes[_12828]._spiralParameter.w;
                  _12879 = __3__37__0__0__g_cloudDensityVolumes[_12828]._animationParameter.x;
                  _12880 = __3__37__0__0__g_cloudDensityVolumes[_12828]._animationParameter.y;
                  _12881 = __3__37__0__0__g_cloudDensityVolumes[_12828]._animationParameter.z;
                  _12882 = __3__37__0__0__g_cloudDensityVolumes[_12828]._animationParameter.w;
                  _12884 = __3__37__0__0__g_cloudDensityVolumes[_12828]._flowParameter.x;
                  _12885 = __3__37__0__0__g_cloudDensityVolumes[_12828]._flowParameter.y;
                  _12886 = __3__37__0__0__g_cloudDensityVolumes[_12828]._flowParameter.z;
                  _12888 = __3__37__0__0__g_cloudDensityVolumes[_12828]._tornadoParameter.x;
                  _12889 = __3__37__0__0__g_cloudDensityVolumes[_12828]._tornadoParameter.y;
                  _12890 = __3__37__0__0__g_cloudDensityVolumes[_12828]._tornadoParameter.z;
                  _12891 = __3__37__0__0__g_cloudDensityVolumes[_12828]._tornadoParameter.w;
                  _12895 = mad(_12844, _12446, mad(_12840, _12445, (_12836 * _12444))) + _12848;
                  _12899 = mad(_12845, _12446, mad(_12841, _12445, (_12837 * _12444))) + _12849;
                  _12903 = mad(_12846, _12446, mad(_12842, _12445, (_12838 * _12444))) + _12850;
                  _12905 = abs(_12899);
                  _12911 = max((abs(_12895) + -0.5f), max((_12905 + -0.5f), (abs(_12903) + -0.5f)));
                  if (!(_12911 >= 0.0f)) {
                    _12914 = __3__37__0__0__g_cloudDensityVolumes[_12828]._shapeParameter.y;
                    _12917 = max((saturate(_12914) * 0.5f), 0.0001f);
                    _12920 = saturate((_12917 + _12911) / _12917);  // [sem: expr_sat]
                    _12925 = 1.0f - ((_12920 * _12920) * (3.0f - (_12920 * 2.0f)));
                    if (!(_12925 <= 0.0f)) {
                      _12934 = sqrt((_12903 * _12903) + (_12895 * _12895)) * 2.0f;
                      _12938 = saturate(1.0f - (_12934 / max(_12870, 0.0001f)));  // [sem: expr_sat]
                      _12939 = _time.x * _12882;
                      _12940 = (_12866 == 1);
                      _12941 = (_12866 == 2);
                      if (_12940) {
                        _13018 = exp2(log2(_12938) * max(_12877, 0.0001f));
                        _13020 = max(_12876, 0.0001f);
                        _13024 = _12899 / (((max(_12875, 0.0001f) - _13020) * _13018) + _13020);
                        _13031 = (((_12938 * _12938) * _12869) * ((_12934 * _12871) + _12899)) - (_12938 * _12939);
                        _13032 = sin(_13031);
                        _13033 = cos(_13031);
                        _13036 = (_13033 * _12895) - (_13032 * _12903);
                        _13039 = (_13033 * _12903) + (_13032 * _12895);
                        if (_12941) {
                          _13041 = 0.0f;
                          _13042 = 1.0f;
                          _13043 = _13018;
                          _13044 = _12938;
                          _13045 = _13036;
                          _13046 = _13024;
                          _13047 = _13039;
                          _13067 = _13042;
                          _13068 = _13043;
                          _13069 = _13044;
                          _13070 = _13045;
                          _13071 = _13046;
                          _13072 = _13047;
                          _13073 = max(_13041, ((_12905 * 2.0f) + -1.0f));
                        } else {
                          _13052 = _13018;
                          _13053 = _13036;
                          _13054 = _13024;
                          _13055 = _13039;
                          _13056 = _13053 * 2.0f;
                          _13057 = _13054 * 2.0f;
                          _13058 = _13055 * 2.0f;
                          _13067 = 1.0f;
                          _13068 = _13052;
                          _13069 = _12938;
                          _13070 = _13053;
                          _13071 = _13054;
                          _13072 = _13055;
                          _13073 = (sqrt(((_13057 * _13057) + (_13056 * _13056)) + (_13058 * _13058)) + -1.0f);
                        }
                      } else {
                        if (_12941) {
                          _12945 = saturate(_12899 + 0.5f);  // [sem: expr_sat]
                          _12951 = max(_12888, 0.0001f);
                          _12954 = ((max(_12889, 0.0001f) - _12951) * exp2(log2(_12945) * max(_12890, 0.0001f))) + _12951;
                          _12956 = atan(_12903 / _12895);
                          _12959 = (_12895 < 0.0f);
                          _12960 = (_12895 == 0.0f);
                          _12961 = (_12903 >= 0.0f);
                          _12962 = (_12903 < 0.0f);
                          _12972 = max(((float)((uint)((uint)(_12867)))), 1.0f);
                          _12973 = _12945 * _12871;
                          _12984 = _12954 * _12864;
                          _12986 = max((_12954 - _12984), 0.0f);
                          _12987 = _12934 - _12986;
                          _12988 = _12986 * (acos(min(max(cos(((((_12973 * -6.2831855f) - _12939) + select((_12960 && _12961), 1.5707964f, select((_12960 && _12962), -1.5707964f, select((_12959 && _12962), (_12956 + -3.1415927f), select((_12959 && _12961), (_12956 + 3.1415927f), _12956))))) * _12972) + _12874), -1.0f), 1.0f)) / _12972);
                          _12993 = _12934 - _12954;
                          _13002 = saturate(1.0f - (_12934 / _12954));  // [sem: expr_sat]
                          _13005 = ((_13002 + _12973) * _12869) - _12939;
                          _13006 = sin(_13005);
                          _13007 = cos(_13005);
                          _13041 = ((saturate(_12872) * (((-0.0f - _12993) - _12984) + sqrt((_12987 * _12987) + (_12988 * _12988)))) + _12993);
                          _13042 = _12954;
                          _13043 = 0.0f;
                          _13044 = _13002;
                          _13045 = ((_13007 * _12895) - (_13006 * _12903));
                          _13046 = _12899;
                          _13047 = ((_13007 * _12903) + (_13006 * _12895));
                          _13067 = _13042;
                          _13068 = _13043;
                          _13069 = _13044;
                          _13070 = _13045;
                          _13071 = _13046;
                          _13072 = _13047;
                          _13073 = max(_13041, ((_12905 * 2.0f) + -1.0f));
                        } else {
                          _13052 = 0.0f;
                          _13053 = _12895;
                          _13054 = _12899;
                          _13055 = _12903;
                          _13056 = _13053 * 2.0f;
                          _13057 = _13054 * 2.0f;
                          _13058 = _13055 * 2.0f;
                          _13067 = 1.0f;
                          _13068 = _13052;
                          _13069 = _12938;
                          _13070 = _13053;
                          _13071 = _13054;
                          _13072 = _13055;
                          _13073 = (sqrt(((_13057 * _13057) + (_13056 * _13056)) + (_13058 * _13058)) + -1.0f);
                        }
                      }
                      if (_12857 > 0.0f) {
                        _13076 = _time.x * _12880;
                        _13080 = max(_12856, 0.0001f);
                        _13098 = (_13073 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_13076 * _12884) + _12858) + (_13080 * _13070)), (((_13076 * _12885) + _12859) + (_13080 * _13071)), (((_13076 * _12886) + _12863) + (_13080 * _13072))), 0.0f)).x) + -0.5f) * _12857));
                      } else {
                        _13098 = _13073;
                      }
                      if (_12940 && (_12872 > 0.0f)) {
                        _13103 = atan(_12903 / _12895);
                        _13106 = (_12895 < 0.0f);
                        _13107 = (_12895 == 0.0f);
                        _13108 = (_12903 >= 0.0f);
                        _13109 = (_12903 < 0.0f);
                        _13131 = (_13098 - (((_12872 * 0.5f) * _13069) * cos(((((_12934 * _12871) - _12939) + select((_13107 && _13108), 1.5707964f, select((_13107 && _13109), -1.5707964f, select((_13106 && _13109), (_13103 + -3.1415927f), select((_13106 && _13108), (_13103 + 3.1415927f), _13103))))) * max(((float)((uint)((uint)(_12867)))), 1.0f)) + _12874)));
                      } else {
                        _13131 = _13098;
                      }
                      if (_12941 && (_12891 > 0.0f)) {
                        _13139 = max(_13131, ((_13067 * _12891) - _12934));
                      } else {
                        _13139 = _13131;
                      }
                      _13141 = max(_12854, 0.0001f);
                      _13147 = saturate((((_12853 - (_13068 * _12879)) + _13139) + _13141) / (_13141 * 2.0f));  // [sem: expr_sat]
                      _13152 = 1.0f - ((_13147 * _13147) * (3.0f - (_13147 * 2.0f)));
                      if (!((_13152 >= 1.0f) || ((_12862 <= 0.0f) || (_13152 <= 0.0f)))) {
                        _13159 = _time.x * _12881;
                        _13163 = max(_12861, 0.0001f);
                        // [sem: expr_sat]
                        _13187 = saturate(_13152 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_13159 * _12884) + _12858) + (_13163 * _13070)), (((_13159 * _12885) + _12859) + (_13163 * _13071)), (((_13159 * _12886) + _12863) + (_13163 * _13072))), 0.0f)).x) * _12862) * saturate(1.0f - abs((_13152 * 2.0f) + -1.0f))));
                      } else {
                        _13187 = _13152;  // [sem: expr_sat]
                      }
                      _13192 = (((_12925 * _12852) * _13187) + _12827);
                    } else {
                      _13192 = _12827;
                    }
                  } else {
                    _13192 = _12827;
                  }
                } else {
                  _13192 = _12827;
                }
                _13193 = (uint)((uint)(_12828)) + (uint)(1);
                if ((uint)_13193 < (uint)_cloudDensityVolumeInfo.x) {
                  _12827 = _13192;
                  _12828 = _13193;
                  continue;
                }
                while(true) {
                  _13198 = saturate(_13192);  // [sem: _13192_sat]
                  break;
                }
                break;
              }
            } else {
              _13198 = 0.0f;  // [sem: _13192_sat]
            }
            _13202 = _12445 - _viewPos.y;
            _13205 = sqrt(_12677 + (_13202 * _13202));
            _13211 = max(1e-06f, (_heightFogScale * 0.0025f));
            _13212 = _13211 * _cloudScroll.x;
            _13213 = _13211 * _cloudScroll.y;
            _13214 = _13211 * _12444;
            _13215 = _13211 * _12445;
            _13216 = _13211 * _12446;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _13237 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13214 * 6.393882f) - (_13212 * 1.871f)), (_13215 * 6.393882f), ((_13216 * 6.393882f) - (_13213 * 1.871f))), 0.0f);
            _13255 = ((((saturate(_13205 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13214 * 0.5127f) - _13212), (_13215 * 0.5127f), ((_13216 * 0.5127f) - _13213)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_12658 - _heightFogBaseline)))) * (((0.5f - _13237.x) * saturate((_13205 + -300.0f) * 0.0025f)) + _13237.x)) * _heightFogDensity;
            _13256 = _12445 - _cloudAltitude;
            _13258 = (_13256 + _12684) / _cloudThickness;
            _13261 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
            _13262 = select(_13261, _sunDirection.x, _moonDirection.x);
            _13263 = select(_13261, _sunDirection.y, _moonDirection.y);
            _13264 = select(_13261, _sunDirection.z, _moonDirection.z);
            _13265 = (_13263 > 0.0f);
            _13274 = ((0.5f - (((float)((int)((int)((int)(uint)(_13265)) - (int)((int)(uint)((int)(_13263 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _12685;
            if (_12445 < _12685) {
              _13277 = dot(float3(0.0f, 1.0f, 0.0f), float3(_13262, _13263, _13264));
              _13283 = select((abs(_13277) < 1e-08f), 1e+08f, ((_13274 - dot(float3(0.0f, 1.0f, 0.0f), float3(_12444, _12445, _12446))) / _13277));
              _13289 = ((_13283 * _13262) + _12444);
              _13290 = _13274;
              _13291 = ((_13283 * _13264) + _12446);
            } else {
              _13289 = _12444;
              _13290 = _12445;
              _13291 = _12446;
            }
            _13306 = _cloudScatteringCoefficient / _distanceScale;
            _13311 = abs(_13263);
            _13313 = saturate(_13311 * 4.0f);  // [sem: expr_sat]
            _13315 = (_13313 * _13313) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_13289 - _viewPos.x) * 5e-05f) + 0.5f), ((_13290 - _cloudAltitude) / _cloudThickness), (((_13291 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _13306);
            _13321 = ((1.0f - _13315) * saturate((_13256 - _cloudThickness) * 0.1f)) + _13315;
            _13324 = -0.0f - _13306;
            _13325 = (log2(_13321) * 0.6931472f) / _13324;
            if ((saturate(_13198 + (_12816 * _12804)) > 0.001f) && ((_13198 > 0.001f) || ((_13258 >= 0.0f) && (_13258 <= 1.0f)))) {
              _13339 = (_12445 - _12685) / _cloudThickness;
              if (((_13339 >= 0.0f) && (_13339 <= 1.0f)) && (_13311 > 0.001f)) {
                _13356 = min(300.0f, (((_12685 - _12445) + select(_13265, _cloudThickness, 0.0f)) / _13263));
              } else {
                _13356 = 300.0f;
              }
              if ((_cloudDensityVolumeInfo.y & 1) == 0) {
                _13481 = 0.0f;
                _13482 = 3.4028235e+38f;
                _13483 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
              } else {
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _13368 = 0;
                  _13369 = 3.4028235e+38f;
                  _13370 = 0.0f;
                  _13371 = 0;
                  while(true) {
                    _13374 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[0].x;
                    _13375 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[1].x;
                    _13376 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[2].x;
                    _13378 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[0].y;
                    _13379 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[1].y;
                    _13380 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[2].y;
                    _13382 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[0].z;
                    _13383 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[1].z;
                    _13384 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[2].z;
                    _13386 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[0].w;
                    _13387 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[1].w;
                    _13388 = __3__37__0__0__g_cloudDensityVolumes[_13368]._relativeWorldToLocal[2].w;
                    _13392 = mad(_13382, _12446, mad(_13378, _12445, (_13374 * _12444))) + _13386;
                    _13396 = mad(_13383, _12446, mad(_13379, _12445, (_13375 * _12444))) + _13387;
                    _13400 = mad(_13384, _12446, mad(_13380, _12445, (_13376 * _12444))) + _13388;
                    _13403 = mad(_13382, _13264, mad(_13378, _13263, (_13374 * _13262)));
                    _13406 = mad(_13383, _13264, mad(_13379, _13263, (_13375 * _13262)));
                    _13409 = mad(_13384, _13264, mad(_13380, _13263, (_13376 * _13262)));
                    _13410 = abs(_13403);
                    if (!(_13410 < 1e-06f) || !(abs(_13392) > 0.5f)) {
                      _13416 = abs(_13406);
                      if (!(_13416 < 1e-06f) || !(abs(_13396) > 0.5f)) {
                        _13422 = abs(_13409);
                        if (!(_13422 < 1e-06f) || !(abs(_13400) > 0.5f)) {
                          _13437 = max(_13410, 1e-06f) * select((_13403 < 0.0f), -1.0f, 1.0f);
                          _13438 = max(_13416, 1e-06f) * select((_13406 < 0.0f), -1.0f, 1.0f);
                          _13439 = max(_13422, 1e-06f) * select((_13409 < 0.0f), -1.0f, 1.0f);
                          _13443 = (-0.5f - _13392) / _13437;
                          _13444 = (-0.5f - _13396) / _13438;
                          _13445 = (-0.5f - _13400) / _13439;
                          _13449 = (0.5f - _13392) / _13437;
                          _13450 = (0.5f - _13396) / _13438;
                          _13451 = (0.5f - _13400) / _13439;
                          _13462 = max(max(max(min(_13443, _13449), min(_13444, _13450)), min(_13445, _13451)), 0.0f);
                          _13463 = min(min(min(max(_13443, _13449), max(_13444, _13450)), max(_13445, _13451)), 3.4028235e+38f);
                          if (!(_13463 < _13462)) {
                            _13472 = min(_13369, _13462);
                            _13473 = max(_13370, _13463);
                            _13474 = ((int)(_13371) | (int)((int)((uint)(1) << (_13368 & 31))));
                          } else {
                            _13472 = _13369;
                            _13473 = _13370;
                            _13474 = _13371;
                          }
                        } else {
                          _13472 = _13369;
                          _13473 = _13370;
                          _13474 = _13371;
                        }
                      } else {
                        _13472 = _13369;
                        _13473 = _13370;
                        _13474 = _13371;
                      }
                    } else {
                      _13472 = _13369;
                      _13473 = _13370;
                      _13474 = _13371;
                    }
                    _13475 = (uint)((uint)(_13368)) + (uint)(1);
                    if ((uint)_13475 < (uint)_cloudDensityVolumeInfo.x) {
                      _13368 = _13475;
                      _13369 = _13472;
                      _13370 = _13473;
                      _13371 = _13474;
                      continue;
                    }
                    _13481 = _13472;
                    _13482 = _13473;
                    _13483 = _13474;
                    break;
                  }
                } else {
                  _13481 = 3.4028235e+38f;
                  _13482 = 0.0f;
                  _13483 = 0;
                }
              }
              _13484 = _13356 * 0.2f;
              _13488 = _13356 * 0.1f;
              _13496 = 0.0f;
              _13497 = _13484;
              _13498 = (_13484 * _13262);
              _13499 = (_13484 * _13263);
              _13500 = (_13484 * _13264);
              _13501 = _13488;
              _13502 = ((_13488 * _13262) + _12444);
              _13503 = ((_13488 * _13263) + _12445);
              _13504 = ((_13488 * _13264) + _12446);
              _13505 = 0;
              while(true) {
                _13509 = select(((_13501 >= _13481) && (_13501 <= _13482)), _13483, 0);
                _13515 = _13502 - _viewPos.x;
                _13516 = _13504 - _viewPos.z;
                _13520 = sqrt((_13515 * _13515) + (_13516 * _13516));
                _13527 = _cloudAltitude - (max(((_13520 * _13520) + -400000.0f), 0.0f) * 1e-06f);
                _13532 = _cloudDetailScale * 0.004f;
                _13535 = _cloudBaseScale * 0.0004f;
                _13540 = _earthRadius + _13503;
                _13549 = ((sqrt(((_13504 * _13504) + (_13502 * _13502)) + (_13540 * _13540)) - _13527) - _earthRadius) / _cloudThickness;
                if (!((_13549 < 0.0f) || (_13549 > 1.0f))) {
                  _13592 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _13593 = _13503 - _13527;
                  _13609 = _13532 / _13535;
                  _13610 = _13609 * _13535;
                  _13612 = _13609 * _13592;
                  _13624 = saturate(max((_13520 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _13628 = (4.0f - (_13624 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _13632 = _13610 * 4.355f;
                  _13651 = 1.0f - sqrt(saturate((1.0f - _13549) * 1.4285715f));
                  // [sem: expr_sat]
                  _13667 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_13502 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_13504 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_13535 * (_13502 - _cloudScroll.x)), ((_13535 * _13593) - _13592), (_13535 * (_13504 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_13651 * 0.5f), ((_13651 * _13651) * _13651))) * saturate(_13549 * 10.0f);
                  _13670 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13628 * _13502) - (_13632 * _cloudScroll.x)), ((_13628 * _13593) - (_13612 * 4.355f)), ((_13628 * _13504) - (_13632 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13532 * _13502) - (_13610 * _cloudScroll.x)), ((_13532 * _13593) - _13612), ((_13532 * _13504) - (_13610 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_13549 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                  _13671 = _13670 * ((_13624 * 0.4f) + 0.1f);
                  _13683 = (saturate((_13667 - _13670) / (1.0f - _13670)) * _cloudAlpha);
                  _13684 = (saturate((_13667 - _13671) / (1.0f - _13671)) * _cloudAlpha);
                } else {
                  _13683 = 0.0f;
                  _13684 = 0.0f;
                }
                if (!((_13509 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                  _13694 = 0.0f;
                  _13695 = 0;
                  while(true) {
                    _14060 = _13694;
                    if (!((((int)((uint)(1) << (_13695 & 31))) & _13509) == 0)) {
                      _13703 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[0].x;
                      _13704 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[1].x;
                      _13705 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[2].x;
                      _13707 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[0].y;
                      _13708 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[1].y;
                      _13709 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[2].y;
                      _13711 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[0].z;
                      _13712 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[1].z;
                      _13713 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[2].z;
                      _13715 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[0].w;
                      _13716 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[1].w;
                      _13717 = __3__37__0__0__g_cloudDensityVolumes[_13695]._relativeWorldToLocal[2].w;
                      _13719 = __3__37__0__0__g_cloudDensityVolumes[_13695]._shapeParameter.x;
                      _13720 = __3__37__0__0__g_cloudDensityVolumes[_13695]._shapeParameter.z;
                      _13721 = __3__37__0__0__g_cloudDensityVolumes[_13695]._shapeParameter.w;
                      _13723 = __3__37__0__0__g_cloudDensityVolumes[_13695]._macroNoiseParameter.x;
                      _13724 = __3__37__0__0__g_cloudDensityVolumes[_13695]._macroNoiseParameter.y;
                      _13725 = __3__37__0__0__g_cloudDensityVolumes[_13695]._macroNoiseParameter.z;
                      _13726 = __3__37__0__0__g_cloudDensityVolumes[_13695]._macroNoiseParameter.w;
                      _13728 = __3__37__0__0__g_cloudDensityVolumes[_13695]._detailNoiseParameter.x;
                      _13729 = __3__37__0__0__g_cloudDensityVolumes[_13695]._detailNoiseParameter.y;
                      _13730 = __3__37__0__0__g_cloudDensityVolumes[_13695]._detailNoiseParameter.z;
                      _13731 = __3__37__0__0__g_cloudDensityVolumes[_13695]._detailNoiseParameter.w;
                      _13733 = __3__37__0__0__g_cloudDensityVolumes[_13695]._modeParameter.x;
                      _13734 = __3__37__0__0__g_cloudDensityVolumes[_13695]._modeParameter.y;
                      _13736 = __3__37__0__0__g_cloudDensityVolumes[_13695]._vortexParameter.x;
                      _13737 = __3__37__0__0__g_cloudDensityVolumes[_13695]._vortexParameter.y;
                      _13738 = __3__37__0__0__g_cloudDensityVolumes[_13695]._vortexParameter.z;
                      _13739 = __3__37__0__0__g_cloudDensityVolumes[_13695]._vortexParameter.w;
                      _13741 = __3__37__0__0__g_cloudDensityVolumes[_13695]._spiralParameter.x;
                      _13742 = __3__37__0__0__g_cloudDensityVolumes[_13695]._spiralParameter.y;
                      _13743 = __3__37__0__0__g_cloudDensityVolumes[_13695]._spiralParameter.z;
                      _13744 = __3__37__0__0__g_cloudDensityVolumes[_13695]._spiralParameter.w;
                      _13746 = __3__37__0__0__g_cloudDensityVolumes[_13695]._animationParameter.x;
                      _13747 = __3__37__0__0__g_cloudDensityVolumes[_13695]._animationParameter.y;
                      _13748 = __3__37__0__0__g_cloudDensityVolumes[_13695]._animationParameter.z;
                      _13749 = __3__37__0__0__g_cloudDensityVolumes[_13695]._animationParameter.w;
                      _13751 = __3__37__0__0__g_cloudDensityVolumes[_13695]._flowParameter.x;
                      _13752 = __3__37__0__0__g_cloudDensityVolumes[_13695]._flowParameter.y;
                      _13753 = __3__37__0__0__g_cloudDensityVolumes[_13695]._flowParameter.z;
                      _13755 = __3__37__0__0__g_cloudDensityVolumes[_13695]._tornadoParameter.x;
                      _13756 = __3__37__0__0__g_cloudDensityVolumes[_13695]._tornadoParameter.y;
                      _13757 = __3__37__0__0__g_cloudDensityVolumes[_13695]._tornadoParameter.z;
                      _13758 = __3__37__0__0__g_cloudDensityVolumes[_13695]._tornadoParameter.w;
                      _13762 = mad(_13711, _13504, mad(_13707, _13503, (_13703 * _13502))) + _13715;
                      _13766 = mad(_13712, _13504, mad(_13708, _13503, (_13704 * _13502))) + _13716;
                      _13770 = mad(_13713, _13504, mad(_13709, _13503, (_13705 * _13502))) + _13717;
                      _13772 = abs(_13766);
                      _13778 = max((abs(_13762) + -0.5f), max((_13772 + -0.5f), (abs(_13770) + -0.5f)));
                      if (!(_13778 >= 0.0f)) {
                        _13781 = __3__37__0__0__g_cloudDensityVolumes[_13695]._shapeParameter.y;
                        _13784 = max((saturate(_13781) * 0.5f), 0.0001f);
                        _13787 = saturate((_13784 + _13778) / _13784);  // [sem: expr_sat]
                        _13792 = 1.0f - ((_13787 * _13787) * (3.0f - (_13787 * 2.0f)));
                        if (!(_13792 <= 0.0f)) {
                          _13801 = sqrt((_13770 * _13770) + (_13762 * _13762)) * 2.0f;
                          _13805 = saturate(1.0f - (_13801 / max(_13737, 0.0001f)));  // [sem: expr_sat]
                          _13806 = _time.x * _13749;
                          _13807 = (_13733 == 1);
                          _13808 = (_13733 == 2);
                          if (_13807) {
                            _13885 = exp2(log2(_13805) * max(_13744, 0.0001f));
                            _13887 = max(_13743, 0.0001f);
                            _13891 = _13766 / (((max(_13742, 0.0001f) - _13887) * _13885) + _13887);
                            _13898 = (((_13805 * _13805) * _13736) * ((_13801 * _13738) + _13766)) - (_13805 * _13806);
                            _13899 = sin(_13898);
                            _13900 = cos(_13898);
                            _13903 = (_13900 * _13762) - (_13899 * _13770);
                            _13906 = (_13900 * _13770) + (_13899 * _13762);
                            if (_13808) {
                              _13908 = 0.0f;
                              _13909 = 1.0f;
                              _13910 = _13885;
                              _13911 = _13805;
                              _13912 = _13903;
                              _13913 = _13891;
                              _13914 = _13906;
                              _13934 = _13909;
                              _13935 = _13910;
                              _13936 = _13911;
                              _13937 = _13912;
                              _13938 = _13913;
                              _13939 = _13914;
                              _13940 = max(_13908, ((_13772 * 2.0f) + -1.0f));
                            } else {
                              _13919 = _13885;
                              _13920 = _13903;
                              _13921 = _13891;
                              _13922 = _13906;
                              _13923 = _13920 * 2.0f;
                              _13924 = _13921 * 2.0f;
                              _13925 = _13922 * 2.0f;
                              _13934 = 1.0f;
                              _13935 = _13919;
                              _13936 = _13805;
                              _13937 = _13920;
                              _13938 = _13921;
                              _13939 = _13922;
                              _13940 = (sqrt(((_13924 * _13924) + (_13923 * _13923)) + (_13925 * _13925)) + -1.0f);
                            }
                          } else {
                            if (_13808) {
                              _13812 = saturate(_13766 + 0.5f);  // [sem: expr_sat]
                              _13818 = max(_13755, 0.0001f);
                              _13821 = ((max(_13756, 0.0001f) - _13818) * exp2(log2(_13812) * max(_13757, 0.0001f))) + _13818;
                              _13823 = atan(_13770 / _13762);
                              _13826 = (_13762 < 0.0f);
                              _13827 = (_13762 == 0.0f);
                              _13828 = (_13770 >= 0.0f);
                              _13829 = (_13770 < 0.0f);
                              _13839 = max(((float)((uint)((uint)(_13734)))), 1.0f);
                              _13840 = _13812 * _13738;
                              _13851 = _13821 * _13731;
                              _13853 = max((_13821 - _13851), 0.0f);
                              _13854 = _13801 - _13853;
                              _13855 = _13853 * (acos(min(max(cos(((((_13840 * -6.2831855f) - _13806) + select((_13827 && _13828), 1.5707964f, select((_13827 && _13829), -1.5707964f, select((_13826 && _13829), (_13823 + -3.1415927f), select((_13826 && _13828), (_13823 + 3.1415927f), _13823))))) * _13839) + _13741), -1.0f), 1.0f)) / _13839);
                              _13860 = _13801 - _13821;
                              _13869 = saturate(1.0f - (_13801 / _13821));  // [sem: expr_sat]
                              _13872 = ((_13869 + _13840) * _13736) - _13806;
                              _13873 = sin(_13872);
                              _13874 = cos(_13872);
                              _13908 = ((saturate(_13739) * (((-0.0f - _13860) - _13851) + sqrt((_13854 * _13854) + (_13855 * _13855)))) + _13860);
                              _13909 = _13821;
                              _13910 = 0.0f;
                              _13911 = _13869;
                              _13912 = ((_13874 * _13762) - (_13873 * _13770));
                              _13913 = _13766;
                              _13914 = ((_13874 * _13770) + (_13873 * _13762));
                              _13934 = _13909;
                              _13935 = _13910;
                              _13936 = _13911;
                              _13937 = _13912;
                              _13938 = _13913;
                              _13939 = _13914;
                              _13940 = max(_13908, ((_13772 * 2.0f) + -1.0f));
                            } else {
                              _13919 = 0.0f;
                              _13920 = _13762;
                              _13921 = _13766;
                              _13922 = _13770;
                              _13923 = _13920 * 2.0f;
                              _13924 = _13921 * 2.0f;
                              _13925 = _13922 * 2.0f;
                              _13934 = 1.0f;
                              _13935 = _13919;
                              _13936 = _13805;
                              _13937 = _13920;
                              _13938 = _13921;
                              _13939 = _13922;
                              _13940 = (sqrt(((_13924 * _13924) + (_13923 * _13923)) + (_13925 * _13925)) + -1.0f);
                            }
                          }
                          if (_13724 > 0.0f) {
                            _13943 = _time.x * _13747;
                            _13947 = max(_13723, 0.0001f);
                            _13965 = (_13940 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_13943 * _13751) + _13725) + (_13947 * _13937)), (((_13943 * _13752) + _13726) + (_13947 * _13938)), (((_13943 * _13753) + _13730) + (_13947 * _13939))), 0.0f)).x) + -0.5f) * _13724));
                          } else {
                            _13965 = _13940;
                          }
                          if (_13807 && (_13739 > 0.0f)) {
                            _13970 = atan(_13770 / _13762);
                            _13973 = (_13762 < 0.0f);
                            _13974 = (_13762 == 0.0f);
                            _13975 = (_13770 >= 0.0f);
                            _13976 = (_13770 < 0.0f);
                            _13998 = (_13965 - (((_13739 * 0.5f) * _13936) * cos(((((_13801 * _13738) - _13806) + select((_13974 && _13975), 1.5707964f, select((_13974 && _13976), -1.5707964f, select((_13973 && _13976), (_13970 + -3.1415927f), select((_13973 && _13975), (_13970 + 3.1415927f), _13970))))) * max(((float)((uint)((uint)(_13734)))), 1.0f)) + _13741)));
                          } else {
                            _13998 = _13965;
                          }
                          if (_13808 && (_13758 > 0.0f)) {
                            _14006 = max(_13998, ((_13934 * _13758) - _13801));
                          } else {
                            _14006 = _13998;
                          }
                          _14008 = max(_13721, 0.0001f);
                          _14014 = saturate((((_13720 - (_13935 * _13746)) + _14006) + _14008) / (_14008 * 2.0f));  // [sem: expr_sat]
                          _14019 = 1.0f - ((_14014 * _14014) * (3.0f - (_14014 * 2.0f)));
                          if (!((_14019 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_13729 <= 0.0f)) || (_14019 <= 0.0f)))) {
                            _14027 = _time.x * _13748;
                            _14031 = max(_13728, 0.0001f);
                            // [sem: expr_sat]
                            _14055 = saturate(_14019 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_14027 * _13751) + _13725) + (_14031 * _13937)), (((_14027 * _13752) + _13726) + (_14031 * _13938)), (((_14027 * _13753) + _13730) + (_14031 * _13939))), 0.0f)).x) * _13729) * saturate(1.0f - abs((_14019 * 2.0f) + -1.0f))));
                          } else {
                            _14055 = _14019;  // [sem: expr_sat]
                          }
                          _14060 = (((_13792 * _13719) * _14055) + _13694);
                        } else {
                          _14060 = _13694;
                        }
                      } else {
                        _14060 = _13694;
                      }
                    } else {
                      _14060 = _13694;
                    }
                    _14061 = (uint)((uint)(_13695)) + (uint)(1);
                    if ((uint)_14061 < (uint)_cloudDensityVolumeInfo.x) {
                      _13694 = _14060;
                      _13695 = _14061;
                      continue;
                    }
                    while(true) {
                      _14066 = saturate(_14060);  // [sem: _14060_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _14066 = 0.0f;  // [sem: _14060_sat]
                }
                _14068 = saturate(_14066 + _13684);  // [sem: expr_sat]
                _14084 = (((exp2((((_13496 * -0.0072134747f) * _13497) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_14066 + _13683) - _14068)) + _14068) * _13497) + _13496;
                _14085 = _13501 + _13497;
                _14086 = _13502 + _13498;
                _14087 = _13503 + _13499;
                _14088 = _13504 + _13500;
                _14089 = _13497 * 1.3f;
                _14090 = _13498 * 1.3f;
                _14091 = _13499 * 1.3f;
                _14092 = _13500 * 1.3f;
                _14093 = (int)(_13505) + (int)(1);
                if (!(_14093 == 6)) {
                  _13496 = _14084;
                  _13497 = _14089;
                  _13498 = _14090;
                  _13499 = _14091;
                  _13500 = _14092;
                  _13501 = _14085;
                  _13502 = _14086;
                  _13503 = _14087;
                  _13504 = _14088;
                  _13505 = _14093;
                  continue;
                }
                _14101 = ((_cloudDensityVolumeInfo.y & 2) != 0);
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _14121 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_12444 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_12446 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _14123 = _12444 + 50.0f;
                _14124 = _12445 + 200.0f;
                _14125 = _14123 - _viewPos.x;
                _14126 = _12446 - _viewPos.z;
                _14130 = sqrt((_14125 * _14125) + (_14126 * _14126));
                _14135 = _cloudAltitude - (max(((_14130 * _14130) + -400000.0f), 0.0f) * 1e-06f);
                _14136 = _earthRadius + _14124;
                _14138 = _14136 * _14136;
                _14144 = ((sqrt(((_14123 * _14123) + _12532) + _14138) - _earthRadius) - _14135) / _cloudThickness;
                if (!((_14144 < 0.0f) || (_14144 > 1.0f))) {
                  _14166 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _14167 = _14124 - _14135;
                  _14183 = _13532 / _13535;
                  _14184 = _14183 * _13535;
                  _14186 = _14183 * _14166;
                  _14198 = saturate(max((_14130 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _14202 = (4.0f - (_14198 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _14206 = _14184 * 4.355f;
                  _14223 = 1.0f - sqrt(saturate((1.0f - _14144) * 1.4285715f));
                  _14245 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13532 * _14123) - (_14184 * _cloudScroll.x)), ((_14167 * _13532) - _14186), ((_13532 * _12446) - (_14184 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_14198 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_14202 * _14123) - (_14206 * _cloudScroll.x)), ((_14202 * _14167) - (_14186 * 4.355f)), ((_14202 * _12446) - (_14206 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_14144 * 4.0f) * 0.8f) + 0.2f);
                  _14252 = (saturate(((saturate(saturate(((_14121.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_13535 * (_14123 - _cloudScroll.x)), ((_14167 * _13535) - _14166), (_13535 * (_12446 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_14223 * 0.5f), ((_14223 * _14223) * _14223))) * saturate(_14144 * 10.0f)) - _14245) / (1.0f - _14245)) * _cloudAlpha);
                } else {
                  _14252 = 0.0f;
                }
                _14254 = (_cloudFadeRange > 1e-05f);
                if (_14254) {
                  _14264 = saturate(((_14130 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _14264 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _14272 = 0.0f;
                  _14273 = 0;
                  while(true) {
                    _14636 = _14272;
                    if (!((uint)(_14273 & 16) > (uint)15)) {
                      _14279 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[0].x;
                      _14280 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[1].x;
                      _14281 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[2].x;
                      _14283 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[0].y;
                      _14284 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[1].y;
                      _14285 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[2].y;
                      _14287 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[0].z;
                      _14288 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[1].z;
                      _14289 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[2].z;
                      _14291 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[0].w;
                      _14292 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[1].w;
                      _14293 = __3__37__0__0__g_cloudDensityVolumes[_14273]._relativeWorldToLocal[2].w;
                      _14295 = __3__37__0__0__g_cloudDensityVolumes[_14273]._shapeParameter.x;
                      _14296 = __3__37__0__0__g_cloudDensityVolumes[_14273]._shapeParameter.z;
                      _14297 = __3__37__0__0__g_cloudDensityVolumes[_14273]._shapeParameter.w;
                      _14299 = __3__37__0__0__g_cloudDensityVolumes[_14273]._macroNoiseParameter.x;
                      _14300 = __3__37__0__0__g_cloudDensityVolumes[_14273]._macroNoiseParameter.y;
                      _14301 = __3__37__0__0__g_cloudDensityVolumes[_14273]._macroNoiseParameter.z;
                      _14302 = __3__37__0__0__g_cloudDensityVolumes[_14273]._macroNoiseParameter.w;
                      _14304 = __3__37__0__0__g_cloudDensityVolumes[_14273]._detailNoiseParameter.x;
                      _14305 = __3__37__0__0__g_cloudDensityVolumes[_14273]._detailNoiseParameter.y;
                      _14306 = __3__37__0__0__g_cloudDensityVolumes[_14273]._detailNoiseParameter.z;
                      _14307 = __3__37__0__0__g_cloudDensityVolumes[_14273]._detailNoiseParameter.w;
                      _14309 = __3__37__0__0__g_cloudDensityVolumes[_14273]._modeParameter.x;
                      _14310 = __3__37__0__0__g_cloudDensityVolumes[_14273]._modeParameter.y;
                      _14312 = __3__37__0__0__g_cloudDensityVolumes[_14273]._vortexParameter.x;
                      _14313 = __3__37__0__0__g_cloudDensityVolumes[_14273]._vortexParameter.y;
                      _14314 = __3__37__0__0__g_cloudDensityVolumes[_14273]._vortexParameter.z;
                      _14315 = __3__37__0__0__g_cloudDensityVolumes[_14273]._vortexParameter.w;
                      _14317 = __3__37__0__0__g_cloudDensityVolumes[_14273]._spiralParameter.x;
                      _14318 = __3__37__0__0__g_cloudDensityVolumes[_14273]._spiralParameter.y;
                      _14319 = __3__37__0__0__g_cloudDensityVolumes[_14273]._spiralParameter.z;
                      _14320 = __3__37__0__0__g_cloudDensityVolumes[_14273]._spiralParameter.w;
                      _14322 = __3__37__0__0__g_cloudDensityVolumes[_14273]._animationParameter.x;
                      _14323 = __3__37__0__0__g_cloudDensityVolumes[_14273]._animationParameter.y;
                      _14324 = __3__37__0__0__g_cloudDensityVolumes[_14273]._animationParameter.z;
                      _14325 = __3__37__0__0__g_cloudDensityVolumes[_14273]._animationParameter.w;
                      _14327 = __3__37__0__0__g_cloudDensityVolumes[_14273]._flowParameter.x;
                      _14328 = __3__37__0__0__g_cloudDensityVolumes[_14273]._flowParameter.y;
                      _14329 = __3__37__0__0__g_cloudDensityVolumes[_14273]._flowParameter.z;
                      _14331 = __3__37__0__0__g_cloudDensityVolumes[_14273]._tornadoParameter.x;
                      _14332 = __3__37__0__0__g_cloudDensityVolumes[_14273]._tornadoParameter.y;
                      _14333 = __3__37__0__0__g_cloudDensityVolumes[_14273]._tornadoParameter.z;
                      _14334 = __3__37__0__0__g_cloudDensityVolumes[_14273]._tornadoParameter.w;
                      _14338 = mad(_14287, _12446, mad(_14283, _14124, (_14279 * _14123))) + _14291;
                      _14342 = mad(_14288, _12446, mad(_14284, _14124, (_14280 * _14123))) + _14292;
                      _14346 = mad(_14289, _12446, mad(_14285, _14124, (_14281 * _14123))) + _14293;
                      _14348 = abs(_14342);
                      _14354 = max((abs(_14338) + -0.5f), max((_14348 + -0.5f), (abs(_14346) + -0.5f)));
                      if (!(_14354 >= 0.0f)) {
                        _14357 = __3__37__0__0__g_cloudDensityVolumes[_14273]._shapeParameter.y;
                        _14360 = max((saturate(_14357) * 0.5f), 0.0001f);
                        _14363 = saturate((_14360 + _14354) / _14360);  // [sem: expr_sat]
                        _14368 = 1.0f - ((_14363 * _14363) * (3.0f - (_14363 * 2.0f)));
                        if (!(_14368 <= 0.0f)) {
                          _14377 = sqrt((_14346 * _14346) + (_14338 * _14338)) * 2.0f;
                          _14381 = saturate(1.0f - (_14377 / max(_14313, 0.0001f)));  // [sem: expr_sat]
                          _14382 = _time.x * _14325;
                          _14383 = (_14309 == 1);
                          _14384 = (_14309 == 2);
                          if (_14383) {
                            _14461 = exp2(log2(_14381) * max(_14320, 0.0001f));
                            _14463 = max(_14319, 0.0001f);
                            _14467 = _14342 / (((max(_14318, 0.0001f) - _14463) * _14461) + _14463);
                            _14474 = (((_14381 * _14381) * _14312) * ((_14377 * _14314) + _14342)) - (_14381 * _14382);
                            _14475 = sin(_14474);
                            _14476 = cos(_14474);
                            _14479 = (_14476 * _14338) - (_14475 * _14346);
                            _14482 = (_14476 * _14346) + (_14475 * _14338);
                            if (_14384) {
                              _14484 = 0.0f;
                              _14485 = 1.0f;
                              _14486 = _14461;
                              _14487 = _14381;
                              _14488 = _14479;
                              _14489 = _14467;
                              _14490 = _14482;
                              _14510 = _14485;
                              _14511 = _14486;
                              _14512 = _14487;
                              _14513 = _14488;
                              _14514 = _14489;
                              _14515 = _14490;
                              _14516 = max(_14484, ((_14348 * 2.0f) + -1.0f));
                            } else {
                              _14495 = _14461;
                              _14496 = _14479;
                              _14497 = _14467;
                              _14498 = _14482;
                              _14499 = _14496 * 2.0f;
                              _14500 = _14497 * 2.0f;
                              _14501 = _14498 * 2.0f;
                              _14510 = 1.0f;
                              _14511 = _14495;
                              _14512 = _14381;
                              _14513 = _14496;
                              _14514 = _14497;
                              _14515 = _14498;
                              _14516 = (sqrt(((_14500 * _14500) + (_14499 * _14499)) + (_14501 * _14501)) + -1.0f);
                            }
                          } else {
                            if (_14384) {
                              _14388 = saturate(_14342 + 0.5f);  // [sem: expr_sat]
                              _14394 = max(_14331, 0.0001f);
                              _14397 = ((max(_14332, 0.0001f) - _14394) * exp2(log2(_14388) * max(_14333, 0.0001f))) + _14394;
                              _14399 = atan(_14346 / _14338);
                              _14402 = (_14338 < 0.0f);
                              _14403 = (_14338 == 0.0f);
                              _14404 = (_14346 >= 0.0f);
                              _14405 = (_14346 < 0.0f);
                              _14415 = max(((float)((uint)((uint)(_14310)))), 1.0f);
                              _14416 = _14388 * _14314;
                              _14427 = _14397 * _14307;
                              _14429 = max((_14397 - _14427), 0.0f);
                              _14430 = _14377 - _14429;
                              _14431 = _14429 * (acos(min(max(cos(((((_14416 * -6.2831855f) - _14382) + select((_14403 && _14404), 1.5707964f, select((_14403 && _14405), -1.5707964f, select((_14402 && _14405), (_14399 + -3.1415927f), select((_14402 && _14404), (_14399 + 3.1415927f), _14399))))) * _14415) + _14317), -1.0f), 1.0f)) / _14415);
                              _14436 = _14377 - _14397;
                              _14445 = saturate(1.0f - (_14377 / _14397));  // [sem: expr_sat]
                              _14448 = ((_14445 + _14416) * _14312) - _14382;
                              _14449 = sin(_14448);
                              _14450 = cos(_14448);
                              _14484 = ((saturate(_14315) * (((-0.0f - _14436) - _14427) + sqrt((_14430 * _14430) + (_14431 * _14431)))) + _14436);
                              _14485 = _14397;
                              _14486 = 0.0f;
                              _14487 = _14445;
                              _14488 = ((_14450 * _14338) - (_14449 * _14346));
                              _14489 = _14342;
                              _14490 = ((_14450 * _14346) + (_14449 * _14338));
                              _14510 = _14485;
                              _14511 = _14486;
                              _14512 = _14487;
                              _14513 = _14488;
                              _14514 = _14489;
                              _14515 = _14490;
                              _14516 = max(_14484, ((_14348 * 2.0f) + -1.0f));
                            } else {
                              _14495 = 0.0f;
                              _14496 = _14338;
                              _14497 = _14342;
                              _14498 = _14346;
                              _14499 = _14496 * 2.0f;
                              _14500 = _14497 * 2.0f;
                              _14501 = _14498 * 2.0f;
                              _14510 = 1.0f;
                              _14511 = _14495;
                              _14512 = _14381;
                              _14513 = _14496;
                              _14514 = _14497;
                              _14515 = _14498;
                              _14516 = (sqrt(((_14500 * _14500) + (_14499 * _14499)) + (_14501 * _14501)) + -1.0f);
                            }
                          }
                          if (_14300 > 0.0f) {
                            _14519 = _time.x * _14323;
                            _14523 = max(_14299, 0.0001f);
                            _14541 = (_14516 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_14519 * _14327) + _14301) + (_14523 * _14513)), (((_14519 * _14328) + _14302) + (_14523 * _14514)), (((_14519 * _14329) + _14306) + (_14523 * _14515))), 0.0f)).x) + -0.5f) * _14300));
                          } else {
                            _14541 = _14516;
                          }
                          if (_14383 && (_14315 > 0.0f)) {
                            _14546 = atan(_14346 / _14338);
                            _14549 = (_14338 < 0.0f);
                            _14550 = (_14338 == 0.0f);
                            _14551 = (_14346 >= 0.0f);
                            _14552 = (_14346 < 0.0f);
                            _14574 = (_14541 - (((_14315 * 0.5f) * _14512) * cos(((((_14377 * _14314) - _14382) + select((_14550 && _14551), 1.5707964f, select((_14550 && _14552), -1.5707964f, select((_14549 && _14552), (_14546 + -3.1415927f), select((_14549 && _14551), (_14546 + 3.1415927f), _14546))))) * max(((float)((uint)((uint)(_14310)))), 1.0f)) + _14317)));
                          } else {
                            _14574 = _14541;
                          }
                          if (_14384 && (_14334 > 0.0f)) {
                            _14582 = max(_14574, ((_14510 * _14334) - _14377));
                          } else {
                            _14582 = _14574;
                          }
                          _14584 = max(_14297, 0.0001f);
                          _14590 = saturate((((_14296 - (_14511 * _14322)) + _14582) + _14584) / (_14584 * 2.0f));  // [sem: expr_sat]
                          _14595 = 1.0f - ((_14590 * _14590) * (3.0f - (_14590 * 2.0f)));
                          if (!((_14595 >= 1.0f) || ((_14101 || (_14305 <= 0.0f)) || (_14595 <= 0.0f)))) {
                            _14603 = _time.x * _14324;
                            _14607 = max(_14304, 0.0001f);
                            // [sem: expr_sat]
                            _14631 = saturate(_14595 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_14603 * _14327) + _14301) + (_14607 * _14513)), (((_14603 * _14328) + _14302) + (_14607 * _14514)), (((_14603 * _14329) + _14306) + (_14607 * _14515))), 0.0f)).x) * _14305) * saturate(1.0f - abs((_14595 * 2.0f) + -1.0f))));
                          } else {
                            _14631 = _14595;  // [sem: expr_sat]
                          }
                          _14636 = (((_14368 * _14295) * _14631) + _14272);
                        } else {
                          _14636 = _14272;
                        }
                      } else {
                        _14636 = _14272;
                      }
                    } else {
                      _14636 = _14272;
                    }
                    _14637 = (uint)((uint)(_14273)) + (uint)(1);
                    if ((uint)_14637 < (uint)_cloudDensityVolumeInfo.x) {
                      _14272 = _14636;
                      _14273 = _14637;
                      continue;
                    }
                    while(true) {
                      _14642 = saturate(_14636);  // [sem: _14636_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _14642 = 0.0f;  // [sem: _14636_sat]
                }
                _14645 = _12446 + -50.0f;
                _14646 = _12444 - _viewPos.x;
                _14647 = _14645 - _viewPos.z;
                _14651 = sqrt((_14646 * _14646) + (_14647 * _14647));
                _14656 = _cloudAltitude - (max(((_14651 * _14651) + -400000.0f), 0.0f) * 1e-06f);
                _14663 = ((sqrt(((_14645 * _14645) + _12530) + _14138) - _earthRadius) - _14656) / _cloudThickness;
                if (!((_14663 < 0.0f) || (_14663 > 1.0f))) {
                  _14685 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _14686 = _14124 - _14656;
                  _14702 = _13532 / _13535;
                  _14703 = _14702 * _13535;
                  _14705 = _14702 * _14685;
                  _14717 = saturate(max((_14651 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _14721 = (4.0f - (_14717 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _14725 = _14703 * 4.355f;
                  _14742 = 1.0f - sqrt(saturate((1.0f - _14663) * 1.4285715f));
                  _14764 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_13532 * _12444) - (_14703 * _cloudScroll.x)), ((_14686 * _13532) - _14705), ((_13532 * _14645) - (_14703 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_14717 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_14721 * _12444) - (_14725 * _cloudScroll.x)), ((_14721 * _14686) - (_14705 * 4.355f)), ((_14721 * _14645) - (_14725 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_14663 * 4.0f) * 0.8f) + 0.2f);
                  _14771 = (saturate(((saturate(saturate(((_14121.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_13535 * (_12444 - _cloudScroll.x)), ((_14686 * _13535) - _14685), (_13535 * (_14645 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_14742 * 0.5f), ((_14742 * _14742) * _14742))) * saturate(_14663 * 10.0f)) - _14764) / (1.0f - _14764)) * _cloudAlpha);
                } else {
                  _14771 = 0.0f;
                }
                if (_14254) {
                  _14781 = saturate(((_14651 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _14781 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _14790 = 0.0f;
                  _14791 = 0;
                  while(true) {
                    _15154 = _14790;
                    if (!((uint)(_14791 & 16) > (uint)15)) {
                      _14797 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[0].x;
                      _14798 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[1].x;
                      _14799 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[2].x;
                      _14801 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[0].y;
                      _14802 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[1].y;
                      _14803 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[2].y;
                      _14805 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[0].z;
                      _14806 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[1].z;
                      _14807 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[2].z;
                      _14809 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[0].w;
                      _14810 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[1].w;
                      _14811 = __3__37__0__0__g_cloudDensityVolumes[_14791]._relativeWorldToLocal[2].w;
                      _14813 = __3__37__0__0__g_cloudDensityVolumes[_14791]._shapeParameter.x;
                      _14814 = __3__37__0__0__g_cloudDensityVolumes[_14791]._shapeParameter.z;
                      _14815 = __3__37__0__0__g_cloudDensityVolumes[_14791]._shapeParameter.w;
                      _14817 = __3__37__0__0__g_cloudDensityVolumes[_14791]._macroNoiseParameter.x;
                      _14818 = __3__37__0__0__g_cloudDensityVolumes[_14791]._macroNoiseParameter.y;
                      _14819 = __3__37__0__0__g_cloudDensityVolumes[_14791]._macroNoiseParameter.z;
                      _14820 = __3__37__0__0__g_cloudDensityVolumes[_14791]._macroNoiseParameter.w;
                      _14822 = __3__37__0__0__g_cloudDensityVolumes[_14791]._detailNoiseParameter.x;
                      _14823 = __3__37__0__0__g_cloudDensityVolumes[_14791]._detailNoiseParameter.y;
                      _14824 = __3__37__0__0__g_cloudDensityVolumes[_14791]._detailNoiseParameter.z;
                      _14825 = __3__37__0__0__g_cloudDensityVolumes[_14791]._detailNoiseParameter.w;
                      _14827 = __3__37__0__0__g_cloudDensityVolumes[_14791]._modeParameter.x;
                      _14828 = __3__37__0__0__g_cloudDensityVolumes[_14791]._modeParameter.y;
                      _14830 = __3__37__0__0__g_cloudDensityVolumes[_14791]._vortexParameter.x;
                      _14831 = __3__37__0__0__g_cloudDensityVolumes[_14791]._vortexParameter.y;
                      _14832 = __3__37__0__0__g_cloudDensityVolumes[_14791]._vortexParameter.z;
                      _14833 = __3__37__0__0__g_cloudDensityVolumes[_14791]._vortexParameter.w;
                      _14835 = __3__37__0__0__g_cloudDensityVolumes[_14791]._spiralParameter.x;
                      _14836 = __3__37__0__0__g_cloudDensityVolumes[_14791]._spiralParameter.y;
                      _14837 = __3__37__0__0__g_cloudDensityVolumes[_14791]._spiralParameter.z;
                      _14838 = __3__37__0__0__g_cloudDensityVolumes[_14791]._spiralParameter.w;
                      _14840 = __3__37__0__0__g_cloudDensityVolumes[_14791]._animationParameter.x;
                      _14841 = __3__37__0__0__g_cloudDensityVolumes[_14791]._animationParameter.y;
                      _14842 = __3__37__0__0__g_cloudDensityVolumes[_14791]._animationParameter.z;
                      _14843 = __3__37__0__0__g_cloudDensityVolumes[_14791]._animationParameter.w;
                      _14845 = __3__37__0__0__g_cloudDensityVolumes[_14791]._flowParameter.x;
                      _14846 = __3__37__0__0__g_cloudDensityVolumes[_14791]._flowParameter.y;
                      _14847 = __3__37__0__0__g_cloudDensityVolumes[_14791]._flowParameter.z;
                      _14849 = __3__37__0__0__g_cloudDensityVolumes[_14791]._tornadoParameter.x;
                      _14850 = __3__37__0__0__g_cloudDensityVolumes[_14791]._tornadoParameter.y;
                      _14851 = __3__37__0__0__g_cloudDensityVolumes[_14791]._tornadoParameter.z;
                      _14852 = __3__37__0__0__g_cloudDensityVolumes[_14791]._tornadoParameter.w;
                      _14856 = mad(_14805, _14645, mad(_14801, _14124, (_14797 * _12444))) + _14809;
                      _14860 = mad(_14806, _14645, mad(_14802, _14124, (_14798 * _12444))) + _14810;
                      _14864 = mad(_14807, _14645, mad(_14803, _14124, (_14799 * _12444))) + _14811;
                      _14866 = abs(_14860);
                      _14872 = max((abs(_14856) + -0.5f), max((_14866 + -0.5f), (abs(_14864) + -0.5f)));
                      if (!(_14872 >= 0.0f)) {
                        _14875 = __3__37__0__0__g_cloudDensityVolumes[_14791]._shapeParameter.y;
                        _14878 = max((saturate(_14875) * 0.5f), 0.0001f);
                        _14881 = saturate((_14878 + _14872) / _14878);  // [sem: expr_sat]
                        _14886 = 1.0f - ((_14881 * _14881) * (3.0f - (_14881 * 2.0f)));
                        if (!(_14886 <= 0.0f)) {
                          _14895 = sqrt((_14864 * _14864) + (_14856 * _14856)) * 2.0f;
                          _14899 = saturate(1.0f - (_14895 / max(_14831, 0.0001f)));  // [sem: expr_sat]
                          _14900 = _time.x * _14843;
                          _14901 = (_14827 == 1);
                          _14902 = (_14827 == 2);
                          if (_14901) {
                            _14979 = exp2(log2(_14899) * max(_14838, 0.0001f));
                            _14981 = max(_14837, 0.0001f);
                            _14985 = _14860 / (((max(_14836, 0.0001f) - _14981) * _14979) + _14981);
                            _14992 = (((_14899 * _14899) * _14830) * ((_14895 * _14832) + _14860)) - (_14899 * _14900);
                            _14993 = sin(_14992);
                            _14994 = cos(_14992);
                            _14997 = (_14994 * _14856) - (_14993 * _14864);
                            _15000 = (_14994 * _14864) + (_14993 * _14856);
                            if (_14902) {
                              _15002 = 0.0f;
                              _15003 = 1.0f;
                              _15004 = _14979;
                              _15005 = _14899;
                              _15006 = _14997;
                              _15007 = _14985;
                              _15008 = _15000;
                              _15028 = _15003;
                              _15029 = _15004;
                              _15030 = _15005;
                              _15031 = _15006;
                              _15032 = _15007;
                              _15033 = _15008;
                              _15034 = max(_15002, ((_14866 * 2.0f) + -1.0f));
                            } else {
                              _15013 = _14979;
                              _15014 = _14997;
                              _15015 = _14985;
                              _15016 = _15000;
                              _15017 = _15014 * 2.0f;
                              _15018 = _15015 * 2.0f;
                              _15019 = _15016 * 2.0f;
                              _15028 = 1.0f;
                              _15029 = _15013;
                              _15030 = _14899;
                              _15031 = _15014;
                              _15032 = _15015;
                              _15033 = _15016;
                              _15034 = (sqrt(((_15018 * _15018) + (_15017 * _15017)) + (_15019 * _15019)) + -1.0f);
                            }
                          } else {
                            if (_14902) {
                              _14906 = saturate(_14860 + 0.5f);  // [sem: expr_sat]
                              _14912 = max(_14849, 0.0001f);
                              _14915 = ((max(_14850, 0.0001f) - _14912) * exp2(log2(_14906) * max(_14851, 0.0001f))) + _14912;
                              _14917 = atan(_14864 / _14856);
                              _14920 = (_14856 < 0.0f);
                              _14921 = (_14856 == 0.0f);
                              _14922 = (_14864 >= 0.0f);
                              _14923 = (_14864 < 0.0f);
                              _14933 = max(((float)((uint)((uint)(_14828)))), 1.0f);
                              _14934 = _14906 * _14832;
                              _14945 = _14915 * _14825;
                              _14947 = max((_14915 - _14945), 0.0f);
                              _14948 = _14895 - _14947;
                              _14949 = _14947 * (acos(min(max(cos(((((_14934 * -6.2831855f) - _14900) + select((_14921 && _14922), 1.5707964f, select((_14921 && _14923), -1.5707964f, select((_14920 && _14923), (_14917 + -3.1415927f), select((_14920 && _14922), (_14917 + 3.1415927f), _14917))))) * _14933) + _14835), -1.0f), 1.0f)) / _14933);
                              _14954 = _14895 - _14915;
                              _14963 = saturate(1.0f - (_14895 / _14915));  // [sem: expr_sat]
                              _14966 = ((_14963 + _14934) * _14830) - _14900;
                              _14967 = sin(_14966);
                              _14968 = cos(_14966);
                              _15002 = ((saturate(_14833) * (((-0.0f - _14954) - _14945) + sqrt((_14948 * _14948) + (_14949 * _14949)))) + _14954);
                              _15003 = _14915;
                              _15004 = 0.0f;
                              _15005 = _14963;
                              _15006 = ((_14968 * _14856) - (_14967 * _14864));
                              _15007 = _14860;
                              _15008 = ((_14968 * _14864) + (_14967 * _14856));
                              _15028 = _15003;
                              _15029 = _15004;
                              _15030 = _15005;
                              _15031 = _15006;
                              _15032 = _15007;
                              _15033 = _15008;
                              _15034 = max(_15002, ((_14866 * 2.0f) + -1.0f));
                            } else {
                              _15013 = 0.0f;
                              _15014 = _14856;
                              _15015 = _14860;
                              _15016 = _14864;
                              _15017 = _15014 * 2.0f;
                              _15018 = _15015 * 2.0f;
                              _15019 = _15016 * 2.0f;
                              _15028 = 1.0f;
                              _15029 = _15013;
                              _15030 = _14899;
                              _15031 = _15014;
                              _15032 = _15015;
                              _15033 = _15016;
                              _15034 = (sqrt(((_15018 * _15018) + (_15017 * _15017)) + (_15019 * _15019)) + -1.0f);
                            }
                          }
                          if (_14818 > 0.0f) {
                            _15037 = _time.x * _14841;
                            _15041 = max(_14817, 0.0001f);
                            _15059 = (_15034 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_15037 * _14845) + _14819) + (_15041 * _15031)), (((_15037 * _14846) + _14820) + (_15041 * _15032)), (((_15037 * _14847) + _14824) + (_15041 * _15033))), 0.0f)).x) + -0.5f) * _14818));
                          } else {
                            _15059 = _15034;
                          }
                          if (_14901 && (_14833 > 0.0f)) {
                            _15064 = atan(_14864 / _14856);
                            _15067 = (_14856 < 0.0f);
                            _15068 = (_14856 == 0.0f);
                            _15069 = (_14864 >= 0.0f);
                            _15070 = (_14864 < 0.0f);
                            _15092 = (_15059 - (((_14833 * 0.5f) * _15030) * cos(((((_14895 * _14832) - _14900) + select((_15068 && _15069), 1.5707964f, select((_15068 && _15070), -1.5707964f, select((_15067 && _15070), (_15064 + -3.1415927f), select((_15067 && _15069), (_15064 + 3.1415927f), _15064))))) * max(((float)((uint)((uint)(_14828)))), 1.0f)) + _14835)));
                          } else {
                            _15092 = _15059;
                          }
                          if (_14902 && (_14852 > 0.0f)) {
                            _15100 = max(_15092, ((_15028 * _14852) - _14895));
                          } else {
                            _15100 = _15092;
                          }
                          _15102 = max(_14815, 0.0001f);
                          _15108 = saturate((((_14814 - (_15029 * _14840)) + _15100) + _15102) / (_15102 * 2.0f));  // [sem: expr_sat]
                          _15113 = 1.0f - ((_15108 * _15108) * (3.0f - (_15108 * 2.0f)));
                          if (!((_15113 >= 1.0f) || ((_14101 || (_14823 <= 0.0f)) || (_15113 <= 0.0f)))) {
                            _15121 = _time.x * _14842;
                            _15125 = max(_14822, 0.0001f);
                            // [sem: expr_sat]
                            _15149 = saturate(_15113 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_15121 * _14845) + _14819) + (_15125 * _15031)), (((_15121 * _14846) + _14820) + (_15125 * _15032)), (((_15121 * _14847) + _14824) + (_15125 * _15033))), 0.0f)).x) * _14823) * saturate(1.0f - abs((_15113 * 2.0f) + -1.0f))));
                          } else {
                            _15149 = _15113;  // [sem: expr_sat]
                          }
                          _15154 = (((_14886 * _14813) * _15149) + _14790);
                        } else {
                          _15154 = _14790;
                        }
                      } else {
                        _15154 = _14790;
                      }
                    } else {
                      _15154 = _14790;
                    }
                    _15155 = (uint)((uint)(_14791)) + (uint)(1);
                    if ((uint)_15155 < (uint)_cloudDensityVolumeInfo.x) {
                      _14790 = _15154;
                      _14791 = _15155;
                      continue;
                    }
                    while(true) {
                      _15160 = saturate(_15154);  // [sem: _15154_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _15160 = 0.0f;  // [sem: _15154_sat]
                }
                _15167 = max(_13325, (_14084 * _distanceScale));
                _15168 = ((_distanceScale * 20.0f) * (saturate(_15160 + (_14781 * _14771)) + saturate(_14642 + (_14264 * _14252))));
                break;
              }
            } else {
              _15167 = _13325;
              _15168 = ((log2(max(_13321, 0.5f)) * 0.6931472f) / _13324);
            }
            _15169 = dot(float3(_12536, _12537, _12538), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _15173 = min(max(_12658, 16.0f), (_atmosphereThickness + -16.0f));
            _15181 = max(_15173, 0.0f);
            _15190 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _15181) * _15181)) / (_earthRadius + _15181);
            if (_15169 > _15190) {
              _15213 = ((exp2(log2(saturate((_15169 - _15190) / (1.0f - _15190))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _15213 = ((exp2(log2(saturate((_15190 - _15169) / (_15190 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _15215 = (exp2(log2(saturate((_15173 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _15218 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_15215, _15213), 0.0f);
            _15221 = dot(float3(_12536, _12537, _12538), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_15221 > _15190) {
              _15244 = ((exp2(log2(saturate((_15221 - _15190) / (1.0f - _15190))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _15244 = ((exp2(log2(saturate((_15190 - _15221) / (_15190 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _15245 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_15215, _15244), 0.0f);
            _15256 = ((_12668 + _12378) * 12.5f) + _12393;
            _15257 = ((_12669 + _12379) * 12.5f) + _12394;
            _15258 = ((_12528 + _12380) * 12.5f) + _12405;
            _15259 = ((_13255 + _12381) * 12.5f) + _12396;
            _15260 = _15259 + _15258;
            _15261 = _15218.x + _15256;
            _15268 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _15271 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _15273 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _15280 = _mieAerosolDensity * 2e-05f;
            _15281 = _15280 * (_mieAerosolAbsorption + 1.0f);
            _15291 = _cloudScatteringCoefficient / _distanceScale;
            _15292 = _15291 * (_15167 + _15260);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _15293 = SkySpectralRayleighBeta(_rayleighScatteringColor).r + (_ozoneRatio * SKY_OZONE_1);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _15295 = _15292 + (_15281 * (_15218.y + _15257));
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _15297 = SkySpectralRayleighBeta(_rayleighScatteringColor).g + (_ozoneRatio * SKY_OZONE_2);
            _15300 = SkySpectralRayleighBeta(_rayleighScatteringColor).b + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _15306 = exp2(((_15293 * _15261) + _15295) * -1.442695f);
            _15307 = exp2(((_15297 * _15261) + _15295) * -1.442695f);
            _15308 = exp2(((_15300 * _15261) + _15295) * -1.442695f);
            _15324 = _15291 * _distanceScale;
            _15331 = exp2(log2(1.0f - exp2((_15324 * -14.42695f) * _12528)) * 1.25f);
            _15335 = 1.0f - exp2((_15324 * -288.539f) * _13255);
            _15337 = _12668 * 4.901961e-06f;
            _15338 = (_8391 * 0.059683103f) * _15337;
            _15342 = _12528 * 64.0f;
            _15344 = (_15342 * _8401) * _15331;
            _15351 = ((_8419 * 2.0f) * _13255) * _15335;
            _15358 = _15291 * 25.0f;
            _15366 = (_15291 * (_15168 + _15260)) + (_15281 * _15257);
            _15375 = exp2(((_15293 * _15256) + _15366) * -1.442695f);
            _15376 = exp2(((_15297 * _15256) + _15366) * -1.442695f);
            _15377 = exp2(((_15300 * _15256) + _15366) * -1.442695f);
            _15390 = ((_15376 * 0.33951f) + (_15375 * 0.61312f)) + (_15377 * 0.04737f);
            _15391 = ((_15376 * 0.91636f) + (_15375 * 0.0702f)) + (_15377 * 0.01345f);
            _15392 = ((_15376 * 0.10958f) + (_15375 * 0.02062f)) + (_15377 * 0.8698f);
            _15394 = _15268 * _15337;
            _15395 = _15271 * _15337;
            _15396 = _15273 * _15337;
            _15397 = _15291 * (_13255 + _12528);
            _15398 = _15397 * 25.0f;
            _15417 = _15245.x + _15256;
            _15421 = _15292 + (_15281 * (_15245.y + _15257));
            _15430 = exp2(((_15293 * _15417) + _15421) * -1.442695f);
            _15431 = exp2(((_15297 * _15417) + _15421) * -1.442695f);
            _15432 = exp2(((_15300 * _15417) + _15421) * -1.442695f);
            _15445 = ((_15431 * 0.33951f) + (_15430 * 0.61312f)) + (_15432 * 0.04737f);
            _15446 = ((_15431 * 0.91636f) + (_15430 * 0.0702f)) + (_15432 * 0.01345f);
            _15447 = ((_15431 * 0.10958f) + (_15430 * 0.02062f)) + (_15432 * 0.8698f);
            _15448 = _8454 * 0.059683103f;
            _15453 = _miePhaseConst * _miePhaseConst;
            _15470 = _12669 * _15280;
            _15473 = ((_15470 * 0.07957747f) * (((1.0f - _15453) * 3.0f) / ((_15453 + 2.0f) * 2.0f))) * (_8454 / exp2(log2((_15453 + 1.0f) - (_miePhaseConst * _8455)) * 1.5f));
            _15483 = ((((_8470 * 2.0f) * _13255) * _15335) + ((_15342 * _8462) * _15331)) * _15291;
            _15484 = _15390 * _12647;
            _15485 = _15391 * _12648;
            _15486 = _15392 * _12649;
            _15527 = _8641;
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's moon-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix — the single-scatter term against the moon transmittance
            //              triple (_15430/_15431/_15432) and the multi-scatter gather against the sun
            //              transmittance triple (_15375/_15376/_15377) the game mixes it with, with the
            //              per-wavelength gather weight folded into the beta arguments. Cloud, Mie and
            //              the cloud/fog share of the gather keep the vanilla matrix, as does
            //              transmittance. Each Off arm is the complete native expression.
            _15528 = SPECTRAL_SKY_AMBIENT
              ? (((SKY_RAY_INSCATTER(0, _15430, _15431, _15432, _15268, _15271, _15273, (_15448 * _15337)) + SKY_RAY_INSCATTER(0, _15375, _15376, _15377, (_15268 * _12647), (_15271 * _12648), (_15273 * _12649), _15337)) + _12387) + (((((_15473 * _mieScatterColor.x) + _15483) * _15445) + (_15484 * ((_mieScatterColor.x * _15470) + _15397))) * 25.0f))
              : (((_15394 * ((_15445 * _15448) + _15484)) + _12387) + (((((_15473 * _mieScatterColor.x) + _15483) * _15445) + (_15484 * ((_mieScatterColor.x * _15470) + _15397))) * 25.0f));
            _15529 = SPECTRAL_SKY_AMBIENT
              ? (((SKY_RAY_INSCATTER(1, _15430, _15431, _15432, _15268, _15271, _15273, (_15448 * _15337)) + SKY_RAY_INSCATTER(1, _15375, _15376, _15377, (_15268 * _12647), (_15271 * _12648), (_15273 * _12649), _15337)) + _12388) + (((((_15473 * _mieScatterColor.y) + _15483) * _15446) + (_15485 * ((_mieScatterColor.y * _15470) + _15397))) * 25.0f))
              : (((_15395 * ((_15446 * _15448) + _15485)) + _12388) + (((((_15473 * _mieScatterColor.y) + _15483) * _15446) + (_15485 * ((_mieScatterColor.y * _15470) + _15397))) * 25.0f));
            _15530 = SPECTRAL_SKY_AMBIENT
              ? (((SKY_RAY_INSCATTER(2, _15430, _15431, _15432, _15268, _15271, _15273, (_15448 * _15337)) + SKY_RAY_INSCATTER(2, _15375, _15376, _15377, (_15268 * _12647), (_15271 * _12648), (_15273 * _12649), _15337)) + _12389) + (((((_15473 * _mieScatterColor.z) + _15483) * _15447) + (_15486 * ((_mieScatterColor.z * _15470) + _15397))) * 25.0f))
              : (((_15396 * ((_15447 * _15448) + _15486)) + _12389) + (((((_15473 * _mieScatterColor.z) + _15483) * _15447) + (_15486 * ((_mieScatterColor.z * _15470) + _15397))) * 25.0f));
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            // RenoDX: >>> [Patch: SpectralSkyAmbient] [Version: 1.16.00]
            // Description: Converts this region's sun-path Rayleigh in-scatter per wavelength through
            //              the spectral matrix instead of collapsing each output row onto its own
            //              channel — the single-scatter term against the view transmittance triple
            //              (_15306/_15307/_15308) and the multi-scatter gather against the sun
            //              transmittance triple (_15375/_15376/_15377), with the per-wavelength gather
            //              weight folded into the beta arguments. Volume fog, cloud and the cloud/fog
            //              share of the gather carry display-referred colour and keep the vanilla
            //              matrix, as does transmittance. Each Off arm is the complete native
            //              expression.
            _15531 = SPECTRAL_SKY_AMBIENT
              ? (((((((_15351 * _volumeFogScatterColor.x) + _15344) * _15358) * SKY_VAN_DOT(0, _15306, _15307, _15308)) + SKY_RAY_INSCATTER(0, _15306, _15307, _15308, _15268, _15271, _15273, _15338) + SKY_RAY_INSCATTER(0, _15375, _15376, _15377, (_15268 * _12644), (_15271 * _12645), (_15273 * _12646), _15337) + ((_15398 * _12644) * _15390)) * _8380) + _12390)
              : ((((((((_15351 * _volumeFogScatterColor.x) + _15344) * _15358) + (_15268 * _15338)) * (((_15307 * 0.33951f) + (_15306 * 0.61312f)) + (_15308 * 0.04737f))) + (((_15394 + _15398) * _12644) * _15390)) * _8380) + _12390);
            _15532 = SPECTRAL_SKY_AMBIENT
              ? (((((((_15351 * _volumeFogScatterColor.y) + _15344) * _15358) * SKY_VAN_DOT(1, _15306, _15307, _15308)) + SKY_RAY_INSCATTER(1, _15306, _15307, _15308, _15268, _15271, _15273, _15338) + SKY_RAY_INSCATTER(1, _15375, _15376, _15377, (_15268 * _12644), (_15271 * _12645), (_15273 * _12646), _15337) + ((_15398 * _12645) * _15391)) * _8380) + _12391)
              : ((((((((_15351 * _volumeFogScatterColor.y) + _15344) * _15358) + (_15271 * _15338)) * (((_15307 * 0.91636f) + (_15306 * 0.0702f)) + (_15308 * 0.01345f))) + (((_15395 + _15398) * _12645) * _15391)) * _8380) + _12391);
            _15533 = SPECTRAL_SKY_AMBIENT
              ? (((((((_15351 * _volumeFogScatterColor.z) + _15344) * _15358) * SKY_VAN_DOT(2, _15306, _15307, _15308)) + SKY_RAY_INSCATTER(2, _15306, _15307, _15308, _15268, _15271, _15273, _15338) + SKY_RAY_INSCATTER(2, _15375, _15376, _15377, (_15268 * _12644), (_15271 * _12645), (_15273 * _12646), _15337) + ((_15398 * _12646) * _15392)) * _8380) + _12392)
              : ((((((((_15351 * _volumeFogScatterColor.z) + _15344) * _15358) + (_15273 * _15338)) * (((_15307 * 0.10958f) + (_15306 * 0.02062f)) + (_15308 * 0.8698f))) + (((_15396 + _15398) * _12646) * _15392)) * _8380) + _12392);
            // RenoDX: <<< [Patch: SpectralSkyAmbient]
            _15534 = _15256;
            _15535 = _15257;
            _15536 = _15258;
            _15537 = _15259;
          } else {
            _15527 = _8641;
            _15528 = _12387;
            _15529 = _12388;
            _15530 = _12389;
            _15531 = _12390;
            _15532 = _12391;
            _15533 = _12392;
            _15534 = _12393;
            _15535 = _12394;
            _15536 = _12405;
            _15537 = _12396;
          }
          break;
        }
      } else {
        _15527 = 0.0f;
        _15528 = 0.0f;
        _15529 = 0.0f;
        _15530 = 0.0f;
        _15531 = 0.0f;
        _15532 = 0.0f;
        _15533 = 0.0f;
        _15534 = 0.0f;
        _15535 = 0.0f;
        _15536 = 0.0f;
        _15537 = 0.0f;
      }
      if (_15527 < _8236) {
        _15543 = (_8236 * _64) + _viewPos.x;
        _15544 = (_8236 * _66) + _viewPos.z;
        _15548 = min((_distanceScale * _15527), _8236);
        _15552 = (_15548 * _64) + _viewPos.x;
        _15553 = (_15548 * _66) + _viewPos.z;
        _15560 = _earthRadius + _viewPos.y;
        _15561 = _15560 + (_15548 * _59);
        _15567 = sqrt(((_15553 * _15553) + (_15552 * _15552)) + (_15561 * _15561));
        _15568 = _15552 / _15567;
        _15569 = _15561 / _15567;
        _15570 = _15553 / _15567;
        _15573 = dot(float3(_15568, _15569, _15570), float3(_64, _59, _66));
        _15575 = dot(float3(_64, _59, _66), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
        _15578 = _atmosphereThickness + -16.0f;
        _15580 = min(max(max((_15567 - _earthRadius), 0.01f), 16.0f), _15578);
        _15582 = _atmosphereThickness + -32.0f;
        _15588 = max(_15580, 0.0f);
        _15589 = _earthRadius * 2.0f;
        _15595 = (-0.0f - sqrt((_15588 + _15589) * _15588)) / (_15588 + _earthRadius);
        _15596 = (_15573 > _15595);
        if (_15596) {
          _15618 = ((exp2(log2(saturate((_15573 - _15595) / (1.0f - _15595))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _15618 = ((exp2(log2(saturate((_15595 - _15573) / (_15595 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _15620 = (exp2(log2(saturate((_15580 + -16.0f) / _15582)) * 0.5f) * 0.96875f) + 0.015625f;
        _15625 = (1.0f - exp2(-1.1541561f - (dot(float3(_15568, _15569, _15570), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _15628 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15618, _15625), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _15633 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15618, _15625), 0.0f);
        _15640 = (_15575 * _15575) + 1.0f;
        _15641 = _15640 * 0.059683103f;
        _15645 = _miePhaseConst * _miePhaseConst;
        _15651 = _15645 + 1.0f;
        _15652 = _miePhaseConst * 2.0f;
        _15659 = (((1.0f - _15645) * 3.0f) / ((_15645 + 2.0f) * 2.0f)) * 0.07957747f;
        _15660 = (_15640 / exp2(log2(_15651 - (_15652 * _15575)) * 1.5f)) * _15659;
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _15665 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15618, _15625), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _15670 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15618, _15625), 0.0f);
        _15674 = _15560 + (_8236 * _59);
        _15680 = sqrt(((_15544 * _15544) + (_15543 * _15543)) + (_15674 * _15674));
        _15681 = _15543 / _15680;
        _15682 = _15674 / _15680;
        _15683 = _15544 / _15680;
        _15686 = dot(float3(_15681, _15682, _15683), float3(_64, _59, _66));
        _15689 = min(max(max((_15680 - _earthRadius), 0.01f), 16.0f), _15578);
        _15696 = max(_15689, 0.0f);
        _15702 = (-0.0f - sqrt((_15696 + _15589) * _15696)) / (_15696 + _earthRadius);
        _15703 = (_15686 > _15702);
        if (_15703) {
          _15725 = ((exp2(log2(saturate((_15686 - _15702) / (1.0f - _15702))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _15725 = ((exp2(log2(saturate((_15702 - _15686) / (_15702 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _15727 = (exp2(log2(saturate((_15689 + -16.0f) / _15582)) * 0.5f) * 0.96875f) + 0.015625f;
        _15732 = (1.0f - exp2(-1.1541561f - (dot(float3(_15681, _15682, _15683), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _15733 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _15725, _15732), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _15737 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _15725, _15732), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _15747 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _15725, _15732), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _15751 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _15725, _15732), 0.0f);
        _15764 = dot(float3(_15552, _15561, _15553), float3(_64, _59, _66));
        _15765 = _15764 / _15567;
        _15766 = _15548 - _8236;
        _15767 = _15766 * _64;
        _15768 = _15766 * _59;
        _15769 = _15766 * _66;
        _15775 = sqrt(((_15767 * _15767) + (_15768 * _15768)) + (_15769 * _15769));
        _15782 = sqrt((0.5f / _rayleighScaledHeight) * _15567);
        _15783 = sqrt((0.5f / _mieScaledHeight) * _15567);
        _15785 = (_15775 + _15764) / _15567;
        _15786 = _15782 * _15765;
        _15787 = _15785 * _15782;
        _15788 = _15783 * _15765;
        _15789 = _15785 * _15783;
        _15810 = (float)((int)((int)((int)(uint)((int)(_15786 > 0.0f))) - (int)((int)(uint)((int)(_15786 < 0.0f)))));
        _15811 = (float)((int)((int)((int)(uint)((int)(_15787 > 0.0f))) - (int)((int)(uint)((int)(_15787 < 0.0f)))));
        _15812 = (float)((int)((int)((int)(uint)((int)(_15788 > 0.0f))) - (int)((int)(uint)((int)(_15788 < 0.0f)))));
        _15813 = (float)((int)((int)((int)(uint)((int)(_15789 > 0.0f))) - (int)((int)(uint)((int)(_15789 < 0.0f)))));
        _15814 = _15786 * _15786;
        _15815 = _15788 * _15788;
        _15816 = (_15811 > _15810);
        if (_15816) {
          _15821 = exp2(_15814 * 1.442695f);
        } else {
          _15821 = 0.0f;
        }
        _15822 = (_15813 > _15812);
        if (_15822) {
          _15827 = exp2(_15815 * 1.442695f);
        } else {
          _15827 = 0.0f;
        }
        _15858 = -0.0f - _15775;
        _15864 = ((_15775 / (_15567 * 2.0f)) + _15765) * 1.442695f;
        _15871 = _15567 * 6.2831f;
        _15876 = _earthRadius - _15567;
        _15883 = exp2((_15876 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _15871);
        _15884 = dot(float2((_15810 / (sqrt((_15814 * 1.52f) + 4.0f) + (abs(_15786) * 2.3193f))), (exp2(_15864 * (_15858 / _rayleighScaledHeight)) * (_15811 / (sqrt(((_15787 * _15787) * 1.52f) + 4.0f) + (abs(_15787) * 2.3193f))))), float2(1.0f, -1.0f));
        _15885 = dot(float2((_15812 / (sqrt((_15815 * 1.52f) + 4.0f) + (abs(_15788) * 2.3193f))), (exp2(_15864 * (_15858 / _mieScaledHeight)) * (_15813 / (sqrt(((_15789 * _15789) * 1.52f) + 4.0f) + (abs(_15789) * 2.3193f))))), float2(1.0f, -1.0f));
        _15888 = (_15884 + _15821) * _15883;
        _15908 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _15871) * 2e-05f) * exp2((_15876 / _mieScaledHeight) * 1.442695f));
        _15909 = _15908 * (_15885 + _15827);
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        float3 _rndx_beta_15914 = SkySpectralRayleighBeta(_rayleighScatteringColor);
        _15914 = _rndx_beta_15914.r + (_ozoneRatio * SKY_OZONE_1);
        _15917 = _rndx_beta_15914.g + (_ozoneRatio * SKY_OZONE_2);
        _15920 = _rndx_beta_15914.b + (_ozoneRatio * SKY_OZONE_3);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _15952 = dot(float3(_64, _59, _66), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
        if (_15596) {
          _15974 = ((exp2(log2(saturate((_15573 - _15595) / (1.0f - _15595))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _15974 = ((exp2(log2(saturate((_15595 - _15573) / (_15595 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _15979 = (1.0f - exp2(-1.1541561f - (dot(float3(_15568, _15569, _15570), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _15980 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15974, _15979), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _15984 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15974, _15979), 0.0f);
        _15989 = (_15952 * _15952) + 1.0f;
        _15990 = _15989 * 0.059683103f;
        _16000 = (_15989 / exp2(log2(_15651 - (_15652 * _15952)) * 1.5f)) * _15659;
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _16004 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15974, _15979), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _16008 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15620, _15974, _15979), 0.0f);
        if (_15703) {
          _16034 = ((exp2(log2(saturate((_15686 - _15702) / (1.0f - _15702))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _16034 = ((exp2(log2(saturate((_15702 - _15686) / (_15702 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _16039 = (1.0f - exp2(-1.1541561f - (dot(float3(_15681, _15682, _15683), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _16040 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _16034, _16039), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _16044 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _16034, _16039), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _16054 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _16034, _16039), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _16058 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_15727, _16034, _16039), 0.0f);
        if (_15816) {
          _16075 = exp2(_15814 * 1.442695f);
        } else {
          _16075 = 0.0f;
        }
        if (_15822) {
          _16080 = exp2(_15815 * 1.442695f);
        } else {
          _16080 = 0.0f;
        }
        _16083 = (_16075 + _15884) * _15883;
        _16084 = _15908 * (_16080 + _15885);
        _16116 = max(0.0f, (((((_15660 * _15633.x) + (_15628.x * _15641)) + _15665.x) + _15670.x) - (exp2(((_15914 * _15888) + _15909) * -1.442695f) * ((((_15737.x * _15660) + (_15733.x * _15641)) + _15747.x) + _15751.x))));
        _16117 = max(0.0f, (((((_15660 * _15633.y) + (_15628.y * _15641)) + _15665.y) + _15670.y) - (exp2(((_15917 * _15888) + _15909) * -1.442695f) * ((((_15737.y * _15660) + (_15733.y * _15641)) + _15747.y) + _15751.y))));
        _16118 = max(0.0f, (((((_15660 * _15633.z) + (_15628.z * _15641)) + _15665.z) + _15670.z) - (exp2(((_15920 * _15888) + _15909) * -1.442695f) * ((((_15737.z * _15660) + (_15733.z * _15641)) + _15747.z) + _15751.z))));
        _16119 = max(0.0f, (((((_16000 * _15984.x) + (_15980.x * _15990)) + _16004.x) + _16008.x) - (exp2((_16084 + (_16083 * _15914)) * -1.442695f) * ((((_16044.x * _16000) + (_16040.x * _15990)) + _16054.x) + _16058.x))));
        _16120 = max(0.0f, (((((_16000 * _15984.y) + (_15980.y * _15990)) + _16004.y) + _16008.y) - (exp2((_16084 + (_16083 * _15917)) * -1.442695f) * ((((_16044.y * _16000) + (_16040.y * _15990)) + _16054.y) + _16058.y))));
        _16121 = max(0.0f, (((((_16000 * _15984.z) + (_15980.z * _15990)) + _16004.z) + _16008.z) - (exp2((_16084 + (_16083 * _15920)) * -1.442695f) * ((((_16044.z * _16000) + (_16040.z * _15990)) + _16054.z) + _16058.z))));
      } else {
        _16116 = 0.0f;
        _16117 = 0.0f;
        _16118 = 0.0f;
        _16119 = 0.0f;
        _16120 = 0.0f;
        _16121 = 0.0f;
      }
      _16155 = ((_cloudScatteringCoefficient / _distanceScale) * (_15537 + _15536)) + (((_15535 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      float3 _rndx_beta_16166 = SkySpectralRayleighBeta(_rayleighScatteringColor);
      _16166 = exp2((((_rndx_beta_16166.r + (_ozoneRatio * SKY_OZONE_1)) * _15534) + _16155) * -1.442695f);
      _16167 = exp2((((_rndx_beta_16166.g + (_ozoneRatio * SKY_OZONE_2)) * _15534) + _16155) * -1.442695f);
      _16168 = exp2((_16155 + (((_ozoneRatio * SKY_OZONE_3) + _rndx_beta_16166.b) * _15534)) * -1.442695f);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _16187 = (((_16116 * _8380) * _16166) + _15531) + (((_16166 * _16119) + _15528) * _8451);
      _16188 = (((_16117 * _8380) * _16167) + _15532) + (((_16167 * _16120) + _15529) * _8451);
      _16189 = (((_16118 * _8380) * _16168) + _15533) + (((_16168 * _16121) + _15530) * _8451);
      if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
        _16218 = saturate(max(0.0f, (((-0.0f - _viewPos.y) - (_59 * _8213)) + _atmosphereSeaBaseline)) * 2.0f);  // [sem: expr_sat]
        _16227 = (((1.0f - ((_16218 * _16218) * (3.0f - (_16218 * 2.0f)))) * 0.98f) + 0.02f);
      } else {
        _16227 = 1.0f;
      }
      _16234 = (_16227 * (((_16188 * 0.33951f) + (_16187 * 0.61312f)) + (_16189 * 0.04737f)));
      _16235 = (_16227 * (((_16188 * 0.91636f) + (_16187 * 0.0702f)) + (_16189 * 0.01345f)));
      _16236 = (_16227 * (((_16188 * 0.10958f) + (_16187 * 0.02062f)) + (_16189 * 0.8698f)));
    } else {
      _16234 = 0.0f;
      _16235 = 0.0f;
      _16236 = 0.0f;
    }
    _16237 = max(0.0f, _16234);
    _16238 = max(0.0f, _16235);
    _16239 = max(0.0f, _16236);
    _16240 = _59 * -0.488603f;
    _16241 = _66 * 0.488603f;
    _16242 = _64 * -0.488603f;
    _16244 = (_64 * 1.092548f) * _59;
    _16245 = _66 * -1.092548f;
    _16246 = _16245 * _59;
    _16249 = ((_66 * _66) * 0.94617593f) + -0.315392f;
    _16250 = _16245 * _64;
    _16254 = ((_64 * _64) - (_59 * _59)) * 0.546274f;
    _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * 0.282095f);
    _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16240);
    _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16241);
    _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16242);
    _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16244);
    _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16246);
    _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16249);
    _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16250);
    _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16237 * _16254);
    _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * 0.282095f);
    _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16240);
    _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16241);
    _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16242);
    _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16244);
    _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16246);
    _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16249);
    _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16250);
    _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16238 * _16254);
    _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * 0.282095f);
    _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16240);
    _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16241);
    _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16242);
    _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16244);
    _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16246);
    _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16249);
    _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16250);
    _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16239 * _16254);
    _16361 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_64, _59, _66));
    _16364 = _miePhaseConst * _miePhaseConst;
    _16381 = ((((1.0f - _16364) * 3.0f) / ((_16364 + 2.0f) * 2.0f)) * 0.07957747f) * (((_16361 * _16361) + 1.0f) / exp2(log2((_16364 + 1.0f) - ((_16361 * 2.0f) * _miePhaseConst)) * 1.5f));
    _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16234);
    _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16235);
    _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16236);
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 1) == 0) {
      _16424 = (uint)(SV_DispatchThreadID.x) + (uint)(1);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16424), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16424), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16424), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 3) == 0) {
      _16603 = (uint)(SV_DispatchThreadID.x) + (uint)(2);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16603), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16603), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16603), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 7) == 0) {
      _16782 = (uint)(SV_DispatchThreadID.x) + (uint)(4);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16782), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16782), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16782), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 15) == 0) {
      _16961 = (uint)(SV_DispatchThreadID.x) + (uint)(8);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16961), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16961), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16961), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 31) == 0) {
      _17140 = (uint)(SV_DispatchThreadID.x) + (uint)(16);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17140), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17140), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17140), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 63) == 0) {
      _17319 = (uint)(SV_DispatchThreadID.x) + (uint)(32);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17319), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17319), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17319), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 127) == 0) {
      _17498 = (uint)(SV_DispatchThreadID.x) + (uint)(64);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17498), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17498), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17498), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 255) == 0) {
      _17677 = (uint)(SV_DispatchThreadID.x) + (uint)(128);
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17677), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17677), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17677), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (!((uint)(int)(SV_DispatchThreadID.x) > (uint)8)) {
      // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
      // Description: Builds R/G/B directional biases from the three per-channel L0 slots before the native row switch; a disabled Dawn/Dusk gate returns three zero vectors.
      float _rndx_dawn_dusk_factor = DawnDuskFactor(_sunDirection.y);
      float3 _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B;
      SHDirectionalBias(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z),
                        _rndx_dawn_dusk_factor,
                        float3(((_global_4[0]) * 0.0078125f), ((_global_6[0]) * 0.0078125f), ((_global_8[0]) * 0.0078125f)),
                        _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B);
      // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
      switch ((uint)(SV_DispatchThreadID.x)) {
        case 0: {
          _18208 = ((_global_4[0]) * 0.0078125f);
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          _18209 = ((_global_4[1]) * 0.0078125f) - _rndx_sh_bias_R.y;
          _18210 = ((_global_4[2]) * 0.0078125f) + _rndx_sh_bias_R.z;
          _18211 = ((_global_4[3]) * 0.0078125f) - _rndx_sh_bias_R.x;
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 1: {
          _18208 = ((_global_5[0]) * 0.0078125f);
          _18209 = ((_global_5[1]) * 0.0078125f);
          _18210 = ((_global_5[2]) * 0.0078125f);
          _18211 = ((_global_5[3]) * 0.0078125f);
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 2: {
          _18208 = ((_global_6[0]) * 0.0078125f);
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          _18209 = ((_global_6[1]) * 0.0078125f) - _rndx_sh_bias_G.y;
          _18210 = ((_global_6[2]) * 0.0078125f) + _rndx_sh_bias_G.z;
          _18211 = ((_global_6[3]) * 0.0078125f) - _rndx_sh_bias_G.x;
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 3: {
          _18208 = ((_global_7[0]) * 0.0078125f);
          _18209 = ((_global_7[1]) * 0.0078125f);
          _18210 = ((_global_7[2]) * 0.0078125f);
          _18211 = ((_global_7[3]) * 0.0078125f);
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 4: {
          _18208 = ((_global_8[0]) * 0.0078125f);
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          _18209 = ((_global_8[1]) * 0.0078125f) - _rndx_sh_bias_B.y;
          _18210 = ((_global_8[2]) * 0.0078125f) + _rndx_sh_bias_B.z;
          _18211 = ((_global_8[3]) * 0.0078125f) - _rndx_sh_bias_B.x;
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 5: {
          _18208 = ((_global_9[0]) * 0.0078125f);
          _18209 = ((_global_9[1]) * 0.0078125f);
          _18210 = ((_global_9[2]) * 0.0078125f);
          _18211 = ((_global_9[3]) * 0.0078125f);
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 6: {
          if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
            _17902 = _sunDirection.x;
            _17903 = _sunDirection.y;
            _17904 = _sunDirection.z;
          } else {
            _17902 = _moonDirection.x;
            _17903 = _moonDirection.y;
            _17904 = _moonDirection.z;
          }
          _17922 = ((0.5f - (((float)((int)((int)((int)(uint)((int)(_17903 > 0.0f))) - (int)((int)(uint)((int)(_17903 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _cloudAltitude;
          if (_viewPos.y < _cloudAltitude) {
            _17925 = dot(float3(0.0f, 1.0f, 0.0f), float3(_17902, _17903, _17904));
            _17931 = select((abs(_17925) < 1e-08f), 1e+08f, ((_17922 - dot(float3(0.0f, 1.0f, 0.0f), float3(_viewPos.x, _viewPos.y, _viewPos.z))) / _17925));
            _18164 = ((_17931 * _17902) + _viewPos.x);
            _18165 = _17922;
            _18166 = ((_17931 * _17904) + _viewPos.z);
          } else {
            _18164 = _viewPos.x;
            _18165 = _viewPos.y;
            _18166 = _viewPos.z;
          }
          _18189 = saturate(abs(_17903) * 4.0f);  // [sem: expr_sat]
          _18191 = (_18189 * _18189) * exp2(((((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_18164 - _viewPos.x) * 5e-05f) + 0.5f), ((_18165 - _cloudAltitude) / _cloudThickness), (((_18166 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x) * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale)) * _distanceScale);
          _18208 = ((_global_0[0]) * 0.0078125f);
          _18209 = ((_global_1[0]) * 0.0078125f);
          _18210 = ((_global_2[0]) * 0.0078125f);
          _18211 = (((1.0f - _18191) * saturate(((_viewPos.y - _cloudAltitude) - _cloudThickness) * 0.1f)) + _18191);
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        case 7: {
          _17940 = _sunLightPreset * _sunLightIntensity;
          _17943 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
          _17947 = min(16.0f, (_atmosphereThickness + -16.0f));
          _17955 = max(_17947, 0.0f);
          _17964 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _17955) * _17955)) / (_earthRadius + _17955);
          _17965 = (_17964 < 1.0f);
          if (!_17965) {
            _17977 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _17977 = 0.99609375f;
          }
          _17979 = (exp2(log2(saturate((_17947 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          float3 _rndx_beta_18002 = SkySpectralRayleighBeta(_rayleighScatteringColor);
          _18002 = _rndx_beta_18002.r + (_ozoneRatio * SKY_OZONE_1);
          _18003 = _rndx_beta_18002.g + (_ozoneRatio * SKY_OZONE_2);
          _18004 = _rndx_beta_18002.b + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _18005 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _17977), 0.0f))).x) * -1.442695f;
          _18026 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
          _18027 = _18026 * 57.295776f;
          if (_18027 > (_moonSizeAngle + _sunSizeAngle)) {
            _18075 = (_sunSizeAngle * _sunSizeAngle);
            _18076 = 0.0f;
          } else {
            _18040 = _moonSizeAngle * _moonSizeAngle;
            _18041 = _sunSizeAngle * _sunSizeAngle;
            if (!(_18027 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
              _18046 = _18027 * _18027;
              _18049 = _18026 * 114.59155f;
              _18055 = acos(min(max((((_18046 + _18041) - _18040) / (_18049 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
              _18063 = acos(min(max((((_18046 - _18041) + _18040) / (_moonSizeAngle * _18049)), -1.0f), 1.0f)) * 2.0f;
              _18075 = _18041;
              _18076 = (((((_18063 * _18040) + (_18055 * _18041)) - (sin(_18055) * _18041)) - (sin(_18063) * _18040)) * 0.5f);
            } else {
              _18075 = _18041;
              _18076 = (min(_18041, _18040) * 3.1415927f);
            }
          }
          if (!_17965) {
            _18091 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _18091 = 0.99609375f;
          }
          _18094 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18091), 0.0f))).x) * -1.442695f;
          _18109 = _moonLightPreset * _moonLightIntensity;
          _18113 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
          if (!_17965) {
            _18125 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _18125 = 0.99609375f;
          }
          _18128 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18125), 0.0f))).x) * -1.442695f;
          if (!_17965) {
            _18149 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _18149 = 0.99609375f;
          }
          _18152 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18149), 0.0f))).x) * -1.442695f;
          _18208 = (_17940 / (dot(float3(exp2(_18002 * _18005), exp2(_18003 * _18005), exp2(_18004 * _18005)), float3(0.299f, 0.587f, 0.114f)) * _17943));
          _18209 = (((1.0f - saturate(_18076 / (_18075 * 3.1415927f))) * _17943) * (_17940 / (dot(float3(exp2(_18094 * _18002), exp2(_18094 * _18003), exp2(_18094 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _17943)));
          _18210 = (_18109 / (dot(float3(exp2(_18128 * _18002), exp2(_18128 * _18003), exp2(_18128 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _18113));
          _18211 = ((_18109 / (dot(float3(exp2(_18152 * _18002), exp2(_18152 * _18003), exp2(_18152 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _18113)) * _18113);
          __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
          break;
        }
        default: {
          __3__39__0__1__g_texPrecomputedAmbientUAV[56] = float4(((_global_3[0]) * 0.049087387f), ((_global_3[1]) * 0.049087387f), ((_global_3[2]) * 0.049087387f), 0.0f);
          break;
        }
      }
    }
  } else {
    if (_79 == 5) {
      _16234 = _8194;
      _16235 = _8195;
      _16236 = _8196;
      _16237 = max(0.0f, _16234);
      _16238 = max(0.0f, _16235);
      _16239 = max(0.0f, _16236);
      _16240 = _59 * -0.488603f;
      _16241 = _66 * 0.488603f;
      _16242 = _64 * -0.488603f;
      _16244 = (_64 * 1.092548f) * _59;
      _16245 = _66 * -1.092548f;
      _16246 = _16245 * _59;
      _16249 = ((_66 * _66) * 0.94617593f) + -0.315392f;
      _16250 = _16245 * _64;
      _16254 = ((_64 * _64) - (_59 * _59)) * 0.546274f;
      _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * 0.282095f);
      _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16240);
      _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16241);
      _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16242);
      _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16244);
      _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16246);
      _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16249);
      _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16237 * _16250);
      _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16237 * _16254);
      _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * 0.282095f);
      _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16240);
      _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16241);
      _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16242);
      _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16244);
      _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16246);
      _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16249);
      _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16238 * _16250);
      _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16238 * _16254);
      _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * 0.282095f);
      _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16240);
      _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16241);
      _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16242);
      _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16244);
      _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16246);
      _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16249);
      _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = (_16239 * _16250);
      _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = (_16239 * _16254);
      _16361 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_64, _59, _66));
      _16364 = _miePhaseConst * _miePhaseConst;
      _16381 = ((((1.0f - _16364) * 3.0f) / ((_16364 + 2.0f) * 2.0f)) * 0.07957747f) * (((_16361 * _16361) + 1.0f) / exp2(log2((_16364 + 1.0f) - ((_16361 * 2.0f) * _miePhaseConst)) * 1.5f));
      _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16234);
      _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16235);
      _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = (_16381 * _16236);
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 1) == 0) {
        _16424 = (uint)(SV_DispatchThreadID.x) + (uint)(1);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16424), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16424), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16424)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16424), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16424)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 3) == 0) {
        _16603 = (uint)(SV_DispatchThreadID.x) + (uint)(2);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16603), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16603), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16603)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16603), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16603)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 7) == 0) {
        _16782 = (uint)(SV_DispatchThreadID.x) + (uint)(4);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16782), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16782), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16782)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16782), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16782)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 15) == 0) {
        _16961 = (uint)(SV_DispatchThreadID.x) + (uint)(8);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_16961), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_16961), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_16961)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_16961), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_16961)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 31) == 0) {
        _17140 = (uint)(SV_DispatchThreadID.x) + (uint)(16);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17140), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17140), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17140)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17140), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17140)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 63) == 0) {
        _17319 = (uint)(SV_DispatchThreadID.x) + (uint)(32);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17319), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17319), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17319)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17319), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17319)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 127) == 0) {
        _17498 = (uint)(SV_DispatchThreadID.x) + (uint)(64);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17498), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17498), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17498)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17498), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17498)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 255) == 0) {
        _17677 = (uint)(SV_DispatchThreadID.x) + (uint)(128);
        _global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_4[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_5[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_0[min((uint)(_17677), 255u)]) + (_global_0[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_6[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_7[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_1[min((uint)(_17677), 255u)]) + (_global_1[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_8[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)] = ((_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(_17677)) * (uint)(4))))), 1023u)]) + (_global_9[min((uint)(((int)((uint)(3) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(4))))), 1023u)]));
        _global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)] = ((_global_2[min((uint)(_17677), 255u)]) + (_global_2[min((uint)((int)(SV_DispatchThreadID.x)), 255u)]));
        _global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
        _global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)] = ((_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_17677)) * (uint)(3))))), 767u)]) + (_global_3[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_DispatchThreadID.x) * (uint)(3))))), 767u)]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (!((uint)(int)(SV_DispatchThreadID.x) > (uint)8)) {
        // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
        // Description: Builds R/G/B directional biases from the three per-channel L0 slots before the native row switch; a disabled Dawn/Dusk gate returns three zero vectors.
        float _rndx_dawn_dusk_factor = DawnDuskFactor(_sunDirection.y);
        float3 _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B;
        SHDirectionalBias(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z),
                          _rndx_dawn_dusk_factor,
                          float3(((_global_4[0]) * 0.0078125f), ((_global_6[0]) * 0.0078125f), ((_global_8[0]) * 0.0078125f)),
                          _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B);
        // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
        switch ((uint)(SV_DispatchThreadID.x)) {
          case 0: {
            _18208 = ((_global_4[0]) * 0.0078125f);
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            _18209 = ((_global_4[1]) * 0.0078125f) - _rndx_sh_bias_R.y;
            _18210 = ((_global_4[2]) * 0.0078125f) + _rndx_sh_bias_R.z;
            _18211 = ((_global_4[3]) * 0.0078125f) - _rndx_sh_bias_R.x;
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 1: {
            _18208 = ((_global_5[0]) * 0.0078125f);
            _18209 = ((_global_5[1]) * 0.0078125f);
            _18210 = ((_global_5[2]) * 0.0078125f);
            _18211 = ((_global_5[3]) * 0.0078125f);
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 2: {
            _18208 = ((_global_6[0]) * 0.0078125f);
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            _18209 = ((_global_6[1]) * 0.0078125f) - _rndx_sh_bias_G.y;
            _18210 = ((_global_6[2]) * 0.0078125f) + _rndx_sh_bias_G.z;
            _18211 = ((_global_6[3]) * 0.0078125f) - _rndx_sh_bias_G.x;
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 3: {
            _18208 = ((_global_7[0]) * 0.0078125f);
            _18209 = ((_global_7[1]) * 0.0078125f);
            _18210 = ((_global_7[2]) * 0.0078125f);
            _18211 = ((_global_7[3]) * 0.0078125f);
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 4: {
            _18208 = ((_global_8[0]) * 0.0078125f);
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            _18209 = ((_global_8[1]) * 0.0078125f) - _rndx_sh_bias_B.y;
            _18210 = ((_global_8[2]) * 0.0078125f) + _rndx_sh_bias_B.z;
            _18211 = ((_global_8[3]) * 0.0078125f) - _rndx_sh_bias_B.x;
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 5: {
            _18208 = ((_global_9[0]) * 0.0078125f);
            _18209 = ((_global_9[1]) * 0.0078125f);
            _18210 = ((_global_9[2]) * 0.0078125f);
            _18211 = ((_global_9[3]) * 0.0078125f);
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 6: {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _17902 = _sunDirection.x;
              _17903 = _sunDirection.y;
              _17904 = _sunDirection.z;
            } else {
              _17902 = _moonDirection.x;
              _17903 = _moonDirection.y;
              _17904 = _moonDirection.z;
            }
            _17922 = ((0.5f - (((float)((int)((int)((int)(uint)((int)(_17903 > 0.0f))) - (int)((int)(uint)((int)(_17903 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _cloudAltitude;
            if (_viewPos.y < _cloudAltitude) {
              _17925 = dot(float3(0.0f, 1.0f, 0.0f), float3(_17902, _17903, _17904));
              _17931 = select((abs(_17925) < 1e-08f), 1e+08f, ((_17922 - dot(float3(0.0f, 1.0f, 0.0f), float3(_viewPos.x, _viewPos.y, _viewPos.z))) / _17925));
              _18164 = ((_17931 * _17902) + _viewPos.x);
              _18165 = _17922;
              _18166 = ((_17931 * _17904) + _viewPos.z);
            } else {
              _18164 = _viewPos.x;
              _18165 = _viewPos.y;
              _18166 = _viewPos.z;
            }
            _18189 = saturate(abs(_17903) * 4.0f);  // [sem: expr_sat]
            _18191 = (_18189 * _18189) * exp2(((((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_18164 - _viewPos.x) * 5e-05f) + 0.5f), ((_18165 - _cloudAltitude) / _cloudThickness), (((_18166 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x) * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale)) * _distanceScale);
            _18208 = ((_global_0[0]) * 0.0078125f);
            _18209 = ((_global_1[0]) * 0.0078125f);
            _18210 = ((_global_2[0]) * 0.0078125f);
            _18211 = (((1.0f - _18191) * saturate(((_viewPos.y - _cloudAltitude) - _cloudThickness) * 0.1f)) + _18191);
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          case 7: {
            _17940 = _sunLightPreset * _sunLightIntensity;
            _17943 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
            _17947 = min(16.0f, (_atmosphereThickness + -16.0f));
            _17955 = max(_17947, 0.0f);
            _17964 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _17955) * _17955)) / (_earthRadius + _17955);
            _17965 = (_17964 < 1.0f);
            if (!_17965) {
              _17977 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _17977 = 0.99609375f;
            }
            _17979 = (exp2(log2(saturate((_17947 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            float3 _rndx_beta_18002 = SkySpectralRayleighBeta(_rayleighScatteringColor);
            _18002 = _rndx_beta_18002.r + (_ozoneRatio * SKY_OZONE_1);
            _18003 = _rndx_beta_18002.g + (_ozoneRatio * SKY_OZONE_2);
            _18004 = _rndx_beta_18002.b + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _18005 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _17977), 0.0f))).x) * -1.442695f;
            _18026 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
            _18027 = _18026 * 57.295776f;
            if (_18027 > (_moonSizeAngle + _sunSizeAngle)) {
              _18075 = (_sunSizeAngle * _sunSizeAngle);
              _18076 = 0.0f;
            } else {
              _18040 = _moonSizeAngle * _moonSizeAngle;
              _18041 = _sunSizeAngle * _sunSizeAngle;
              if (!(_18027 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
                _18046 = _18027 * _18027;
                _18049 = _18026 * 114.59155f;
                _18055 = acos(min(max((((_18046 + _18041) - _18040) / (_18049 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
                _18063 = acos(min(max((((_18046 - _18041) + _18040) / (_moonSizeAngle * _18049)), -1.0f), 1.0f)) * 2.0f;
                _18075 = _18041;
                _18076 = (((((_18063 * _18040) + (_18055 * _18041)) - (sin(_18055) * _18041)) - (sin(_18063) * _18040)) * 0.5f);
              } else {
                _18075 = _18041;
                _18076 = (min(_18041, _18040) * 3.1415927f);
              }
            }
            if (!_17965) {
              _18091 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _18091 = 0.99609375f;
            }
            _18094 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18091), 0.0f))).x) * -1.442695f;
            _18109 = _moonLightPreset * _moonLightIntensity;
            _18113 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
            if (!_17965) {
              _18125 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _18125 = 0.99609375f;
            }
            _18128 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18125), 0.0f))).x) * -1.442695f;
            if (!_17965) {
              _18149 = ((exp2(log2(saturate((_17964 + -1.0f) / (_17964 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _18149 = 0.99609375f;
            }
            _18152 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_17979, _18149), 0.0f))).x) * -1.442695f;
            _18208 = (_17940 / (dot(float3(exp2(_18002 * _18005), exp2(_18003 * _18005), exp2(_18004 * _18005)), float3(0.299f, 0.587f, 0.114f)) * _17943));
            _18209 = (((1.0f - saturate(_18076 / (_18075 * 3.1415927f))) * _17943) * (_17940 / (dot(float3(exp2(_18094 * _18002), exp2(_18094 * _18003), exp2(_18094 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _17943)));
            _18210 = (_18109 / (dot(float3(exp2(_18128 * _18002), exp2(_18128 * _18003), exp2(_18128 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _18113));
            _18211 = ((_18109 / (dot(float3(exp2(_18152 * _18002), exp2(_18152 * _18003), exp2(_18152 * _18004)), float3(0.299f, 0.587f, 0.114f)) * _18113)) * _18113);
            __3__39__0__1__g_texPrecomputedAmbientUAV[(int)(SV_DispatchThreadID.x)] = float4(_18208, _18209, _18210, _18211);
            break;
          }
          default: {
            __3__39__0__1__g_texPrecomputedAmbientUAV[56] = float4(((_global_3[0]) * 0.049087387f), ((_global_3[1]) * 0.049087387f), ((_global_3[2]) * 0.049087387f), 0.0f);
            break;
          }
        }
      }
    }
  }
}
