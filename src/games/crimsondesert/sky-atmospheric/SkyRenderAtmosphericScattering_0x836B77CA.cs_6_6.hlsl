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


Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t44, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t88, space36);

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

Texture2D<float> __3__36__0__0__g_depthHalf : register(t29, space36);

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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b4, space35) {
  float4 _shadowDepthRanges : packoffset(c000.x);
  float4 _massiveShadowSizeAndInvSize : packoffset(c001.x);
  uint4 _shadowParam : packoffset(c002.x);
  int4 _updateIndex : packoffset(c003.x);
  float4 _jitterOffset[8] : packoffset(c004.x);
  float4 _shadowRelativePosition : packoffset(c012.x);
  float4 _dynmaicShadowSizeAndInvSize : packoffset(c013.x);
  column_major float4x4 _dynamicShadowProjTexScale[2] : packoffset(c014.x);
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2] : packoffset(c022.x);
  float4 _dynamicShadowFrustumPlanes0[6] : packoffset(c030.x);
  float4 _dynamicShadowFrustumPlanes1[6] : packoffset(c036.x);
  column_major float4x4 _dynamicShadowViewProj[2] : packoffset(c042.x);
  column_major float4x4 _dynamicShadowViewProjPrev[2] : packoffset(c050.x);
  column_major float4x4 _invDynamicShadowViewProj[2] : packoffset(c058.x);
  float4 _dynamicShadowPosition[2] : packoffset(c066.x);
  float4 _shadowSizeAndInvSize : packoffset(c068.x);
  column_major float4x4 _shadowProjTexScale[2] : packoffset(c069.x);
  column_major float4x4 _shadowProjRelativeTexScale[2] : packoffset(c077.x);
  float4 _staticShadowPosition[2] : packoffset(c085.x);
  column_major float4x4 _shadowViewProj[2] : packoffset(c087.x);
  column_major float4x4 _shadowViewProjRelative[2] : packoffset(c095.x);
  column_major float4x4 _invShadowViewProj[2] : packoffset(c103.x);
  float4 _currShadowFrustumPlanes[6] : packoffset(c111.x);
  column_major float4x4 _currShadowViewProjRelative : packoffset(c117.x);
  column_major float4x4 _currInvShadowViewProjRelative : packoffset(c121.x);
  float4 _currStaticShadowPosition : packoffset(c125.x);
  float4 _currTerrainShadowFrustumPlanes[6] : packoffset(c126.x);
  column_major float4x4 _terrainShadowProjTexScale : packoffset(c132.x);
  column_major float4x4 _terrainShadowProjRelativeTexScale : packoffset(c136.x);
  column_major float4x4 _terrainShadowViewProj : packoffset(c140.x);
  column_major float4x4 _nearFieldShadowViewProj : packoffset(c144.x);
  float4 _nearFieldShadowFlag : packoffset(c148.x);
  float4 _nearFieldShadowFrustumPlanes[6] : packoffset(c149.x);
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

SamplerComparisonState __3__40__0__0__g_samplerShadow : register(s0, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[4] = { 0, 1, 3, 2 };

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
  int _45;
  uint _50;
  uint _51;
  float _52;
  float _53;
  float _64;
  float _69;
  float _70;
  float _71;
  float _107;
  float _108;
  float _109;
  float _110;
  float _116;
  float _117;
  float _118;
  float _119;
  float _124;
  float _132;
  bool _133;
  float _147;
  float _148;
  float _149;
  float _151;
  float _152;
  float _155;
  float _156;
  float _158;
  float _166;
  int _232;
  float _233;
  float _234;
  int _235;
  float _336;
  float _337;
  int _338;
  float _345;
  float _346;
  int _347;
  int _358;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _369;
  int _370;
  int _371;
  float _372;
  float _583;
  float _595;
  float _606;
  int _607;
  float _820;
  float _821;
  float _822;
  float _823;
  float _824;
  float _825;
  float _826;
  float _831;
  float _832;
  float _833;
  float _834;
  float _846;
  float _847;
  float _848;
  float _849;
  float _850;
  float _851;
  float _852;
  float _877;
  float _910;
  float _918;
  float _966;
  float _971;
  float _977;
  bool _1003;
  float _1080;
  float _1094;
  float _1095;
  float _1096;
  float _1159;
  float _1160;
  float _1161;
  float _1162;
  int _1163;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  int _1221;
  int _1222;
  float _1234;
  float _1281;
  float _1287;
  float _1426;
  float _1436;
  float _1447;
  int _1448;
  float _1661;
  float _1662;
  float _1663;
  float _1664;
  float _1665;
  float _1666;
  float _1667;
  float _1672;
  float _1673;
  float _1674;
  float _1675;
  float _1687;
  float _1688;
  float _1689;
  float _1690;
  float _1691;
  float _1692;
  float _1693;
  float _1718;
  float _1751;
  float _1759;
  float _1807;
  float _1812;
  float _1818;
  float _1901;
  float _1902;
  float _1903;
  float _1928;
  float _1929;
  float _1930;
  float _1994;
  int _2006;
  float _2007;
  float _2008;
  int _2009;
  float _2110;
  float _2111;
  int _2112;
  float _2119;
  float _2120;
  int _2121;
  float _2134;
  float _2135;
  float _2136;
  float _2137;
  float _2138;
  float _2139;
  float _2140;
  float _2141;
  float _2142;
  int _2143;
  float _2321;
  float _2322;
  float _2332;
  int _2333;
  float _2546;
  float _2547;
  float _2548;
  float _2549;
  float _2550;
  float _2551;
  float _2552;
  float _2557;
  float _2558;
  float _2559;
  float _2560;
  float _2572;
  float _2573;
  float _2574;
  float _2575;
  float _2576;
  float _2577;
  float _2578;
  float _2603;
  float _2636;
  float _2644;
  float _2693;
  float _2698;
  float _2704;
  float _2890;
  float _2902;
  float _2910;
  int _2911;
  float _3122;
  float _3123;
  float _3124;
  float _3125;
  float _3126;
  float _3127;
  float _3128;
  float _3133;
  float _3134;
  float _3135;
  float _3136;
  float _3148;
  float _3149;
  float _3150;
  float _3151;
  float _3152;
  float _3153;
  float _3154;
  float _3179;
  float _3212;
  float _3220;
  float _3269;
  float _3274;
  float _3280;
  float _3409;
  float _3419;
  float _3428;
  int _3429;
  float _3640;
  float _3641;
  float _3642;
  float _3643;
  float _3644;
  float _3645;
  float _3646;
  float _3651;
  float _3652;
  float _3653;
  float _3654;
  float _3666;
  float _3667;
  float _3668;
  float _3669;
  float _3670;
  float _3671;
  float _3672;
  float _3697;
  float _3730;
  float _3738;
  float _3787;
  float _3792;
  float _3798;
  float _3805;
  float _3806;
  float _3851;
  float _4162;
  float _4163;
  float _4164;
  float _4178;
  int _4179;
  int _4180;
  float _4181;
  float _4182;
  float _4183;
  float _4184;
  float _4185;
  float _4186;
  float _4187;
  float _4188;
  float _4189;
  float _4190;
  float _4191;
  int _4192;
  int _4193;
  float _4220;
  float _4232;
  float _4281;
  float _4388;
  float _4403;
  float _4404;
  float _4405;
  float _4556;
  float _4568;
  float _4579;
  int _4580;
  float _4793;
  float _4794;
  float _4795;
  float _4796;
  float _4797;
  float _4798;
  float _4799;
  float _4804;
  float _4805;
  float _4806;
  float _4807;
  float _4819;
  float _4820;
  float _4821;
  float _4822;
  float _4823;
  float _4824;
  float _4825;
  float _4850;
  float _4883;
  float _4891;
  float _4939;
  float _4944;
  float _4950;
  float _5020;
  float _5021;
  float _5022;
  float _5047;
  float _5048;
  float _5049;
  float _5114;
  int _5126;
  float _5127;
  float _5128;
  int _5129;
  float _5230;
  float _5231;
  int _5232;
  float _5239;
  float _5240;
  int _5241;
  float _5254;
  float _5255;
  float _5256;
  float _5257;
  float _5258;
  float _5259;
  float _5260;
  float _5261;
  float _5262;
  int _5263;
  float _5441;
  float _5442;
  float _5452;
  int _5453;
  float _5666;
  float _5667;
  float _5668;
  float _5669;
  float _5670;
  float _5671;
  float _5672;
  float _5677;
  float _5678;
  float _5679;
  float _5680;
  float _5692;
  float _5693;
  float _5694;
  float _5695;
  float _5696;
  float _5697;
  float _5698;
  float _5723;
  float _5756;
  float _5764;
  float _5813;
  float _5818;
  float _5824;
  float _6010;
  float _6022;
  float _6030;
  int _6031;
  float _6242;
  float _6243;
  float _6244;
  float _6245;
  float _6246;
  float _6247;
  float _6248;
  float _6253;
  float _6254;
  float _6255;
  float _6256;
  float _6268;
  float _6269;
  float _6270;
  float _6271;
  float _6272;
  float _6273;
  float _6274;
  float _6299;
  float _6332;
  float _6340;
  float _6389;
  float _6394;
  float _6400;
  float _6529;
  float _6539;
  float _6548;
  int _6549;
  float _6760;
  float _6761;
  float _6762;
  float _6763;
  float _6764;
  float _6765;
  float _6766;
  float _6771;
  float _6772;
  float _6773;
  float _6774;
  float _6786;
  float _6787;
  float _6788;
  float _6789;
  float _6790;
  float _6791;
  float _6792;
  float _6817;
  float _6850;
  float _6858;
  float _6907;
  float _6912;
  float _6918;
  float _6925;
  float _6926;
  float _6971;
  float _7224;
  float _7225;
  float _7226;
  float _7227;
  float _7228;
  float _7229;
  float _7230;
  float _7231;
  float _7232;
  float _7233;
  float _7234;
  float _7236;
  float _7237;
  float _7238;
  float _7239;
  float _7240;
  float _7241;
  float _7242;
  float _7243;
  float _7244;
  float _7245;
  float _7246;
  float _7318;
  float _7425;
  float _7520;
  float _7526;
  float _7648;
  float _7649;
  float _7650;
  float _7651;
  float _7652;
  float _7653;
  float _7654;
  float _7655;
  float _7656;
  float _7657;
  float _7658;
  float _7659;
  float _7660;
  float _7661;
  float _7742;
  float _7849;
  float _7945;
  float _7951;
  float _8072;
  float _8073;
  float _8074;
  float _8075;
  float _8076;
  float _8077;
  float _8189;
  float _8194;
  float _8195;
  float _8196;
  float _8197;
  float _8198;
  float _8199;
  float _175;
  float _178;
  float _185;
  float _187;
  float _195;
  float _197;
  float _213;
  float _216;
  float _217;
  float _238;
  float _239;
  float _240;
  float _242;
  float _243;
  float _244;
  float _246;
  float _247;
  float _248;
  float _250;
  float _251;
  float _252;
  float _256;
  float _260;
  float _264;
  float _267;
  float _270;
  float _273;
  float _274;
  float _280;
  float _286;
  float _301;
  float _302;
  float _303;
  float _307;
  float _308;
  float _309;
  float _313;
  float _314;
  float _315;
  float _326;
  float _327;
  uint _339;
  float _353;
  float _374;
  float _384;
  float _385;
  float _387;
  float _389;
  float _392;
  float _396;
  float _397;
  float _398;
  float4 _420;
  int _427;
  int _431;
  float _435;
  float _436;
  float _437;
  float _441;
  float _442;
  float _446;
  float _453;
  float _456;
  float _459;
  float _464;
  float _473;
  float _497;
  float _498;
  float _514;
  float _515;
  float _517;
  float _529;
  float _533;
  float _537;
  float _554;
  float _576;
  bool _585;
  float _615;
  float _616;
  float _617;
  float _619;
  float _620;
  float _621;
  float _623;
  float _624;
  float _625;
  float _627;
  float _628;
  float _629;
  float _631;
  float _632;
  float _633;
  float _635;
  float _636;
  float _637;
  float _638;
  float _640;
  float _641;
  float _642;
  float _643;
  int _645;
  int _646;
  float _648;
  float _649;
  float _650;
  float _651;
  float _653;
  float _654;
  float _655;
  float _656;
  float _658;
  float _659;
  float _660;
  float _661;
  float _663;
  float _664;
  float _665;
  float _667;
  float _668;
  float _669;
  float _670;
  float _674;
  float _678;
  float _682;
  float _684;
  float _690;
  float _693;
  float _696;
  float _699;
  float _704;
  float _713;
  float _717;
  float _718;
  bool _719;
  bool _720;
  float _724;
  float _730;
  float _733;
  float _735;
  bool _738;
  bool _739;
  bool _740;
  bool _741;
  float _751;
  float _752;
  float _763;
  float _765;
  float _766;
  float _767;
  float _772;
  float _781;
  float _784;
  float _785;
  float _786;
  float _797;
  float _799;
  float _803;
  float _810;
  float _811;
  float _812;
  float _815;
  float _818;
  float _835;
  float _836;
  float _837;
  float _855;
  float _859;
  float _882;
  bool _885;
  bool _886;
  bool _887;
  bool _888;
  float _920;
  float _926;
  float _931;
  float _938;
  float _942;
  uint _972;
  bool _980;
  bool _986;
  int _988;
  uint _991;
  float _993;
  float _1012;
  float _1019;
  float _1020;
  float _1022;
  float _1023;
  float _1025;
  float _1026;
  float _1027;
  float _1028;
  float _1029;
  float _1032;
  float _1042;
  float _1050;
  float _1057;
  float4 _1089;
  float _1098;
  float _1099;
  float _1102;
  float _1109;
  float _1110;
  float _1111;
  float _1131;
  float _1135;
  float _1139;
  float _1140;
  float _1141;
  bool _1152;
  float _1168;
  float _1169;
  float _1170;
  float _1190;
  float _1194;
  float _1198;
  bool _1209;
  float _1254;
  float _1258;
  float _1262;
  float _1282;
  float _1292;
  float _1293;
  float _1302;
  float _1303;
  float _1306;
  float _1307;
  float _1311;
  float _1312;
  float _1313;
  float _1319;
  float _1343;
  float _1344;
  float _1360;
  float _1361;
  float _1363;
  float _1379;
  float _1383;
  float _1400;
  float _1419;
  float _1456;
  float _1457;
  float _1458;
  float _1460;
  float _1461;
  float _1462;
  float _1464;
  float _1465;
  float _1466;
  float _1468;
  float _1469;
  float _1470;
  float _1472;
  float _1473;
  float _1474;
  float _1476;
  float _1477;
  float _1478;
  float _1479;
  float _1481;
  float _1482;
  float _1483;
  float _1484;
  int _1486;
  int _1487;
  float _1489;
  float _1490;
  float _1491;
  float _1492;
  float _1494;
  float _1495;
  float _1496;
  float _1497;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1504;
  float _1505;
  float _1506;
  float _1508;
  float _1509;
  float _1510;
  float _1511;
  float _1515;
  float _1519;
  float _1523;
  float _1525;
  float _1531;
  float _1534;
  float _1537;
  float _1540;
  float _1545;
  float _1554;
  float _1558;
  float _1559;
  bool _1560;
  bool _1561;
  float _1565;
  float _1571;
  float _1574;
  float _1576;
  bool _1579;
  bool _1580;
  bool _1581;
  bool _1582;
  float _1592;
  float _1593;
  float _1604;
  float _1606;
  float _1607;
  float _1608;
  float _1613;
  float _1622;
  float _1625;
  float _1626;
  float _1627;
  float _1638;
  float _1640;
  float _1644;
  float _1651;
  float _1652;
  float _1653;
  float _1656;
  float _1659;
  float _1676;
  float _1677;
  float _1678;
  float _1696;
  float _1700;
  float _1723;
  bool _1726;
  bool _1727;
  bool _1728;
  bool _1729;
  float _1761;
  float _1767;
  float _1772;
  float _1779;
  float _1783;
  uint _1813;
  float _1820;
  float _1822;
  float _1825;
  float _1831;
  float _1834;
  float _1835;
  float _1836;
  float _1837;
  float _1838;
  float _1864;
  float _1873;
  float _1888;
  float _1889;
  float _1891;
  bool _1904;
  float _1913;
  float _1916;
  float _1922;
  float _1944;
  float _1949;
  float _1951;
  float _1953;
  float _1959;
  float _1962;
  float _1963;
  float _1977;
  float _2012;
  float _2013;
  float _2014;
  float _2016;
  float _2017;
  float _2018;
  float _2020;
  float _2021;
  float _2022;
  float _2024;
  float _2025;
  float _2026;
  float _2030;
  float _2034;
  float _2038;
  float _2041;
  float _2044;
  float _2047;
  float _2048;
  float _2054;
  float _2060;
  float _2075;
  float _2076;
  float _2077;
  float _2081;
  float _2082;
  float _2083;
  float _2087;
  float _2088;
  float _2089;
  float _2100;
  float _2101;
  uint _2113;
  float _2122;
  float _2126;
  int _2147;
  float _2153;
  float _2154;
  float _2158;
  float _2165;
  float _2170;
  float _2173;
  float _2178;
  float _2187;
  float _2230;
  float _2231;
  float _2247;
  float _2248;
  float _2250;
  float _2262;
  float _2266;
  float _2270;
  float _2289;
  float _2305;
  float _2308;
  float _2309;
  float _2341;
  float _2342;
  float _2343;
  float _2345;
  float _2346;
  float _2347;
  float _2349;
  float _2350;
  float _2351;
  float _2353;
  float _2354;
  float _2355;
  float _2357;
  float _2358;
  float _2359;
  float _2361;
  float _2362;
  float _2363;
  float _2364;
  float _2366;
  float _2367;
  float _2368;
  float _2369;
  int _2371;
  int _2372;
  float _2374;
  float _2375;
  float _2376;
  float _2377;
  float _2379;
  float _2380;
  float _2381;
  float _2382;
  float _2384;
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
  float _2400;
  float _2404;
  float _2408;
  float _2410;
  float _2416;
  float _2419;
  float _2422;
  float _2425;
  float _2430;
  float _2439;
  float _2443;
  float _2444;
  bool _2445;
  bool _2446;
  float _2450;
  float _2456;
  float _2459;
  float _2461;
  bool _2464;
  bool _2465;
  bool _2466;
  bool _2467;
  float _2477;
  float _2478;
  float _2489;
  float _2491;
  float _2492;
  float _2493;
  float _2498;
  float _2507;
  float _2510;
  float _2511;
  float _2512;
  float _2523;
  float _2525;
  float _2529;
  float _2536;
  float _2537;
  float _2538;
  float _2541;
  float _2544;
  float _2561;
  float _2562;
  float _2563;
  float _2581;
  float _2585;
  float _2608;
  bool _2611;
  bool _2612;
  bool _2613;
  bool _2614;
  float _2646;
  float _2652;
  float _2657;
  float _2665;
  float _2669;
  uint _2699;
  float _2706;
  float _2722;
  float _2723;
  float _2724;
  float _2725;
  float _2726;
  float _2727;
  float _2728;
  float _2729;
  float _2730;
  int _2731;
  bool _2739;
  float4 _2759;
  float _2761;
  float _2762;
  float _2763;
  float _2764;
  float _2768;
  float _2773;
  float _2774;
  float _2776;
  float _2782;
  float _2804;
  float _2805;
  float _2821;
  float _2822;
  float _2824;
  float _2836;
  float _2840;
  float _2844;
  float _2861;
  float _2883;
  bool _2892;
  float _2917;
  float _2918;
  float _2919;
  float _2921;
  float _2922;
  float _2923;
  float _2925;
  float _2926;
  float _2927;
  float _2929;
  float _2930;
  float _2931;
  float _2933;
  float _2934;
  float _2935;
  float _2937;
  float _2938;
  float _2939;
  float _2940;
  float _2942;
  float _2943;
  float _2944;
  float _2945;
  int _2947;
  int _2948;
  float _2950;
  float _2951;
  float _2952;
  float _2953;
  float _2955;
  float _2956;
  float _2957;
  float _2958;
  float _2960;
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
  float _2976;
  float _2980;
  float _2984;
  float _2986;
  float _2992;
  float _2995;
  float _2998;
  float _3001;
  float _3006;
  float _3015;
  float _3019;
  float _3020;
  bool _3021;
  bool _3022;
  float _3026;
  float _3032;
  float _3035;
  float _3037;
  bool _3040;
  bool _3041;
  bool _3042;
  bool _3043;
  float _3053;
  float _3054;
  float _3065;
  float _3067;
  float _3068;
  float _3069;
  float _3074;
  float _3083;
  float _3086;
  float _3087;
  float _3088;
  float _3099;
  float _3101;
  float _3105;
  float _3112;
  float _3113;
  float _3114;
  float _3117;
  float _3120;
  float _3137;
  float _3138;
  float _3139;
  float _3157;
  float _3161;
  float _3184;
  bool _3187;
  bool _3188;
  bool _3189;
  bool _3190;
  float _3222;
  float _3228;
  float _3233;
  float _3241;
  float _3245;
  uint _3275;
  float _3283;
  float _3284;
  float _3285;
  float _3289;
  float _3294;
  float _3301;
  float _3323;
  float _3324;
  float _3340;
  float _3341;
  float _3343;
  float _3355;
  float _3359;
  float _3363;
  float _3380;
  float _3402;
  float _3435;
  float _3436;
  float _3437;
  float _3439;
  float _3440;
  float _3441;
  float _3443;
  float _3444;
  float _3445;
  float _3447;
  float _3448;
  float _3449;
  float _3451;
  float _3452;
  float _3453;
  float _3455;
  float _3456;
  float _3457;
  float _3458;
  float _3460;
  float _3461;
  float _3462;
  float _3463;
  int _3465;
  int _3466;
  float _3468;
  float _3469;
  float _3470;
  float _3471;
  float _3473;
  float _3474;
  float _3475;
  float _3476;
  float _3478;
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
  float _3494;
  float _3498;
  float _3502;
  float _3504;
  float _3510;
  float _3513;
  float _3516;
  float _3519;
  float _3524;
  float _3533;
  float _3537;
  float _3538;
  bool _3539;
  bool _3540;
  float _3544;
  float _3550;
  float _3553;
  float _3555;
  bool _3558;
  bool _3559;
  bool _3560;
  bool _3561;
  float _3571;
  float _3572;
  float _3583;
  float _3585;
  float _3586;
  float _3587;
  float _3592;
  float _3601;
  float _3604;
  float _3605;
  float _3606;
  float _3617;
  float _3619;
  float _3623;
  float _3630;
  float _3631;
  float _3632;
  float _3635;
  float _3638;
  float _3655;
  float _3656;
  float _3657;
  float _3675;
  float _3679;
  float _3702;
  bool _3705;
  bool _3706;
  bool _3707;
  bool _3708;
  float _3740;
  float _3746;
  float _3751;
  float _3759;
  float _3763;
  uint _3793;
  float _3807;
  float _3811;
  float _3819;
  float _3828;
  float2 _3856;
  float _3859;
  float _3864;
  float _3869;
  float _3870;
  float _3871;
  float _3872;
  float _3873;
  float _3874;
  float _3881;
  float _3884;
  float _3886;
  float _3893;
  float _3894;
  float _3895;
  float _3904;
  float _3906;
  float _3907;
  float _3908;
  float _3910;
  float _3911;
  float _3913;
  float _3914;
  float _3919;
  float _3920;
  float _3921;
  float _3934;
  float _3935;
  float _3936;
  float _3937;
  float _3938;
  float _3939;
  float _3940;
  float _3941;
  float _3942;
  float _3943;
  float _3950;
  float _3954;
  float _3956;
  float _3958;
  float _3966;
  float _3985;
  float _3995;
  float _4004;
  float _4007;
  float _4010;
  float _4013;
  float _4043;
  float _4052;
  float _4053;
  float _4054;
  float _4074;
  float _4078;
  float _4086;
  float _4094;
  float _4102;
  float _4106;
  float _4107;
  float _4123;
  float _4130;
  float _4131;
  float _4132;
  float _4154;
  float _4165;
  uint _4194;
  float _4202;
  float _4208;
  float _4212;
  float _4224;
  float _4238;
  float _4239;
  float _4241;
  float _4242;
  float _4243;
  float _4244;
  float _4252;
  float _4253;
  float4 _4257;
  float _4269;
  float _4273;
  float _4282;
  float _4311;
  int _4314;
  float _4323;
  float _4326;
  float _4327;
  float _4328;
  float _4330;
  float _4331;
  float _4333;
  float _4334;
  float _4335;
  float _4336;
  float _4337;
  float _4340;
  float _4350;
  float _4358;
  float _4365;
  float4 _4398;
  float _4410;
  float _4411;
  float _4420;
  float _4421;
  float _4425;
  float _4426;
  float _4429;
  float _4430;
  float _4436;
  float _4437;
  float _4440;
  float _4443;
  float _4446;
  float _4453;
  float _4476;
  float _4477;
  float _4491;
  float _4492;
  float _4494;
  float _4510;
  float _4514;
  float _4531;
  float _4549;
  float _4588;
  float _4589;
  float _4590;
  float _4592;
  float _4593;
  float _4594;
  float _4596;
  float _4597;
  float _4598;
  float _4600;
  float _4601;
  float _4602;
  float _4604;
  float _4605;
  float _4606;
  float _4608;
  float _4609;
  float _4610;
  float _4611;
  float _4613;
  float _4614;
  float _4615;
  float _4616;
  int _4618;
  int _4619;
  float _4621;
  float _4622;
  float _4623;
  float _4624;
  float _4626;
  float _4627;
  float _4628;
  float _4629;
  float _4631;
  float _4632;
  float _4633;
  float _4634;
  float _4636;
  float _4637;
  float _4638;
  float _4640;
  float _4641;
  float _4642;
  float _4643;
  float _4647;
  float _4651;
  float _4655;
  float _4657;
  float _4663;
  float _4666;
  float _4669;
  float _4672;
  float _4677;
  float _4686;
  float _4690;
  float _4691;
  bool _4692;
  bool _4693;
  float _4697;
  float _4703;
  float _4706;
  float _4708;
  bool _4711;
  bool _4712;
  bool _4713;
  bool _4714;
  float _4724;
  float _4725;
  float _4736;
  float _4738;
  float _4739;
  float _4740;
  float _4745;
  float _4754;
  float _4757;
  float _4758;
  float _4759;
  float _4770;
  float _4772;
  float _4776;
  float _4783;
  float _4784;
  float _4785;
  float _4788;
  float _4791;
  float _4808;
  float _4809;
  float _4810;
  float _4828;
  float _4832;
  float _4855;
  bool _4858;
  bool _4859;
  bool _4860;
  bool _4861;
  float _4893;
  float _4899;
  float _4904;
  float _4911;
  float _4915;
  uint _4945;
  float _4954;
  float _4957;
  float _4963;
  float _4964;
  float _4965;
  float _4966;
  float _4967;
  float _4968;
  float _4989;
  float _5007;
  float _5008;
  float _5010;
  bool _5023;
  float _5032;
  float _5035;
  float _5041;
  float _5064;
  float _5069;
  float _5071;
  float _5073;
  float _5079;
  float _5082;
  float _5083;
  float _5097;
  float _5132;
  float _5133;
  float _5134;
  float _5136;
  float _5137;
  float _5138;
  float _5140;
  float _5141;
  float _5142;
  float _5144;
  float _5145;
  float _5146;
  float _5150;
  float _5154;
  float _5158;
  float _5161;
  float _5164;
  float _5167;
  float _5168;
  float _5174;
  float _5180;
  float _5195;
  float _5196;
  float _5197;
  float _5201;
  float _5202;
  float _5203;
  float _5207;
  float _5208;
  float _5209;
  float _5220;
  float _5221;
  uint _5233;
  float _5242;
  float _5246;
  int _5267;
  float _5273;
  float _5274;
  float _5278;
  float _5285;
  float _5290;
  float _5293;
  float _5298;
  float _5307;
  float _5350;
  float _5351;
  float _5367;
  float _5368;
  float _5370;
  float _5382;
  float _5386;
  float _5390;
  float _5409;
  float _5425;
  float _5428;
  float _5429;
  float _5461;
  float _5462;
  float _5463;
  float _5465;
  float _5466;
  float _5467;
  float _5469;
  float _5470;
  float _5471;
  float _5473;
  float _5474;
  float _5475;
  float _5477;
  float _5478;
  float _5479;
  float _5481;
  float _5482;
  float _5483;
  float _5484;
  float _5486;
  float _5487;
  float _5488;
  float _5489;
  int _5491;
  int _5492;
  float _5494;
  float _5495;
  float _5496;
  float _5497;
  float _5499;
  float _5500;
  float _5501;
  float _5502;
  float _5504;
  float _5505;
  float _5506;
  float _5507;
  float _5509;
  float _5510;
  float _5511;
  float _5513;
  float _5514;
  float _5515;
  float _5516;
  float _5520;
  float _5524;
  float _5528;
  float _5530;
  float _5536;
  float _5539;
  float _5542;
  float _5545;
  float _5550;
  float _5559;
  float _5563;
  float _5564;
  bool _5565;
  bool _5566;
  float _5570;
  float _5576;
  float _5579;
  float _5581;
  bool _5584;
  bool _5585;
  bool _5586;
  bool _5587;
  float _5597;
  float _5598;
  float _5609;
  float _5611;
  float _5612;
  float _5613;
  float _5618;
  float _5627;
  float _5630;
  float _5631;
  float _5632;
  float _5643;
  float _5645;
  float _5649;
  float _5656;
  float _5657;
  float _5658;
  float _5661;
  float _5664;
  float _5681;
  float _5682;
  float _5683;
  float _5701;
  float _5705;
  float _5728;
  bool _5731;
  bool _5732;
  bool _5733;
  bool _5734;
  float _5766;
  float _5772;
  float _5777;
  float _5785;
  float _5789;
  uint _5819;
  float _5826;
  float _5842;
  float _5843;
  float _5844;
  float _5845;
  float _5846;
  float _5847;
  float _5848;
  float _5849;
  float _5850;
  int _5851;
  bool _5859;
  float4 _5879;
  float _5881;
  float _5882;
  float _5883;
  float _5884;
  float _5888;
  float _5893;
  float _5894;
  float _5896;
  float _5902;
  float _5924;
  float _5925;
  float _5941;
  float _5942;
  float _5944;
  float _5956;
  float _5960;
  float _5964;
  float _5981;
  float _6003;
  bool _6012;
  float _6037;
  float _6038;
  float _6039;
  float _6041;
  float _6042;
  float _6043;
  float _6045;
  float _6046;
  float _6047;
  float _6049;
  float _6050;
  float _6051;
  float _6053;
  float _6054;
  float _6055;
  float _6057;
  float _6058;
  float _6059;
  float _6060;
  float _6062;
  float _6063;
  float _6064;
  float _6065;
  int _6067;
  int _6068;
  float _6070;
  float _6071;
  float _6072;
  float _6073;
  float _6075;
  float _6076;
  float _6077;
  float _6078;
  float _6080;
  float _6081;
  float _6082;
  float _6083;
  float _6085;
  float _6086;
  float _6087;
  float _6089;
  float _6090;
  float _6091;
  float _6092;
  float _6096;
  float _6100;
  float _6104;
  float _6106;
  float _6112;
  float _6115;
  float _6118;
  float _6121;
  float _6126;
  float _6135;
  float _6139;
  float _6140;
  bool _6141;
  bool _6142;
  float _6146;
  float _6152;
  float _6155;
  float _6157;
  bool _6160;
  bool _6161;
  bool _6162;
  bool _6163;
  float _6173;
  float _6174;
  float _6185;
  float _6187;
  float _6188;
  float _6189;
  float _6194;
  float _6203;
  float _6206;
  float _6207;
  float _6208;
  float _6219;
  float _6221;
  float _6225;
  float _6232;
  float _6233;
  float _6234;
  float _6237;
  float _6240;
  float _6257;
  float _6258;
  float _6259;
  float _6277;
  float _6281;
  float _6304;
  bool _6307;
  bool _6308;
  bool _6309;
  bool _6310;
  float _6342;
  float _6348;
  float _6353;
  float _6361;
  float _6365;
  uint _6395;
  float _6403;
  float _6404;
  float _6405;
  float _6409;
  float _6414;
  float _6421;
  float _6443;
  float _6444;
  float _6460;
  float _6461;
  float _6463;
  float _6475;
  float _6479;
  float _6483;
  float _6500;
  float _6522;
  float _6555;
  float _6556;
  float _6557;
  float _6559;
  float _6560;
  float _6561;
  float _6563;
  float _6564;
  float _6565;
  float _6567;
  float _6568;
  float _6569;
  float _6571;
  float _6572;
  float _6573;
  float _6575;
  float _6576;
  float _6577;
  float _6578;
  float _6580;
  float _6581;
  float _6582;
  float _6583;
  int _6585;
  int _6586;
  float _6588;
  float _6589;
  float _6590;
  float _6591;
  float _6593;
  float _6594;
  float _6595;
  float _6596;
  float _6598;
  float _6599;
  float _6600;
  float _6601;
  float _6603;
  float _6604;
  float _6605;
  float _6607;
  float _6608;
  float _6609;
  float _6610;
  float _6614;
  float _6618;
  float _6622;
  float _6624;
  float _6630;
  float _6633;
  float _6636;
  float _6639;
  float _6644;
  float _6653;
  float _6657;
  float _6658;
  bool _6659;
  bool _6660;
  float _6664;
  float _6670;
  float _6673;
  float _6675;
  bool _6678;
  bool _6679;
  bool _6680;
  bool _6681;
  float _6691;
  float _6692;
  float _6703;
  float _6705;
  float _6706;
  float _6707;
  float _6712;
  float _6721;
  float _6724;
  float _6725;
  float _6726;
  float _6737;
  float _6739;
  float _6743;
  float _6750;
  float _6751;
  float _6752;
  float _6755;
  float _6758;
  float _6775;
  float _6776;
  float _6777;
  float _6795;
  float _6799;
  float _6822;
  bool _6825;
  bool _6826;
  bool _6827;
  bool _6828;
  float _6860;
  float _6866;
  float _6871;
  float _6879;
  float _6883;
  uint _6913;
  float _6927;
  float _6931;
  float _6939;
  float _6948;
  float2 _6976;
  float _6987;
  float _6988;
  float _6989;
  float _6990;
  float _6991;
  float _6992;
  float _6999;
  float _7002;
  float _7004;
  float _7011;
  float _7012;
  float _7022;
  float _7024;
  float _7026;
  float _7028;
  float _7031;
  float _7037;
  float _7038;
  float _7039;
  float _7052;
  float _7053;
  float _7054;
  float _7055;
  float _7056;
  float _7057;
  float _7058;
  float _7070;
  float _7074;
  float _7079;
  float _7098;
  float _7107;
  float _7115;
  float _7116;
  float _7118;
  float _7120;
  float _7128;
  float _7132;
  float _7153;
  float _7162;
  float _7163;
  float _7164;
  float _7181;
  float _7182;
  float _7183;
  float _7184;
  float _7188;
  float _7195;
  float _7252;
  float _7253;
  float _7254;
  float _7261;
  float _7267;
  float _7268;
  float _7269;
  float _7270;
  float _7273;
  float _7275;
  float _7278;
  float _7280;
  float _7282;
  float _7288;
  float _7289;
  float _7295;
  float _7320;
  float _7325;
  float4 _7328;
  float4 _7333;
  float _7340;
  float _7341;
  float _7345;
  float _7360;
  float4 _7365;
  float4 _7370;
  float _7374;
  float _7380;
  float _7381;
  float _7382;
  float _7383;
  float _7386;
  float _7389;
  float _7396;
  float _7402;
  float _7427;
  float _7432;
  float4 _7433;
  float4 _7437;
  float4 _7447;
  float4 _7451;
  float _7464;
  float _7465;
  float _7466;
  float _7467;
  float _7468;
  float _7474;
  float _7481;
  float _7482;
  float _7484;
  float _7485;
  float _7486;
  float _7487;
  float _7488;
  float _7509;
  float _7510;
  float _7511;
  float _7512;
  float _7513;
  float _7514;
  float _7557;
  float _7563;
  float _7570;
  float _7575;
  float _7587;
  float _7608;
  float _7626;
  float _7627;
  float _7628;
  float _7667;
  float _7668;
  float _7672;
  float _7676;
  float _7677;
  float _7684;
  float _7685;
  float _7691;
  float _7692;
  float _7693;
  float _7694;
  float _7697;
  float _7699;
  float _7702;
  float _7704;
  float _7706;
  float _7712;
  float _7713;
  float _7719;
  float _7744;
  float _7749;
  float4 _7752;
  float4 _7757;
  float _7764;
  float _7765;
  float _7769;
  float _7784;
  float4 _7789;
  float4 _7794;
  float _7798;
  float _7804;
  float _7805;
  float _7806;
  float _7807;
  float _7810;
  float _7813;
  float _7820;
  float _7826;
  float _7851;
  float _7856;
  float4 _7857;
  float4 _7861;
  float4 _7871;
  float4 _7875;
  float _7888;
  float _7889;
  float _7890;
  float _7891;
  float _7892;
  float _7893;
  float _7899;
  float _7906;
  float _7907;
  float _7909;
  float _7910;
  float _7911;
  float _7912;
  float _7913;
  float _7934;
  float _7935;
  float _7936;
  float _7937;
  float _7938;
  float _7939;
  float _7982;
  float _7988;
  float _7995;
  float _8000;
  float _8012;
  float _8033;
  float _8050;
  float _8051;
  float _8052;
  float _8111;
  float _8122;
  float _8123;
  float _8124;
  float _8131;
  float _8132;
  float _8133;
  float _8134;
  float _8135;
  float _8136;
  float _8180;
  int __loop_jump_target = -1;
  float _39[4];
  _45 = _global_0[(((int)((uint)((uint)(_frameNumber.x)) + (uint)(SV_DispatchThreadID.x))) & 3)];
  _50 = (uint)((uint)((int)(_45) % (int)(2))) + (uint)((uint)(SV_DispatchThreadID.x) << 1);
  _51 = (uint)((uint)((int)(_45) / (int)(2))) + (uint)((uint)(SV_DispatchThreadID.y) << 1);
  _52 = (float)((int)(_50));
  _53 = (float)((int)(_51));
  _64 = __3__36__0__0__g_depthHalf.Load(int3(_50, _51, 0));  // [sem: _3__36__0__0__g_depthHalf_load]
  _69 = (((_52 + 0.5f) / (_bufferSizeAndInvSize.x * 0.5f)) * 2.0f) + -1.0f;
  _70 = ((1.0f - ((_53 + 0.5f) / (_bufferSizeAndInvSize.y * 0.5f))) * 2.0f) + -1.0f;
  _71 = max(1e-07f, _64.x);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _107 = mad((_invViewProjRelative[3].z), _71, mad((_invViewProjRelative[3].y), _70, ((_invViewProjRelative[3].x) * _69))) + (_invViewProjRelative[3].w);
  _108 = (mad((_invViewProjRelative[0].z), _71, mad((_invViewProjRelative[0].y), _70, ((_invViewProjRelative[0].x) * _69))) + (_invViewProjRelative[0].w)) / _107;
  _109 = (mad((_invViewProjRelative[1].z), _71, mad((_invViewProjRelative[1].y), _70, ((_invViewProjRelative[1].x) * _69))) + (_invViewProjRelative[1].w)) / _107;
  _110 = (mad((_invViewProjRelative[2].z), _71, mad((_invViewProjRelative[2].y), _70, ((_invViewProjRelative[2].x) * _69))) + (_invViewProjRelative[2].w)) / _107;
  _116 = sqrt(((_109 * _109) + (_108 * _108)) + (_110 * _110));
  _117 = _108 / _116;
  _118 = _109 / _116;
  _119 = _110 / _116;
  _124 = (float)((uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 2) & 1023)));
  _132 = frac(frac(dot(float2(((_124 * 32.665f) + _52), ((_124 * 11.815f) + _53)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _133 = (_64.x < 1e-07f);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _147 = _atmosphereThickness + _earthRadius;
  _148 = _earthRadius + _viewPos.y;
  _149 = dot(float3(_117, _118, _119), float3(_117, _118, _119));
  _151 = dot(float3(_viewPos.x, _148, _viewPos.z), float3(_117, _118, _119)) * 2.0f;
  _152 = dot(float3(_viewPos.x, _148, _viewPos.z), float3(_viewPos.x, _148, _viewPos.z));
  _155 = _151 * _151;
  _156 = _149 * 4.0f;
  _158 = _155 - ((_152 - (_147 * _147)) * _156);
  if (!(_158 < 0.0f)) {
    _166 = ((sqrt(_158) - _151) / (_149 * 2.0f));
  } else {
    _166 = -1.0f;
  }
  if (!(_166 <= 0.0f)) {
    _175 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
    _178 = _cloudPhaseConstFront * _cloudPhaseConstFront;
    _185 = (_175 * _175) + 1.0f;
    _187 = _175 * 2.0f;
    _195 = ((((1.0f - _178) * 3.0f) / ((_178 + 2.0f) * 2.0f)) * 0.07957747f) * (_185 / exp2(log2((_178 + 1.0f) - (_cloudPhaseConstFront * _187)) * 1.5f));
    _197 = _cloudPhaseConstBack * _cloudPhaseConstBack;
    _213 = (((((1.0f - _197) * 3.0f) / ((_197 + 2.0f) * 2.0f)) * 0.039788734f) * (_185 / exp2(log2((_197 + 1.0f) - ((_175 * -2.0f) * _cloudPhaseConstBack)) * 1.5f))) + _195;
    _216 = min(_cloudVisibleRange, _cloudVisibleRange);
    _217 = select(_133, _166, _116);
    if (_renderFlags.x > 0.5f) {
      if ((_cloudDensityVolumeInfo.y & 1) == 0) {
        _345 = 0.0f;
        _346 = 3.4028235e+38f;
        _347 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
      } else {
        if (!(_cloudDensityVolumeInfo.x == 0)) {
          _232 = 0;
          _233 = 3.4028235e+38f;
          _234 = 0.0f;
          _235 = 0;
          while(true) {
            _238 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[0].x;
            _239 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[1].x;
            _240 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[2].x;
            _242 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[0].y;
            _243 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[1].y;
            _244 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[2].y;
            _246 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[0].z;
            _247 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[1].z;
            _248 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[2].z;
            _250 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[0].w;
            _251 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[1].w;
            _252 = __3__37__0__0__g_cloudDensityVolumes[_232]._relativeWorldToLocal[2].w;
            _256 = mad(_246, _viewPos.z, mad(_242, _viewPos.y, (_238 * _viewPos.x))) + _250;
            _260 = mad(_247, _viewPos.z, mad(_243, _viewPos.y, (_239 * _viewPos.x))) + _251;
            _264 = mad(_248, _viewPos.z, mad(_244, _viewPos.y, (_240 * _viewPos.x))) + _252;
            _267 = mad(_246, _119, mad(_242, _118, (_238 * _117)));
            _270 = mad(_247, _119, mad(_243, _118, (_239 * _117)));
            _273 = mad(_248, _119, mad(_244, _118, (_240 * _117)));
            _274 = abs(_267);
            if (!(_274 < 1e-06f) || !(abs(_256) > 0.5f)) {
              _280 = abs(_270);
              if (!(_280 < 1e-06f) || !(abs(_260) > 0.5f)) {
                _286 = abs(_273);
                if (!(_286 < 1e-06f) || !(abs(_264) > 0.5f)) {
                  _301 = max(_274, 1e-06f) * select((_267 < 0.0f), -1.0f, 1.0f);
                  _302 = max(_280, 1e-06f) * select((_270 < 0.0f), -1.0f, 1.0f);
                  _303 = max(_286, 1e-06f) * select((_273 < 0.0f), -1.0f, 1.0f);
                  _307 = (-0.5f - _256) / _301;
                  _308 = (-0.5f - _260) / _302;
                  _309 = (-0.5f - _264) / _303;
                  _313 = (0.5f - _256) / _301;
                  _314 = (0.5f - _260) / _302;
                  _315 = (0.5f - _264) / _303;
                  _326 = max(max(max(min(_307, _313), min(_308, _314)), min(_309, _315)), 0.0f);
                  _327 = min(min(min(max(_307, _313), max(_308, _314)), max(_309, _315)), _217);
                  if (!(_327 < _326)) {
                    _336 = min(_233, _326);
                    _337 = max(_234, _327);
                    _338 = ((int)(_235) | (int)((int)((uint)(1) << (_232 & 31))));
                  } else {
                    _336 = _233;
                    _337 = _234;
                    _338 = _235;
                  }
                } else {
                  _336 = _233;
                  _337 = _234;
                  _338 = _235;
                }
              } else {
                _336 = _233;
                _337 = _234;
                _338 = _235;
              }
            } else {
              _336 = _233;
              _337 = _234;
              _338 = _235;
            }
            _339 = (uint)((uint)(_232)) + (uint)(1);
            if ((uint)_339 < (uint)_cloudDensityVolumeInfo.x) {
              _232 = _339;
              _233 = _336;
              _234 = _337;
              _235 = _338;
              continue;
            }
            _345 = _336;
            _346 = _337;
            _347 = _338;
            break;
          }
        } else {
          _345 = 3.4028235e+38f;
          _346 = 0.0f;
          _347 = 0;
        }
      }
      _353 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0033333334f));
      _358 = 1;
      _359 = 0.0f;
      _360 = 0.0f;
      _361 = 0.0f;
      _362 = 0.0f;
      _363 = 0.0f;
      _364 = 0.0f;
      _365 = 0.0f;
      _366 = 0.0f;
      _367 = 0.0f;
      _368 = 0.0f;
      _369 = 0.0f;
      _370 = 0;
      _371 = 0;
      _372 = 128.0f;
      while(true) {
        _374 = (float)((int)(_370));
        _384 = (((exp2(select(((uint)_370 < (uint)12), (_374 * 0.33f), (_374 + -8.039999f)) * _353) + -1.0f) * (_216 + -128.0f)) / (exp2(_353 * 300.0f) + -1.0f)) + 128.0f;
        _385 = min(_384, _217);
        _387 = max(0.0f, (_385 - _372));
        _389 = (_387 * _132) + _372;
        _392 = _distanceScale * _387;
        _396 = (_389 * _117) + _viewPos.x;
        _397 = (_389 * _118) + _viewPos.y;
        _398 = (_389 * _119) + _viewPos.z;
        // [sem: _3__36__0__0__g_climateTex2_sampleLod]
        _420 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_396 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_398 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
        _427 = select(((_389 >= _345) && (_389 <= _346)), _347, 0);
        _431 = select(((_385 >= _345) && (_385 <= _346)), _347, 0);
        _435 = (_385 * _117) + _viewPos.x;
        _436 = (_385 * _118) + _viewPos.y;
        _437 = (_385 * _119) + _viewPos.z;
        _441 = _435 - _viewPos.x;
        _442 = _437 - _viewPos.z;
        _446 = sqrt((_441 * _441) + (_442 * _442));
        _453 = _cloudAltitude - (max(((_446 * _446) + -400000.0f), 0.0f) * 1e-06f);
        _456 = _cloudDetailScale * 0.004f;
        _459 = _cloudBaseScale * 0.0004f;
        _464 = _earthRadius + _436;
        _473 = ((sqrt(((_437 * _437) + (_435 * _435)) + (_464 * _464)) - _453) - _earthRadius) / _cloudThickness;
        if (!((_473 < 0.0f) || (_473 > 1.0f))) {
          _497 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
          _498 = _436 - _453;
          _514 = _456 / _459;
          _515 = _514 * _459;
          _517 = _514 * _497;
          _529 = saturate(max((_446 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
          _533 = (4.0f - (_529 * 3.0f)) * (_cloudDetailScale * 0.001884f);
          _537 = _515 * 4.355f;
          _554 = 1.0f - sqrt(saturate((1.0f - _473) * 1.4285715f));
          _576 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_456 * _435) - (_515 * _cloudScroll.x)), ((_498 * _456) - _517), ((_456 * _437) - (_515 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_529 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_533 * _435) - (_537 * _cloudScroll.x)), ((_533 * _498) - (_517 * 4.355f)), ((_533 * _437) - (_537 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_473 * 4.0f) * 0.8f) + 0.2f);
          _583 = (saturate(((saturate(saturate(((_420.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_459 * (_435 - _cloudScroll.x)), ((_459 * _498) - _497), (_459 * (_437 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_554 * 0.5f), ((_554 * _554) * _554))) * saturate(_473 * 10.0f)) - _576) / (1.0f - _576)) * _cloudAlpha);
        } else {
          _583 = 0.0f;
        }
        _585 = (_cloudFadeRange > 1e-05f);
        if (_585) {
          _595 = saturate((((1.0f - _cloudNear) * _446) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
        } else {
          _595 = 1.0f;  // [sem: expr_sat]
        }
        if (!((_431 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
          _606 = 0.0f;
          _607 = 0;
          while(true) {
            _971 = _606;
            if (!((((int)((uint)(1) << (_607 & 31))) & _431) == 0)) {
              _615 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[0].x;
              _616 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[1].x;
              _617 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[2].x;
              _619 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[0].y;
              _620 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[1].y;
              _621 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[2].y;
              _623 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[0].z;
              _624 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[1].z;
              _625 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[2].z;
              _627 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[0].w;
              _628 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[1].w;
              _629 = __3__37__0__0__g_cloudDensityVolumes[_607]._relativeWorldToLocal[2].w;
              _631 = __3__37__0__0__g_cloudDensityVolumes[_607]._shapeParameter.x;
              _632 = __3__37__0__0__g_cloudDensityVolumes[_607]._shapeParameter.z;
              _633 = __3__37__0__0__g_cloudDensityVolumes[_607]._shapeParameter.w;
              _635 = __3__37__0__0__g_cloudDensityVolumes[_607]._macroNoiseParameter.x;
              _636 = __3__37__0__0__g_cloudDensityVolumes[_607]._macroNoiseParameter.y;
              _637 = __3__37__0__0__g_cloudDensityVolumes[_607]._macroNoiseParameter.z;
              _638 = __3__37__0__0__g_cloudDensityVolumes[_607]._macroNoiseParameter.w;
              _640 = __3__37__0__0__g_cloudDensityVolumes[_607]._detailNoiseParameter.x;
              _641 = __3__37__0__0__g_cloudDensityVolumes[_607]._detailNoiseParameter.y;
              _642 = __3__37__0__0__g_cloudDensityVolumes[_607]._detailNoiseParameter.z;
              _643 = __3__37__0__0__g_cloudDensityVolumes[_607]._detailNoiseParameter.w;
              _645 = __3__37__0__0__g_cloudDensityVolumes[_607]._modeParameter.x;
              _646 = __3__37__0__0__g_cloudDensityVolumes[_607]._modeParameter.y;
              _648 = __3__37__0__0__g_cloudDensityVolumes[_607]._vortexParameter.x;
              _649 = __3__37__0__0__g_cloudDensityVolumes[_607]._vortexParameter.y;
              _650 = __3__37__0__0__g_cloudDensityVolumes[_607]._vortexParameter.z;
              _651 = __3__37__0__0__g_cloudDensityVolumes[_607]._vortexParameter.w;
              _653 = __3__37__0__0__g_cloudDensityVolumes[_607]._spiralParameter.x;
              _654 = __3__37__0__0__g_cloudDensityVolumes[_607]._spiralParameter.y;
              _655 = __3__37__0__0__g_cloudDensityVolumes[_607]._spiralParameter.z;
              _656 = __3__37__0__0__g_cloudDensityVolumes[_607]._spiralParameter.w;
              _658 = __3__37__0__0__g_cloudDensityVolumes[_607]._animationParameter.x;
              _659 = __3__37__0__0__g_cloudDensityVolumes[_607]._animationParameter.y;
              _660 = __3__37__0__0__g_cloudDensityVolumes[_607]._animationParameter.z;
              _661 = __3__37__0__0__g_cloudDensityVolumes[_607]._animationParameter.w;
              _663 = __3__37__0__0__g_cloudDensityVolumes[_607]._flowParameter.x;
              _664 = __3__37__0__0__g_cloudDensityVolumes[_607]._flowParameter.y;
              _665 = __3__37__0__0__g_cloudDensityVolumes[_607]._flowParameter.z;
              _667 = __3__37__0__0__g_cloudDensityVolumes[_607]._tornadoParameter.x;
              _668 = __3__37__0__0__g_cloudDensityVolumes[_607]._tornadoParameter.y;
              _669 = __3__37__0__0__g_cloudDensityVolumes[_607]._tornadoParameter.z;
              _670 = __3__37__0__0__g_cloudDensityVolumes[_607]._tornadoParameter.w;
              _674 = mad(_623, _437, mad(_619, _436, (_615 * _435))) + _627;
              _678 = mad(_624, _437, mad(_620, _436, (_616 * _435))) + _628;
              _682 = mad(_625, _437, mad(_621, _436, (_617 * _435))) + _629;
              _684 = abs(_678);
              _690 = max((abs(_674) + -0.5f), max((_684 + -0.5f), (abs(_682) + -0.5f)));
              if (!(_690 >= 0.0f)) {
                _693 = __3__37__0__0__g_cloudDensityVolumes[_607]._shapeParameter.y;
                _696 = max((saturate(_693) * 0.5f), 0.0001f);
                _699 = saturate((_696 + _690) / _696);  // [sem: expr_sat]
                _704 = 1.0f - ((_699 * _699) * (3.0f - (_699 * 2.0f)));
                if (!(_704 <= 0.0f)) {
                  _713 = sqrt((_682 * _682) + (_674 * _674)) * 2.0f;
                  _717 = saturate(1.0f - (_713 / max(_649, 0.0001f)));  // [sem: expr_sat]
                  _718 = _time.x * _661;
                  _719 = (_645 == 1);
                  _720 = (_645 == 2);
                  if (_719) {
                    _797 = exp2(log2(_717) * max(_656, 0.0001f));
                    _799 = max(_655, 0.0001f);
                    _803 = _678 / (((max(_654, 0.0001f) - _799) * _797) + _799);
                    _810 = (((_717 * _717) * _648) * ((_713 * _650) + _678)) - (_717 * _718);
                    _811 = sin(_810);
                    _812 = cos(_810);
                    _815 = (_812 * _674) - (_811 * _682);
                    _818 = (_812 * _682) + (_811 * _674);
                    if (_720) {
                      _820 = 0.0f;
                      _821 = 1.0f;
                      _822 = _797;
                      _823 = _717;
                      _824 = _815;
                      _825 = _803;
                      _826 = _818;
                      _846 = _821;
                      _847 = _822;
                      _848 = _823;
                      _849 = _824;
                      _850 = _825;
                      _851 = _826;
                      _852 = max(_820, ((_684 * 2.0f) + -1.0f));
                    } else {
                      _831 = _797;
                      _832 = _815;
                      _833 = _803;
                      _834 = _818;
                      _835 = _832 * 2.0f;
                      _836 = _833 * 2.0f;
                      _837 = _834 * 2.0f;
                      _846 = 1.0f;
                      _847 = _831;
                      _848 = _717;
                      _849 = _832;
                      _850 = _833;
                      _851 = _834;
                      _852 = (sqrt(((_836 * _836) + (_835 * _835)) + (_837 * _837)) + -1.0f);
                    }
                  } else {
                    if (_720) {
                      _724 = saturate(_678 + 0.5f);  // [sem: expr_sat]
                      _730 = max(_667, 0.0001f);
                      _733 = ((max(_668, 0.0001f) - _730) * exp2(log2(_724) * max(_669, 0.0001f))) + _730;
                      _735 = atan(_682 / _674);
                      _738 = (_674 < 0.0f);
                      _739 = (_674 == 0.0f);
                      _740 = (_682 >= 0.0f);
                      _741 = (_682 < 0.0f);
                      _751 = max(((float)((uint)((uint)(_646)))), 1.0f);
                      _752 = _724 * _650;
                      _763 = _733 * _643;
                      _765 = max((_733 - _763), 0.0f);
                      _766 = _713 - _765;
                      _767 = _765 * (acos(min(max(cos(((((_752 * -6.2831855f) - _718) + select((_739 && _740), 1.5707964f, select((_739 && _741), -1.5707964f, select((_738 && _741), (_735 + -3.1415927f), select((_738 && _740), (_735 + 3.1415927f), _735))))) * _751) + _653), -1.0f), 1.0f)) / _751);
                      _772 = _713 - _733;
                      _781 = saturate(1.0f - (_713 / _733));  // [sem: expr_sat]
                      _784 = ((_781 + _752) * _648) - _718;
                      _785 = sin(_784);
                      _786 = cos(_784);
                      _820 = ((saturate(_651) * (((-0.0f - _772) - _763) + sqrt((_766 * _766) + (_767 * _767)))) + _772);
                      _821 = _733;
                      _822 = 0.0f;
                      _823 = _781;
                      _824 = ((_786 * _674) - (_785 * _682));
                      _825 = _678;
                      _826 = ((_786 * _682) + (_785 * _674));
                      _846 = _821;
                      _847 = _822;
                      _848 = _823;
                      _849 = _824;
                      _850 = _825;
                      _851 = _826;
                      _852 = max(_820, ((_684 * 2.0f) + -1.0f));
                    } else {
                      _831 = 0.0f;
                      _832 = _674;
                      _833 = _678;
                      _834 = _682;
                      _835 = _832 * 2.0f;
                      _836 = _833 * 2.0f;
                      _837 = _834 * 2.0f;
                      _846 = 1.0f;
                      _847 = _831;
                      _848 = _717;
                      _849 = _832;
                      _850 = _833;
                      _851 = _834;
                      _852 = (sqrt(((_836 * _836) + (_835 * _835)) + (_837 * _837)) + -1.0f);
                    }
                  }
                  if (_636 > 0.0f) {
                    _855 = _time.x * _659;
                    _859 = max(_635, 0.0001f);
                    _877 = (_852 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_855 * _663) + _637) + (_859 * _849)), (((_855 * _664) + _638) + (_859 * _850)), (((_855 * _665) + _642) + (_859 * _851))), 0.0f)).x) + -0.5f) * _636));
                  } else {
                    _877 = _852;
                  }
                  if (_719 && (_651 > 0.0f)) {
                    _882 = atan(_682 / _674);
                    _885 = (_674 < 0.0f);
                    _886 = (_674 == 0.0f);
                    _887 = (_682 >= 0.0f);
                    _888 = (_682 < 0.0f);
                    _910 = (_877 - (((_651 * 0.5f) * _848) * cos(((((_713 * _650) - _718) + select((_886 && _887), 1.5707964f, select((_886 && _888), -1.5707964f, select((_885 && _888), (_882 + -3.1415927f), select((_885 && _887), (_882 + 3.1415927f), _882))))) * max(((float)((uint)((uint)(_646)))), 1.0f)) + _653)));
                  } else {
                    _910 = _877;
                  }
                  if (_720 && (_670 > 0.0f)) {
                    _918 = max(_910, ((_846 * _670) - _713));
                  } else {
                    _918 = _910;
                  }
                  _920 = max(_633, 0.0001f);
                  _926 = saturate((((_632 - (_847 * _658)) + _918) + _920) / (_920 * 2.0f));  // [sem: expr_sat]
                  _931 = 1.0f - ((_926 * _926) * (3.0f - (_926 * 2.0f)));
                  if (!((_931 >= 1.0f) || ((_641 <= 0.0f) || (_931 <= 0.0f)))) {
                    _938 = _time.x * _660;
                    _942 = max(_640, 0.0001f);
                    // [sem: expr_sat]
                    _966 = saturate(_931 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_938 * _663) + _637) + (_942 * _849)), (((_938 * _664) + _638) + (_942 * _850)), (((_938 * _665) + _642) + (_942 * _851))), 0.0f)).x) * _641) * saturate(1.0f - abs((_931 * 2.0f) + -1.0f))));
                  } else {
                    _966 = _931;  // [sem: expr_sat]
                  }
                  _971 = (((_704 * _631) * _966) + _606);
                } else {
                  _971 = _606;
                }
              } else {
                _971 = _606;
              }
            } else {
              _971 = _606;
            }
            _972 = (uint)((uint)(_607)) + (uint)(1);
            if ((uint)_972 < (uint)_cloudDensityVolumeInfo.x) {
              _606 = _971;
              _607 = _972;
              continue;
            }
            while(true) {
              _977 = saturate(_971);  // [sem: _971_sat]
              break;
            }
            break;
          }
        } else {
          _977 = 0.0f;  // [sem: _971_sat]
        }
        _980 = (saturate(_977 + (_595 * _583)) > 0.001f);
        if ((_371 != 0) && _980) {
          _4178 = _372;
          _4179 = 0;
          _4180 = ((int)((uint)((uint)(_370)) + (uint)(-2)));
          _4181 = _369;
          _4182 = _368;
          _4183 = _367;
          _4184 = _366;
          _4185 = _365;
          _4186 = _364;
          _4187 = _363;
          _4188 = _362;
          _4189 = _361;
          _4190 = _360;
          _4191 = _359;
          _4192 = _358;
          _4193 = 0;
        } else {
          _986 = ((uint)_370 < (uint)298);
          _988 = ((int)(uint)(_980)) ^ 1;
          _991 = (uint)((uint)(_370)) + (uint)((uint)(select(_986, _988, 0)));
          _993 = _cloudThickness + _cloudAltitude;
          if (!(_384 < _217) || !(((_347 != 0) && (_384 < _346)) || (_397 < _993))) {
            _1003 = (_viewPos.y > _993);
          } else {
            _1003 = true;
          }
          _1012 = saturate((_389 + -4000.0f) * 0.001f);  // [sem: expr_sat]
          _1019 = _397 + _earthRadius;
          _1020 = _396 * _396;
          _1022 = _398 * _398;
          _1023 = _1022 + _1020;
          _1025 = sqrt(_1023 + (_1019 * _1019));
          _1026 = _396 / _1025;
          _1027 = _1019 / _1025;
          _1028 = _398 / _1025;
          _1029 = _1025 - _earthRadius;
          if (_1029 > 0.0f) {
            _1032 = dot(float3(_1026, _1027, _1028), float3(_117, _118, _119));
            _1042 = min(max(_1029, 16.0f), (_atmosphereThickness + -16.0f));
            _1050 = max(_1042, 0.0f);
            _1057 = (-0.0f - sqrt((_1050 + (_earthRadius * 2.0f)) * _1050)) / (_1050 + _earthRadius);
            if (_1032 > _1057) {
              _1080 = ((exp2(log2(saturate((_1032 - _1057) / (1.0f - _1057))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1080 = ((exp2(log2(saturate((_1057 - _1032) / (_1057 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _1089 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_1042 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _1080, ((1.0f - exp2(-1.1541561f - (dot(float3(_1026, _1027, _1028), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            _1094 = _1089.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1095 = _1089.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1096 = _1089.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          } else {
            _1094 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1095 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1096 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          }
          _1098 = _396 - _viewPos.x;
          _1099 = _398 - _viewPos.z;
          if (_1012 < 0.9999f) {
            _1102 = _397 - _viewPos.y;
            _1109 = _396 - (_staticShadowPosition[1].x);
            _1110 = _397 - (_staticShadowPosition[1].y);
            _1111 = _398 - (_staticShadowPosition[1].z);
            _1131 = mad((_shadowProjRelativeTexScale[1][0].z), _1111, mad((_shadowProjRelativeTexScale[1][0].y), _1110, ((_shadowProjRelativeTexScale[1][0].x) * _1109))) + (_shadowProjRelativeTexScale[1][0].w);
            _1135 = mad((_shadowProjRelativeTexScale[1][1].z), _1111, mad((_shadowProjRelativeTexScale[1][1].y), _1110, ((_shadowProjRelativeTexScale[1][1].x) * _1109))) + (_shadowProjRelativeTexScale[1][1].w);
            _1139 = mad((_shadowProjRelativeTexScale[1][2].z), _1111, mad((_shadowProjRelativeTexScale[1][2].y), _1110, ((_shadowProjRelativeTexScale[1][2].x) * _1109))) + (_shadowProjRelativeTexScale[1][2].w);
            _1140 = 2.0f / _shadowSizeAndInvSize.y;
            _1141 = 1.0f - _1140;
            if (!(((!(_1131 <= _1141)) || (!(_1131 >= _1140))) || (!(_1135 <= _1141)))) {
              _1152 = (_1139 >= 0.0001f) && ((_1139 <= 1.0f) && (_1135 >= _1140));
              _1159 = select(_1152, _1131, 0.0f);
              _1160 = select(_1152, _1135, 0.0f);
              _1161 = select(_1152, _1139, 0.0f);
              _1162 = select(_1152, 0.0002f, 0.0f);
              _1163 = ((int)(uint)(_1152));
            } else {
              _1159 = 0.0f;
              _1160 = 0.0f;
              _1161 = 0.0f;
              _1162 = 0.0f;
              _1163 = 0;
            }
            _1168 = _396 - (_staticShadowPosition[0].x);
            _1169 = _397 - (_staticShadowPosition[0].y);
            _1170 = _398 - (_staticShadowPosition[0].z);
            _1190 = mad((_shadowProjRelativeTexScale[0][0].z), _1170, mad((_shadowProjRelativeTexScale[0][0].y), _1169, ((_shadowProjRelativeTexScale[0][0].x) * _1168))) + (_shadowProjRelativeTexScale[0][0].w);
            _1194 = mad((_shadowProjRelativeTexScale[0][1].z), _1170, mad((_shadowProjRelativeTexScale[0][1].y), _1169, ((_shadowProjRelativeTexScale[0][1].x) * _1168))) + (_shadowProjRelativeTexScale[0][1].w);
            _1198 = mad((_shadowProjRelativeTexScale[0][2].z), _1170, mad((_shadowProjRelativeTexScale[0][2].y), _1169, ((_shadowProjRelativeTexScale[0][2].x) * _1168))) + (_shadowProjRelativeTexScale[0][2].w);
            if (!(((!(_1190 >= _1140)) || (!(_1190 <= _1141))) || (!(_1194 <= _1141)))) {
              _1209 = (_1198 >= 0.0001f) && ((_1194 >= _1140) && (_1198 <= 1.0f));
              _1217 = select(_1209, _1190, _1159);
              _1218 = select(_1209, _1194, _1160);
              _1219 = select(_1209, _1198, _1161);
              _1220 = select(_1209, 0.0002f, _1162);
              _1221 = select(_1209, 1, _1163);
              _1222 = select(_1209, 0, _1163);
            } else {
              _1217 = _1159;
              _1218 = _1160;
              _1219 = _1161;
              _1220 = _1162;
              _1221 = _1163;
              _1222 = _1163;
            }
            [branch]
            if (!(_1221 == 0)) {
              // [sem: expr_sat]
              _1234 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1217, _1218, ((float)((uint)((uint)(_1222))))), (_1219 - _1220))).x));
            } else {
              _1234 = 1.0f;  // [sem: expr_sat]
            }
            _1254 = mad((_terrainShadowProjRelativeTexScale[0].z), _1099, mad((_terrainShadowProjRelativeTexScale[0].y), _1102, ((_terrainShadowProjRelativeTexScale[0].x) * _1098))) + (_terrainShadowProjRelativeTexScale[0].w);
            _1258 = mad((_terrainShadowProjRelativeTexScale[1].z), _1099, mad((_terrainShadowProjRelativeTexScale[1].y), _1102, ((_terrainShadowProjRelativeTexScale[1].x) * _1098))) + (_terrainShadowProjRelativeTexScale[1].w);
            _1262 = mad((_terrainShadowProjRelativeTexScale[2].z), _1099, mad((_terrainShadowProjRelativeTexScale[2].y), _1102, ((_terrainShadowProjRelativeTexScale[2].x) * _1098))) + (_terrainShadowProjRelativeTexScale[2].w);
            if (saturate(_1254) == _1254) {
              if ((_1262 >= 0.0001f) && ((_1262 <= 1.0f) && (saturate(_1258) == _1258))) {
                // [sem: expr_sat]
                _1281 = saturate(1.0f - ((__3__36__0__0__g_terrainShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2(_1254, _1258), (_1262 + -0.005f))).x));
              } else {
                _1281 = 1.0f;  // [sem: expr_sat]
              }
            } else {
              _1281 = 1.0f;  // [sem: expr_sat]
            }
            _1282 = min(_1234, _1281);
            _1287 = (lerp(_1282, 1.0f, _1012));  // [sem: blended]
          } else {
            _1287 = 1.0f;  // [sem: blended]
          }
          _1292 = max(_1029, 0.01f);
          _1293 = -0.0f - _1292;
          _1302 = exp2((_1293 / _rayleighScaledHeight) * 1.442695f);
          _1303 = exp2((_1293 / _mieScaledHeight) * 1.442695f);
          _1306 = (_1098 * _1098) + (_1099 * _1099);
          _1307 = sqrt(_1306);
          _1311 = max(((_1307 * _1307) + -400000.0f), 0.0f) * 1e-06f;
          _1312 = _cloudAltitude - _1311;
          _1313 = _earthRadius + _397;
          _1319 = ((sqrt((_1313 * _1313) + _1023) - _earthRadius) - _1312) / _cloudThickness;
          if (!((_1319 < 0.0f) || (_1319 > 1.0f))) {
            _1343 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _1344 = _397 - _1312;
            _1360 = _456 / _459;
            _1361 = _1360 * _459;
            _1363 = _1360 * _1343;
            _1379 = (4.0f - (saturate(max((_1307 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _1383 = _1361 * 4.355f;
            _1400 = 1.0f - sqrt(saturate((1.0f - _1319) * 1.4285715f));
            _1419 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_456 * _396) - (_1361 * _cloudScroll.x)), ((_1344 * _456) - _1363), ((_456 * _398) - (_1361 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1379 * _396) - (_1383 * _cloudScroll.x)), ((_1379 * _1344) - (_1363 * 4.355f)), ((_1379 * _398) - (_1383 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1319 * 4.0f) * 0.8f) + 0.2f);
            _1426 = (saturate(((saturate(saturate(((_420.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_459 * (_396 - _cloudScroll.x)), ((_1344 * _459) - _1343), (_459 * (_398 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1400 * 0.5f), ((_1400 * _1400) * _1400))) * saturate(_1319 * 10.0f)) - _1419) / (1.0f - _1419)) * _cloudAlpha);
          } else {
            _1426 = 0.0f;
          }
          if (_585) {
            _1436 = saturate(((_1307 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _1436 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_427 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _1447 = 0.0f;
            _1448 = 0;
            while(true) {
              _1812 = _1447;
              if (!((((int)((uint)(1) << (_1448 & 31))) & _427) == 0)) {
                _1456 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[0].x;
                _1457 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[1].x;
                _1458 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[2].x;
                _1460 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[0].y;
                _1461 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[1].y;
                _1462 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[2].y;
                _1464 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[0].z;
                _1465 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[1].z;
                _1466 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[2].z;
                _1468 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[0].w;
                _1469 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[1].w;
                _1470 = __3__37__0__0__g_cloudDensityVolumes[_1448]._relativeWorldToLocal[2].w;
                _1472 = __3__37__0__0__g_cloudDensityVolumes[_1448]._shapeParameter.x;
                _1473 = __3__37__0__0__g_cloudDensityVolumes[_1448]._shapeParameter.z;
                _1474 = __3__37__0__0__g_cloudDensityVolumes[_1448]._shapeParameter.w;
                _1476 = __3__37__0__0__g_cloudDensityVolumes[_1448]._macroNoiseParameter.x;
                _1477 = __3__37__0__0__g_cloudDensityVolumes[_1448]._macroNoiseParameter.y;
                _1478 = __3__37__0__0__g_cloudDensityVolumes[_1448]._macroNoiseParameter.z;
                _1479 = __3__37__0__0__g_cloudDensityVolumes[_1448]._macroNoiseParameter.w;
                _1481 = __3__37__0__0__g_cloudDensityVolumes[_1448]._detailNoiseParameter.x;
                _1482 = __3__37__0__0__g_cloudDensityVolumes[_1448]._detailNoiseParameter.y;
                _1483 = __3__37__0__0__g_cloudDensityVolumes[_1448]._detailNoiseParameter.z;
                _1484 = __3__37__0__0__g_cloudDensityVolumes[_1448]._detailNoiseParameter.w;
                _1486 = __3__37__0__0__g_cloudDensityVolumes[_1448]._modeParameter.x;
                _1487 = __3__37__0__0__g_cloudDensityVolumes[_1448]._modeParameter.y;
                _1489 = __3__37__0__0__g_cloudDensityVolumes[_1448]._vortexParameter.x;
                _1490 = __3__37__0__0__g_cloudDensityVolumes[_1448]._vortexParameter.y;
                _1491 = __3__37__0__0__g_cloudDensityVolumes[_1448]._vortexParameter.z;
                _1492 = __3__37__0__0__g_cloudDensityVolumes[_1448]._vortexParameter.w;
                _1494 = __3__37__0__0__g_cloudDensityVolumes[_1448]._spiralParameter.x;
                _1495 = __3__37__0__0__g_cloudDensityVolumes[_1448]._spiralParameter.y;
                _1496 = __3__37__0__0__g_cloudDensityVolumes[_1448]._spiralParameter.z;
                _1497 = __3__37__0__0__g_cloudDensityVolumes[_1448]._spiralParameter.w;
                _1499 = __3__37__0__0__g_cloudDensityVolumes[_1448]._animationParameter.x;
                _1500 = __3__37__0__0__g_cloudDensityVolumes[_1448]._animationParameter.y;
                _1501 = __3__37__0__0__g_cloudDensityVolumes[_1448]._animationParameter.z;
                _1502 = __3__37__0__0__g_cloudDensityVolumes[_1448]._animationParameter.w;
                _1504 = __3__37__0__0__g_cloudDensityVolumes[_1448]._flowParameter.x;
                _1505 = __3__37__0__0__g_cloudDensityVolumes[_1448]._flowParameter.y;
                _1506 = __3__37__0__0__g_cloudDensityVolumes[_1448]._flowParameter.z;
                _1508 = __3__37__0__0__g_cloudDensityVolumes[_1448]._tornadoParameter.x;
                _1509 = __3__37__0__0__g_cloudDensityVolumes[_1448]._tornadoParameter.y;
                _1510 = __3__37__0__0__g_cloudDensityVolumes[_1448]._tornadoParameter.z;
                _1511 = __3__37__0__0__g_cloudDensityVolumes[_1448]._tornadoParameter.w;
                _1515 = mad(_1464, _398, mad(_1460, _397, (_1456 * _396))) + _1468;
                _1519 = mad(_1465, _398, mad(_1461, _397, (_1457 * _396))) + _1469;
                _1523 = mad(_1466, _398, mad(_1462, _397, (_1458 * _396))) + _1470;
                _1525 = abs(_1519);
                _1531 = max((abs(_1515) + -0.5f), max((_1525 + -0.5f), (abs(_1523) + -0.5f)));
                if (!(_1531 >= 0.0f)) {
                  _1534 = __3__37__0__0__g_cloudDensityVolumes[_1448]._shapeParameter.y;
                  _1537 = max((saturate(_1534) * 0.5f), 0.0001f);
                  _1540 = saturate((_1537 + _1531) / _1537);  // [sem: expr_sat]
                  _1545 = 1.0f - ((_1540 * _1540) * (3.0f - (_1540 * 2.0f)));
                  if (!(_1545 <= 0.0f)) {
                    _1554 = sqrt((_1523 * _1523) + (_1515 * _1515)) * 2.0f;
                    _1558 = saturate(1.0f - (_1554 / max(_1490, 0.0001f)));  // [sem: expr_sat]
                    _1559 = _time.x * _1502;
                    _1560 = (_1486 == 1);
                    _1561 = (_1486 == 2);
                    if (_1560) {
                      _1638 = exp2(log2(_1558) * max(_1497, 0.0001f));
                      _1640 = max(_1496, 0.0001f);
                      _1644 = _1519 / (((max(_1495, 0.0001f) - _1640) * _1638) + _1640);
                      _1651 = (((_1558 * _1558) * _1489) * ((_1554 * _1491) + _1519)) - (_1558 * _1559);
                      _1652 = sin(_1651);
                      _1653 = cos(_1651);
                      _1656 = (_1653 * _1515) - (_1652 * _1523);
                      _1659 = (_1653 * _1523) + (_1652 * _1515);
                      if (_1561) {
                        _1661 = 0.0f;
                        _1662 = 1.0f;
                        _1663 = _1638;
                        _1664 = _1558;
                        _1665 = _1656;
                        _1666 = _1644;
                        _1667 = _1659;
                        _1687 = _1662;
                        _1688 = _1663;
                        _1689 = _1664;
                        _1690 = _1665;
                        _1691 = _1666;
                        _1692 = _1667;
                        _1693 = max(_1661, ((_1525 * 2.0f) + -1.0f));
                      } else {
                        _1672 = _1638;
                        _1673 = _1656;
                        _1674 = _1644;
                        _1675 = _1659;
                        _1676 = _1673 * 2.0f;
                        _1677 = _1674 * 2.0f;
                        _1678 = _1675 * 2.0f;
                        _1687 = 1.0f;
                        _1688 = _1672;
                        _1689 = _1558;
                        _1690 = _1673;
                        _1691 = _1674;
                        _1692 = _1675;
                        _1693 = (sqrt(((_1677 * _1677) + (_1676 * _1676)) + (_1678 * _1678)) + -1.0f);
                      }
                    } else {
                      if (_1561) {
                        _1565 = saturate(_1519 + 0.5f);  // [sem: expr_sat]
                        _1571 = max(_1508, 0.0001f);
                        _1574 = ((max(_1509, 0.0001f) - _1571) * exp2(log2(_1565) * max(_1510, 0.0001f))) + _1571;
                        _1576 = atan(_1523 / _1515);
                        _1579 = (_1515 < 0.0f);
                        _1580 = (_1515 == 0.0f);
                        _1581 = (_1523 >= 0.0f);
                        _1582 = (_1523 < 0.0f);
                        _1592 = max(((float)((uint)((uint)(_1487)))), 1.0f);
                        _1593 = _1565 * _1491;
                        _1604 = _1574 * _1484;
                        _1606 = max((_1574 - _1604), 0.0f);
                        _1607 = _1554 - _1606;
                        _1608 = _1606 * (acos(min(max(cos(((((_1593 * -6.2831855f) - _1559) + select((_1580 && _1581), 1.5707964f, select((_1580 && _1582), -1.5707964f, select((_1579 && _1582), (_1576 + -3.1415927f), select((_1579 && _1581), (_1576 + 3.1415927f), _1576))))) * _1592) + _1494), -1.0f), 1.0f)) / _1592);
                        _1613 = _1554 - _1574;
                        _1622 = saturate(1.0f - (_1554 / _1574));  // [sem: expr_sat]
                        _1625 = ((_1622 + _1593) * _1489) - _1559;
                        _1626 = sin(_1625);
                        _1627 = cos(_1625);
                        _1661 = ((saturate(_1492) * (((-0.0f - _1613) - _1604) + sqrt((_1607 * _1607) + (_1608 * _1608)))) + _1613);
                        _1662 = _1574;
                        _1663 = 0.0f;
                        _1664 = _1622;
                        _1665 = ((_1627 * _1515) - (_1626 * _1523));
                        _1666 = _1519;
                        _1667 = ((_1627 * _1523) + (_1626 * _1515));
                        _1687 = _1662;
                        _1688 = _1663;
                        _1689 = _1664;
                        _1690 = _1665;
                        _1691 = _1666;
                        _1692 = _1667;
                        _1693 = max(_1661, ((_1525 * 2.0f) + -1.0f));
                      } else {
                        _1672 = 0.0f;
                        _1673 = _1515;
                        _1674 = _1519;
                        _1675 = _1523;
                        _1676 = _1673 * 2.0f;
                        _1677 = _1674 * 2.0f;
                        _1678 = _1675 * 2.0f;
                        _1687 = 1.0f;
                        _1688 = _1672;
                        _1689 = _1558;
                        _1690 = _1673;
                        _1691 = _1674;
                        _1692 = _1675;
                        _1693 = (sqrt(((_1677 * _1677) + (_1676 * _1676)) + (_1678 * _1678)) + -1.0f);
                      }
                    }
                    if (_1477 > 0.0f) {
                      _1696 = _time.x * _1500;
                      _1700 = max(_1476, 0.0001f);
                      _1718 = (_1693 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1696 * _1504) + _1478) + (_1700 * _1690)), (((_1696 * _1505) + _1479) + (_1700 * _1691)), (((_1696 * _1506) + _1483) + (_1700 * _1692))), 0.0f)).x) + -0.5f) * _1477));
                    } else {
                      _1718 = _1693;
                    }
                    if (_1560 && (_1492 > 0.0f)) {
                      _1723 = atan(_1523 / _1515);
                      _1726 = (_1515 < 0.0f);
                      _1727 = (_1515 == 0.0f);
                      _1728 = (_1523 >= 0.0f);
                      _1729 = (_1523 < 0.0f);
                      _1751 = (_1718 - (((_1492 * 0.5f) * _1689) * cos(((((_1554 * _1491) - _1559) + select((_1727 && _1728), 1.5707964f, select((_1727 && _1729), -1.5707964f, select((_1726 && _1729), (_1723 + -3.1415927f), select((_1726 && _1728), (_1723 + 3.1415927f), _1723))))) * max(((float)((uint)((uint)(_1487)))), 1.0f)) + _1494)));
                    } else {
                      _1751 = _1718;
                    }
                    if (_1561 && (_1511 > 0.0f)) {
                      _1759 = max(_1751, ((_1687 * _1511) - _1554));
                    } else {
                      _1759 = _1751;
                    }
                    _1761 = max(_1474, 0.0001f);
                    _1767 = saturate((((_1473 - (_1688 * _1499)) + _1759) + _1761) / (_1761 * 2.0f));  // [sem: expr_sat]
                    _1772 = 1.0f - ((_1767 * _1767) * (3.0f - (_1767 * 2.0f)));
                    if (!((_1772 >= 1.0f) || ((_1482 <= 0.0f) || (_1772 <= 0.0f)))) {
                      _1779 = _time.x * _1501;
                      _1783 = max(_1481, 0.0001f);
                      // [sem: expr_sat]
                      _1807 = saturate(_1772 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1779 * _1504) + _1478) + (_1783 * _1690)), (((_1779 * _1505) + _1479) + (_1783 * _1691)), (((_1779 * _1506) + _1483) + (_1783 * _1692))), 0.0f)).x) * _1482) * saturate(1.0f - abs((_1772 * 2.0f) + -1.0f))));
                    } else {
                      _1807 = _1772;  // [sem: expr_sat]
                    }
                    _1812 = (((_1545 * _1472) * _1807) + _1447);
                  } else {
                    _1812 = _1447;
                  }
                } else {
                  _1812 = _1447;
                }
              } else {
                _1812 = _1447;
              }
              _1813 = (uint)((uint)(_1448)) + (uint)(1);
              if ((uint)_1813 < (uint)_cloudDensityVolumeInfo.x) {
                _1447 = _1812;
                _1448 = _1813;
                continue;
              }
              while(true) {
                _1818 = saturate(_1812);  // [sem: _1812_sat]
                break;
              }
              break;
            }
          } else {
            _1818 = 0.0f;  // [sem: _1812_sat]
          }
          _1820 = saturate(_1818 + (_1436 * _1426));  // [sem: expr_sat]
          _1822 = _397 - _viewPos.y;
          _1825 = sqrt(_1306 + (_1822 * _1822));
          _1831 = max(1e-06f, (_heightFogScale * 0.0025f));
          _1834 = _1831 * _cloudScroll.x;
          _1835 = _1831 * _cloudScroll.y;
          _1836 = _1831 * _396;
          _1837 = _1831 * _397;
          _1838 = _1831 * _398;
          // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
          _1864 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1836 * 6.393882f) - (_1834 * 1.871f)), (_1837 * 6.393882f), ((_1838 * 6.393882f) - (_1835 * 1.871f))), 0.0f);
          _1873 = _heightFogFalloff * -0.14426951f;
          _1888 = (((saturate(_1825 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1836 * 0.5127f) - _1834), (_1837 * 0.5127f), ((_1838 * 0.5127f) - _1835)), 0.0f)).x))) * (((0.5f - _1864.x) * saturate((_1825 + -300.0f) * 0.0025f)) + _1864.x)) * ((exp2(_1873 * max(0.001f, (_1292 - _heightFogBaseline))) * _heightFogDensity) + (exp2(_1873 * max(0.001f, ((_1292 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _420.z)))) * _420.y));
          _1889 = _397 - _cloudAltitude;
          _1891 = (_1311 + _1889) / _cloudThickness;
          if (!(_sunDirection.y > 0.0f)) {
            if (!(_sunDirection.y > _moonDirection.y)) {
              _1901 = _moonDirection.x;
              _1902 = _moonDirection.y;
              _1903 = _moonDirection.z;
            } else {
              _1901 = _sunDirection.x;
              _1902 = _sunDirection.y;
              _1903 = _sunDirection.z;
            }
          } else {
            _1901 = _sunDirection.x;
            _1902 = _sunDirection.y;
            _1903 = _sunDirection.z;
          }
          _1904 = (_1902 > 0.0f);
          _1913 = ((0.5f - (((float)((int)((int)((int)(uint)(_1904)) - (int)((int)(uint)((int)(_1902 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _1312;
          if (_397 < _1312) {
            _1916 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1901, _1902, _1903));
            _1922 = select((abs(_1916) < 1e-08f), 1e+08f, ((_1913 - dot(float3(0.0f, 1.0f, 0.0f), float3(_396, _397, _398))) / _1916));
            _1928 = ((_1922 * _1901) + _396);
            _1929 = _1913;
            _1930 = ((_1922 * _1903) + _398);
          } else {
            _1928 = _396;
            _1929 = _397;
            _1930 = _398;
          }
          _1944 = _cloudScatteringCoefficient / _distanceScale;
          _1949 = abs(_1902);
          _1951 = saturate(_1949 * 4.0f);  // [sem: expr_sat]
          _1953 = (_1951 * _1951) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1928 - _viewPos.x) * 5e-05f) + 0.5f), ((_1929 - _cloudAltitude) / _cloudThickness), (((_1930 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _1944);
          _1959 = ((1.0f - _1953) * saturate((_1889 - _cloudThickness) * 0.1f)) + _1953;
          _1962 = -0.0f - _1944;
          _1963 = (log2(_1959) * 0.6931472f) / _1962;
          if ((_1820 > 0.001f) && ((_1818 > 0.001f) || ((_1891 >= 0.0f) && (_1891 <= 1.0f)))) {
            _1977 = (_397 - _1312) / _cloudThickness;
            if (((_1977 >= 0.0f) && (_1977 <= 1.0f)) && (_1949 > 0.001f)) {
              _1994 = min(300.0f, (((_1312 - _397) + select(_1904, _cloudThickness, 0.0f)) / _1902));
            } else {
              _1994 = 300.0f;
            }
            if ((_cloudDensityVolumeInfo.y & 1) == 0) {
              _2119 = 0.0f;
              _2120 = 3.4028235e+38f;
              _2121 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
            } else {
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _2006 = 0;
                _2007 = 3.4028235e+38f;
                _2008 = 0.0f;
                _2009 = 0;
                while(true) {
                  _2012 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[0].x;
                  _2013 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[1].x;
                  _2014 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[2].x;
                  _2016 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[0].y;
                  _2017 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[1].y;
                  _2018 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[2].y;
                  _2020 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[0].z;
                  _2021 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[1].z;
                  _2022 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[2].z;
                  _2024 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[0].w;
                  _2025 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[1].w;
                  _2026 = __3__37__0__0__g_cloudDensityVolumes[_2006]._relativeWorldToLocal[2].w;
                  _2030 = mad(_2020, _398, mad(_2016, _397, (_2012 * _396))) + _2024;
                  _2034 = mad(_2021, _398, mad(_2017, _397, (_2013 * _396))) + _2025;
                  _2038 = mad(_2022, _398, mad(_2018, _397, (_2014 * _396))) + _2026;
                  _2041 = mad(_2020, _1903, mad(_2016, _1902, (_2012 * _1901)));
                  _2044 = mad(_2021, _1903, mad(_2017, _1902, (_2013 * _1901)));
                  _2047 = mad(_2022, _1903, mad(_2018, _1902, (_2014 * _1901)));
                  _2048 = abs(_2041);
                  if (!(_2048 < 1e-06f) || !(abs(_2030) > 0.5f)) {
                    _2054 = abs(_2044);
                    if (!(_2054 < 1e-06f) || !(abs(_2034) > 0.5f)) {
                      _2060 = abs(_2047);
                      if (!(_2060 < 1e-06f) || !(abs(_2038) > 0.5f)) {
                        _2075 = max(_2048, 1e-06f) * select((_2041 < 0.0f), -1.0f, 1.0f);
                        _2076 = max(_2054, 1e-06f) * select((_2044 < 0.0f), -1.0f, 1.0f);
                        _2077 = max(_2060, 1e-06f) * select((_2047 < 0.0f), -1.0f, 1.0f);
                        _2081 = (-0.5f - _2030) / _2075;
                        _2082 = (-0.5f - _2034) / _2076;
                        _2083 = (-0.5f - _2038) / _2077;
                        _2087 = (0.5f - _2030) / _2075;
                        _2088 = (0.5f - _2034) / _2076;
                        _2089 = (0.5f - _2038) / _2077;
                        _2100 = max(max(max(min(_2081, _2087), min(_2082, _2088)), min(_2083, _2089)), 0.0f);
                        _2101 = min(min(min(max(_2081, _2087), max(_2082, _2088)), max(_2083, _2089)), 3.4028235e+38f);
                        if (!(_2101 < _2100)) {
                          _2110 = min(_2007, _2100);
                          _2111 = max(_2008, _2101);
                          _2112 = ((int)(_2009) | (int)((int)((uint)(1) << (_2006 & 31))));
                        } else {
                          _2110 = _2007;
                          _2111 = _2008;
                          _2112 = _2009;
                        }
                      } else {
                        _2110 = _2007;
                        _2111 = _2008;
                        _2112 = _2009;
                      }
                    } else {
                      _2110 = _2007;
                      _2111 = _2008;
                      _2112 = _2009;
                    }
                  } else {
                    _2110 = _2007;
                    _2111 = _2008;
                    _2112 = _2009;
                  }
                  _2113 = (uint)((uint)(_2006)) + (uint)(1);
                  if ((uint)_2113 < (uint)_cloudDensityVolumeInfo.x) {
                    _2006 = _2113;
                    _2007 = _2110;
                    _2008 = _2111;
                    _2009 = _2112;
                    continue;
                  }
                  _2119 = _2110;
                  _2120 = _2111;
                  _2121 = _2112;
                  break;
                }
              } else {
                _2119 = 3.4028235e+38f;
                _2120 = 0.0f;
                _2121 = 0;
              }
            }
            _2122 = _1994 * 0.2f;
            _2126 = _1994 * 0.1f;
            _2134 = 0.0f;
            _2135 = _2122;
            _2136 = (_2122 * _1901);
            _2137 = (_2122 * _1902);
            _2138 = (_2122 * _1903);
            _2139 = _2126;
            _2140 = ((_2126 * _1901) + _396);
            _2141 = ((_2126 * _1902) + _397);
            _2142 = ((_2126 * _1903) + _398);
            _2143 = 0;
            while(true) {
              _2147 = select(((_2139 >= _2119) && (_2139 <= _2120)), _2121, 0);
              _2153 = _2140 - _viewPos.x;
              _2154 = _2142 - _viewPos.z;
              _2158 = sqrt((_2153 * _2153) + (_2154 * _2154));
              _2165 = _cloudAltitude - (max(((_2158 * _2158) + -400000.0f), 0.0f) * 1e-06f);
              _2170 = _cloudDetailScale * 0.004f;
              _2173 = _cloudBaseScale * 0.0004f;
              _2178 = _earthRadius + _2141;
              _2187 = ((sqrt(((_2142 * _2142) + (_2140 * _2140)) + (_2178 * _2178)) - _2165) - _earthRadius) / _cloudThickness;
              if (!((_2187 < 0.0f) || (_2187 > 1.0f))) {
                _2230 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2231 = _2141 - _2165;
                _2247 = _2170 / _2173;
                _2248 = _2247 * _2173;
                _2250 = _2247 * _2230;
                _2262 = saturate(max((_2158 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2266 = (4.0f - (_2262 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2270 = _2248 * 4.355f;
                _2289 = 1.0f - sqrt(saturate((1.0f - _2187) * 1.4285715f));
                // [sem: expr_sat]
                _2305 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_2140 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2142 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2173 * (_2140 - _cloudScroll.x)), ((_2173 * _2231) - _2230), (_2173 * (_2142 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2289 * 0.5f), ((_2289 * _2289) * _2289))) * saturate(_2187 * 10.0f);
                _2308 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2266 * _2140) - (_2270 * _cloudScroll.x)), ((_2266 * _2231) - (_2250 * 4.355f)), ((_2266 * _2142) - (_2270 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2170 * _2140) - (_2248 * _cloudScroll.x)), ((_2170 * _2231) - _2250), ((_2170 * _2142) - (_2248 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_2187 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                _2309 = _2308 * ((_2262 * 0.4f) + 0.1f);
                _2321 = (saturate((_2305 - _2308) / (1.0f - _2308)) * _cloudAlpha);
                _2322 = (saturate((_2305 - _2309) / (1.0f - _2309)) * _cloudAlpha);
              } else {
                _2321 = 0.0f;
                _2322 = 0.0f;
              }
              if (!((_2147 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                _2332 = 0.0f;
                _2333 = 0;
                while(true) {
                  _2698 = _2332;
                  if (!((((int)((uint)(1) << (_2333 & 31))) & _2147) == 0)) {
                    _2341 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[0].x;
                    _2342 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[1].x;
                    _2343 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[2].x;
                    _2345 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[0].y;
                    _2346 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[1].y;
                    _2347 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[2].y;
                    _2349 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[0].z;
                    _2350 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[1].z;
                    _2351 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[2].z;
                    _2353 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[0].w;
                    _2354 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[1].w;
                    _2355 = __3__37__0__0__g_cloudDensityVolumes[_2333]._relativeWorldToLocal[2].w;
                    _2357 = __3__37__0__0__g_cloudDensityVolumes[_2333]._shapeParameter.x;
                    _2358 = __3__37__0__0__g_cloudDensityVolumes[_2333]._shapeParameter.z;
                    _2359 = __3__37__0__0__g_cloudDensityVolumes[_2333]._shapeParameter.w;
                    _2361 = __3__37__0__0__g_cloudDensityVolumes[_2333]._macroNoiseParameter.x;
                    _2362 = __3__37__0__0__g_cloudDensityVolumes[_2333]._macroNoiseParameter.y;
                    _2363 = __3__37__0__0__g_cloudDensityVolumes[_2333]._macroNoiseParameter.z;
                    _2364 = __3__37__0__0__g_cloudDensityVolumes[_2333]._macroNoiseParameter.w;
                    _2366 = __3__37__0__0__g_cloudDensityVolumes[_2333]._detailNoiseParameter.x;
                    _2367 = __3__37__0__0__g_cloudDensityVolumes[_2333]._detailNoiseParameter.y;
                    _2368 = __3__37__0__0__g_cloudDensityVolumes[_2333]._detailNoiseParameter.z;
                    _2369 = __3__37__0__0__g_cloudDensityVolumes[_2333]._detailNoiseParameter.w;
                    _2371 = __3__37__0__0__g_cloudDensityVolumes[_2333]._modeParameter.x;
                    _2372 = __3__37__0__0__g_cloudDensityVolumes[_2333]._modeParameter.y;
                    _2374 = __3__37__0__0__g_cloudDensityVolumes[_2333]._vortexParameter.x;
                    _2375 = __3__37__0__0__g_cloudDensityVolumes[_2333]._vortexParameter.y;
                    _2376 = __3__37__0__0__g_cloudDensityVolumes[_2333]._vortexParameter.z;
                    _2377 = __3__37__0__0__g_cloudDensityVolumes[_2333]._vortexParameter.w;
                    _2379 = __3__37__0__0__g_cloudDensityVolumes[_2333]._spiralParameter.x;
                    _2380 = __3__37__0__0__g_cloudDensityVolumes[_2333]._spiralParameter.y;
                    _2381 = __3__37__0__0__g_cloudDensityVolumes[_2333]._spiralParameter.z;
                    _2382 = __3__37__0__0__g_cloudDensityVolumes[_2333]._spiralParameter.w;
                    _2384 = __3__37__0__0__g_cloudDensityVolumes[_2333]._animationParameter.x;
                    _2385 = __3__37__0__0__g_cloudDensityVolumes[_2333]._animationParameter.y;
                    _2386 = __3__37__0__0__g_cloudDensityVolumes[_2333]._animationParameter.z;
                    _2387 = __3__37__0__0__g_cloudDensityVolumes[_2333]._animationParameter.w;
                    _2389 = __3__37__0__0__g_cloudDensityVolumes[_2333]._flowParameter.x;
                    _2390 = __3__37__0__0__g_cloudDensityVolumes[_2333]._flowParameter.y;
                    _2391 = __3__37__0__0__g_cloudDensityVolumes[_2333]._flowParameter.z;
                    _2393 = __3__37__0__0__g_cloudDensityVolumes[_2333]._tornadoParameter.x;
                    _2394 = __3__37__0__0__g_cloudDensityVolumes[_2333]._tornadoParameter.y;
                    _2395 = __3__37__0__0__g_cloudDensityVolumes[_2333]._tornadoParameter.z;
                    _2396 = __3__37__0__0__g_cloudDensityVolumes[_2333]._tornadoParameter.w;
                    _2400 = mad(_2349, _2142, mad(_2345, _2141, (_2341 * _2140))) + _2353;
                    _2404 = mad(_2350, _2142, mad(_2346, _2141, (_2342 * _2140))) + _2354;
                    _2408 = mad(_2351, _2142, mad(_2347, _2141, (_2343 * _2140))) + _2355;
                    _2410 = abs(_2404);
                    _2416 = max((abs(_2400) + -0.5f), max((_2410 + -0.5f), (abs(_2408) + -0.5f)));
                    if (!(_2416 >= 0.0f)) {
                      _2419 = __3__37__0__0__g_cloudDensityVolumes[_2333]._shapeParameter.y;
                      _2422 = max((saturate(_2419) * 0.5f), 0.0001f);
                      _2425 = saturate((_2422 + _2416) / _2422);  // [sem: expr_sat]
                      _2430 = 1.0f - ((_2425 * _2425) * (3.0f - (_2425 * 2.0f)));
                      if (!(_2430 <= 0.0f)) {
                        _2439 = sqrt((_2408 * _2408) + (_2400 * _2400)) * 2.0f;
                        _2443 = saturate(1.0f - (_2439 / max(_2375, 0.0001f)));  // [sem: expr_sat]
                        _2444 = _time.x * _2387;
                        _2445 = (_2371 == 1);
                        _2446 = (_2371 == 2);
                        if (_2445) {
                          _2523 = exp2(log2(_2443) * max(_2382, 0.0001f));
                          _2525 = max(_2381, 0.0001f);
                          _2529 = _2404 / (((max(_2380, 0.0001f) - _2525) * _2523) + _2525);
                          _2536 = (((_2443 * _2443) * _2374) * ((_2439 * _2376) + _2404)) - (_2443 * _2444);
                          _2537 = sin(_2536);
                          _2538 = cos(_2536);
                          _2541 = (_2538 * _2400) - (_2537 * _2408);
                          _2544 = (_2538 * _2408) + (_2537 * _2400);
                          if (_2446) {
                            _2546 = 0.0f;
                            _2547 = 1.0f;
                            _2548 = _2523;
                            _2549 = _2443;
                            _2550 = _2541;
                            _2551 = _2529;
                            _2552 = _2544;
                            _2572 = _2547;
                            _2573 = _2548;
                            _2574 = _2549;
                            _2575 = _2550;
                            _2576 = _2551;
                            _2577 = _2552;
                            _2578 = max(_2546, ((_2410 * 2.0f) + -1.0f));
                          } else {
                            _2557 = _2523;
                            _2558 = _2541;
                            _2559 = _2529;
                            _2560 = _2544;
                            _2561 = _2558 * 2.0f;
                            _2562 = _2559 * 2.0f;
                            _2563 = _2560 * 2.0f;
                            _2572 = 1.0f;
                            _2573 = _2557;
                            _2574 = _2443;
                            _2575 = _2558;
                            _2576 = _2559;
                            _2577 = _2560;
                            _2578 = (sqrt(((_2562 * _2562) + (_2561 * _2561)) + (_2563 * _2563)) + -1.0f);
                          }
                        } else {
                          if (_2446) {
                            _2450 = saturate(_2404 + 0.5f);  // [sem: expr_sat]
                            _2456 = max(_2393, 0.0001f);
                            _2459 = ((max(_2394, 0.0001f) - _2456) * exp2(log2(_2450) * max(_2395, 0.0001f))) + _2456;
                            _2461 = atan(_2408 / _2400);
                            _2464 = (_2400 < 0.0f);
                            _2465 = (_2400 == 0.0f);
                            _2466 = (_2408 >= 0.0f);
                            _2467 = (_2408 < 0.0f);
                            _2477 = max(((float)((uint)((uint)(_2372)))), 1.0f);
                            _2478 = _2450 * _2376;
                            _2489 = _2459 * _2369;
                            _2491 = max((_2459 - _2489), 0.0f);
                            _2492 = _2439 - _2491;
                            _2493 = _2491 * (acos(min(max(cos(((((_2478 * -6.2831855f) - _2444) + select((_2465 && _2466), 1.5707964f, select((_2465 && _2467), -1.5707964f, select((_2464 && _2467), (_2461 + -3.1415927f), select((_2464 && _2466), (_2461 + 3.1415927f), _2461))))) * _2477) + _2379), -1.0f), 1.0f)) / _2477);
                            _2498 = _2439 - _2459;
                            _2507 = saturate(1.0f - (_2439 / _2459));  // [sem: expr_sat]
                            _2510 = ((_2507 + _2478) * _2374) - _2444;
                            _2511 = sin(_2510);
                            _2512 = cos(_2510);
                            _2546 = ((saturate(_2377) * (((-0.0f - _2498) - _2489) + sqrt((_2492 * _2492) + (_2493 * _2493)))) + _2498);
                            _2547 = _2459;
                            _2548 = 0.0f;
                            _2549 = _2507;
                            _2550 = ((_2512 * _2400) - (_2511 * _2408));
                            _2551 = _2404;
                            _2552 = ((_2512 * _2408) + (_2511 * _2400));
                            _2572 = _2547;
                            _2573 = _2548;
                            _2574 = _2549;
                            _2575 = _2550;
                            _2576 = _2551;
                            _2577 = _2552;
                            _2578 = max(_2546, ((_2410 * 2.0f) + -1.0f));
                          } else {
                            _2557 = 0.0f;
                            _2558 = _2400;
                            _2559 = _2404;
                            _2560 = _2408;
                            _2561 = _2558 * 2.0f;
                            _2562 = _2559 * 2.0f;
                            _2563 = _2560 * 2.0f;
                            _2572 = 1.0f;
                            _2573 = _2557;
                            _2574 = _2443;
                            _2575 = _2558;
                            _2576 = _2559;
                            _2577 = _2560;
                            _2578 = (sqrt(((_2562 * _2562) + (_2561 * _2561)) + (_2563 * _2563)) + -1.0f);
                          }
                        }
                        if (_2362 > 0.0f) {
                          _2581 = _time.x * _2385;
                          _2585 = max(_2361, 0.0001f);
                          _2603 = (_2578 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2581 * _2389) + _2363) + (_2585 * _2575)), (((_2581 * _2390) + _2364) + (_2585 * _2576)), (((_2581 * _2391) + _2368) + (_2585 * _2577))), 0.0f)).x) + -0.5f) * _2362));
                        } else {
                          _2603 = _2578;
                        }
                        if (_2445 && (_2377 > 0.0f)) {
                          _2608 = atan(_2408 / _2400);
                          _2611 = (_2400 < 0.0f);
                          _2612 = (_2400 == 0.0f);
                          _2613 = (_2408 >= 0.0f);
                          _2614 = (_2408 < 0.0f);
                          _2636 = (_2603 - (((_2377 * 0.5f) * _2574) * cos(((((_2439 * _2376) - _2444) + select((_2612 && _2613), 1.5707964f, select((_2612 && _2614), -1.5707964f, select((_2611 && _2614), (_2608 + -3.1415927f), select((_2611 && _2613), (_2608 + 3.1415927f), _2608))))) * max(((float)((uint)((uint)(_2372)))), 1.0f)) + _2379)));
                        } else {
                          _2636 = _2603;
                        }
                        if (_2446 && (_2396 > 0.0f)) {
                          _2644 = max(_2636, ((_2572 * _2396) - _2439));
                        } else {
                          _2644 = _2636;
                        }
                        _2646 = max(_2359, 0.0001f);
                        _2652 = saturate((((_2358 - (_2573 * _2384)) + _2644) + _2646) / (_2646 * 2.0f));  // [sem: expr_sat]
                        _2657 = 1.0f - ((_2652 * _2652) * (3.0f - (_2652 * 2.0f)));
                        if (!((_2657 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_2367 <= 0.0f)) || (_2657 <= 0.0f)))) {
                          _2665 = _time.x * _2386;
                          _2669 = max(_2366, 0.0001f);
                          // [sem: expr_sat]
                          _2693 = saturate(_2657 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2665 * _2389) + _2363) + (_2669 * _2575)), (((_2665 * _2390) + _2364) + (_2669 * _2576)), (((_2665 * _2391) + _2368) + (_2669 * _2577))), 0.0f)).x) * _2367) * saturate(1.0f - abs((_2657 * 2.0f) + -1.0f))));
                        } else {
                          _2693 = _2657;  // [sem: expr_sat]
                        }
                        _2698 = (((_2430 * _2357) * _2693) + _2332);
                      } else {
                        _2698 = _2332;
                      }
                    } else {
                      _2698 = _2332;
                    }
                  } else {
                    _2698 = _2332;
                  }
                  _2699 = (uint)((uint)(_2333)) + (uint)(1);
                  if ((uint)_2699 < (uint)_cloudDensityVolumeInfo.x) {
                    _2332 = _2698;
                    _2333 = _2699;
                    continue;
                  }
                  while(true) {
                    _2704 = saturate(_2698);  // [sem: _2698_sat]
                    break;
                  }
                  break;
                }
              } else {
                _2704 = 0.0f;  // [sem: _2698_sat]
              }
              _2706 = saturate(_2704 + _2322);  // [sem: expr_sat]
              _2722 = (((exp2((((_2134 * -0.0072134747f) * _2135) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_2704 + _2321) - _2706)) + _2706) * _2135) + _2134;
              _2723 = _2139 + _2135;
              _2724 = _2140 + _2136;
              _2725 = _2141 + _2137;
              _2726 = _2142 + _2138;
              _2727 = _2135 * 1.3f;
              _2728 = _2136 * 1.3f;
              _2729 = _2137 * 1.3f;
              _2730 = _2138 * 1.3f;
              _2731 = (int)(_2143) + (int)(1);
              if (!(_2731 == 6)) {
                _2134 = _2722;
                _2135 = _2727;
                _2136 = _2728;
                _2137 = _2729;
                _2138 = _2730;
                _2139 = _2723;
                _2140 = _2724;
                _2141 = _2725;
                _2142 = _2726;
                _2143 = _2731;
                continue;
              }
              _2739 = ((_cloudDensityVolumeInfo.y & 2) != 0);
              // [sem: _3__36__0__0__g_climateTex2_sampleLod]
              _2759 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_396 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_398 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
              _2761 = _396 + 50.0f;
              _2762 = _397 + 200.0f;
              _2763 = _2761 - _viewPos.x;
              _2764 = _398 - _viewPos.z;
              _2768 = sqrt((_2763 * _2763) + (_2764 * _2764));
              _2773 = _cloudAltitude - (max(((_2768 * _2768) + -400000.0f), 0.0f) * 1e-06f);
              _2774 = _earthRadius + _2762;
              _2776 = _2774 * _2774;
              _2782 = ((sqrt(((_2761 * _2761) + _1022) + _2776) - _earthRadius) - _2773) / _cloudThickness;
              if (!((_2782 < 0.0f) || (_2782 > 1.0f))) {
                _2804 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2805 = _2762 - _2773;
                _2821 = _2170 / _2173;
                _2822 = _2821 * _2173;
                _2824 = _2821 * _2804;
                _2836 = saturate(max((_2768 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2840 = (4.0f - (_2836 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2844 = _2822 * 4.355f;
                _2861 = 1.0f - sqrt(saturate((1.0f - _2782) * 1.4285715f));
                _2883 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2170 * _2761) - (_2822 * _cloudScroll.x)), ((_2805 * _2170) - _2824), ((_2170 * _398) - (_2822 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_2836 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2840 * _2761) - (_2844 * _cloudScroll.x)), ((_2840 * _2805) - (_2824 * 4.355f)), ((_2840 * _398) - (_2844 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2782 * 4.0f) * 0.8f) + 0.2f);
                _2890 = (saturate(((saturate(saturate(((_2759.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2173 * (_2761 - _cloudScroll.x)), ((_2805 * _2173) - _2804), (_2173 * (_398 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2861 * 0.5f), ((_2861 * _2861) * _2861))) * saturate(_2782 * 10.0f)) - _2883) / (1.0f - _2883)) * _cloudAlpha);
              } else {
                _2890 = 0.0f;
              }
              _2892 = (_cloudFadeRange > 1e-05f);
              if (_2892) {
                _2902 = saturate(((_2768 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _2902 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _2910 = 0.0f;
                _2911 = 0;
                while(true) {
                  _3274 = _2910;
                  if (!((uint)(_2911 & 16) > (uint)15)) {
                    _2917 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[0].x;
                    _2918 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[1].x;
                    _2919 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[2].x;
                    _2921 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[0].y;
                    _2922 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[1].y;
                    _2923 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[2].y;
                    _2925 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[0].z;
                    _2926 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[1].z;
                    _2927 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[2].z;
                    _2929 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[0].w;
                    _2930 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[1].w;
                    _2931 = __3__37__0__0__g_cloudDensityVolumes[_2911]._relativeWorldToLocal[2].w;
                    _2933 = __3__37__0__0__g_cloudDensityVolumes[_2911]._shapeParameter.x;
                    _2934 = __3__37__0__0__g_cloudDensityVolumes[_2911]._shapeParameter.z;
                    _2935 = __3__37__0__0__g_cloudDensityVolumes[_2911]._shapeParameter.w;
                    _2937 = __3__37__0__0__g_cloudDensityVolumes[_2911]._macroNoiseParameter.x;
                    _2938 = __3__37__0__0__g_cloudDensityVolumes[_2911]._macroNoiseParameter.y;
                    _2939 = __3__37__0__0__g_cloudDensityVolumes[_2911]._macroNoiseParameter.z;
                    _2940 = __3__37__0__0__g_cloudDensityVolumes[_2911]._macroNoiseParameter.w;
                    _2942 = __3__37__0__0__g_cloudDensityVolumes[_2911]._detailNoiseParameter.x;
                    _2943 = __3__37__0__0__g_cloudDensityVolumes[_2911]._detailNoiseParameter.y;
                    _2944 = __3__37__0__0__g_cloudDensityVolumes[_2911]._detailNoiseParameter.z;
                    _2945 = __3__37__0__0__g_cloudDensityVolumes[_2911]._detailNoiseParameter.w;
                    _2947 = __3__37__0__0__g_cloudDensityVolumes[_2911]._modeParameter.x;
                    _2948 = __3__37__0__0__g_cloudDensityVolumes[_2911]._modeParameter.y;
                    _2950 = __3__37__0__0__g_cloudDensityVolumes[_2911]._vortexParameter.x;
                    _2951 = __3__37__0__0__g_cloudDensityVolumes[_2911]._vortexParameter.y;
                    _2952 = __3__37__0__0__g_cloudDensityVolumes[_2911]._vortexParameter.z;
                    _2953 = __3__37__0__0__g_cloudDensityVolumes[_2911]._vortexParameter.w;
                    _2955 = __3__37__0__0__g_cloudDensityVolumes[_2911]._spiralParameter.x;
                    _2956 = __3__37__0__0__g_cloudDensityVolumes[_2911]._spiralParameter.y;
                    _2957 = __3__37__0__0__g_cloudDensityVolumes[_2911]._spiralParameter.z;
                    _2958 = __3__37__0__0__g_cloudDensityVolumes[_2911]._spiralParameter.w;
                    _2960 = __3__37__0__0__g_cloudDensityVolumes[_2911]._animationParameter.x;
                    _2961 = __3__37__0__0__g_cloudDensityVolumes[_2911]._animationParameter.y;
                    _2962 = __3__37__0__0__g_cloudDensityVolumes[_2911]._animationParameter.z;
                    _2963 = __3__37__0__0__g_cloudDensityVolumes[_2911]._animationParameter.w;
                    _2965 = __3__37__0__0__g_cloudDensityVolumes[_2911]._flowParameter.x;
                    _2966 = __3__37__0__0__g_cloudDensityVolumes[_2911]._flowParameter.y;
                    _2967 = __3__37__0__0__g_cloudDensityVolumes[_2911]._flowParameter.z;
                    _2969 = __3__37__0__0__g_cloudDensityVolumes[_2911]._tornadoParameter.x;
                    _2970 = __3__37__0__0__g_cloudDensityVolumes[_2911]._tornadoParameter.y;
                    _2971 = __3__37__0__0__g_cloudDensityVolumes[_2911]._tornadoParameter.z;
                    _2972 = __3__37__0__0__g_cloudDensityVolumes[_2911]._tornadoParameter.w;
                    _2976 = mad(_2925, _398, mad(_2921, _2762, (_2917 * _2761))) + _2929;
                    _2980 = mad(_2926, _398, mad(_2922, _2762, (_2918 * _2761))) + _2930;
                    _2984 = mad(_2927, _398, mad(_2923, _2762, (_2919 * _2761))) + _2931;
                    _2986 = abs(_2980);
                    _2992 = max((abs(_2976) + -0.5f), max((_2986 + -0.5f), (abs(_2984) + -0.5f)));
                    if (!(_2992 >= 0.0f)) {
                      _2995 = __3__37__0__0__g_cloudDensityVolumes[_2911]._shapeParameter.y;
                      _2998 = max((saturate(_2995) * 0.5f), 0.0001f);
                      _3001 = saturate((_2998 + _2992) / _2998);  // [sem: expr_sat]
                      _3006 = 1.0f - ((_3001 * _3001) * (3.0f - (_3001 * 2.0f)));
                      if (!(_3006 <= 0.0f)) {
                        _3015 = sqrt((_2984 * _2984) + (_2976 * _2976)) * 2.0f;
                        _3019 = saturate(1.0f - (_3015 / max(_2951, 0.0001f)));  // [sem: expr_sat]
                        _3020 = _time.x * _2963;
                        _3021 = (_2947 == 1);
                        _3022 = (_2947 == 2);
                        if (_3021) {
                          _3099 = exp2(log2(_3019) * max(_2958, 0.0001f));
                          _3101 = max(_2957, 0.0001f);
                          _3105 = _2980 / (((max(_2956, 0.0001f) - _3101) * _3099) + _3101);
                          _3112 = (((_3019 * _3019) * _2950) * ((_3015 * _2952) + _2980)) - (_3019 * _3020);
                          _3113 = sin(_3112);
                          _3114 = cos(_3112);
                          _3117 = (_3114 * _2976) - (_3113 * _2984);
                          _3120 = (_3114 * _2984) + (_3113 * _2976);
                          if (_3022) {
                            _3122 = 0.0f;
                            _3123 = 1.0f;
                            _3124 = _3099;
                            _3125 = _3019;
                            _3126 = _3117;
                            _3127 = _3105;
                            _3128 = _3120;
                            _3148 = _3123;
                            _3149 = _3124;
                            _3150 = _3125;
                            _3151 = _3126;
                            _3152 = _3127;
                            _3153 = _3128;
                            _3154 = max(_3122, ((_2986 * 2.0f) + -1.0f));
                          } else {
                            _3133 = _3099;
                            _3134 = _3117;
                            _3135 = _3105;
                            _3136 = _3120;
                            _3137 = _3134 * 2.0f;
                            _3138 = _3135 * 2.0f;
                            _3139 = _3136 * 2.0f;
                            _3148 = 1.0f;
                            _3149 = _3133;
                            _3150 = _3019;
                            _3151 = _3134;
                            _3152 = _3135;
                            _3153 = _3136;
                            _3154 = (sqrt(((_3138 * _3138) + (_3137 * _3137)) + (_3139 * _3139)) + -1.0f);
                          }
                        } else {
                          if (_3022) {
                            _3026 = saturate(_2980 + 0.5f);  // [sem: expr_sat]
                            _3032 = max(_2969, 0.0001f);
                            _3035 = ((max(_2970, 0.0001f) - _3032) * exp2(log2(_3026) * max(_2971, 0.0001f))) + _3032;
                            _3037 = atan(_2984 / _2976);
                            _3040 = (_2976 < 0.0f);
                            _3041 = (_2976 == 0.0f);
                            _3042 = (_2984 >= 0.0f);
                            _3043 = (_2984 < 0.0f);
                            _3053 = max(((float)((uint)((uint)(_2948)))), 1.0f);
                            _3054 = _3026 * _2952;
                            _3065 = _3035 * _2945;
                            _3067 = max((_3035 - _3065), 0.0f);
                            _3068 = _3015 - _3067;
                            _3069 = _3067 * (acos(min(max(cos(((((_3054 * -6.2831855f) - _3020) + select((_3041 && _3042), 1.5707964f, select((_3041 && _3043), -1.5707964f, select((_3040 && _3043), (_3037 + -3.1415927f), select((_3040 && _3042), (_3037 + 3.1415927f), _3037))))) * _3053) + _2955), -1.0f), 1.0f)) / _3053);
                            _3074 = _3015 - _3035;
                            _3083 = saturate(1.0f - (_3015 / _3035));  // [sem: expr_sat]
                            _3086 = ((_3083 + _3054) * _2950) - _3020;
                            _3087 = sin(_3086);
                            _3088 = cos(_3086);
                            _3122 = ((saturate(_2953) * (((-0.0f - _3074) - _3065) + sqrt((_3068 * _3068) + (_3069 * _3069)))) + _3074);
                            _3123 = _3035;
                            _3124 = 0.0f;
                            _3125 = _3083;
                            _3126 = ((_3088 * _2976) - (_3087 * _2984));
                            _3127 = _2980;
                            _3128 = ((_3088 * _2984) + (_3087 * _2976));
                            _3148 = _3123;
                            _3149 = _3124;
                            _3150 = _3125;
                            _3151 = _3126;
                            _3152 = _3127;
                            _3153 = _3128;
                            _3154 = max(_3122, ((_2986 * 2.0f) + -1.0f));
                          } else {
                            _3133 = 0.0f;
                            _3134 = _2976;
                            _3135 = _2980;
                            _3136 = _2984;
                            _3137 = _3134 * 2.0f;
                            _3138 = _3135 * 2.0f;
                            _3139 = _3136 * 2.0f;
                            _3148 = 1.0f;
                            _3149 = _3133;
                            _3150 = _3019;
                            _3151 = _3134;
                            _3152 = _3135;
                            _3153 = _3136;
                            _3154 = (sqrt(((_3138 * _3138) + (_3137 * _3137)) + (_3139 * _3139)) + -1.0f);
                          }
                        }
                        if (_2938 > 0.0f) {
                          _3157 = _time.x * _2961;
                          _3161 = max(_2937, 0.0001f);
                          _3179 = (_3154 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3157 * _2965) + _2939) + (_3161 * _3151)), (((_3157 * _2966) + _2940) + (_3161 * _3152)), (((_3157 * _2967) + _2944) + (_3161 * _3153))), 0.0f)).x) + -0.5f) * _2938));
                        } else {
                          _3179 = _3154;
                        }
                        if (_3021 && (_2953 > 0.0f)) {
                          _3184 = atan(_2984 / _2976);
                          _3187 = (_2976 < 0.0f);
                          _3188 = (_2976 == 0.0f);
                          _3189 = (_2984 >= 0.0f);
                          _3190 = (_2984 < 0.0f);
                          _3212 = (_3179 - (((_2953 * 0.5f) * _3150) * cos(((((_3015 * _2952) - _3020) + select((_3188 && _3189), 1.5707964f, select((_3188 && _3190), -1.5707964f, select((_3187 && _3190), (_3184 + -3.1415927f), select((_3187 && _3189), (_3184 + 3.1415927f), _3184))))) * max(((float)((uint)((uint)(_2948)))), 1.0f)) + _2955)));
                        } else {
                          _3212 = _3179;
                        }
                        if (_3022 && (_2972 > 0.0f)) {
                          _3220 = max(_3212, ((_3148 * _2972) - _3015));
                        } else {
                          _3220 = _3212;
                        }
                        _3222 = max(_2935, 0.0001f);
                        _3228 = saturate((((_2934 - (_3149 * _2960)) + _3220) + _3222) / (_3222 * 2.0f));  // [sem: expr_sat]
                        _3233 = 1.0f - ((_3228 * _3228) * (3.0f - (_3228 * 2.0f)));
                        if (!((_3233 >= 1.0f) || ((_2739 || (_2943 <= 0.0f)) || (_3233 <= 0.0f)))) {
                          _3241 = _time.x * _2962;
                          _3245 = max(_2942, 0.0001f);
                          // [sem: expr_sat]
                          _3269 = saturate(_3233 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3241 * _2965) + _2939) + (_3245 * _3151)), (((_3241 * _2966) + _2940) + (_3245 * _3152)), (((_3241 * _2967) + _2944) + (_3245 * _3153))), 0.0f)).x) * _2943) * saturate(1.0f - abs((_3233 * 2.0f) + -1.0f))));
                        } else {
                          _3269 = _3233;  // [sem: expr_sat]
                        }
                        _3274 = (((_3006 * _2933) * _3269) + _2910);
                      } else {
                        _3274 = _2910;
                      }
                    } else {
                      _3274 = _2910;
                    }
                  } else {
                    _3274 = _2910;
                  }
                  _3275 = (uint)((uint)(_2911)) + (uint)(1);
                  if ((uint)_3275 < (uint)_cloudDensityVolumeInfo.x) {
                    _2910 = _3274;
                    _2911 = _3275;
                    continue;
                  }
                  while(true) {
                    _3280 = saturate(_3274);  // [sem: _3274_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3280 = 0.0f;  // [sem: _3274_sat]
              }
              _3283 = _398 + -50.0f;
              _3284 = _396 - _viewPos.x;
              _3285 = _3283 - _viewPos.z;
              _3289 = sqrt((_3284 * _3284) + (_3285 * _3285));
              _3294 = _cloudAltitude - (max(((_3289 * _3289) + -400000.0f), 0.0f) * 1e-06f);
              _3301 = ((sqrt(((_3283 * _3283) + _1020) + _2776) - _earthRadius) - _3294) / _cloudThickness;
              if (!((_3301 < 0.0f) || (_3301 > 1.0f))) {
                _3323 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _3324 = _2762 - _3294;
                _3340 = _2170 / _2173;
                _3341 = _3340 * _2173;
                _3343 = _3340 * _3323;
                _3355 = saturate(max((_3289 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _3359 = (4.0f - (_3355 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _3363 = _3341 * 4.355f;
                _3380 = 1.0f - sqrt(saturate((1.0f - _3301) * 1.4285715f));
                _3402 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2170 * _396) - (_3341 * _cloudScroll.x)), ((_3324 * _2170) - _3343), ((_2170 * _3283) - (_3341 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_3355 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3359 * _396) - (_3363 * _cloudScroll.x)), ((_3359 * _3324) - (_3343 * 4.355f)), ((_3359 * _3283) - (_3363 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3301 * 4.0f) * 0.8f) + 0.2f);
                _3409 = (saturate(((saturate(saturate(((_2759.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2173 * (_396 - _cloudScroll.x)), ((_3324 * _2173) - _3323), (_2173 * (_3283 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3380 * 0.5f), ((_3380 * _3380) * _3380))) * saturate(_3301 * 10.0f)) - _3402) / (1.0f - _3402)) * _cloudAlpha);
              } else {
                _3409 = 0.0f;
              }
              if (_2892) {
                _3419 = saturate(((_3289 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _3419 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _3428 = 0.0f;
                _3429 = 0;
                while(true) {
                  _3792 = _3428;
                  if (!((uint)(_3429 & 16) > (uint)15)) {
                    _3435 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[0].x;
                    _3436 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[1].x;
                    _3437 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[2].x;
                    _3439 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[0].y;
                    _3440 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[1].y;
                    _3441 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[2].y;
                    _3443 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[0].z;
                    _3444 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[1].z;
                    _3445 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[2].z;
                    _3447 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[0].w;
                    _3448 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[1].w;
                    _3449 = __3__37__0__0__g_cloudDensityVolumes[_3429]._relativeWorldToLocal[2].w;
                    _3451 = __3__37__0__0__g_cloudDensityVolumes[_3429]._shapeParameter.x;
                    _3452 = __3__37__0__0__g_cloudDensityVolumes[_3429]._shapeParameter.z;
                    _3453 = __3__37__0__0__g_cloudDensityVolumes[_3429]._shapeParameter.w;
                    _3455 = __3__37__0__0__g_cloudDensityVolumes[_3429]._macroNoiseParameter.x;
                    _3456 = __3__37__0__0__g_cloudDensityVolumes[_3429]._macroNoiseParameter.y;
                    _3457 = __3__37__0__0__g_cloudDensityVolumes[_3429]._macroNoiseParameter.z;
                    _3458 = __3__37__0__0__g_cloudDensityVolumes[_3429]._macroNoiseParameter.w;
                    _3460 = __3__37__0__0__g_cloudDensityVolumes[_3429]._detailNoiseParameter.x;
                    _3461 = __3__37__0__0__g_cloudDensityVolumes[_3429]._detailNoiseParameter.y;
                    _3462 = __3__37__0__0__g_cloudDensityVolumes[_3429]._detailNoiseParameter.z;
                    _3463 = __3__37__0__0__g_cloudDensityVolumes[_3429]._detailNoiseParameter.w;
                    _3465 = __3__37__0__0__g_cloudDensityVolumes[_3429]._modeParameter.x;
                    _3466 = __3__37__0__0__g_cloudDensityVolumes[_3429]._modeParameter.y;
                    _3468 = __3__37__0__0__g_cloudDensityVolumes[_3429]._vortexParameter.x;
                    _3469 = __3__37__0__0__g_cloudDensityVolumes[_3429]._vortexParameter.y;
                    _3470 = __3__37__0__0__g_cloudDensityVolumes[_3429]._vortexParameter.z;
                    _3471 = __3__37__0__0__g_cloudDensityVolumes[_3429]._vortexParameter.w;
                    _3473 = __3__37__0__0__g_cloudDensityVolumes[_3429]._spiralParameter.x;
                    _3474 = __3__37__0__0__g_cloudDensityVolumes[_3429]._spiralParameter.y;
                    _3475 = __3__37__0__0__g_cloudDensityVolumes[_3429]._spiralParameter.z;
                    _3476 = __3__37__0__0__g_cloudDensityVolumes[_3429]._spiralParameter.w;
                    _3478 = __3__37__0__0__g_cloudDensityVolumes[_3429]._animationParameter.x;
                    _3479 = __3__37__0__0__g_cloudDensityVolumes[_3429]._animationParameter.y;
                    _3480 = __3__37__0__0__g_cloudDensityVolumes[_3429]._animationParameter.z;
                    _3481 = __3__37__0__0__g_cloudDensityVolumes[_3429]._animationParameter.w;
                    _3483 = __3__37__0__0__g_cloudDensityVolumes[_3429]._flowParameter.x;
                    _3484 = __3__37__0__0__g_cloudDensityVolumes[_3429]._flowParameter.y;
                    _3485 = __3__37__0__0__g_cloudDensityVolumes[_3429]._flowParameter.z;
                    _3487 = __3__37__0__0__g_cloudDensityVolumes[_3429]._tornadoParameter.x;
                    _3488 = __3__37__0__0__g_cloudDensityVolumes[_3429]._tornadoParameter.y;
                    _3489 = __3__37__0__0__g_cloudDensityVolumes[_3429]._tornadoParameter.z;
                    _3490 = __3__37__0__0__g_cloudDensityVolumes[_3429]._tornadoParameter.w;
                    _3494 = mad(_3443, _3283, mad(_3439, _2762, (_3435 * _396))) + _3447;
                    _3498 = mad(_3444, _3283, mad(_3440, _2762, (_3436 * _396))) + _3448;
                    _3502 = mad(_3445, _3283, mad(_3441, _2762, (_3437 * _396))) + _3449;
                    _3504 = abs(_3498);
                    _3510 = max((abs(_3494) + -0.5f), max((_3504 + -0.5f), (abs(_3502) + -0.5f)));
                    if (!(_3510 >= 0.0f)) {
                      _3513 = __3__37__0__0__g_cloudDensityVolumes[_3429]._shapeParameter.y;
                      _3516 = max((saturate(_3513) * 0.5f), 0.0001f);
                      _3519 = saturate((_3516 + _3510) / _3516);  // [sem: expr_sat]
                      _3524 = 1.0f - ((_3519 * _3519) * (3.0f - (_3519 * 2.0f)));
                      if (!(_3524 <= 0.0f)) {
                        _3533 = sqrt((_3502 * _3502) + (_3494 * _3494)) * 2.0f;
                        _3537 = saturate(1.0f - (_3533 / max(_3469, 0.0001f)));  // [sem: expr_sat]
                        _3538 = _time.x * _3481;
                        _3539 = (_3465 == 1);
                        _3540 = (_3465 == 2);
                        if (_3539) {
                          _3617 = exp2(log2(_3537) * max(_3476, 0.0001f));
                          _3619 = max(_3475, 0.0001f);
                          _3623 = _3498 / (((max(_3474, 0.0001f) - _3619) * _3617) + _3619);
                          _3630 = (((_3537 * _3537) * _3468) * ((_3533 * _3470) + _3498)) - (_3537 * _3538);
                          _3631 = sin(_3630);
                          _3632 = cos(_3630);
                          _3635 = (_3632 * _3494) - (_3631 * _3502);
                          _3638 = (_3632 * _3502) + (_3631 * _3494);
                          if (_3540) {
                            _3640 = 0.0f;
                            _3641 = 1.0f;
                            _3642 = _3617;
                            _3643 = _3537;
                            _3644 = _3635;
                            _3645 = _3623;
                            _3646 = _3638;
                            _3666 = _3641;
                            _3667 = _3642;
                            _3668 = _3643;
                            _3669 = _3644;
                            _3670 = _3645;
                            _3671 = _3646;
                            _3672 = max(_3640, ((_3504 * 2.0f) + -1.0f));
                          } else {
                            _3651 = _3617;
                            _3652 = _3635;
                            _3653 = _3623;
                            _3654 = _3638;
                            _3655 = _3652 * 2.0f;
                            _3656 = _3653 * 2.0f;
                            _3657 = _3654 * 2.0f;
                            _3666 = 1.0f;
                            _3667 = _3651;
                            _3668 = _3537;
                            _3669 = _3652;
                            _3670 = _3653;
                            _3671 = _3654;
                            _3672 = (sqrt(((_3656 * _3656) + (_3655 * _3655)) + (_3657 * _3657)) + -1.0f);
                          }
                        } else {
                          if (_3540) {
                            _3544 = saturate(_3498 + 0.5f);  // [sem: expr_sat]
                            _3550 = max(_3487, 0.0001f);
                            _3553 = ((max(_3488, 0.0001f) - _3550) * exp2(log2(_3544) * max(_3489, 0.0001f))) + _3550;
                            _3555 = atan(_3502 / _3494);
                            _3558 = (_3494 < 0.0f);
                            _3559 = (_3494 == 0.0f);
                            _3560 = (_3502 >= 0.0f);
                            _3561 = (_3502 < 0.0f);
                            _3571 = max(((float)((uint)((uint)(_3466)))), 1.0f);
                            _3572 = _3544 * _3470;
                            _3583 = _3553 * _3463;
                            _3585 = max((_3553 - _3583), 0.0f);
                            _3586 = _3533 - _3585;
                            _3587 = _3585 * (acos(min(max(cos(((((_3572 * -6.2831855f) - _3538) + select((_3559 && _3560), 1.5707964f, select((_3559 && _3561), -1.5707964f, select((_3558 && _3561), (_3555 + -3.1415927f), select((_3558 && _3560), (_3555 + 3.1415927f), _3555))))) * _3571) + _3473), -1.0f), 1.0f)) / _3571);
                            _3592 = _3533 - _3553;
                            _3601 = saturate(1.0f - (_3533 / _3553));  // [sem: expr_sat]
                            _3604 = ((_3601 + _3572) * _3468) - _3538;
                            _3605 = sin(_3604);
                            _3606 = cos(_3604);
                            _3640 = ((saturate(_3471) * (((-0.0f - _3592) - _3583) + sqrt((_3586 * _3586) + (_3587 * _3587)))) + _3592);
                            _3641 = _3553;
                            _3642 = 0.0f;
                            _3643 = _3601;
                            _3644 = ((_3606 * _3494) - (_3605 * _3502));
                            _3645 = _3498;
                            _3646 = ((_3606 * _3502) + (_3605 * _3494));
                            _3666 = _3641;
                            _3667 = _3642;
                            _3668 = _3643;
                            _3669 = _3644;
                            _3670 = _3645;
                            _3671 = _3646;
                            _3672 = max(_3640, ((_3504 * 2.0f) + -1.0f));
                          } else {
                            _3651 = 0.0f;
                            _3652 = _3494;
                            _3653 = _3498;
                            _3654 = _3502;
                            _3655 = _3652 * 2.0f;
                            _3656 = _3653 * 2.0f;
                            _3657 = _3654 * 2.0f;
                            _3666 = 1.0f;
                            _3667 = _3651;
                            _3668 = _3537;
                            _3669 = _3652;
                            _3670 = _3653;
                            _3671 = _3654;
                            _3672 = (sqrt(((_3656 * _3656) + (_3655 * _3655)) + (_3657 * _3657)) + -1.0f);
                          }
                        }
                        if (_3456 > 0.0f) {
                          _3675 = _time.x * _3479;
                          _3679 = max(_3455, 0.0001f);
                          _3697 = (_3672 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3675 * _3483) + _3457) + (_3679 * _3669)), (((_3675 * _3484) + _3458) + (_3679 * _3670)), (((_3675 * _3485) + _3462) + (_3679 * _3671))), 0.0f)).x) + -0.5f) * _3456));
                        } else {
                          _3697 = _3672;
                        }
                        if (_3539 && (_3471 > 0.0f)) {
                          _3702 = atan(_3502 / _3494);
                          _3705 = (_3494 < 0.0f);
                          _3706 = (_3494 == 0.0f);
                          _3707 = (_3502 >= 0.0f);
                          _3708 = (_3502 < 0.0f);
                          _3730 = (_3697 - (((_3471 * 0.5f) * _3668) * cos(((((_3533 * _3470) - _3538) + select((_3706 && _3707), 1.5707964f, select((_3706 && _3708), -1.5707964f, select((_3705 && _3708), (_3702 + -3.1415927f), select((_3705 && _3707), (_3702 + 3.1415927f), _3702))))) * max(((float)((uint)((uint)(_3466)))), 1.0f)) + _3473)));
                        } else {
                          _3730 = _3697;
                        }
                        if (_3540 && (_3490 > 0.0f)) {
                          _3738 = max(_3730, ((_3666 * _3490) - _3533));
                        } else {
                          _3738 = _3730;
                        }
                        _3740 = max(_3453, 0.0001f);
                        _3746 = saturate((((_3452 - (_3667 * _3478)) + _3738) + _3740) / (_3740 * 2.0f));  // [sem: expr_sat]
                        _3751 = 1.0f - ((_3746 * _3746) * (3.0f - (_3746 * 2.0f)));
                        if (!((_3751 >= 1.0f) || ((_2739 || (_3461 <= 0.0f)) || (_3751 <= 0.0f)))) {
                          _3759 = _time.x * _3480;
                          _3763 = max(_3460, 0.0001f);
                          // [sem: expr_sat]
                          _3787 = saturate(_3751 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3759 * _3483) + _3457) + (_3763 * _3669)), (((_3759 * _3484) + _3458) + (_3763 * _3670)), (((_3759 * _3485) + _3462) + (_3763 * _3671))), 0.0f)).x) * _3461) * saturate(1.0f - abs((_3751 * 2.0f) + -1.0f))));
                        } else {
                          _3787 = _3751;  // [sem: expr_sat]
                        }
                        _3792 = (((_3524 * _3451) * _3787) + _3428);
                      } else {
                        _3792 = _3428;
                      }
                    } else {
                      _3792 = _3428;
                    }
                  } else {
                    _3792 = _3428;
                  }
                  _3793 = (uint)((uint)(_3429)) + (uint)(1);
                  if ((uint)_3793 < (uint)_cloudDensityVolumeInfo.x) {
                    _3428 = _3792;
                    _3429 = _3793;
                    continue;
                  }
                  while(true) {
                    _3798 = saturate(_3792);  // [sem: _3792_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3798 = 0.0f;  // [sem: _3792_sat]
              }
              _3805 = max(_1963, (_2722 * _distanceScale));
              _3806 = ((_distanceScale * 20.0f) * (saturate(_3798 + (_3419 * _3409)) + saturate(_3280 + (_2902 * _2890))));
              break;
            }
          } else {
            _3805 = _1963;
            _3806 = ((log2(max(_1959, 0.5f)) * 0.6931472f) / _1962);
          }
          _3807 = dot(float3(_1026, _1027, _1028), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _3811 = min(max(_1292, 16.0f), (_atmosphereThickness + -16.0f));
          _3819 = max(_3811, 0.0f);
          _3828 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3819) * _3819)) / (_earthRadius + _3819);
          if (_3807 > _3828) {
            _3851 = ((exp2(log2(saturate((_3807 - _3828) / (1.0f - _3828))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3851 = ((exp2(log2(saturate((_3828 - _3807) / (_3828 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _3856 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3811 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3851), 0.0f);
          _3859 = _1820 * saturate((1.0f - saturate(_389 / _216)) * 10.0f);
          _3864 = _392 * 0.5f;
          _3869 = ((_1302 + _362) * _3864) + _366;
          _3870 = ((_1303 + _361) * _3864) + _365;
          _3871 = ((_3859 + _360) * _3864) + _364;
          _3872 = ((_1888 + _359) * _3864) + _363;
          _3873 = _3872 + _3871;
          _3874 = _3856.x + _3869;
          _3881 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
          _3884 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
          _3886 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
          _3893 = _mieAerosolDensity * 2e-05f;
          _3894 = _3893 * (_mieAerosolAbsorption + 1.0f);
          _3895 = _3894 * (_3856.y + _3870);
          _3904 = _cloudScatteringCoefficient / _distanceScale;
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _3906 = (_3881 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _3907 = _3906 * _3874;
          _3908 = (_3904 * (_3805 + _3873)) + _3895;
          _3910 = (_3884 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _3911 = _3910 * _3874;
          _3913 = (_3886 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _3914 = _3913 * _3874;
          _3919 = exp2((_3907 + _3908) * -1.442695f);
          _3920 = exp2((_3911 + _3908) * -1.442695f);
          _3921 = exp2((_3914 + _3908) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
          //              transmittance channels (branchless *= below; red untouched) so sunrise and
          //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
          //              vanilla computes extinction uniformly across cloud and clear air, so clouds
          //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
          //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
          //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
          //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
          //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
          //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
          //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
          //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
          //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
          //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
          //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
          //              no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor = CloudReddeningFactor((_3873 * (_3805 + _3904)), _dawnDuskFactor, false);
          _3919 *= 1.f;               // R unchanged
          _3920 *= _cloudRedFactor;   // G attenuated
          _3921 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _3934 = ((_3920 * 0.33951f) + (_3919 * 0.61312f)) + (_3921 * 0.04737f);
          _3935 = ((_3920 * 0.91636f) + (_3919 * 0.0702f)) + (_3921 * 0.01345f);
          _3936 = ((_3920 * 0.10958f) + (_3919 * 0.02062f)) + (_3921 * 0.8698f);
          _3937 = _3934 * _1287;
          _3938 = _3937 * _1303;
          _3939 = _3935 * _1287;
          _3940 = _3939 * _1303;
          _3941 = _3936 * _1287;
          _3942 = _3941 * _1303;
          _3943 = _3904 * _distanceScale;
          _3950 = exp2(log2(1.0f - exp2((_3943 * -14.42695f) * _3859)) * 1.25f);
          _3954 = 1.0f - exp2((_3943 * -288.539f) * _1888);
          _3956 = _1302 * 1.9607843e-07f;
          _3958 = ((_185 * 0.059683103f) * _1287) * _3956;
          _3966 = _miePhaseConst * _miePhaseConst;
          _3985 = ((_mieAerosolDensity * 1.5915493e-06f) * (((1.0f - _3966) * 3.0f) / ((_3966 + 2.0f) * 2.0f))) * (_185 / exp2(log2((_3966 + 1.0f) - (_miePhaseConst * _187)) * 1.5f));
          _3995 = _3950 * (((_195 * 64.0f) * _1287) * _3859);
          _4004 = (_213 * 2.0f) * _1888;
          _4007 = ((_4004 * _3937) * _3954) * _volumeFogScatterColor.x;
          _4010 = ((_4004 * _3939) * _3954) * _volumeFogScatterColor.y;
          _4013 = ((_4004 * _3941) * _3954) * _volumeFogScatterColor.z;
          _4043 = (_3904 * (_3806 + _3873)) + (_3894 * _3870);
          _4052 = exp2(((_3906 * _3869) + _4043) * -1.442695f);
          _4053 = exp2(((_3910 * _3869) + _4043) * -1.442695f);
          _4054 = exp2(((_3913 * _3869) + _4043) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_2_3873 = CloudReddeningFactor((_3873 * (_3806 + _3904)), _dawnDuskFactor, false);
          _4053 *= _rndx_cloud_red_2_3873;
          _4054 *= _rndx_cloud_red_2_3873;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _4074 = _1303 * _3893;
          _4078 = _3904 * (_1888 + _3859);
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Selects which matrix converts Rayleigh in-scatter radiance into the working
          //              space. Beta stays native everywhere, so extinction and ozone are untouched;
          //              only the conversion changes. Each row carries two Rayleigh radiance terms —
          //              the view-path term against the cloud-attenuated transmittance triple
          //              (_3919/_3920/_3921) and the sun-path term against the sun transmittance
          //              triple (_4052/_4053/_4054) — and both convert per wavelength through
          //              SKY_SPECTRAL_TO_WORKING when enabled. The cloud, volume-fog and Mie terms
          //              carry display-referred artist colour and keep the vanilla matrix, as does
          //              transmittance itself. Each Off arm is the complete native expression.
          _4086 = SKY_SCATTERING
            ? (((((_3985 * _3938) * _mieScatterColor.x) + SKY_RAY_INSCATTER(0, _3919, _3920, _3921, _3881, _3884, _3886, _3958)) + ((_4007 + (_3995 * _3934)) * _3904)) + (_1094 * SKY_RAY_INSCATTER(0, _4052, _4053, _4054, _3881, _3884, _3886, _3956) + _1094 * SKY_VAN_DOT(0, _4052, _4053, _4054) * (_4078 + (_mieScatterColor.x * _4074)))) * _392
            : (((((_3985 * _3938) * _mieScatterColor.x) + ((_3881 * _3958) * _3934)) + ((_4007 + (_3995 * _3934)) * _3904)) + (((((_3881 * _3956) + _4078) + (_mieScatterColor.x * _4074)) * _1094) * (((_4053 * 0.33951f) + (_4052 * 0.61312f)) + (_4054 * 0.04737f)))) * _392;
          _4094 = SKY_SCATTERING
            ? (((((_3985 * _3940) * _mieScatterColor.y) + SKY_RAY_INSCATTER(1, _3919, _3920, _3921, _3881, _3884, _3886, _3958)) + ((_4010 + (_3995 * _3935)) * _3904)) + (_1095 * SKY_RAY_INSCATTER(1, _4052, _4053, _4054, _3881, _3884, _3886, _3956) + _1095 * SKY_VAN_DOT(1, _4052, _4053, _4054) * (_4078 + (_mieScatterColor.y * _4074)))) * _392
            : (((((_3985 * _3940) * _mieScatterColor.y) + ((_3884 * _3958) * _3935)) + ((_4010 + (_3995 * _3935)) * _3904)) + (((((_3884 * _3956) + _4078) + (_mieScatterColor.y * _4074)) * _1095) * (((_4053 * 0.91636f) + (_4052 * 0.0702f)) + (_4054 * 0.01345f)))) * _392;
          _4102 = SKY_SCATTERING
            ? (((((_3985 * _3942) * _mieScatterColor.z) + SKY_RAY_INSCATTER(2, _3919, _3920, _3921, _3881, _3884, _3886, _3958)) + ((_4013 + (_3995 * _3936)) * _3904)) + (_1096 * SKY_RAY_INSCATTER(2, _4052, _4053, _4054, _3881, _3884, _3886, _3956) + _1096 * SKY_VAN_DOT(2, _4052, _4053, _4054) * (_4078 + (_mieScatterColor.z * _4074)))) * _392
            : (((((_3985 * _3942) * _mieScatterColor.z) + ((_3886 * _3958) * _3936)) + ((_4013 + (_3995 * _3936)) * _3904)) + ((((_4078 + (_3886 * _3956)) + (_mieScatterColor.z * _4074)) * _1096) * (((_4053 * 0.10958f) + (_4052 * 0.02062f)) + (_4054 * 0.8698f)))) * _392;
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          if (_3859 > 0.001f) {
            _4106 = _cloudPhaseConstFront * 0.5f;
            _4107 = _4106 * _4106;
            _4123 = (_3904 * ((_3805 * 0.2f) + _3873)) + _3895;
            _4130 = exp2((_3907 + _4123) * -1.442695f);
            _4131 = exp2((_3911 + _4123) * -1.442695f);
            _4132 = exp2((_3914 + _4123) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor3 = CloudReddeningFactor((_3873 * ((_3805 * 0.20000000298023224f) + _3904)), _dawnDuskFactor, false);
            _4130 *= 1.f;                // R unchanged
            _4131 *= _cloudRedFactor3;   // G attenuated
            _4132 *= _cloudRedFactor3;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _4154 = (_3950 * _3904) * (((((_3859 * _1287) * 4.0743666f) * _392) * (((1.0f - _4107) * 3.0f) / ((_4107 + 2.0f) * 2.0f))) * (_185 / exp2(log2((1.0f - (_cloudPhaseConstFront * _175)) + _4107) * 1.5f)));
            _4162 = ((_4154 * (((_4131 * 0.33951f) + (_4130 * 0.61312f)) + (_4132 * 0.04737f))) + _4086);
            _4163 = ((_4154 * (((_4131 * 0.91636f) + (_4130 * 0.0702f)) + (_4132 * 0.01345f))) + _4094);
            _4164 = ((_4154 * (((_4131 * 0.10958f) + (_4130 * 0.02062f)) + (_4132 * 0.8698f))) + _4102);
          } else {
            _4162 = _4086;
            _4163 = _4094;
            _4164 = _4102;
          }
          _4165 = saturate(((float)((int)((int)(((float)((uint)((uint)(_991)))) * 0.33f)))) + _132) * _precomputedAmbient7.y;
          _4178 = _385;
          _4179 = select(_986, _988, 0);
          _4180 = _991;
          _4181 = (((((_precomputedAmbients[48].x) * _392) * (_4007 + (_3938 * _3893))) + _369) + (_4162 * _4165));
          _4182 = (((((_precomputedAmbients[48].y) * _392) * (_4010 + (_3940 * _3893))) + _368) + (_4163 * _4165));
          _4183 = (((((_precomputedAmbients[48].z) * _392) * (_4013 + (_3942 * _3893))) + _367) + (_4164 * _4165));
          _4184 = _3869;
          _4185 = _3870;
          _4186 = _3871;
          _4187 = _3872;
          _4188 = _1302;
          _4189 = _1303;
          _4190 = _3859;
          _4191 = _1888;
          _4192 = ((int)(uint)(_1003));
          _4193 = ((int)(uint)((int)(exp2((_3873 * -1.442695f) * _3904) < 0.001f)));
        }
        _4194 = (uint)((uint)(_4180)) + (uint)(1);
        if ((((uint)_4194 < (uint)300) && (_4192 != 0)) && (_4193 == 0)) {
          _358 = _4192;
          _359 = _4191;
          _360 = _4190;
          _361 = _4189;
          _362 = _4188;
          _363 = _4187;
          _364 = _4186;
          _365 = _4185;
          _366 = _4184;
          _367 = _4183;
          _368 = _4182;
          _369 = _4181;
          _370 = _4194;
          _371 = _4179;
          _372 = _4178;
          continue;
        }
        _4202 = select((_4193 != 0), 1e+06f, _4186);
        if (_133) {
          _4208 = _cloudCirrusAltitude + _earthRadius;
          _4212 = _155 - ((_152 - (_4208 * _4208)) * _156);
          if (!(_4212 < 0.0f)) {
            _4220 = ((sqrt(_4212) - _151) / (_149 * 2.0f));
          } else {
            _4220 = -1.0f;
          }
          _4224 = _155 - ((_152 - (_earthRadius * _earthRadius)) * _156);
          if (!(_4224 < 0.0f)) {
            _4232 = ((sqrt(_4224) - _151) / (_149 * 2.0f));
          } else {
            _4232 = -1.0f;
          }
          if ((_4220 >= 0.0f) && (_4232 <= 0.0f)) {
            _4238 = _cloudCirrusScale * 5e-05f;
            _4239 = _4220 * _117;
            _4241 = _4220 * _119;
            _4242 = _4239 + _viewPos.x;
            _4243 = (_4220 * _118) + _viewPos.y;
            _4244 = _4241 + _viewPos.z;
            _4252 = (_4242 * _4238) - (_cloudScroll.y * 0.0003f);
            _4253 = (_4244 * _4238) - (_cloudScroll.x * 0.0003f);
            // [sem: _3__36__0__0__g_texCirrus_SampleBias]
            _4257 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_4252, _4253), -1.0f, int2(0, 0));
            _39[0] = _4257.x;
            _39[1] = _4257.y;
            _39[2] = _4257.z;
            _39[3] = _4257.w;
            _4269 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
            _4273 = sqrt((_4239 * _4239) + (_4241 * _4241));
            if (!(_4273 > _4269)) {
              _4281 = (1.0f - cos((1.5707964f / _4269) * _4273));
            } else {
              _4281 = 1.0f;
            }
            _4282 = _4281 * _cloudCirrusDensity;
            _39[0] = ((_4257.x * _cloudCirrusWeightR) * _4282);
            _39[1] = ((_4282 * _4257.y) * _cloudCirrusWeightG);
            _39[2] = ((_4282 * _4257.z) * _cloudCirrusWeightB);
            _4311 = ((((sin(mad(_4253, -0.6f, (_4252 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_4253, 0.8f, (_4252 * 0.6f)) * 3.03f)) + ((sin(_4252 * 1.5f) * 0.5f) * sin(_4253 * 1.5f))) * 1.6000001f) + 1.5f;
            _4314 = (int)(min(max(_4311, 0.0f), 2.0f));
            _4323 = _39[min((uint)(_4314), 3u)];
            _4326 = (((_39[min((uint)(((int)((int)(_4314) + (int)(1)) % (int)(3))), 3u)]) - _4323) * saturate(_4311 - ((float)((int)(_4314))))) + _4323;
            _4327 = _4243 + _earthRadius;
            _4328 = _4242 * _4242;
            _4330 = _4244 * _4244;
            _4331 = _4330 + _4328;
            _4333 = sqrt(_4331 + (_4327 * _4327));
            _4334 = _4242 / _4333;
            _4335 = _4327 / _4333;
            _4336 = _4244 / _4333;
            _4337 = _4333 - _earthRadius;
            if (_4337 > 0.0f) {
              _4340 = dot(float3(_4334, _4335, _4336), float3(_117, _118, _119));
              _4350 = min(max(_4337, 16.0f), (_atmosphereThickness + -16.0f));
              _4358 = max(_4350, 0.0f);
              _4365 = (-0.0f - sqrt((_4358 + (_earthRadius * 2.0f)) * _4358)) / (_4358 + _earthRadius);
              if (_4340 > _4365) {
                _4388 = ((exp2(log2(saturate((_4340 - _4365) / (1.0f - _4365))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _4388 = ((exp2(log2(saturate((_4365 - _4340) / (_4365 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _4398 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_4350 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4388, ((1.0f - exp2(-1.1541561f - (dot(float3(_4334, _4335, _4336), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _4403 = _4398.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4404 = _4398.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4405 = _4398.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _4403 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4404 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4405 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _4410 = max(_4337, 0.01f);
            _4411 = -0.0f - _4410;
            _4420 = exp2((_4411 / _rayleighScaledHeight) * 1.442695f);
            _4421 = exp2((_4411 / _mieScaledHeight) * 1.442695f);
            _4425 = _4242 - _viewPos.x;
            _4426 = _4244 - _viewPos.z;
            _4429 = (_4425 * _4425) + (_4426 * _4426);
            _4430 = sqrt(_4429);
            _4436 = max(((_4430 * _4430) + -400000.0f), 0.0f) * 1e-06f;
            _4437 = _cloudAltitude - _4436;
            _4440 = _cloudDetailScale * 0.004f;
            _4443 = _cloudBaseScale * 0.0004f;
            _4446 = _4243 + _earthRadius;
            _4453 = (((-0.0f - _earthRadius) - _4437) + sqrt(_4331 + (_4446 * _4446))) / _cloudThickness;
            if (!((_4453 < 0.0f) || (_4453 > 1.0f))) {
              _4476 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
              _4477 = _4243 - _4437;
              _4491 = _4440 / _4443;
              _4492 = _4491 * _4443;
              _4494 = _4491 * _4476;
              _4510 = (4.0f - (saturate(max((_4430 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
              _4514 = _4492 * 4.355f;
              _4531 = 1.0f - sqrt(saturate((1.0f - _4453) * 1.4285715f));
              _4549 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4440 * _4242) - (_4492 * _cloudScroll.x)), ((_4477 * _4440) - _4494), ((_4440 * _4244) - (_4492 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4510 * _4242) - (_4514 * _cloudScroll.x)), ((_4510 * _4477) - (_4494 * 4.355f)), ((_4510 * _4244) - (_4514 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_4453 * 4.0f) * 0.8f) + 0.2f);
              _4556 = (saturate(((saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_4443 * (_4242 - _cloudScroll.x)), ((_4443 * _4477) - _4476), (_4443 * (_4244 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_4531 * 0.5f), ((_4531 * _4531) * _4531))) * saturate(_4453 * 10.0f)) - _4549) / (1.0f - _4549)) * _cloudAlpha);
            } else {
              _4556 = 0.0f;
            }
            if (_cloudFadeRange > 1e-05f) {
              _4568 = saturate((((1.0f - _cloudNear) * _4430) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _4568 = 1.0f;  // [sem: expr_sat]
            }
            if (!((_347 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
              _4579 = 0.0f;
              _4580 = 0;
              while(true) {
                _4944 = _4579;
                if (!((((int)((uint)(1) << (_4580 & 31))) & _347) == 0)) {
                  _4588 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[0].x;
                  _4589 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[1].x;
                  _4590 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[2].x;
                  _4592 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[0].y;
                  _4593 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[1].y;
                  _4594 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[2].y;
                  _4596 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[0].z;
                  _4597 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[1].z;
                  _4598 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[2].z;
                  _4600 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[0].w;
                  _4601 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[1].w;
                  _4602 = __3__37__0__0__g_cloudDensityVolumes[_4580]._relativeWorldToLocal[2].w;
                  _4604 = __3__37__0__0__g_cloudDensityVolumes[_4580]._shapeParameter.x;
                  _4605 = __3__37__0__0__g_cloudDensityVolumes[_4580]._shapeParameter.z;
                  _4606 = __3__37__0__0__g_cloudDensityVolumes[_4580]._shapeParameter.w;
                  _4608 = __3__37__0__0__g_cloudDensityVolumes[_4580]._macroNoiseParameter.x;
                  _4609 = __3__37__0__0__g_cloudDensityVolumes[_4580]._macroNoiseParameter.y;
                  _4610 = __3__37__0__0__g_cloudDensityVolumes[_4580]._macroNoiseParameter.z;
                  _4611 = __3__37__0__0__g_cloudDensityVolumes[_4580]._macroNoiseParameter.w;
                  _4613 = __3__37__0__0__g_cloudDensityVolumes[_4580]._detailNoiseParameter.x;
                  _4614 = __3__37__0__0__g_cloudDensityVolumes[_4580]._detailNoiseParameter.y;
                  _4615 = __3__37__0__0__g_cloudDensityVolumes[_4580]._detailNoiseParameter.z;
                  _4616 = __3__37__0__0__g_cloudDensityVolumes[_4580]._detailNoiseParameter.w;
                  _4618 = __3__37__0__0__g_cloudDensityVolumes[_4580]._modeParameter.x;
                  _4619 = __3__37__0__0__g_cloudDensityVolumes[_4580]._modeParameter.y;
                  _4621 = __3__37__0__0__g_cloudDensityVolumes[_4580]._vortexParameter.x;
                  _4622 = __3__37__0__0__g_cloudDensityVolumes[_4580]._vortexParameter.y;
                  _4623 = __3__37__0__0__g_cloudDensityVolumes[_4580]._vortexParameter.z;
                  _4624 = __3__37__0__0__g_cloudDensityVolumes[_4580]._vortexParameter.w;
                  _4626 = __3__37__0__0__g_cloudDensityVolumes[_4580]._spiralParameter.x;
                  _4627 = __3__37__0__0__g_cloudDensityVolumes[_4580]._spiralParameter.y;
                  _4628 = __3__37__0__0__g_cloudDensityVolumes[_4580]._spiralParameter.z;
                  _4629 = __3__37__0__0__g_cloudDensityVolumes[_4580]._spiralParameter.w;
                  _4631 = __3__37__0__0__g_cloudDensityVolumes[_4580]._animationParameter.x;
                  _4632 = __3__37__0__0__g_cloudDensityVolumes[_4580]._animationParameter.y;
                  _4633 = __3__37__0__0__g_cloudDensityVolumes[_4580]._animationParameter.z;
                  _4634 = __3__37__0__0__g_cloudDensityVolumes[_4580]._animationParameter.w;
                  _4636 = __3__37__0__0__g_cloudDensityVolumes[_4580]._flowParameter.x;
                  _4637 = __3__37__0__0__g_cloudDensityVolumes[_4580]._flowParameter.y;
                  _4638 = __3__37__0__0__g_cloudDensityVolumes[_4580]._flowParameter.z;
                  _4640 = __3__37__0__0__g_cloudDensityVolumes[_4580]._tornadoParameter.x;
                  _4641 = __3__37__0__0__g_cloudDensityVolumes[_4580]._tornadoParameter.y;
                  _4642 = __3__37__0__0__g_cloudDensityVolumes[_4580]._tornadoParameter.z;
                  _4643 = __3__37__0__0__g_cloudDensityVolumes[_4580]._tornadoParameter.w;
                  _4647 = mad(_4596, _4244, mad(_4592, _4243, (_4588 * _4242))) + _4600;
                  _4651 = mad(_4597, _4244, mad(_4593, _4243, (_4589 * _4242))) + _4601;
                  _4655 = mad(_4598, _4244, mad(_4594, _4243, (_4590 * _4242))) + _4602;
                  _4657 = abs(_4651);
                  _4663 = max((abs(_4647) + -0.5f), max((_4657 + -0.5f), (abs(_4655) + -0.5f)));
                  if (!(_4663 >= 0.0f)) {
                    _4666 = __3__37__0__0__g_cloudDensityVolumes[_4580]._shapeParameter.y;
                    _4669 = max((saturate(_4666) * 0.5f), 0.0001f);
                    _4672 = saturate((_4669 + _4663) / _4669);  // [sem: expr_sat]
                    _4677 = 1.0f - ((_4672 * _4672) * (3.0f - (_4672 * 2.0f)));
                    if (!(_4677 <= 0.0f)) {
                      _4686 = sqrt((_4655 * _4655) + (_4647 * _4647)) * 2.0f;
                      _4690 = saturate(1.0f - (_4686 / max(_4622, 0.0001f)));  // [sem: expr_sat]
                      _4691 = _time.x * _4634;
                      _4692 = (_4618 == 1);
                      _4693 = (_4618 == 2);
                      if (_4692) {
                        _4770 = exp2(log2(_4690) * max(_4629, 0.0001f));
                        _4772 = max(_4628, 0.0001f);
                        _4776 = _4651 / (((max(_4627, 0.0001f) - _4772) * _4770) + _4772);
                        _4783 = (((_4690 * _4690) * _4621) * ((_4686 * _4623) + _4651)) - (_4690 * _4691);
                        _4784 = sin(_4783);
                        _4785 = cos(_4783);
                        _4788 = (_4785 * _4647) - (_4784 * _4655);
                        _4791 = (_4785 * _4655) + (_4784 * _4647);
                        if (_4693) {
                          _4793 = 0.0f;
                          _4794 = 1.0f;
                          _4795 = _4770;
                          _4796 = _4690;
                          _4797 = _4788;
                          _4798 = _4776;
                          _4799 = _4791;
                          _4819 = _4794;
                          _4820 = _4795;
                          _4821 = _4796;
                          _4822 = _4797;
                          _4823 = _4798;
                          _4824 = _4799;
                          _4825 = max(_4793, ((_4657 * 2.0f) + -1.0f));
                        } else {
                          _4804 = _4770;
                          _4805 = _4788;
                          _4806 = _4776;
                          _4807 = _4791;
                          _4808 = _4805 * 2.0f;
                          _4809 = _4806 * 2.0f;
                          _4810 = _4807 * 2.0f;
                          _4819 = 1.0f;
                          _4820 = _4804;
                          _4821 = _4690;
                          _4822 = _4805;
                          _4823 = _4806;
                          _4824 = _4807;
                          _4825 = (sqrt(((_4809 * _4809) + (_4808 * _4808)) + (_4810 * _4810)) + -1.0f);
                        }
                      } else {
                        if (_4693) {
                          _4697 = saturate(_4651 + 0.5f);  // [sem: expr_sat]
                          _4703 = max(_4640, 0.0001f);
                          _4706 = ((max(_4641, 0.0001f) - _4703) * exp2(log2(_4697) * max(_4642, 0.0001f))) + _4703;
                          _4708 = atan(_4655 / _4647);
                          _4711 = (_4647 < 0.0f);
                          _4712 = (_4647 == 0.0f);
                          _4713 = (_4655 >= 0.0f);
                          _4714 = (_4655 < 0.0f);
                          _4724 = max(((float)((uint)((uint)(_4619)))), 1.0f);
                          _4725 = _4697 * _4623;
                          _4736 = _4706 * _4616;
                          _4738 = max((_4706 - _4736), 0.0f);
                          _4739 = _4686 - _4738;
                          _4740 = _4738 * (acos(min(max(cos(((((_4725 * -6.2831855f) - _4691) + select((_4712 && _4713), 1.5707964f, select((_4712 && _4714), -1.5707964f, select((_4711 && _4714), (_4708 + -3.1415927f), select((_4711 && _4713), (_4708 + 3.1415927f), _4708))))) * _4724) + _4626), -1.0f), 1.0f)) / _4724);
                          _4745 = _4686 - _4706;
                          _4754 = saturate(1.0f - (_4686 / _4706));  // [sem: expr_sat]
                          _4757 = ((_4754 + _4725) * _4621) - _4691;
                          _4758 = sin(_4757);
                          _4759 = cos(_4757);
                          _4793 = ((saturate(_4624) * (((-0.0f - _4745) - _4736) + sqrt((_4739 * _4739) + (_4740 * _4740)))) + _4745);
                          _4794 = _4706;
                          _4795 = 0.0f;
                          _4796 = _4754;
                          _4797 = ((_4759 * _4647) - (_4758 * _4655));
                          _4798 = _4651;
                          _4799 = ((_4759 * _4655) + (_4758 * _4647));
                          _4819 = _4794;
                          _4820 = _4795;
                          _4821 = _4796;
                          _4822 = _4797;
                          _4823 = _4798;
                          _4824 = _4799;
                          _4825 = max(_4793, ((_4657 * 2.0f) + -1.0f));
                        } else {
                          _4804 = 0.0f;
                          _4805 = _4647;
                          _4806 = _4651;
                          _4807 = _4655;
                          _4808 = _4805 * 2.0f;
                          _4809 = _4806 * 2.0f;
                          _4810 = _4807 * 2.0f;
                          _4819 = 1.0f;
                          _4820 = _4804;
                          _4821 = _4690;
                          _4822 = _4805;
                          _4823 = _4806;
                          _4824 = _4807;
                          _4825 = (sqrt(((_4809 * _4809) + (_4808 * _4808)) + (_4810 * _4810)) + -1.0f);
                        }
                      }
                      if (_4609 > 0.0f) {
                        _4828 = _time.x * _4632;
                        _4832 = max(_4608, 0.0001f);
                        _4850 = (_4825 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_4828 * _4636) + _4610) + (_4832 * _4822)), (((_4828 * _4637) + _4611) + (_4832 * _4823)), (((_4828 * _4638) + _4615) + (_4832 * _4824))), 0.0f)).x) + -0.5f) * _4609));
                      } else {
                        _4850 = _4825;
                      }
                      if (_4692 && (_4624 > 0.0f)) {
                        _4855 = atan(_4655 / _4647);
                        _4858 = (_4647 < 0.0f);
                        _4859 = (_4647 == 0.0f);
                        _4860 = (_4655 >= 0.0f);
                        _4861 = (_4655 < 0.0f);
                        _4883 = (_4850 - (((_4624 * 0.5f) * _4821) * cos(((((_4686 * _4623) - _4691) + select((_4859 && _4860), 1.5707964f, select((_4859 && _4861), -1.5707964f, select((_4858 && _4861), (_4855 + -3.1415927f), select((_4858 && _4860), (_4855 + 3.1415927f), _4855))))) * max(((float)((uint)((uint)(_4619)))), 1.0f)) + _4626)));
                      } else {
                        _4883 = _4850;
                      }
                      if (_4693 && (_4643 > 0.0f)) {
                        _4891 = max(_4883, ((_4819 * _4643) - _4686));
                      } else {
                        _4891 = _4883;
                      }
                      _4893 = max(_4606, 0.0001f);
                      _4899 = saturate((((_4605 - (_4820 * _4631)) + _4891) + _4893) / (_4893 * 2.0f));  // [sem: expr_sat]
                      _4904 = 1.0f - ((_4899 * _4899) * (3.0f - (_4899 * 2.0f)));
                      if (!((_4904 >= 1.0f) || ((_4614 <= 0.0f) || (_4904 <= 0.0f)))) {
                        _4911 = _time.x * _4633;
                        _4915 = max(_4613, 0.0001f);
                        // [sem: expr_sat]
                        _4939 = saturate(_4904 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_4911 * _4636) + _4610) + (_4915 * _4822)), (((_4911 * _4637) + _4611) + (_4915 * _4823)), (((_4911 * _4638) + _4615) + (_4915 * _4824))), 0.0f)).x) * _4614) * saturate(1.0f - abs((_4904 * 2.0f) + -1.0f))));
                      } else {
                        _4939 = _4904;  // [sem: expr_sat]
                      }
                      _4944 = (((_4677 * _4604) * _4939) + _4579);
                    } else {
                      _4944 = _4579;
                    }
                  } else {
                    _4944 = _4579;
                  }
                } else {
                  _4944 = _4579;
                }
                _4945 = (uint)((uint)(_4580)) + (uint)(1);
                if ((uint)_4945 < (uint)_cloudDensityVolumeInfo.x) {
                  _4579 = _4944;
                  _4580 = _4945;
                  continue;
                }
                while(true) {
                  _4950 = saturate(_4944);  // [sem: _4944_sat]
                  break;
                }
                break;
              }
            } else {
              _4950 = 0.0f;  // [sem: _4944_sat]
            }
            _4954 = _4243 - _viewPos.y;
            _4957 = sqrt(_4429 + (_4954 * _4954));
            _4963 = max(1e-06f, (_heightFogScale * 0.0025f));
            _4964 = _4963 * _cloudScroll.x;
            _4965 = _4963 * _cloudScroll.y;
            _4966 = _4963 * _4242;
            _4967 = _4963 * _4243;
            _4968 = _4963 * _4244;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _4989 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4966 * 6.393882f) - (_4964 * 1.871f)), (_4967 * 6.393882f), ((_4968 * 6.393882f) - (_4965 * 1.871f))), 0.0f);
            _5007 = ((((saturate(_4957 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4966 * 0.5127f) - _4964), (_4967 * 0.5127f), ((_4968 * 0.5127f) - _4965)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_4410 - _heightFogBaseline)))) * (((0.5f - _4989.x) * saturate((_4957 + -300.0f) * 0.0025f)) + _4989.x)) * _heightFogDensity;
            _5008 = _4243 - _cloudAltitude;
            _5010 = (_5008 + _4436) / _cloudThickness;
            if (!(_sunDirection.y > 0.0f)) {
              if (!(_sunDirection.y > _moonDirection.y)) {
                _5020 = _moonDirection.x;
                _5021 = _moonDirection.y;
                _5022 = _moonDirection.z;
              } else {
                _5020 = _sunDirection.x;
                _5021 = _sunDirection.y;
                _5022 = _sunDirection.z;
              }
            } else {
              _5020 = _sunDirection.x;
              _5021 = _sunDirection.y;
              _5022 = _sunDirection.z;
            }
            _5023 = (_5021 > 0.0f);
            _5032 = ((0.5f - (((float)((int)((int)((int)(uint)(_5023)) - (int)((int)(uint)((int)(_5021 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _4437;
            if (_4243 < _4437) {
              _5035 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5020, _5021, _5022));
              _5041 = select((abs(_5035) < 1e-08f), 1e+08f, ((_5032 - dot(float3(0.0f, 1.0f, 0.0f), float3(_4242, _4243, _4244))) / _5035));
              _5047 = ((_5041 * _5020) + _4242);
              _5048 = _5032;
              _5049 = ((_5041 * _5022) + _4244);
            } else {
              _5047 = _4242;
              _5048 = _4243;
              _5049 = _4244;
            }
            _5064 = _cloudScatteringCoefficient / _distanceScale;
            _5069 = abs(_5021);
            _5071 = saturate(_5069 * 4.0f);  // [sem: expr_sat]
            _5073 = (_5071 * _5071) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_5047 - _viewPos.x) * 5e-05f) + 0.5f), ((_5048 - _cloudAltitude) / _cloudThickness), (((_5049 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _5064);
            _5079 = ((1.0f - _5073) * saturate((_5008 - _cloudThickness) * 0.1f)) + _5073;
            _5082 = -0.0f - _5064;
            _5083 = (log2(_5079) * 0.6931472f) / _5082;
            if ((saturate(_4950 + (_4568 * _4556)) > 0.001f) && ((_4950 > 0.001f) || ((_5010 >= 0.0f) && (_5010 <= 1.0f)))) {
              _5097 = (_4243 - _4437) / _cloudThickness;
              if (((_5097 >= 0.0f) && (_5097 <= 1.0f)) && (_5069 > 0.001f)) {
                _5114 = min(300.0f, (((_4437 - _4243) + select(_5023, _cloudThickness, 0.0f)) / _5021));
              } else {
                _5114 = 300.0f;
              }
              if ((_cloudDensityVolumeInfo.y & 1) == 0) {
                _5239 = 0.0f;
                _5240 = 3.4028235e+38f;
                _5241 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
              } else {
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _5126 = 0;
                  _5127 = 3.4028235e+38f;
                  _5128 = 0.0f;
                  _5129 = 0;
                  while(true) {
                    _5132 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[0].x;
                    _5133 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[1].x;
                    _5134 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[2].x;
                    _5136 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[0].y;
                    _5137 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[1].y;
                    _5138 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[2].y;
                    _5140 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[0].z;
                    _5141 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[1].z;
                    _5142 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[2].z;
                    _5144 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[0].w;
                    _5145 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[1].w;
                    _5146 = __3__37__0__0__g_cloudDensityVolumes[_5126]._relativeWorldToLocal[2].w;
                    _5150 = mad(_5140, _4244, mad(_5136, _4243, (_5132 * _4242))) + _5144;
                    _5154 = mad(_5141, _4244, mad(_5137, _4243, (_5133 * _4242))) + _5145;
                    _5158 = mad(_5142, _4244, mad(_5138, _4243, (_5134 * _4242))) + _5146;
                    _5161 = mad(_5140, _5022, mad(_5136, _5021, (_5132 * _5020)));
                    _5164 = mad(_5141, _5022, mad(_5137, _5021, (_5133 * _5020)));
                    _5167 = mad(_5142, _5022, mad(_5138, _5021, (_5134 * _5020)));
                    _5168 = abs(_5161);
                    if (!(_5168 < 1e-06f) || !(abs(_5150) > 0.5f)) {
                      _5174 = abs(_5164);
                      if (!(_5174 < 1e-06f) || !(abs(_5154) > 0.5f)) {
                        _5180 = abs(_5167);
                        if (!(_5180 < 1e-06f) || !(abs(_5158) > 0.5f)) {
                          _5195 = max(_5168, 1e-06f) * select((_5161 < 0.0f), -1.0f, 1.0f);
                          _5196 = max(_5174, 1e-06f) * select((_5164 < 0.0f), -1.0f, 1.0f);
                          _5197 = max(_5180, 1e-06f) * select((_5167 < 0.0f), -1.0f, 1.0f);
                          _5201 = (-0.5f - _5150) / _5195;
                          _5202 = (-0.5f - _5154) / _5196;
                          _5203 = (-0.5f - _5158) / _5197;
                          _5207 = (0.5f - _5150) / _5195;
                          _5208 = (0.5f - _5154) / _5196;
                          _5209 = (0.5f - _5158) / _5197;
                          _5220 = max(max(max(min(_5201, _5207), min(_5202, _5208)), min(_5203, _5209)), 0.0f);
                          _5221 = min(min(min(max(_5201, _5207), max(_5202, _5208)), max(_5203, _5209)), 3.4028235e+38f);
                          if (!(_5221 < _5220)) {
                            _5230 = min(_5127, _5220);
                            _5231 = max(_5128, _5221);
                            _5232 = ((int)(_5129) | (int)((int)((uint)(1) << (_5126 & 31))));
                          } else {
                            _5230 = _5127;
                            _5231 = _5128;
                            _5232 = _5129;
                          }
                        } else {
                          _5230 = _5127;
                          _5231 = _5128;
                          _5232 = _5129;
                        }
                      } else {
                        _5230 = _5127;
                        _5231 = _5128;
                        _5232 = _5129;
                      }
                    } else {
                      _5230 = _5127;
                      _5231 = _5128;
                      _5232 = _5129;
                    }
                    _5233 = (uint)((uint)(_5126)) + (uint)(1);
                    if ((uint)_5233 < (uint)_cloudDensityVolumeInfo.x) {
                      _5126 = _5233;
                      _5127 = _5230;
                      _5128 = _5231;
                      _5129 = _5232;
                      continue;
                    }
                    _5239 = _5230;
                    _5240 = _5231;
                    _5241 = _5232;
                    break;
                  }
                } else {
                  _5239 = 3.4028235e+38f;
                  _5240 = 0.0f;
                  _5241 = 0;
                }
              }
              _5242 = _5114 * 0.2f;
              _5246 = _5114 * 0.1f;
              _5254 = 0.0f;
              _5255 = _5242;
              _5256 = (_5242 * _5020);
              _5257 = (_5242 * _5021);
              _5258 = (_5242 * _5022);
              _5259 = _5246;
              _5260 = ((_5246 * _5020) + _4242);
              _5261 = ((_5246 * _5021) + _4243);
              _5262 = ((_5246 * _5022) + _4244);
              _5263 = 0;
              while(true) {
                _5267 = select(((_5259 >= _5239) && (_5259 <= _5240)), _5241, 0);
                _5273 = _5260 - _viewPos.x;
                _5274 = _5262 - _viewPos.z;
                _5278 = sqrt((_5273 * _5273) + (_5274 * _5274));
                _5285 = _cloudAltitude - (max(((_5278 * _5278) + -400000.0f), 0.0f) * 1e-06f);
                _5290 = _cloudDetailScale * 0.004f;
                _5293 = _cloudBaseScale * 0.0004f;
                _5298 = _earthRadius + _5261;
                _5307 = ((sqrt(((_5262 * _5262) + (_5260 * _5260)) + (_5298 * _5298)) - _5285) - _earthRadius) / _cloudThickness;
                if (!((_5307 < 0.0f) || (_5307 > 1.0f))) {
                  _5350 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _5351 = _5261 - _5285;
                  _5367 = _5290 / _5293;
                  _5368 = _5367 * _5293;
                  _5370 = _5367 * _5350;
                  _5382 = saturate(max((_5278 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _5386 = (4.0f - (_5382 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _5390 = _5368 * 4.355f;
                  _5409 = 1.0f - sqrt(saturate((1.0f - _5307) * 1.4285715f));
                  // [sem: expr_sat]
                  _5425 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_5260 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5262 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5293 * (_5260 - _cloudScroll.x)), ((_5293 * _5351) - _5350), (_5293 * (_5262 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5409 * 0.5f), ((_5409 * _5409) * _5409))) * saturate(_5307 * 10.0f);
                  _5428 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5386 * _5260) - (_5390 * _cloudScroll.x)), ((_5386 * _5351) - (_5370 * 4.355f)), ((_5386 * _5262) - (_5390 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5290 * _5260) - (_5368 * _cloudScroll.x)), ((_5290 * _5351) - _5370), ((_5290 * _5262) - (_5368 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_5307 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                  _5429 = _5428 * ((_5382 * 0.4f) + 0.1f);
                  _5441 = (saturate((_5425 - _5428) / (1.0f - _5428)) * _cloudAlpha);
                  _5442 = (saturate((_5425 - _5429) / (1.0f - _5429)) * _cloudAlpha);
                } else {
                  _5441 = 0.0f;
                  _5442 = 0.0f;
                }
                if (!((_5267 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                  _5452 = 0.0f;
                  _5453 = 0;
                  while(true) {
                    _5818 = _5452;
                    if (!((((int)((uint)(1) << (_5453 & 31))) & _5267) == 0)) {
                      _5461 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[0].x;
                      _5462 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[1].x;
                      _5463 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[2].x;
                      _5465 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[0].y;
                      _5466 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[1].y;
                      _5467 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[2].y;
                      _5469 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[0].z;
                      _5470 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[1].z;
                      _5471 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[2].z;
                      _5473 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[0].w;
                      _5474 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[1].w;
                      _5475 = __3__37__0__0__g_cloudDensityVolumes[_5453]._relativeWorldToLocal[2].w;
                      _5477 = __3__37__0__0__g_cloudDensityVolumes[_5453]._shapeParameter.x;
                      _5478 = __3__37__0__0__g_cloudDensityVolumes[_5453]._shapeParameter.z;
                      _5479 = __3__37__0__0__g_cloudDensityVolumes[_5453]._shapeParameter.w;
                      _5481 = __3__37__0__0__g_cloudDensityVolumes[_5453]._macroNoiseParameter.x;
                      _5482 = __3__37__0__0__g_cloudDensityVolumes[_5453]._macroNoiseParameter.y;
                      _5483 = __3__37__0__0__g_cloudDensityVolumes[_5453]._macroNoiseParameter.z;
                      _5484 = __3__37__0__0__g_cloudDensityVolumes[_5453]._macroNoiseParameter.w;
                      _5486 = __3__37__0__0__g_cloudDensityVolumes[_5453]._detailNoiseParameter.x;
                      _5487 = __3__37__0__0__g_cloudDensityVolumes[_5453]._detailNoiseParameter.y;
                      _5488 = __3__37__0__0__g_cloudDensityVolumes[_5453]._detailNoiseParameter.z;
                      _5489 = __3__37__0__0__g_cloudDensityVolumes[_5453]._detailNoiseParameter.w;
                      _5491 = __3__37__0__0__g_cloudDensityVolumes[_5453]._modeParameter.x;
                      _5492 = __3__37__0__0__g_cloudDensityVolumes[_5453]._modeParameter.y;
                      _5494 = __3__37__0__0__g_cloudDensityVolumes[_5453]._vortexParameter.x;
                      _5495 = __3__37__0__0__g_cloudDensityVolumes[_5453]._vortexParameter.y;
                      _5496 = __3__37__0__0__g_cloudDensityVolumes[_5453]._vortexParameter.z;
                      _5497 = __3__37__0__0__g_cloudDensityVolumes[_5453]._vortexParameter.w;
                      _5499 = __3__37__0__0__g_cloudDensityVolumes[_5453]._spiralParameter.x;
                      _5500 = __3__37__0__0__g_cloudDensityVolumes[_5453]._spiralParameter.y;
                      _5501 = __3__37__0__0__g_cloudDensityVolumes[_5453]._spiralParameter.z;
                      _5502 = __3__37__0__0__g_cloudDensityVolumes[_5453]._spiralParameter.w;
                      _5504 = __3__37__0__0__g_cloudDensityVolumes[_5453]._animationParameter.x;
                      _5505 = __3__37__0__0__g_cloudDensityVolumes[_5453]._animationParameter.y;
                      _5506 = __3__37__0__0__g_cloudDensityVolumes[_5453]._animationParameter.z;
                      _5507 = __3__37__0__0__g_cloudDensityVolumes[_5453]._animationParameter.w;
                      _5509 = __3__37__0__0__g_cloudDensityVolumes[_5453]._flowParameter.x;
                      _5510 = __3__37__0__0__g_cloudDensityVolumes[_5453]._flowParameter.y;
                      _5511 = __3__37__0__0__g_cloudDensityVolumes[_5453]._flowParameter.z;
                      _5513 = __3__37__0__0__g_cloudDensityVolumes[_5453]._tornadoParameter.x;
                      _5514 = __3__37__0__0__g_cloudDensityVolumes[_5453]._tornadoParameter.y;
                      _5515 = __3__37__0__0__g_cloudDensityVolumes[_5453]._tornadoParameter.z;
                      _5516 = __3__37__0__0__g_cloudDensityVolumes[_5453]._tornadoParameter.w;
                      _5520 = mad(_5469, _5262, mad(_5465, _5261, (_5461 * _5260))) + _5473;
                      _5524 = mad(_5470, _5262, mad(_5466, _5261, (_5462 * _5260))) + _5474;
                      _5528 = mad(_5471, _5262, mad(_5467, _5261, (_5463 * _5260))) + _5475;
                      _5530 = abs(_5524);
                      _5536 = max((abs(_5520) + -0.5f), max((_5530 + -0.5f), (abs(_5528) + -0.5f)));
                      if (!(_5536 >= 0.0f)) {
                        _5539 = __3__37__0__0__g_cloudDensityVolumes[_5453]._shapeParameter.y;
                        _5542 = max((saturate(_5539) * 0.5f), 0.0001f);
                        _5545 = saturate((_5542 + _5536) / _5542);  // [sem: expr_sat]
                        _5550 = 1.0f - ((_5545 * _5545) * (3.0f - (_5545 * 2.0f)));
                        if (!(_5550 <= 0.0f)) {
                          _5559 = sqrt((_5528 * _5528) + (_5520 * _5520)) * 2.0f;
                          _5563 = saturate(1.0f - (_5559 / max(_5495, 0.0001f)));  // [sem: expr_sat]
                          _5564 = _time.x * _5507;
                          _5565 = (_5491 == 1);
                          _5566 = (_5491 == 2);
                          if (_5565) {
                            _5643 = exp2(log2(_5563) * max(_5502, 0.0001f));
                            _5645 = max(_5501, 0.0001f);
                            _5649 = _5524 / (((max(_5500, 0.0001f) - _5645) * _5643) + _5645);
                            _5656 = (((_5563 * _5563) * _5494) * ((_5559 * _5496) + _5524)) - (_5563 * _5564);
                            _5657 = sin(_5656);
                            _5658 = cos(_5656);
                            _5661 = (_5658 * _5520) - (_5657 * _5528);
                            _5664 = (_5658 * _5528) + (_5657 * _5520);
                            if (_5566) {
                              _5666 = 0.0f;
                              _5667 = 1.0f;
                              _5668 = _5643;
                              _5669 = _5563;
                              _5670 = _5661;
                              _5671 = _5649;
                              _5672 = _5664;
                              _5692 = _5667;
                              _5693 = _5668;
                              _5694 = _5669;
                              _5695 = _5670;
                              _5696 = _5671;
                              _5697 = _5672;
                              _5698 = max(_5666, ((_5530 * 2.0f) + -1.0f));
                            } else {
                              _5677 = _5643;
                              _5678 = _5661;
                              _5679 = _5649;
                              _5680 = _5664;
                              _5681 = _5678 * 2.0f;
                              _5682 = _5679 * 2.0f;
                              _5683 = _5680 * 2.0f;
                              _5692 = 1.0f;
                              _5693 = _5677;
                              _5694 = _5563;
                              _5695 = _5678;
                              _5696 = _5679;
                              _5697 = _5680;
                              _5698 = (sqrt(((_5682 * _5682) + (_5681 * _5681)) + (_5683 * _5683)) + -1.0f);
                            }
                          } else {
                            if (_5566) {
                              _5570 = saturate(_5524 + 0.5f);  // [sem: expr_sat]
                              _5576 = max(_5513, 0.0001f);
                              _5579 = ((max(_5514, 0.0001f) - _5576) * exp2(log2(_5570) * max(_5515, 0.0001f))) + _5576;
                              _5581 = atan(_5528 / _5520);
                              _5584 = (_5520 < 0.0f);
                              _5585 = (_5520 == 0.0f);
                              _5586 = (_5528 >= 0.0f);
                              _5587 = (_5528 < 0.0f);
                              _5597 = max(((float)((uint)((uint)(_5492)))), 1.0f);
                              _5598 = _5570 * _5496;
                              _5609 = _5579 * _5489;
                              _5611 = max((_5579 - _5609), 0.0f);
                              _5612 = _5559 - _5611;
                              _5613 = _5611 * (acos(min(max(cos(((((_5598 * -6.2831855f) - _5564) + select((_5585 && _5586), 1.5707964f, select((_5585 && _5587), -1.5707964f, select((_5584 && _5587), (_5581 + -3.1415927f), select((_5584 && _5586), (_5581 + 3.1415927f), _5581))))) * _5597) + _5499), -1.0f), 1.0f)) / _5597);
                              _5618 = _5559 - _5579;
                              _5627 = saturate(1.0f - (_5559 / _5579));  // [sem: expr_sat]
                              _5630 = ((_5627 + _5598) * _5494) - _5564;
                              _5631 = sin(_5630);
                              _5632 = cos(_5630);
                              _5666 = ((saturate(_5497) * (((-0.0f - _5618) - _5609) + sqrt((_5612 * _5612) + (_5613 * _5613)))) + _5618);
                              _5667 = _5579;
                              _5668 = 0.0f;
                              _5669 = _5627;
                              _5670 = ((_5632 * _5520) - (_5631 * _5528));
                              _5671 = _5524;
                              _5672 = ((_5632 * _5528) + (_5631 * _5520));
                              _5692 = _5667;
                              _5693 = _5668;
                              _5694 = _5669;
                              _5695 = _5670;
                              _5696 = _5671;
                              _5697 = _5672;
                              _5698 = max(_5666, ((_5530 * 2.0f) + -1.0f));
                            } else {
                              _5677 = 0.0f;
                              _5678 = _5520;
                              _5679 = _5524;
                              _5680 = _5528;
                              _5681 = _5678 * 2.0f;
                              _5682 = _5679 * 2.0f;
                              _5683 = _5680 * 2.0f;
                              _5692 = 1.0f;
                              _5693 = _5677;
                              _5694 = _5563;
                              _5695 = _5678;
                              _5696 = _5679;
                              _5697 = _5680;
                              _5698 = (sqrt(((_5682 * _5682) + (_5681 * _5681)) + (_5683 * _5683)) + -1.0f);
                            }
                          }
                          if (_5482 > 0.0f) {
                            _5701 = _time.x * _5505;
                            _5705 = max(_5481, 0.0001f);
                            _5723 = (_5698 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5701 * _5509) + _5483) + (_5705 * _5695)), (((_5701 * _5510) + _5484) + (_5705 * _5696)), (((_5701 * _5511) + _5488) + (_5705 * _5697))), 0.0f)).x) + -0.5f) * _5482));
                          } else {
                            _5723 = _5698;
                          }
                          if (_5565 && (_5497 > 0.0f)) {
                            _5728 = atan(_5528 / _5520);
                            _5731 = (_5520 < 0.0f);
                            _5732 = (_5520 == 0.0f);
                            _5733 = (_5528 >= 0.0f);
                            _5734 = (_5528 < 0.0f);
                            _5756 = (_5723 - (((_5497 * 0.5f) * _5694) * cos(((((_5559 * _5496) - _5564) + select((_5732 && _5733), 1.5707964f, select((_5732 && _5734), -1.5707964f, select((_5731 && _5734), (_5728 + -3.1415927f), select((_5731 && _5733), (_5728 + 3.1415927f), _5728))))) * max(((float)((uint)((uint)(_5492)))), 1.0f)) + _5499)));
                          } else {
                            _5756 = _5723;
                          }
                          if (_5566 && (_5516 > 0.0f)) {
                            _5764 = max(_5756, ((_5692 * _5516) - _5559));
                          } else {
                            _5764 = _5756;
                          }
                          _5766 = max(_5479, 0.0001f);
                          _5772 = saturate((((_5478 - (_5693 * _5504)) + _5764) + _5766) / (_5766 * 2.0f));  // [sem: expr_sat]
                          _5777 = 1.0f - ((_5772 * _5772) * (3.0f - (_5772 * 2.0f)));
                          if (!((_5777 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_5487 <= 0.0f)) || (_5777 <= 0.0f)))) {
                            _5785 = _time.x * _5506;
                            _5789 = max(_5486, 0.0001f);
                            // [sem: expr_sat]
                            _5813 = saturate(_5777 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5785 * _5509) + _5483) + (_5789 * _5695)), (((_5785 * _5510) + _5484) + (_5789 * _5696)), (((_5785 * _5511) + _5488) + (_5789 * _5697))), 0.0f)).x) * _5487) * saturate(1.0f - abs((_5777 * 2.0f) + -1.0f))));
                          } else {
                            _5813 = _5777;  // [sem: expr_sat]
                          }
                          _5818 = (((_5550 * _5477) * _5813) + _5452);
                        } else {
                          _5818 = _5452;
                        }
                      } else {
                        _5818 = _5452;
                      }
                    } else {
                      _5818 = _5452;
                    }
                    _5819 = (uint)((uint)(_5453)) + (uint)(1);
                    if ((uint)_5819 < (uint)_cloudDensityVolumeInfo.x) {
                      _5452 = _5818;
                      _5453 = _5819;
                      continue;
                    }
                    while(true) {
                      _5824 = saturate(_5818);  // [sem: _5818_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _5824 = 0.0f;  // [sem: _5818_sat]
                }
                _5826 = saturate(_5824 + _5442);  // [sem: expr_sat]
                _5842 = (((exp2((((_5254 * -0.0072134747f) * _5255) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_5824 + _5441) - _5826)) + _5826) * _5255) + _5254;
                _5843 = _5259 + _5255;
                _5844 = _5260 + _5256;
                _5845 = _5261 + _5257;
                _5846 = _5262 + _5258;
                _5847 = _5255 * 1.3f;
                _5848 = _5256 * 1.3f;
                _5849 = _5257 * 1.3f;
                _5850 = _5258 * 1.3f;
                _5851 = (int)(_5263) + (int)(1);
                if (!(_5851 == 6)) {
                  _5254 = _5842;
                  _5255 = _5847;
                  _5256 = _5848;
                  _5257 = _5849;
                  _5258 = _5850;
                  _5259 = _5843;
                  _5260 = _5844;
                  _5261 = _5845;
                  _5262 = _5846;
                  _5263 = _5851;
                  continue;
                }
                _5859 = ((_cloudDensityVolumeInfo.y & 2) != 0);
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _5879 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_4242 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_4244 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _5881 = _4242 + 50.0f;
                _5882 = _4243 + 200.0f;
                _5883 = _5881 - _viewPos.x;
                _5884 = _4244 - _viewPos.z;
                _5888 = sqrt((_5883 * _5883) + (_5884 * _5884));
                _5893 = _cloudAltitude - (max(((_5888 * _5888) + -400000.0f), 0.0f) * 1e-06f);
                _5894 = _earthRadius + _5882;
                _5896 = _5894 * _5894;
                _5902 = ((sqrt(((_5881 * _5881) + _4330) + _5896) - _earthRadius) - _5893) / _cloudThickness;
                if (!((_5902 < 0.0f) || (_5902 > 1.0f))) {
                  _5924 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _5925 = _5882 - _5893;
                  _5941 = _5290 / _5293;
                  _5942 = _5941 * _5293;
                  _5944 = _5941 * _5924;
                  _5956 = saturate(max((_5888 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _5960 = (4.0f - (_5956 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _5964 = _5942 * 4.355f;
                  _5981 = 1.0f - sqrt(saturate((1.0f - _5902) * 1.4285715f));
                  _6003 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5290 * _5881) - (_5942 * _cloudScroll.x)), ((_5925 * _5290) - _5944), ((_5290 * _4244) - (_5942 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_5956 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5960 * _5881) - (_5964 * _cloudScroll.x)), ((_5960 * _5925) - (_5944 * 4.355f)), ((_5960 * _4244) - (_5964 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_5902 * 4.0f) * 0.8f) + 0.2f);
                  _6010 = (saturate(((saturate(saturate(((_5879.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5293 * (_5881 - _cloudScroll.x)), ((_5925 * _5293) - _5924), (_5293 * (_4244 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5981 * 0.5f), ((_5981 * _5981) * _5981))) * saturate(_5902 * 10.0f)) - _6003) / (1.0f - _6003)) * _cloudAlpha);
                } else {
                  _6010 = 0.0f;
                }
                _6012 = (_cloudFadeRange > 1e-05f);
                if (_6012) {
                  _6022 = saturate(((_5888 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _6022 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _6030 = 0.0f;
                  _6031 = 0;
                  while(true) {
                    _6394 = _6030;
                    if (!((uint)(_6031 & 16) > (uint)15)) {
                      _6037 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[0].x;
                      _6038 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[1].x;
                      _6039 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[2].x;
                      _6041 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[0].y;
                      _6042 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[1].y;
                      _6043 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[2].y;
                      _6045 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[0].z;
                      _6046 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[1].z;
                      _6047 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[2].z;
                      _6049 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[0].w;
                      _6050 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[1].w;
                      _6051 = __3__37__0__0__g_cloudDensityVolumes[_6031]._relativeWorldToLocal[2].w;
                      _6053 = __3__37__0__0__g_cloudDensityVolumes[_6031]._shapeParameter.x;
                      _6054 = __3__37__0__0__g_cloudDensityVolumes[_6031]._shapeParameter.z;
                      _6055 = __3__37__0__0__g_cloudDensityVolumes[_6031]._shapeParameter.w;
                      _6057 = __3__37__0__0__g_cloudDensityVolumes[_6031]._macroNoiseParameter.x;
                      _6058 = __3__37__0__0__g_cloudDensityVolumes[_6031]._macroNoiseParameter.y;
                      _6059 = __3__37__0__0__g_cloudDensityVolumes[_6031]._macroNoiseParameter.z;
                      _6060 = __3__37__0__0__g_cloudDensityVolumes[_6031]._macroNoiseParameter.w;
                      _6062 = __3__37__0__0__g_cloudDensityVolumes[_6031]._detailNoiseParameter.x;
                      _6063 = __3__37__0__0__g_cloudDensityVolumes[_6031]._detailNoiseParameter.y;
                      _6064 = __3__37__0__0__g_cloudDensityVolumes[_6031]._detailNoiseParameter.z;
                      _6065 = __3__37__0__0__g_cloudDensityVolumes[_6031]._detailNoiseParameter.w;
                      _6067 = __3__37__0__0__g_cloudDensityVolumes[_6031]._modeParameter.x;
                      _6068 = __3__37__0__0__g_cloudDensityVolumes[_6031]._modeParameter.y;
                      _6070 = __3__37__0__0__g_cloudDensityVolumes[_6031]._vortexParameter.x;
                      _6071 = __3__37__0__0__g_cloudDensityVolumes[_6031]._vortexParameter.y;
                      _6072 = __3__37__0__0__g_cloudDensityVolumes[_6031]._vortexParameter.z;
                      _6073 = __3__37__0__0__g_cloudDensityVolumes[_6031]._vortexParameter.w;
                      _6075 = __3__37__0__0__g_cloudDensityVolumes[_6031]._spiralParameter.x;
                      _6076 = __3__37__0__0__g_cloudDensityVolumes[_6031]._spiralParameter.y;
                      _6077 = __3__37__0__0__g_cloudDensityVolumes[_6031]._spiralParameter.z;
                      _6078 = __3__37__0__0__g_cloudDensityVolumes[_6031]._spiralParameter.w;
                      _6080 = __3__37__0__0__g_cloudDensityVolumes[_6031]._animationParameter.x;
                      _6081 = __3__37__0__0__g_cloudDensityVolumes[_6031]._animationParameter.y;
                      _6082 = __3__37__0__0__g_cloudDensityVolumes[_6031]._animationParameter.z;
                      _6083 = __3__37__0__0__g_cloudDensityVolumes[_6031]._animationParameter.w;
                      _6085 = __3__37__0__0__g_cloudDensityVolumes[_6031]._flowParameter.x;
                      _6086 = __3__37__0__0__g_cloudDensityVolumes[_6031]._flowParameter.y;
                      _6087 = __3__37__0__0__g_cloudDensityVolumes[_6031]._flowParameter.z;
                      _6089 = __3__37__0__0__g_cloudDensityVolumes[_6031]._tornadoParameter.x;
                      _6090 = __3__37__0__0__g_cloudDensityVolumes[_6031]._tornadoParameter.y;
                      _6091 = __3__37__0__0__g_cloudDensityVolumes[_6031]._tornadoParameter.z;
                      _6092 = __3__37__0__0__g_cloudDensityVolumes[_6031]._tornadoParameter.w;
                      _6096 = mad(_6045, _4244, mad(_6041, _5882, (_6037 * _5881))) + _6049;
                      _6100 = mad(_6046, _4244, mad(_6042, _5882, (_6038 * _5881))) + _6050;
                      _6104 = mad(_6047, _4244, mad(_6043, _5882, (_6039 * _5881))) + _6051;
                      _6106 = abs(_6100);
                      _6112 = max((abs(_6096) + -0.5f), max((_6106 + -0.5f), (abs(_6104) + -0.5f)));
                      if (!(_6112 >= 0.0f)) {
                        _6115 = __3__37__0__0__g_cloudDensityVolumes[_6031]._shapeParameter.y;
                        _6118 = max((saturate(_6115) * 0.5f), 0.0001f);
                        _6121 = saturate((_6118 + _6112) / _6118);  // [sem: expr_sat]
                        _6126 = 1.0f - ((_6121 * _6121) * (3.0f - (_6121 * 2.0f)));
                        if (!(_6126 <= 0.0f)) {
                          _6135 = sqrt((_6104 * _6104) + (_6096 * _6096)) * 2.0f;
                          _6139 = saturate(1.0f - (_6135 / max(_6071, 0.0001f)));  // [sem: expr_sat]
                          _6140 = _time.x * _6083;
                          _6141 = (_6067 == 1);
                          _6142 = (_6067 == 2);
                          if (_6141) {
                            _6219 = exp2(log2(_6139) * max(_6078, 0.0001f));
                            _6221 = max(_6077, 0.0001f);
                            _6225 = _6100 / (((max(_6076, 0.0001f) - _6221) * _6219) + _6221);
                            _6232 = (((_6139 * _6139) * _6070) * ((_6135 * _6072) + _6100)) - (_6139 * _6140);
                            _6233 = sin(_6232);
                            _6234 = cos(_6232);
                            _6237 = (_6234 * _6096) - (_6233 * _6104);
                            _6240 = (_6234 * _6104) + (_6233 * _6096);
                            if (_6142) {
                              _6242 = 0.0f;
                              _6243 = 1.0f;
                              _6244 = _6219;
                              _6245 = _6139;
                              _6246 = _6237;
                              _6247 = _6225;
                              _6248 = _6240;
                              _6268 = _6243;
                              _6269 = _6244;
                              _6270 = _6245;
                              _6271 = _6246;
                              _6272 = _6247;
                              _6273 = _6248;
                              _6274 = max(_6242, ((_6106 * 2.0f) + -1.0f));
                            } else {
                              _6253 = _6219;
                              _6254 = _6237;
                              _6255 = _6225;
                              _6256 = _6240;
                              _6257 = _6254 * 2.0f;
                              _6258 = _6255 * 2.0f;
                              _6259 = _6256 * 2.0f;
                              _6268 = 1.0f;
                              _6269 = _6253;
                              _6270 = _6139;
                              _6271 = _6254;
                              _6272 = _6255;
                              _6273 = _6256;
                              _6274 = (sqrt(((_6258 * _6258) + (_6257 * _6257)) + (_6259 * _6259)) + -1.0f);
                            }
                          } else {
                            if (_6142) {
                              _6146 = saturate(_6100 + 0.5f);  // [sem: expr_sat]
                              _6152 = max(_6089, 0.0001f);
                              _6155 = ((max(_6090, 0.0001f) - _6152) * exp2(log2(_6146) * max(_6091, 0.0001f))) + _6152;
                              _6157 = atan(_6104 / _6096);
                              _6160 = (_6096 < 0.0f);
                              _6161 = (_6096 == 0.0f);
                              _6162 = (_6104 >= 0.0f);
                              _6163 = (_6104 < 0.0f);
                              _6173 = max(((float)((uint)((uint)(_6068)))), 1.0f);
                              _6174 = _6146 * _6072;
                              _6185 = _6155 * _6065;
                              _6187 = max((_6155 - _6185), 0.0f);
                              _6188 = _6135 - _6187;
                              _6189 = _6187 * (acos(min(max(cos(((((_6174 * -6.2831855f) - _6140) + select((_6161 && _6162), 1.5707964f, select((_6161 && _6163), -1.5707964f, select((_6160 && _6163), (_6157 + -3.1415927f), select((_6160 && _6162), (_6157 + 3.1415927f), _6157))))) * _6173) + _6075), -1.0f), 1.0f)) / _6173);
                              _6194 = _6135 - _6155;
                              _6203 = saturate(1.0f - (_6135 / _6155));  // [sem: expr_sat]
                              _6206 = ((_6203 + _6174) * _6070) - _6140;
                              _6207 = sin(_6206);
                              _6208 = cos(_6206);
                              _6242 = ((saturate(_6073) * (((-0.0f - _6194) - _6185) + sqrt((_6188 * _6188) + (_6189 * _6189)))) + _6194);
                              _6243 = _6155;
                              _6244 = 0.0f;
                              _6245 = _6203;
                              _6246 = ((_6208 * _6096) - (_6207 * _6104));
                              _6247 = _6100;
                              _6248 = ((_6208 * _6104) + (_6207 * _6096));
                              _6268 = _6243;
                              _6269 = _6244;
                              _6270 = _6245;
                              _6271 = _6246;
                              _6272 = _6247;
                              _6273 = _6248;
                              _6274 = max(_6242, ((_6106 * 2.0f) + -1.0f));
                            } else {
                              _6253 = 0.0f;
                              _6254 = _6096;
                              _6255 = _6100;
                              _6256 = _6104;
                              _6257 = _6254 * 2.0f;
                              _6258 = _6255 * 2.0f;
                              _6259 = _6256 * 2.0f;
                              _6268 = 1.0f;
                              _6269 = _6253;
                              _6270 = _6139;
                              _6271 = _6254;
                              _6272 = _6255;
                              _6273 = _6256;
                              _6274 = (sqrt(((_6258 * _6258) + (_6257 * _6257)) + (_6259 * _6259)) + -1.0f);
                            }
                          }
                          if (_6058 > 0.0f) {
                            _6277 = _time.x * _6081;
                            _6281 = max(_6057, 0.0001f);
                            _6299 = (_6274 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6277 * _6085) + _6059) + (_6281 * _6271)), (((_6277 * _6086) + _6060) + (_6281 * _6272)), (((_6277 * _6087) + _6064) + (_6281 * _6273))), 0.0f)).x) + -0.5f) * _6058));
                          } else {
                            _6299 = _6274;
                          }
                          if (_6141 && (_6073 > 0.0f)) {
                            _6304 = atan(_6104 / _6096);
                            _6307 = (_6096 < 0.0f);
                            _6308 = (_6096 == 0.0f);
                            _6309 = (_6104 >= 0.0f);
                            _6310 = (_6104 < 0.0f);
                            _6332 = (_6299 - (((_6073 * 0.5f) * _6270) * cos(((((_6135 * _6072) - _6140) + select((_6308 && _6309), 1.5707964f, select((_6308 && _6310), -1.5707964f, select((_6307 && _6310), (_6304 + -3.1415927f), select((_6307 && _6309), (_6304 + 3.1415927f), _6304))))) * max(((float)((uint)((uint)(_6068)))), 1.0f)) + _6075)));
                          } else {
                            _6332 = _6299;
                          }
                          if (_6142 && (_6092 > 0.0f)) {
                            _6340 = max(_6332, ((_6268 * _6092) - _6135));
                          } else {
                            _6340 = _6332;
                          }
                          _6342 = max(_6055, 0.0001f);
                          _6348 = saturate((((_6054 - (_6269 * _6080)) + _6340) + _6342) / (_6342 * 2.0f));  // [sem: expr_sat]
                          _6353 = 1.0f - ((_6348 * _6348) * (3.0f - (_6348 * 2.0f)));
                          if (!((_6353 >= 1.0f) || ((_5859 || (_6063 <= 0.0f)) || (_6353 <= 0.0f)))) {
                            _6361 = _time.x * _6082;
                            _6365 = max(_6062, 0.0001f);
                            // [sem: expr_sat]
                            _6389 = saturate(_6353 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6361 * _6085) + _6059) + (_6365 * _6271)), (((_6361 * _6086) + _6060) + (_6365 * _6272)), (((_6361 * _6087) + _6064) + (_6365 * _6273))), 0.0f)).x) * _6063) * saturate(1.0f - abs((_6353 * 2.0f) + -1.0f))));
                          } else {
                            _6389 = _6353;  // [sem: expr_sat]
                          }
                          _6394 = (((_6126 * _6053) * _6389) + _6030);
                        } else {
                          _6394 = _6030;
                        }
                      } else {
                        _6394 = _6030;
                      }
                    } else {
                      _6394 = _6030;
                    }
                    _6395 = (uint)((uint)(_6031)) + (uint)(1);
                    if ((uint)_6395 < (uint)_cloudDensityVolumeInfo.x) {
                      _6030 = _6394;
                      _6031 = _6395;
                      continue;
                    }
                    while(true) {
                      _6400 = saturate(_6394);  // [sem: _6394_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _6400 = 0.0f;  // [sem: _6394_sat]
                }
                _6403 = _4244 + -50.0f;
                _6404 = _4242 - _viewPos.x;
                _6405 = _6403 - _viewPos.z;
                _6409 = sqrt((_6404 * _6404) + (_6405 * _6405));
                _6414 = _cloudAltitude - (max(((_6409 * _6409) + -400000.0f), 0.0f) * 1e-06f);
                _6421 = ((sqrt(((_6403 * _6403) + _4328) + _5896) - _earthRadius) - _6414) / _cloudThickness;
                if (!((_6421 < 0.0f) || (_6421 > 1.0f))) {
                  _6443 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _6444 = _5882 - _6414;
                  _6460 = _5290 / _5293;
                  _6461 = _6460 * _5293;
                  _6463 = _6460 * _6443;
                  _6475 = saturate(max((_6409 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _6479 = (4.0f - (_6475 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _6483 = _6461 * 4.355f;
                  _6500 = 1.0f - sqrt(saturate((1.0f - _6421) * 1.4285715f));
                  _6522 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5290 * _4242) - (_6461 * _cloudScroll.x)), ((_6444 * _5290) - _6463), ((_5290 * _6403) - (_6461 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6475 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6479 * _4242) - (_6483 * _cloudScroll.x)), ((_6479 * _6444) - (_6463 * 4.355f)), ((_6479 * _6403) - (_6483 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6421 * 4.0f) * 0.8f) + 0.2f);
                  _6529 = (saturate(((saturate(saturate(((_5879.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5293 * (_4242 - _cloudScroll.x)), ((_6444 * _5293) - _6443), (_5293 * (_6403 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6500 * 0.5f), ((_6500 * _6500) * _6500))) * saturate(_6421 * 10.0f)) - _6522) / (1.0f - _6522)) * _cloudAlpha);
                } else {
                  _6529 = 0.0f;
                }
                if (_6012) {
                  _6539 = saturate(((_6409 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _6539 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _6548 = 0.0f;
                  _6549 = 0;
                  while(true) {
                    _6912 = _6548;
                    if (!((uint)(_6549 & 16) > (uint)15)) {
                      _6555 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[0].x;
                      _6556 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[1].x;
                      _6557 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[2].x;
                      _6559 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[0].y;
                      _6560 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[1].y;
                      _6561 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[2].y;
                      _6563 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[0].z;
                      _6564 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[1].z;
                      _6565 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[2].z;
                      _6567 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[0].w;
                      _6568 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[1].w;
                      _6569 = __3__37__0__0__g_cloudDensityVolumes[_6549]._relativeWorldToLocal[2].w;
                      _6571 = __3__37__0__0__g_cloudDensityVolumes[_6549]._shapeParameter.x;
                      _6572 = __3__37__0__0__g_cloudDensityVolumes[_6549]._shapeParameter.z;
                      _6573 = __3__37__0__0__g_cloudDensityVolumes[_6549]._shapeParameter.w;
                      _6575 = __3__37__0__0__g_cloudDensityVolumes[_6549]._macroNoiseParameter.x;
                      _6576 = __3__37__0__0__g_cloudDensityVolumes[_6549]._macroNoiseParameter.y;
                      _6577 = __3__37__0__0__g_cloudDensityVolumes[_6549]._macroNoiseParameter.z;
                      _6578 = __3__37__0__0__g_cloudDensityVolumes[_6549]._macroNoiseParameter.w;
                      _6580 = __3__37__0__0__g_cloudDensityVolumes[_6549]._detailNoiseParameter.x;
                      _6581 = __3__37__0__0__g_cloudDensityVolumes[_6549]._detailNoiseParameter.y;
                      _6582 = __3__37__0__0__g_cloudDensityVolumes[_6549]._detailNoiseParameter.z;
                      _6583 = __3__37__0__0__g_cloudDensityVolumes[_6549]._detailNoiseParameter.w;
                      _6585 = __3__37__0__0__g_cloudDensityVolumes[_6549]._modeParameter.x;
                      _6586 = __3__37__0__0__g_cloudDensityVolumes[_6549]._modeParameter.y;
                      _6588 = __3__37__0__0__g_cloudDensityVolumes[_6549]._vortexParameter.x;
                      _6589 = __3__37__0__0__g_cloudDensityVolumes[_6549]._vortexParameter.y;
                      _6590 = __3__37__0__0__g_cloudDensityVolumes[_6549]._vortexParameter.z;
                      _6591 = __3__37__0__0__g_cloudDensityVolumes[_6549]._vortexParameter.w;
                      _6593 = __3__37__0__0__g_cloudDensityVolumes[_6549]._spiralParameter.x;
                      _6594 = __3__37__0__0__g_cloudDensityVolumes[_6549]._spiralParameter.y;
                      _6595 = __3__37__0__0__g_cloudDensityVolumes[_6549]._spiralParameter.z;
                      _6596 = __3__37__0__0__g_cloudDensityVolumes[_6549]._spiralParameter.w;
                      _6598 = __3__37__0__0__g_cloudDensityVolumes[_6549]._animationParameter.x;
                      _6599 = __3__37__0__0__g_cloudDensityVolumes[_6549]._animationParameter.y;
                      _6600 = __3__37__0__0__g_cloudDensityVolumes[_6549]._animationParameter.z;
                      _6601 = __3__37__0__0__g_cloudDensityVolumes[_6549]._animationParameter.w;
                      _6603 = __3__37__0__0__g_cloudDensityVolumes[_6549]._flowParameter.x;
                      _6604 = __3__37__0__0__g_cloudDensityVolumes[_6549]._flowParameter.y;
                      _6605 = __3__37__0__0__g_cloudDensityVolumes[_6549]._flowParameter.z;
                      _6607 = __3__37__0__0__g_cloudDensityVolumes[_6549]._tornadoParameter.x;
                      _6608 = __3__37__0__0__g_cloudDensityVolumes[_6549]._tornadoParameter.y;
                      _6609 = __3__37__0__0__g_cloudDensityVolumes[_6549]._tornadoParameter.z;
                      _6610 = __3__37__0__0__g_cloudDensityVolumes[_6549]._tornadoParameter.w;
                      _6614 = mad(_6563, _6403, mad(_6559, _5882, (_6555 * _4242))) + _6567;
                      _6618 = mad(_6564, _6403, mad(_6560, _5882, (_6556 * _4242))) + _6568;
                      _6622 = mad(_6565, _6403, mad(_6561, _5882, (_6557 * _4242))) + _6569;
                      _6624 = abs(_6618);
                      _6630 = max((abs(_6614) + -0.5f), max((_6624 + -0.5f), (abs(_6622) + -0.5f)));
                      if (!(_6630 >= 0.0f)) {
                        _6633 = __3__37__0__0__g_cloudDensityVolumes[_6549]._shapeParameter.y;
                        _6636 = max((saturate(_6633) * 0.5f), 0.0001f);
                        _6639 = saturate((_6636 + _6630) / _6636);  // [sem: expr_sat]
                        _6644 = 1.0f - ((_6639 * _6639) * (3.0f - (_6639 * 2.0f)));
                        if (!(_6644 <= 0.0f)) {
                          _6653 = sqrt((_6622 * _6622) + (_6614 * _6614)) * 2.0f;
                          _6657 = saturate(1.0f - (_6653 / max(_6589, 0.0001f)));  // [sem: expr_sat]
                          _6658 = _time.x * _6601;
                          _6659 = (_6585 == 1);
                          _6660 = (_6585 == 2);
                          if (_6659) {
                            _6737 = exp2(log2(_6657) * max(_6596, 0.0001f));
                            _6739 = max(_6595, 0.0001f);
                            _6743 = _6618 / (((max(_6594, 0.0001f) - _6739) * _6737) + _6739);
                            _6750 = (((_6657 * _6657) * _6588) * ((_6653 * _6590) + _6618)) - (_6657 * _6658);
                            _6751 = sin(_6750);
                            _6752 = cos(_6750);
                            _6755 = (_6752 * _6614) - (_6751 * _6622);
                            _6758 = (_6752 * _6622) + (_6751 * _6614);
                            if (_6660) {
                              _6760 = 0.0f;
                              _6761 = 1.0f;
                              _6762 = _6737;
                              _6763 = _6657;
                              _6764 = _6755;
                              _6765 = _6743;
                              _6766 = _6758;
                              _6786 = _6761;
                              _6787 = _6762;
                              _6788 = _6763;
                              _6789 = _6764;
                              _6790 = _6765;
                              _6791 = _6766;
                              _6792 = max(_6760, ((_6624 * 2.0f) + -1.0f));
                            } else {
                              _6771 = _6737;
                              _6772 = _6755;
                              _6773 = _6743;
                              _6774 = _6758;
                              _6775 = _6772 * 2.0f;
                              _6776 = _6773 * 2.0f;
                              _6777 = _6774 * 2.0f;
                              _6786 = 1.0f;
                              _6787 = _6771;
                              _6788 = _6657;
                              _6789 = _6772;
                              _6790 = _6773;
                              _6791 = _6774;
                              _6792 = (sqrt(((_6776 * _6776) + (_6775 * _6775)) + (_6777 * _6777)) + -1.0f);
                            }
                          } else {
                            if (_6660) {
                              _6664 = saturate(_6618 + 0.5f);  // [sem: expr_sat]
                              _6670 = max(_6607, 0.0001f);
                              _6673 = ((max(_6608, 0.0001f) - _6670) * exp2(log2(_6664) * max(_6609, 0.0001f))) + _6670;
                              _6675 = atan(_6622 / _6614);
                              _6678 = (_6614 < 0.0f);
                              _6679 = (_6614 == 0.0f);
                              _6680 = (_6622 >= 0.0f);
                              _6681 = (_6622 < 0.0f);
                              _6691 = max(((float)((uint)((uint)(_6586)))), 1.0f);
                              _6692 = _6664 * _6590;
                              _6703 = _6673 * _6583;
                              _6705 = max((_6673 - _6703), 0.0f);
                              _6706 = _6653 - _6705;
                              _6707 = _6705 * (acos(min(max(cos(((((_6692 * -6.2831855f) - _6658) + select((_6679 && _6680), 1.5707964f, select((_6679 && _6681), -1.5707964f, select((_6678 && _6681), (_6675 + -3.1415927f), select((_6678 && _6680), (_6675 + 3.1415927f), _6675))))) * _6691) + _6593), -1.0f), 1.0f)) / _6691);
                              _6712 = _6653 - _6673;
                              _6721 = saturate(1.0f - (_6653 / _6673));  // [sem: expr_sat]
                              _6724 = ((_6721 + _6692) * _6588) - _6658;
                              _6725 = sin(_6724);
                              _6726 = cos(_6724);
                              _6760 = ((saturate(_6591) * (((-0.0f - _6712) - _6703) + sqrt((_6706 * _6706) + (_6707 * _6707)))) + _6712);
                              _6761 = _6673;
                              _6762 = 0.0f;
                              _6763 = _6721;
                              _6764 = ((_6726 * _6614) - (_6725 * _6622));
                              _6765 = _6618;
                              _6766 = ((_6726 * _6622) + (_6725 * _6614));
                              _6786 = _6761;
                              _6787 = _6762;
                              _6788 = _6763;
                              _6789 = _6764;
                              _6790 = _6765;
                              _6791 = _6766;
                              _6792 = max(_6760, ((_6624 * 2.0f) + -1.0f));
                            } else {
                              _6771 = 0.0f;
                              _6772 = _6614;
                              _6773 = _6618;
                              _6774 = _6622;
                              _6775 = _6772 * 2.0f;
                              _6776 = _6773 * 2.0f;
                              _6777 = _6774 * 2.0f;
                              _6786 = 1.0f;
                              _6787 = _6771;
                              _6788 = _6657;
                              _6789 = _6772;
                              _6790 = _6773;
                              _6791 = _6774;
                              _6792 = (sqrt(((_6776 * _6776) + (_6775 * _6775)) + (_6777 * _6777)) + -1.0f);
                            }
                          }
                          if (_6576 > 0.0f) {
                            _6795 = _time.x * _6599;
                            _6799 = max(_6575, 0.0001f);
                            _6817 = (_6792 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6795 * _6603) + _6577) + (_6799 * _6789)), (((_6795 * _6604) + _6578) + (_6799 * _6790)), (((_6795 * _6605) + _6582) + (_6799 * _6791))), 0.0f)).x) + -0.5f) * _6576));
                          } else {
                            _6817 = _6792;
                          }
                          if (_6659 && (_6591 > 0.0f)) {
                            _6822 = atan(_6622 / _6614);
                            _6825 = (_6614 < 0.0f);
                            _6826 = (_6614 == 0.0f);
                            _6827 = (_6622 >= 0.0f);
                            _6828 = (_6622 < 0.0f);
                            _6850 = (_6817 - (((_6591 * 0.5f) * _6788) * cos(((((_6653 * _6590) - _6658) + select((_6826 && _6827), 1.5707964f, select((_6826 && _6828), -1.5707964f, select((_6825 && _6828), (_6822 + -3.1415927f), select((_6825 && _6827), (_6822 + 3.1415927f), _6822))))) * max(((float)((uint)((uint)(_6586)))), 1.0f)) + _6593)));
                          } else {
                            _6850 = _6817;
                          }
                          if (_6660 && (_6610 > 0.0f)) {
                            _6858 = max(_6850, ((_6786 * _6610) - _6653));
                          } else {
                            _6858 = _6850;
                          }
                          _6860 = max(_6573, 0.0001f);
                          _6866 = saturate((((_6572 - (_6787 * _6598)) + _6858) + _6860) / (_6860 * 2.0f));  // [sem: expr_sat]
                          _6871 = 1.0f - ((_6866 * _6866) * (3.0f - (_6866 * 2.0f)));
                          if (!((_6871 >= 1.0f) || ((_5859 || (_6581 <= 0.0f)) || (_6871 <= 0.0f)))) {
                            _6879 = _time.x * _6600;
                            _6883 = max(_6580, 0.0001f);
                            // [sem: expr_sat]
                            _6907 = saturate(_6871 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6879 * _6603) + _6577) + (_6883 * _6789)), (((_6879 * _6604) + _6578) + (_6883 * _6790)), (((_6879 * _6605) + _6582) + (_6883 * _6791))), 0.0f)).x) * _6581) * saturate(1.0f - abs((_6871 * 2.0f) + -1.0f))));
                          } else {
                            _6907 = _6871;  // [sem: expr_sat]
                          }
                          _6912 = (((_6644 * _6571) * _6907) + _6548);
                        } else {
                          _6912 = _6548;
                        }
                      } else {
                        _6912 = _6548;
                      }
                    } else {
                      _6912 = _6548;
                    }
                    _6913 = (uint)((uint)(_6549)) + (uint)(1);
                    if ((uint)_6913 < (uint)_cloudDensityVolumeInfo.x) {
                      _6548 = _6912;
                      _6549 = _6913;
                      continue;
                    }
                    while(true) {
                      _6918 = saturate(_6912);  // [sem: _6912_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _6918 = 0.0f;  // [sem: _6912_sat]
                }
                _6925 = max(_5083, (_5842 * _distanceScale));
                _6926 = ((_distanceScale * 20.0f) * (saturate(_6918 + (_6539 * _6529)) + saturate(_6400 + (_6022 * _6010))));
                break;
              }
            } else {
              _6925 = _5083;
              _6926 = ((log2(max(_5079, 0.5f)) * 0.6931472f) / _5082);
            }
            _6927 = dot(float3(_4334, _4335, _4336), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _6931 = min(max(_4410, 16.0f), (_atmosphereThickness + -16.0f));
            _6939 = max(_6931, 0.0f);
            _6948 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _6939) * _6939)) / (_earthRadius + _6939);
            if (_6927 > _6948) {
              _6971 = ((exp2(log2(saturate((_6927 - _6948) / (1.0f - _6948))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _6971 = ((exp2(log2(saturate((_6948 - _6927) / (_6948 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _6976 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_6931 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _6971), 0.0f);
            _6987 = ((_4420 + _4188) * 12.5f) + _4184;
            _6988 = ((_4421 + _4189) * 12.5f) + _4185;
            _6989 = ((_4326 + _4190) * 12.5f) + _4202;
            _6990 = ((_5007 + _4191) * 12.5f) + _4187;
            _6991 = _6990 + _6989;
            _6992 = _6976.x + _6987;
            _6999 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _7002 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _7004 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _7011 = _mieAerosolDensity * 2e-05f;
            _7012 = _7011 * (_mieAerosolAbsorption + 1.0f);
            _7022 = _cloudScatteringCoefficient / _distanceScale;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _7024 = (_6999 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _7026 = (_7022 * (_6925 + _6991)) + (_7012 * (_6976.y + _6988));
            _7028 = (_7002 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _7031 = (_7004 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _7037 = exp2(((_7024 * _6992) + _7026) * -1.442695f);
            _7038 = exp2(((_7028 * _6992) + _7026) * -1.442695f);
            _7039 = exp2(((_7031 * _6992) + _7026) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor4 = CloudReddeningFactor((_7022 * (_6925 + _6991)), _dawnDuskFactor, false);
            _7037 *= 1.f;                // R unchanged
            _7038 *= _cloudRedFactor4;   // G attenuated
            _7039 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _7052 = ((_7038 * 0.33951f) + (_7037 * 0.61312f)) + (_7039 * 0.04737f);
            _7053 = ((_7038 * 0.91636f) + (_7037 * 0.0702f)) + (_7039 * 0.01345f);
            _7054 = ((_7038 * 0.10958f) + (_7037 * 0.02062f)) + (_7039 * 0.8698f);
            _7055 = _7052 * _4421;
            _7056 = _7053 * _4421;
            _7057 = _7054 * _4421;
            _7058 = _7022 * _distanceScale;
            _7070 = (1.0f - exp2((_7058 * -288.539f) * _5007)) * _5007;
            _7074 = _185 * 0.059683103f;
            _7079 = _miePhaseConst * _miePhaseConst;
            _7098 = ((_mieAerosolDensity * 1.5915493e-06f) * (((1.0f - _7079) * 3.0f) / ((_7079 + 2.0f) * 2.0f))) * (_185 / exp2(log2((_7079 + 1.0f) - (_miePhaseConst * _187)) * 1.5f));
            _7107 = exp2(log2(1.0f - exp2((_7058 * -14.42695f) * _4326)) * 1.25f) * ((_195 * 64.0f) * _4326);
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
            //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
            //              the top of main): the sun in-scatter path consumes the *b companions for a
            //              stronger forward-scatter lobe around the low sun, while the moon HG keeps
            //              the vanilla variables. When Dawn/Dusk Improvements is Off (or the sun is
            //              outside the dawn/dusk window) _boostedMieG equals the vanilla
            //              _miePhaseConst, so the companions are bit-identical to the vanilla terms
            //              they mirror.
            // [DAWN_DUSK] Sun HG uses boosted g - vanilla _7079/_7098 kept for reference
            float _7079b = _7079;
            float _7098b = _7098;
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              _7079b = _boostedMieG * _boostedMieG;
              _7098b = ((_mieAerosolDensity * 1.591549334989395e-06f) * (((1.0f - _7079b) * 3.0f) / ((_7079b + 2.0f) * 2.0f))) * (_185 / exp2(log2((_7079b + 1.0f) - (_boostedMieG * _187)) * 1.5f));
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            _7115 = _213 * 2.0f;
            _7116 = _volumeFogScatterColor.x * (_7070 * _7052);
            _7118 = _volumeFogScatterColor.y * (_7070 * _7053);
            _7120 = _volumeFogScatterColor.z * (_7070 * _7054);
            _7128 = _mieAerosolDensity * 0.00049999997f;
            _7132 = _213 * 50.0f;
            _7153 = (_7022 * (_6926 + _6991)) + (_7012 * _6988);
            _7162 = exp2(((_7024 * _6987) + _7153) * -1.442695f);
            _7163 = exp2(((_7028 * _6987) + _7153) * -1.442695f);
            _7164 = exp2(((_7031 * _6987) + _7153) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor5 = CloudReddeningFactor((_7022 * (_6926 + _6991)), _dawnDuskFactor, false);
            _7162 *= 1.f;                // R unchanged
            _7163 *= _cloudRedFactor5;   // G attenuated
            _7164 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _7181 = (((_7163 * 0.33951f) + (_7162 * 0.61312f)) + (_7164 * 0.04737f)) * _4403;
            _7182 = (((_7163 * 0.91636f) + (_7162 * 0.0702f)) + (_7164 * 0.01345f)) * _4404;
            _7183 = (((_7163 * 0.10958f) + (_7162 * 0.02062f)) + (_7164 * 0.8698f)) * _4405;
            _7184 = _4421 * _7011;
            _7188 = _7022 * (_5007 + _4326);
            _7195 = _4420 * 4.901961e-06f;
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
            // Description: Selects which matrix converts this region's sun Rayleigh in-scatter
            //              radiance into the working space. The row carries two Rayleigh terms:
            //              a gather term against the view-path transmittance triple
            //              (_7162/_7163/_7164), weighted by that row's multi-gather channel
            //              (_4403/_4404/_4405), and a single-scatter term against the step
            //              transmittance triple (_7037/_7038/_7039) carrying the sun Rayleigh
            //              phase _7074. Both convert per wavelength through
            //              SKY_SPECTRAL_TO_WORKING when enabled; the density carrier _7195 rides
            //              through as the macro's phase argument, which preserves this region's
            //              scale because its betas are the raw packed ints. Beta stays native, so
            //              extinction and ozone are untouched, and the Mie, cloud and volume-fog
            //              terms of the same accumulator keep the vanilla matrix. Each Off arm is
            //              the complete native expression.
            float _rndx_sky_ray_r2_x = SKY_SCATTERING
              ? ((_4403 * SKY_RAY_INSCATTER(0, _7162, _7163, _7164, _6999, _7002, _7004, _7195)) + SKY_RAY_INSCATTER(0, _7037, _7038, _7039, _6999, _7002, _7004, (_7195 * _7074)))
              : ((_7195 * _6999) * (_7181 + (_7052 * _7074)));
            float _rndx_sky_ray_r2_y = SKY_SCATTERING
              ? ((_4404 * SKY_RAY_INSCATTER(1, _7162, _7163, _7164, _6999, _7002, _7004, _7195)) + SKY_RAY_INSCATTER(1, _7037, _7038, _7039, _6999, _7002, _7004, (_7195 * _7074)))
              : ((_7195 * _7002) * (_7182 + (_7053 * _7074)));
            float _rndx_sky_ray_r2_z = SKY_SCATTERING
              ? ((_4405 * SKY_RAY_INSCATTER(2, _7162, _7163, _7164, _6999, _7002, _7004, _7195)) + SKY_RAY_INSCATTER(2, _7037, _7038, _7039, _6999, _7002, _7004, (_7195 * _7074)))
              : ((_7195 * _7004) * (_7183 + (_7054 * _7074)));
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Routes only the positive sun-Mie term in the recovered RGB accumulation cluster through the existing boosted phase companion; every other native term remains unchanged.
            _7224 = ((((_precomputedAmbients[48].x) * ((_7116 * _7132) + (_7055 * _7128))) + _4181) + ((_rndx_sky_ray_r2_x + (((((_7098b * _7055) * _mieScatterColor.x) + (((_7116 * _7115) + (_7107 * _7052)) * _7022)) + (_7181 * ((_mieScatterColor.x * _7184) + _7188))) * 25.0f)) * _precomputedAmbient7.y));
            _7225 = ((((_precomputedAmbients[48].y) * ((_7118 * _7132) + (_7056 * _7128))) + _4182) + ((_rndx_sky_ray_r2_y + (((((_7098b * _7056) * _mieScatterColor.y) + (((_7118 * _7115) + (_7107 * _7053)) * _7022)) + (_7182 * ((_mieScatterColor.y * _7184) + _7188))) * 25.0f)) * _precomputedAmbient7.y));
            _7226 = ((((_precomputedAmbients[48].z) * ((_7120 * _7132) + (_7057 * _7128))) + _4183) + ((_rndx_sky_ray_r2_z + (((((_7098b * _7057) * _mieScatterColor.z) + (((_7120 * _7115) + (_7107 * _7054)) * _7022)) + (_7183 * ((_mieScatterColor.z * _7184) + _7188))) * 25.0f)) * _precomputedAmbient7.y));
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            _7227 = _6987;
            _7228 = _6988;
            _7229 = _6989;
            _7230 = _6990;
            _7231 = _396;
            _7232 = _397;
            _7233 = _398;
            _7234 = _384;
          } else {
            _7224 = _4181;
            _7225 = _4182;
            _7226 = _4183;
            _7227 = _4184;
            _7228 = _4185;
            _7229 = _4202;
            _7230 = _4187;
            _7231 = _396;
            _7232 = _397;
            _7233 = _398;
            _7234 = _384;
          }
          _7648 = _7234;
          _7649 = _7227;
          _7650 = _7228;
          _7651 = _7229;
          _7652 = _7230;
          _7653 = _7224;
          _7654 = _7225;
          _7655 = _7226;
          _7656 = 1.0f;
          _7657 = 1.0f;
          _7658 = 1.0f;
          _7659 = 0.0f;
          _7660 = 0.0f;
          _7661 = 0.0f;
        } else {
          _7236 = _384;
          _7237 = _396;
          _7238 = _397;
          _7239 = _398;
          _7240 = _4184;
          _7241 = _4185;
          _7242 = _4202;
          _7243 = _4187;
          _7244 = _4181;
          _7245 = _4182;
          _7246 = _4183;
          if (_216 < _116) {
            _7252 = _viewPos.x + (_117 * _116);
            _7253 = _viewPos.y + (_118 * _116);
            _7254 = _viewPos.z + (_119 * _116);
            _7261 = _earthRadius + _7238;
            _7267 = sqrt(((_7239 * _7239) + (_7237 * _7237)) + (_7261 * _7261));
            _7268 = _7237 / _7267;
            _7269 = _7261 / _7267;
            _7270 = _7239 / _7267;
            _7273 = dot(float3(_7268, _7269, _7270), float3(_117, _118, _119));
            _7275 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _7278 = _atmosphereThickness + -16.0f;
            _7280 = min(max(max((_7267 - _earthRadius), 0.01f), 16.0f), _7278);
            _7282 = _atmosphereThickness + -32.0f;
            _7288 = max(_7280, 0.0f);
            _7289 = _earthRadius * 2.0f;
            _7295 = (-0.0f - sqrt((_7288 + _7289) * _7288)) / (_7288 + _earthRadius);
            if (_7273 > _7295) {
              _7318 = ((exp2(log2(saturate((_7273 - _7295) / (1.0f - _7295))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7318 = ((exp2(log2(saturate((_7295 - _7273) / (_7295 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _7320 = (exp2(log2(saturate((_7280 + -16.0f) / _7282)) * 0.5f) * 0.96875f) + 0.015625f;
            _7325 = (1.0f - exp2(-1.1541561f - (dot(float3(_7268, _7269, _7270), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _7328 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _7333 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
            _7340 = (_7275 * _7275) + 1.0f;
            _7341 = _7340 * 0.059683103f;
            _7345 = _miePhaseConst * _miePhaseConst;
            _7360 = ((((1.0f - _7345) * 3.0f) / ((_7345 + 2.0f) * 2.0f)) * 0.07957747f) * (_7340 / exp2(log2((_7345 + 1.0f) - ((_7275 * 2.0f) * _miePhaseConst)) * 1.5f));
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Initializes the companion from the exact adjacent native phase and overwrites it with the boosted-g formula only when Dawn/Dusk Improvements is enabled.
            float _rndx_sky_mie_phase_b_1 = _7360;
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              _rndx_sky_mie_phase_b_1 = ((((1.0f - (_boostedMieG * _boostedMieG)) * 3.0f) / (((_boostedMieG * _boostedMieG) + 2.0f) * 2.0f)) * 0.07957747f) * (_7340 / exp2(log2(((_boostedMieG * _boostedMieG) + 1.0f) - ((_7275 * 2.0f) * _boostedMieG)) * 1.5f));
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _7365 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _7370 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
            _7374 = _earthRadius + _7253;
            _7380 = sqrt(((_7254 * _7254) + (_7252 * _7252)) + (_7374 * _7374));
            _7381 = _7252 / _7380;
            _7382 = _7374 / _7380;
            _7383 = _7254 / _7380;
            _7386 = dot(float3(_7381, _7382, _7383), float3(_117, _118, _119));
            _7389 = min(max(max((_7380 - _earthRadius), 0.01f), 16.0f), _7278);
            _7396 = max(_7389, 0.0f);
            _7402 = (-0.0f - sqrt((_7396 + _7289) * _7396)) / (_7396 + _earthRadius);
            if (_7386 > _7402) {
              _7425 = ((exp2(log2(saturate((_7386 - _7402) / (1.0f - _7402))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7425 = ((exp2(log2(saturate((_7402 - _7386) / (_7402 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _7427 = (exp2(log2(saturate((_7389 + -16.0f) / _7282)) * 0.5f) * 0.96875f) + 0.015625f;
            _7432 = (1.0f - exp2(-1.1541561f - (dot(float3(_7381, _7382, _7383), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _7433 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _7437 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _7447 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _7451 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
            _7464 = dot(float3(_7237, _7261, _7239), float3(_117, _118, _119));
            _7465 = _7464 / _7267;
            _7466 = _7237 - _7252;
            _7467 = _7238 - _7253;
            _7468 = _7239 - _7254;
            _7474 = sqrt(((_7467 * _7467) + (_7466 * _7466)) + (_7468 * _7468));
            _7481 = sqrt((0.5f / _rayleighScaledHeight) * _7267);
            _7482 = sqrt((0.5f / _mieScaledHeight) * _7267);
            _7484 = (_7474 + _7464) / _7267;
            _7485 = _7481 * _7465;
            _7486 = _7484 * _7481;
            _7487 = _7482 * _7465;
            _7488 = _7484 * _7482;
            _7509 = (float)((int)((int)((int)(uint)((int)(_7485 > 0.0f))) - (int)((int)(uint)((int)(_7485 < 0.0f)))));
            _7510 = (float)((int)((int)((int)(uint)((int)(_7486 > 0.0f))) - (int)((int)(uint)((int)(_7486 < 0.0f)))));
            _7511 = (float)((int)((int)((int)(uint)((int)(_7487 > 0.0f))) - (int)((int)(uint)((int)(_7487 < 0.0f)))));
            _7512 = (float)((int)((int)((int)(uint)((int)(_7488 > 0.0f))) - (int)((int)(uint)((int)(_7488 < 0.0f)))));
            _7513 = _7485 * _7485;
            _7514 = _7487 * _7487;
            if (_7510 > _7509) {
              _7520 = exp2(_7513 * 1.442695f);
            } else {
              _7520 = 0.0f;
            }
            if (_7512 > _7511) {
              _7526 = exp2(_7514 * 1.442695f);
            } else {
              _7526 = 0.0f;
            }
            _7557 = -0.0f - _7474;
            _7563 = ((_7474 / (_7267 * 2.0f)) + _7465) * 1.442695f;
            _7570 = _7267 * 6.2831f;
            _7575 = _earthRadius - _7267;
            _7587 = (exp2((_7575 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7570)) * (dot(float2((_7509 / (sqrt((_7513 * 1.52f) + 4.0f) + (abs(_7485) * 2.3193f))), (exp2(_7563 * (_7557 / _rayleighScaledHeight)) * (_7510 / (sqrt(((_7486 * _7486) * 1.52f) + 4.0f) + (abs(_7486) * 2.3193f))))), float2(1.0f, -1.0f)) + _7520);
            _7608 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _7570)) * exp2((_7575 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_7511 / (sqrt((_7514 * 1.52f) + 4.0f) + (abs(_7487) * 2.3193f))), (exp2(_7563 * (_7557 / _mieScaledHeight)) * (_7512 / (sqrt(((_7488 * _7488) * 1.52f) + 4.0f) + (abs(_7488) * 2.3193f))))), float2(1.0f, -1.0f)) + _7526);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _7626 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _7587) + _7608) * -1.442695f);
            _7627 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _7587) + _7608) * -1.442695f);
            _7628 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _7587) + _7608) * -1.442695f);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _7648 = _7236;
            _7649 = _7240;
            _7650 = _7241;
            _7651 = _7242;
            _7652 = _7243;
            _7653 = _7244;
            _7654 = _7245;
            _7655 = _7246;
            _7656 = _7626;
            _7657 = _7627;
            _7658 = _7628;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Substitutes the boosted phase companion only in each positive sun single-scatter term; the second native phase occurrence in the subtracted occlusion term is intentionally preserved.
            _7659 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _7333.x) + (_7328.x * _7341)) + _7365.x) + _7370.x) - (_7626 * ((((_7437.x * _7360) + (_7433.x * _7341)) + _7447.x) + _7451.x))));
            _7660 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _7333.y) + (_7328.y * _7341)) + _7365.y) + _7370.y) - (_7627 * ((((_7437.y * _7360) + (_7433.y * _7341)) + _7447.y) + _7451.y))));
            _7661 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _7333.z) + (_7328.z * _7341)) + _7365.z) + _7370.z) - (_7628 * ((((_7437.z * _7360) + (_7433.z * _7341)) + _7447.z) + _7451.z))));
            // RenoDX: <<< [Patch: DawnDuskImprovements]
          } else {
            _7648 = _7236;
            _7649 = _7240;
            _7650 = _7241;
            _7651 = _7242;
            _7652 = _7243;
            _7653 = _7244;
            _7654 = _7245;
            _7655 = _7246;
            _7656 = 1.0f;
            _7657 = 1.0f;
            _7658 = 1.0f;
            _7659 = 0.0f;
            _7660 = 0.0f;
            _7661 = 0.0f;
          }
        }
        break;
      }
    } else {
      _7224 = 0.0f;
      _7225 = 0.0f;
      _7226 = 0.0f;
      _7227 = 0.0f;
      _7228 = 0.0f;
      _7229 = 0.0f;
      _7230 = 0.0f;
      _7231 = _viewPos.x;
      _7232 = _viewPos.y;
      _7233 = _viewPos.z;
      _7234 = 0.0f;
      if (!_133) {
        _7236 = _7234;
        _7237 = _7231;
        _7238 = _7232;
        _7239 = _7233;
        _7240 = _7227;
        _7241 = _7228;
        _7242 = _7229;
        _7243 = _7230;
        _7244 = _7224;
        _7245 = _7225;
        _7246 = _7226;
        if (_216 < _116) {
          _7252 = _viewPos.x + (_117 * _116);
          _7253 = _viewPos.y + (_118 * _116);
          _7254 = _viewPos.z + (_119 * _116);
          _7261 = _earthRadius + _7238;
          _7267 = sqrt(((_7239 * _7239) + (_7237 * _7237)) + (_7261 * _7261));
          _7268 = _7237 / _7267;
          _7269 = _7261 / _7267;
          _7270 = _7239 / _7267;
          _7273 = dot(float3(_7268, _7269, _7270), float3(_117, _118, _119));
          _7275 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _7278 = _atmosphereThickness + -16.0f;
          _7280 = min(max(max((_7267 - _earthRadius), 0.01f), 16.0f), _7278);
          _7282 = _atmosphereThickness + -32.0f;
          _7288 = max(_7280, 0.0f);
          _7289 = _earthRadius * 2.0f;
          _7295 = (-0.0f - sqrt((_7288 + _7289) * _7288)) / (_7288 + _earthRadius);
          if (_7273 > _7295) {
            _7318 = ((exp2(log2(saturate((_7273 - _7295) / (1.0f - _7295))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7318 = ((exp2(log2(saturate((_7295 - _7273) / (_7295 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7320 = (exp2(log2(saturate((_7280 + -16.0f) / _7282)) * 0.5f) * 0.96875f) + 0.015625f;
          _7325 = (1.0f - exp2(-1.1541561f - (dot(float3(_7268, _7269, _7270), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7328 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7333 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
          _7340 = (_7275 * _7275) + 1.0f;
          _7341 = _7340 * 0.059683103f;
          _7345 = _miePhaseConst * _miePhaseConst;
          _7360 = ((((1.0f - _7345) * 3.0f) / ((_7345 + 2.0f) * 2.0f)) * 0.07957747f) * (_7340 / exp2(log2((_7345 + 1.0f) - ((_7275 * 2.0f) * _miePhaseConst)) * 1.5f));
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7365 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7370 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7320, _7318, _7325), 0.0f);
          _7374 = _earthRadius + _7253;
          _7380 = sqrt(((_7254 * _7254) + (_7252 * _7252)) + (_7374 * _7374));
          _7381 = _7252 / _7380;
          _7382 = _7374 / _7380;
          _7383 = _7254 / _7380;
          _7386 = dot(float3(_7381, _7382, _7383), float3(_117, _118, _119));
          _7389 = min(max(max((_7380 - _earthRadius), 0.01f), 16.0f), _7278);
          _7396 = max(_7389, 0.0f);
          _7402 = (-0.0f - sqrt((_7396 + _7289) * _7396)) / (_7396 + _earthRadius);
          if (_7386 > _7402) {
            _7425 = ((exp2(log2(saturate((_7386 - _7402) / (1.0f - _7402))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7425 = ((exp2(log2(saturate((_7402 - _7386) / (_7402 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7427 = (exp2(log2(saturate((_7389 + -16.0f) / _7282)) * 0.5f) * 0.96875f) + 0.015625f;
          _7432 = (1.0f - exp2(-1.1541561f - (dot(float3(_7381, _7382, _7383), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7433 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7437 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7447 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7451 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7427, _7425, _7432), 0.0f);
          _7464 = dot(float3(_7237, _7261, _7239), float3(_117, _118, _119));
          _7465 = _7464 / _7267;
          _7466 = _7237 - _7252;
          _7467 = _7238 - _7253;
          _7468 = _7239 - _7254;
          _7474 = sqrt(((_7467 * _7467) + (_7466 * _7466)) + (_7468 * _7468));
          _7481 = sqrt((0.5f / _rayleighScaledHeight) * _7267);
          _7482 = sqrt((0.5f / _mieScaledHeight) * _7267);
          _7484 = (_7474 + _7464) / _7267;
          _7485 = _7481 * _7465;
          _7486 = _7484 * _7481;
          _7487 = _7482 * _7465;
          _7488 = _7484 * _7482;
          _7509 = (float)((int)((int)((int)(uint)((int)(_7485 > 0.0f))) - (int)((int)(uint)((int)(_7485 < 0.0f)))));
          _7510 = (float)((int)((int)((int)(uint)((int)(_7486 > 0.0f))) - (int)((int)(uint)((int)(_7486 < 0.0f)))));
          _7511 = (float)((int)((int)((int)(uint)((int)(_7487 > 0.0f))) - (int)((int)(uint)((int)(_7487 < 0.0f)))));
          _7512 = (float)((int)((int)((int)(uint)((int)(_7488 > 0.0f))) - (int)((int)(uint)((int)(_7488 < 0.0f)))));
          _7513 = _7485 * _7485;
          _7514 = _7487 * _7487;
          if (_7510 > _7509) {
            _7520 = exp2(_7513 * 1.442695f);
          } else {
            _7520 = 0.0f;
          }
          if (_7512 > _7511) {
            _7526 = exp2(_7514 * 1.442695f);
          } else {
            _7526 = 0.0f;
          }
          _7557 = -0.0f - _7474;
          _7563 = ((_7474 / (_7267 * 2.0f)) + _7465) * 1.442695f;
          _7570 = _7267 * 6.2831f;
          _7575 = _earthRadius - _7267;
          _7587 = (exp2((_7575 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7570)) * (dot(float2((_7509 / (sqrt((_7513 * 1.52f) + 4.0f) + (abs(_7485) * 2.3193f))), (exp2(_7563 * (_7557 / _rayleighScaledHeight)) * (_7510 / (sqrt(((_7486 * _7486) * 1.52f) + 4.0f) + (abs(_7486) * 2.3193f))))), float2(1.0f, -1.0f)) + _7520);
          _7608 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _7570)) * exp2((_7575 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_7511 / (sqrt((_7514 * 1.52f) + 4.0f) + (abs(_7487) * 2.3193f))), (exp2(_7563 * (_7557 / _mieScaledHeight)) * (_7512 / (sqrt(((_7488 * _7488) * 1.52f) + 4.0f) + (abs(_7488) * 2.3193f))))), float2(1.0f, -1.0f)) + _7526);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _7626 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _7587) + _7608) * -1.442695f);
          _7627 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _7587) + _7608) * -1.442695f);
          _7628 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _7587) + _7608) * -1.442695f);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _7648 = _7236;
          _7649 = _7240;
          _7650 = _7241;
          _7651 = _7242;
          _7652 = _7243;
          _7653 = _7244;
          _7654 = _7245;
          _7655 = _7246;
          _7656 = _7626;
          _7657 = _7627;
          _7658 = _7628;
          _7659 = max(0.0f, (((((_7360 * _7333.x) + (_7328.x * _7341)) + _7365.x) + _7370.x) - (_7626 * ((((_7437.x * _7360) + (_7433.x * _7341)) + _7447.x) + _7451.x))));
          _7660 = max(0.0f, (((((_7360 * _7333.y) + (_7328.y * _7341)) + _7365.y) + _7370.y) - (_7627 * ((((_7437.y * _7360) + (_7433.y * _7341)) + _7447.y) + _7451.y))));
          _7661 = max(0.0f, (((((_7360 * _7333.z) + (_7328.z * _7341)) + _7365.z) + _7370.z) - (_7628 * ((((_7437.z * _7360) + (_7433.z * _7341)) + _7447.z) + _7451.z))));
        } else {
          _7648 = _7236;
          _7649 = _7240;
          _7650 = _7241;
          _7651 = _7242;
          _7652 = _7243;
          _7653 = _7244;
          _7654 = _7245;
          _7655 = _7246;
          _7656 = 1.0f;
          _7657 = 1.0f;
          _7658 = 1.0f;
          _7659 = 0.0f;
          _7660 = 0.0f;
          _7661 = 0.0f;
        }
      } else {
        _7648 = _7234;
        _7649 = _7227;
        _7650 = _7228;
        _7651 = _7229;
        _7652 = _7230;
        _7653 = _7224;
        _7654 = _7225;
        _7655 = _7226;
        _7656 = 1.0f;
        _7657 = 1.0f;
        _7658 = 1.0f;
        _7659 = 0.0f;
        _7660 = 0.0f;
        _7661 = 0.0f;
      }
    }
    if (_7648 < _217) {
      _7667 = (_217 * _117) + _viewPos.x;
      _7668 = (_217 * _119) + _viewPos.z;
      _7672 = min((_distanceScale * _7648), _217);
      _7676 = (_7672 * _117) + _viewPos.x;
      _7677 = (_7672 * _119) + _viewPos.z;
      _7684 = _earthRadius + _viewPos.y;
      _7685 = _7684 + (_7672 * _118);
      _7691 = sqrt(((_7677 * _7677) + (_7676 * _7676)) + (_7685 * _7685));
      _7692 = _7676 / _7691;
      _7693 = _7685 / _7691;
      _7694 = _7677 / _7691;
      _7697 = dot(float3(_7692, _7693, _7694), float3(_117, _118, _119));
      _7699 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _7702 = _atmosphereThickness + -16.0f;
      _7704 = min(max(max((_7691 - _earthRadius), 0.01f), 16.0f), _7702);
      _7706 = _atmosphereThickness + -32.0f;
      _7712 = max(_7704, 0.0f);
      _7713 = _earthRadius * 2.0f;
      _7719 = (-0.0f - sqrt((_7712 + _7713) * _7712)) / (_7712 + _earthRadius);
      if (_7697 > _7719) {
        _7742 = ((exp2(log2(saturate((_7697 - _7719) / (1.0f - _7719))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7742 = ((exp2(log2(saturate((_7719 - _7697) / (_7719 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7744 = (exp2(log2(saturate((_7704 + -16.0f) / _7706)) * 0.5f) * 0.96875f) + 0.015625f;
      _7749 = (1.0f - exp2(-1.1541561f - (dot(float3(_7692, _7693, _7694), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7752 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7744, _7742, _7749), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7757 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7744, _7742, _7749), 0.0f);
      _7764 = (_7699 * _7699) + 1.0f;
      _7765 = _7764 * 0.059683103f;
      _7769 = _miePhaseConst * _miePhaseConst;
      _7784 = ((((1.0f - _7769) * 3.0f) / ((_7769 + 2.0f) * 2.0f)) * 0.07957747f) * (_7764 / exp2(log2((_7769 + 1.0f) - ((_7699 * 2.0f) * _miePhaseConst)) * 1.5f));
      // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
      // Description: Initializes the companion from the exact adjacent native phase and overwrites it with the boosted-g formula only when Dawn/Dusk Improvements is enabled.
      float _rndx_sky_mie_phase_b_2 = _7784;
      [branch]
      if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
        _rndx_sky_mie_phase_b_2 = ((((1.0f - (_boostedMieG * _boostedMieG)) * 3.0f) / (((_boostedMieG * _boostedMieG) + 2.0f) * 2.0f)) * 0.07957747f) * (_7764 / exp2(log2(((_boostedMieG * _boostedMieG) + 1.0f) - ((_7699 * 2.0f) * _boostedMieG)) * 1.5f));
      }
      // RenoDX: <<< [Patch: DawnDuskImprovements]
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7789 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7744, _7742, _7749), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7794 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7744, _7742, _7749), 0.0f);
      _7798 = _7684 + (_217 * _118);
      _7804 = sqrt(((_7668 * _7668) + (_7667 * _7667)) + (_7798 * _7798));
      _7805 = _7667 / _7804;
      _7806 = _7798 / _7804;
      _7807 = _7668 / _7804;
      _7810 = dot(float3(_7805, _7806, _7807), float3(_117, _118, _119));
      _7813 = min(max(max((_7804 - _earthRadius), 0.01f), 16.0f), _7702);
      _7820 = max(_7813, 0.0f);
      _7826 = (-0.0f - sqrt((_7820 + _7713) * _7820)) / (_7820 + _earthRadius);
      if (_7810 > _7826) {
        _7849 = ((exp2(log2(saturate((_7810 - _7826) / (1.0f - _7826))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _7849 = ((exp2(log2(saturate((_7826 - _7810) / (_7826 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _7851 = (exp2(log2(saturate((_7813 + -16.0f) / _7706)) * 0.5f) * 0.96875f) + 0.015625f;
      _7856 = (1.0f - exp2(-1.1541561f - (dot(float3(_7805, _7806, _7807), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _7857 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7851, _7849, _7856), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _7861 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7851, _7849, _7856), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _7871 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7851, _7849, _7856), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _7875 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7851, _7849, _7856), 0.0f);
      _7888 = dot(float3(_7676, _7685, _7677), float3(_117, _118, _119));
      _7889 = _7888 / _7691;
      _7890 = _7672 - _217;
      _7891 = _7890 * _117;
      _7892 = _7890 * _118;
      _7893 = _7890 * _119;
      _7899 = sqrt(((_7891 * _7891) + (_7892 * _7892)) + (_7893 * _7893));
      _7906 = sqrt((0.5f / _rayleighScaledHeight) * _7691);
      _7907 = sqrt((0.5f / _mieScaledHeight) * _7691);
      _7909 = (_7899 + _7888) / _7691;
      _7910 = _7906 * _7889;
      _7911 = _7909 * _7906;
      _7912 = _7907 * _7889;
      _7913 = _7909 * _7907;
      _7934 = (float)((int)((int)((int)(uint)((int)(_7910 > 0.0f))) - (int)((int)(uint)((int)(_7910 < 0.0f)))));
      _7935 = (float)((int)((int)((int)(uint)((int)(_7911 > 0.0f))) - (int)((int)(uint)((int)(_7911 < 0.0f)))));
      _7936 = (float)((int)((int)((int)(uint)((int)(_7912 > 0.0f))) - (int)((int)(uint)((int)(_7912 < 0.0f)))));
      _7937 = (float)((int)((int)((int)(uint)((int)(_7913 > 0.0f))) - (int)((int)(uint)((int)(_7913 < 0.0f)))));
      _7938 = _7910 * _7910;
      _7939 = _7912 * _7912;
      if (_7935 > _7934) {
        _7945 = exp2(_7938 * 1.442695f);
      } else {
        _7945 = 0.0f;
      }
      if (_7937 > _7936) {
        _7951 = exp2(_7939 * 1.442695f);
      } else {
        _7951 = 0.0f;
      }
      _7982 = -0.0f - _7899;
      _7988 = ((_7899 / (_7691 * 2.0f)) + _7889) * 1.442695f;
      _7995 = _7691 * 6.2831f;
      _8000 = _earthRadius - _7691;
      _8012 = (exp2((_8000 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7995)) * (dot(float2((_7934 / (sqrt((_7938 * 1.52f) + 4.0f) + (abs(_7910) * 2.3193f))), (exp2(_7988 * (_7982 / _rayleighScaledHeight)) * (_7935 / (sqrt(((_7911 * _7911) * 1.52f) + 4.0f) + (abs(_7911) * 2.3193f))))), float2(1.0f, -1.0f)) + _7945);
      _8033 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _7995)) * exp2((_8000 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_7936 / (sqrt((_7939 * 1.52f) + 4.0f) + (abs(_7912) * 2.3193f))), (exp2(_7988 * (_7982 / _mieScaledHeight)) * (_7937 / (sqrt(((_7913 * _7913) * 1.52f) + 4.0f) + (abs(_7913) * 2.3193f))))), float2(1.0f, -1.0f)) + _7951);
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      _8050 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _8012) + _8033) * -1.442695f);
      _8051 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _8012) + _8033) * -1.442695f);
      _8052 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _8012) + _8033) * -1.442695f);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _8072 = _8050;
      _8073 = _8051;
      _8074 = _8052;
      // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
      // Description: Substitutes the boosted phase companion only in each positive sun single-scatter term; the second native phase occurrence in the subtracted occlusion term is intentionally preserved.
      _8075 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _7757.x) + (_7752.x * _7765)) + _7789.x) + _7794.x) - (_8050 * ((((_7861.x * _7784) + (_7857.x * _7765)) + _7871.x) + _7875.x))));
      _8076 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _7757.y) + (_7752.y * _7765)) + _7789.y) + _7794.y) - (_8051 * ((((_7861.y * _7784) + (_7857.y * _7765)) + _7871.y) + _7875.y))));
      _8077 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _7757.z) + (_7752.z * _7765)) + _7789.z) + _7794.z) - (_8052 * ((((_7861.z * _7784) + (_7857.z * _7765)) + _7871.z) + _7875.z))));
      // RenoDX: <<< [Patch: DawnDuskImprovements]
    } else {
      _8072 = _7656;
      _8073 = _7657;
      _8074 = _7658;
      _8075 = _7659;
      _8076 = _7660;
      _8077 = _7661;
    }
    _8111 = ((_cloudScatteringCoefficient / _distanceScale) * (_7652 + _7651)) + (((_7650 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
    // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
    // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
    _8122 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _7649) + _8111) * -1.442695f);
    _8123 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _7649) + _8111) * -1.442695f);
    _8124 = exp2((_8111 + (((_ozoneRatio * SKY_OZONE_3) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _7649)) * -1.442695f);
    // RenoDX: <<< [Patch: SkySpectralOzone]
    _8131 = ((_8075 * _precomputedAmbient7.y) * _8122) + _7653;
    _8132 = ((_8076 * _precomputedAmbient7.y) * _8123) + _7654;
    _8133 = ((_8077 * _precomputedAmbient7.y) * _8124) + _7655;
    // RenoDX: >>> [Patch: SpectralAerialPerspective] [Version: 1.16.00]
    // Description: Carries the aerial LUT in-scatter term with the same per-wavelength segment
    //              transmittance and ambient weight the native combine applies above, identical to
    //              the aerial part of _8131/_8132/_8133, so the terminal write can select which
    //              matrix converts it.
    float _rndx_ap_lut_x = ((_8075 * _precomputedAmbient7.y) * _8122);
    float _rndx_ap_lut_y = ((_8076 * _precomputedAmbient7.y) * _8123);
    float _rndx_ap_lut_z = ((_8077 * _precomputedAmbient7.y) * _8124);
    // RenoDX: <<< [Patch: SpectralAerialPerspective]
    _8134 = _8122 * _8072;
    _8135 = _8123 * _8073;
    _8136 = _8124 * _8074;
    if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
      _8180 = saturate(max(0.0f, (((-0.0f - (_118 * _116)) - _viewPos.y) + _atmosphereSeaBaseline)) * 2.0f);  // [sem: expr_sat]
      _8189 = (((1.0f - ((_8180 * _8180) * (3.0f - (_8180 * 2.0f)))) * 0.98f) + 0.02f);
    } else {
      _8189 = 1.0f;
    }
    _8194 = (((_8135 * 0.33951f) + (_8134 * 0.61312f)) + (_8136 * 0.04737f));
    _8195 = (((_8135 * 0.91636f) + (_8134 * 0.0702f)) + (_8136 * 0.01345f));
    _8196 = (((_8135 * 0.10958f) + (_8134 * 0.02062f)) + (_8136 * 0.8698f));
    // RenoDX: >>> [Patch: SpectralAerialPerspective] [Version: 1.16.00]
    // Description: Selects which matrix converts the aerial in-scatter written to the sky
    //              in-scatter target. The aerial LUT term is per-wavelength radiance at 680/550/440
    //              nm with no colour matrix applied yet, so it converts through
    //              SKY_SPECTRAL_TO_WORKING when enabled; its fused Mie share rides along, which the
    //              near-unit row sums keep within about one percent of the vanilla conversion. The
    //              ray-march accumulator (_7653/_7654/_7655) is already working-space colour and
    //              keeps the vanilla conversion the native code gives it. The adjacent extinction
    //              write below is a transmittance and stays vanilla in both states. Each Off arm is
    //              the complete native expression.
    _8197 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8189 * (SKY_SPEC_DOT(0, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z) + SKY_VAN_DOT(0, _7653, _7654, _7655)))
      : (_8189 * (((_8132 * 0.33951f) + (_8131 * 0.61312f)) + (_8133 * 0.04737f)));
    _8198 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8189 * (SKY_SPEC_DOT(1, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z) + SKY_VAN_DOT(1, _7653, _7654, _7655)))
      : (_8189 * (((_8132 * 0.91636f) + (_8131 * 0.0702f)) + (_8133 * 0.01345f)));
    _8199 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8189 * (SKY_SPEC_DOT(2, _rndx_ap_lut_x, _rndx_ap_lut_y, _rndx_ap_lut_z) + SKY_VAN_DOT(2, _7653, _7654, _7655)))
      : (_8189 * (((_8132 * 0.10958f) + (_8131 * 0.02062f)) + (_8133 * 0.8698f)));
    // RenoDX: <<< [Patch: SpectralAerialPerspective]
  } else {
    _8194 = 1.0f;
    _8195 = 1.0f;
    _8196 = 1.0f;
    _8197 = 0.0f;
    _8198 = 0.0f;
    _8199 = 0.0f;
  }
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Applies a directional warm/cool hue bias to the final inscatter during the
  //              dawn/dusk window: the sun-facing and away-from-sun hemispheres get distinct horizon
  //              hues (vanilla east and west horizons look nearly identical at sunrise and sunset).
  //              Bias colours come from WeatherInscatterBias via InscatterColorBias
  //              (sky_dawn_dusk_common.hlsli / sky_weather_common.hlsli); when Dynamic Dawn/Dusk
  //              Hues is additionally active the warm tint shifts per day cycle. Gated by
  //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On per the
  //              addon.cpp settings list); when Off (or outside the window) the helper returns
  //              (1,1,1) and the multiplies are bit-exact no-ops.
  // [DAWN_DUSK] Inscatter colour bias
  float _viewSunDot = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
  float3 _inscatterBias = InscatterColorBias(_viewSunDot, _dawnDuskFactor, float3(_8194, _8195, _8196));
  _8197 *= _inscatterBias.x;
  _8198 *= _inscatterBias.y;
  _8199 *= _inscatterBias.z;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: SnowFogInscatterClamp] [Version: 1.13.00]
  // Description: Clamps the final inscatter luminance to (1 - extinction luminance) * K before the
  //              UAV write, so Mie forward scattering cannot drive massive sky brightness swings in
  //              dense fog and snow weather (vanilla lets inscatter grow unbounded relative to
  //              extinction, producing pulsing whiteouts as the camera or sun angle moves). K = 500
  //              in this visible-sky shader and K = 100 in the offscreen sky probe shader
  //              (RenderAtmosphericScatteringOffscreenSky_0xAF9EFE4E, which feeds the GI cubemap and
  //              needs a tighter budget); the two coefficients are a matched pair and must be
  //              retuned together. Gated by SNOW_FOG_FIX (UI "Snow / Fog Lighting Fixes (WIP)",
  //              default On per the addon.cpp settings list); when Off the branch is skipped
  //              entirely and the output is bit-exact vanilla.
  //              The shader suppresses inscatter below the sea baseline (_atmosphereSeaBaseline)
  //              down to 0.02x but leaves extinction alone, so below that baseline the clamp is
  //              measuring suppressed inscatter against an unsuppressed threshold and its headroom
  //              widens by up to 50x. It still fires if inscatter is high enough; it is not dead.
  //              This is deliberate and believed harmless: fog and snow weather are not expected
  //              below the baseline, and vanilla already crushes inscatter there. If gameplay
  //              evidence ever shows a playable fog region below the baseline, scale the threshold
  //              by the same factor — hoist _8189 above the suppression branch (both arms already
  //              assign it) and apply it to _sky_max_insc.
  //              The ceiling is floored at zero. The extinction luminance can exceed 1.0 for
  //              near-unity transmittance, so an unfloored (1 - lum) would be negative and would flip
  //              positive inscatter to negative instead of capping it. The cause is not rounding: the
  //              vanilla RGB-to-working-space matrix applied just above has an un-normalized green row
  //              (its coefficients sum to 1.0000100135803223), so with all three transmittances at 1.0
  //              the luminance reaches about 1.0000072 - roughly 60 ULP past 1, a property of the
  //              constants rather than of float error. In every path traced so far the inscatter is
  //              simultaneously zero there, so the pre-existing (_sky_insc_lum > 0.0001f) test already
  //              suppressed the clamp and no artifact has been observed; this floor is defensive. It
  //              does change one case: if the luminance is NaN the comparison chain now drives the
  //              scale to zero rather than leaving inscatter untouched.
  // [SNOW_FOG_FIX]
  if (SNOW_FOG_FIX == 1.f) {
    float _sky_ext_lum = dot(float3(_8194, _8195, _8196), float3(0.2126f, 0.7152f, 0.0722f));
    float _sky_max_insc = max(0.0f, 1.0f - _sky_ext_lum) * 500.0f;
    float _sky_insc_lum = dot(float3(_8197, _8198, _8199), float3(0.2126f, 0.7152f, 0.0722f));
    if (_sky_insc_lum > _sky_max_insc && _sky_insc_lum > 0.0001f) {
      float _sky_clamp_scale = _sky_max_insc / _sky_insc_lum;
      _8197 *= _sky_clamp_scale;
      _8198 *= _sky_clamp_scale;
      _8199 *= _sky_clamp_scale;
    }
  }
  // RenoDX: <<< [Patch: SnowFogInscatterClamp]
  // RenoDX: >>> [Patch: NightSkyAttenuation] [Version: 1.13.00]
  // Description: Multiplies the final inscatter RGB by a sun-elevation brightness ramp as the last
  //              step before the UAV write (extinction untouched): 10% brightness while the sun is
  //              below ~+5 deg (0.087 rad), ramping to 100% by +10 deg (0.17 rad), unity above
  //              (NightSkyAttenuation, sky_dawn_dusk_common.hlsli). Vanilla scattering brightens the
  //              sky far too early (~3am-4:30am) and keeps it bright well after sunset; this keeps
  //              nights genuinely dark. Gated by NIGHT_SKY_ATTENUATION (UI "Darker Nights/Dawn/Dusk
  //              (WIP)", default On per the addon.cpp settings list); when Off the helper returns
  //              exactly 1.0 and the multiplies are bit-exact no-ops.
  // [NIGHT_SKY_ATTENUATION] Reduce sky brightness when sun is below horizon
  {
    float _nightSkyAtten = NightSkyAttenuation(_sunDirection.y);
    _8197 *= _nightSkyAtten;
    _8198 *= _nightSkyAtten;
    _8199 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8197, _8198, _8199, _64.x);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8194, _8195, _8196, 0.0f);
}
