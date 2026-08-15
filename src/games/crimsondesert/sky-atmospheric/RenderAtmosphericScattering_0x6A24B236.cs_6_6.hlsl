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
  int _256;
  float _257;
  float _258;
  int _259;
  float _360;
  float _361;
  int _362;
  float _369;
  float _370;
  int _371;
  int _382;
  float _383;
  float _384;
  float _385;
  float _386;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  int _397;
  int _398;
  float _399;
  float _610;
  float _622;
  float _633;
  int _634;
  float _847;
  float _848;
  float _849;
  float _850;
  float _851;
  float _852;
  float _853;
  float _858;
  float _859;
  float _860;
  float _861;
  float _873;
  float _874;
  float _875;
  float _876;
  float _877;
  float _878;
  float _879;
  float _904;
  float _937;
  float _945;
  float _993;
  float _998;
  float _1004;
  bool _1030;
  float _1107;
  float _1146;
  float _1160;
  float _1161;
  float _1162;
  float _1163;
  float _1164;
  float _1165;
  float _1228;
  float _1229;
  float _1230;
  float _1231;
  int _1232;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  int _1290;
  int _1291;
  float _1303;
  float _1350;
  float _1356;
  float _1499;
  float _1509;
  float _1520;
  int _1521;
  float _1734;
  float _1735;
  float _1736;
  float _1737;
  float _1738;
  float _1739;
  float _1740;
  float _1745;
  float _1746;
  float _1747;
  float _1748;
  float _1760;
  float _1761;
  float _1762;
  float _1763;
  float _1764;
  float _1765;
  float _1766;
  float _1791;
  float _1824;
  float _1832;
  float _1880;
  float _1885;
  float _1891;
  float _1995;
  float _1996;
  float _1997;
  float _2061;
  int _2073;
  float _2074;
  float _2075;
  int _2076;
  float _2177;
  float _2178;
  int _2179;
  float _2186;
  float _2187;
  int _2188;
  float _2201;
  float _2202;
  float _2203;
  float _2204;
  float _2205;
  float _2206;
  float _2207;
  float _2208;
  float _2209;
  int _2210;
  float _2388;
  float _2389;
  float _2399;
  int _2400;
  float _2613;
  float _2614;
  float _2615;
  float _2616;
  float _2617;
  float _2618;
  float _2619;
  float _2624;
  float _2625;
  float _2626;
  float _2627;
  float _2639;
  float _2640;
  float _2641;
  float _2642;
  float _2643;
  float _2644;
  float _2645;
  float _2670;
  float _2703;
  float _2711;
  float _2760;
  float _2765;
  float _2771;
  float _2957;
  float _2969;
  float _2977;
  int _2978;
  float _3189;
  float _3190;
  float _3191;
  float _3192;
  float _3193;
  float _3194;
  float _3195;
  float _3200;
  float _3201;
  float _3202;
  float _3203;
  float _3215;
  float _3216;
  float _3217;
  float _3218;
  float _3219;
  float _3220;
  float _3221;
  float _3246;
  float _3279;
  float _3287;
  float _3336;
  float _3341;
  float _3347;
  float _3476;
  float _3486;
  float _3495;
  int _3496;
  float _3707;
  float _3708;
  float _3709;
  float _3710;
  float _3711;
  float _3712;
  float _3713;
  float _3718;
  float _3719;
  float _3720;
  float _3721;
  float _3733;
  float _3734;
  float _3735;
  float _3736;
  float _3737;
  float _3738;
  float _3739;
  float _3764;
  float _3797;
  float _3805;
  float _3854;
  float _3859;
  float _3865;
  float _3872;
  float _3873;
  float _3918;
  float _3949;
  float _4376;
  float _4377;
  float _4378;
  float _4379;
  float _4380;
  float _4381;
  float _4395;
  int _4396;
  int _4397;
  float _4398;
  float _4399;
  float _4400;
  float _4401;
  float _4402;
  float _4403;
  float _4404;
  float _4405;
  float _4406;
  float _4407;
  float _4408;
  float _4409;
  float _4410;
  float _4411;
  int _4412;
  int _4413;
  float _4440;
  float _4452;
  float _4501;
  float _4608;
  float _4648;
  float _4662;
  float _4663;
  float _4664;
  float _4665;
  float _4666;
  float _4667;
  float _4822;
  float _4834;
  float _4845;
  int _4846;
  float _5059;
  float _5060;
  float _5061;
  float _5062;
  float _5063;
  float _5064;
  float _5065;
  float _5070;
  float _5071;
  float _5072;
  float _5073;
  float _5085;
  float _5086;
  float _5087;
  float _5088;
  float _5089;
  float _5090;
  float _5091;
  float _5116;
  float _5149;
  float _5157;
  float _5205;
  float _5210;
  float _5216;
  float _5307;
  float _5308;
  float _5309;
  float _5374;
  int _5386;
  float _5387;
  float _5388;
  int _5389;
  float _5490;
  float _5491;
  int _5492;
  float _5499;
  float _5500;
  int _5501;
  float _5514;
  float _5515;
  float _5516;
  float _5517;
  float _5518;
  float _5519;
  float _5520;
  float _5521;
  float _5522;
  int _5523;
  float _5701;
  float _5702;
  float _5712;
  int _5713;
  float _5926;
  float _5927;
  float _5928;
  float _5929;
  float _5930;
  float _5931;
  float _5932;
  float _5937;
  float _5938;
  float _5939;
  float _5940;
  float _5952;
  float _5953;
  float _5954;
  float _5955;
  float _5956;
  float _5957;
  float _5958;
  float _5983;
  float _6016;
  float _6024;
  float _6073;
  float _6078;
  float _6084;
  float _6270;
  float _6282;
  float _6290;
  int _6291;
  float _6502;
  float _6503;
  float _6504;
  float _6505;
  float _6506;
  float _6507;
  float _6508;
  float _6513;
  float _6514;
  float _6515;
  float _6516;
  float _6528;
  float _6529;
  float _6530;
  float _6531;
  float _6532;
  float _6533;
  float _6534;
  float _6559;
  float _6592;
  float _6600;
  float _6649;
  float _6654;
  float _6660;
  float _6789;
  float _6799;
  float _6808;
  int _6809;
  float _7020;
  float _7021;
  float _7022;
  float _7023;
  float _7024;
  float _7025;
  float _7026;
  float _7031;
  float _7032;
  float _7033;
  float _7034;
  float _7046;
  float _7047;
  float _7048;
  float _7049;
  float _7050;
  float _7051;
  float _7052;
  float _7077;
  float _7110;
  float _7118;
  float _7167;
  float _7172;
  float _7178;
  float _7185;
  float _7186;
  float _7231;
  float _7262;
  float _7598;
  float _7599;
  float _7600;
  float _7601;
  float _7602;
  float _7603;
  float _7604;
  float _7605;
  float _7606;
  float _7607;
  float _7608;
  float _7609;
  float _7610;
  float _7611;
  float _7613;
  float _7614;
  float _7615;
  float _7616;
  float _7617;
  float _7618;
  float _7619;
  float _7620;
  float _7621;
  float _7622;
  float _7623;
  float _7624;
  float _7625;
  float _7626;
  float _7698;
  float _7805;
  float _7900;
  float _7906;
  float _8054;
  float _8114;
  float _8155;
  float _8160;
  float _8196;
  float _8197;
  float _8198;
  float _8199;
  float _8200;
  float _8201;
  float _8202;
  float _8203;
  float _8204;
  float _8205;
  float _8206;
  float _8207;
  float _8208;
  float _8209;
  float _8210;
  float _8211;
  float _8212;
  float _8213;
  float _8214;
  float _8215;
  float _8296;
  float _8403;
  float _8499;
  float _8505;
  float _8652;
  float _8712;
  float _8753;
  float _8758;
  float _8794;
  float _8795;
  float _8796;
  float _8797;
  float _8798;
  float _8799;
  float _8800;
  float _8801;
  float _8802;
  float _8926;
  float _8931;
  float _8932;
  float _8933;
  float _8934;
  float _8935;
  float _8936;
  float _175;
  float _178;
  float _185;
  float _186;
  float _187;
  float _194;
  float _195;
  float _197;
  float _203;
  float _204;
  float _211;
  float _213;
  float _219;
  float _221;
  float _222;
  float _229;
  float _237;
  float _240;
  float _241;
  float _262;
  float _263;
  float _264;
  float _266;
  float _267;
  float _268;
  float _270;
  float _271;
  float _272;
  float _274;
  float _275;
  float _276;
  float _280;
  float _284;
  float _288;
  float _291;
  float _294;
  float _297;
  float _298;
  float _304;
  float _310;
  float _325;
  float _326;
  float _327;
  float _331;
  float _332;
  float _333;
  float _337;
  float _338;
  float _339;
  float _350;
  float _351;
  uint _363;
  float _377;
  float _401;
  float _411;
  float _412;
  float _414;
  float _416;
  float _419;
  float _423;
  float _424;
  float _425;
  float4 _447;
  int _454;
  int _458;
  float _462;
  float _463;
  float _464;
  float _468;
  float _469;
  float _473;
  float _480;
  float _483;
  float _486;
  float _491;
  float _500;
  float _524;
  float _525;
  float _541;
  float _542;
  float _544;
  float _556;
  float _560;
  float _564;
  float _581;
  float _603;
  bool _612;
  float _642;
  float _643;
  float _644;
  float _646;
  float _647;
  float _648;
  float _650;
  float _651;
  float _652;
  float _654;
  float _655;
  float _656;
  float _658;
  float _659;
  float _660;
  float _662;
  float _663;
  float _664;
  float _665;
  float _667;
  float _668;
  float _669;
  float _670;
  int _672;
  int _673;
  float _675;
  float _676;
  float _677;
  float _678;
  float _680;
  float _681;
  float _682;
  float _683;
  float _685;
  float _686;
  float _687;
  float _688;
  float _690;
  float _691;
  float _692;
  float _694;
  float _695;
  float _696;
  float _697;
  float _701;
  float _705;
  float _709;
  float _711;
  float _717;
  float _720;
  float _723;
  float _726;
  float _731;
  float _740;
  float _744;
  float _745;
  bool _746;
  bool _747;
  float _751;
  float _757;
  float _760;
  float _762;
  bool _765;
  bool _766;
  bool _767;
  bool _768;
  float _778;
  float _779;
  float _790;
  float _792;
  float _793;
  float _794;
  float _799;
  float _808;
  float _811;
  float _812;
  float _813;
  float _824;
  float _826;
  float _830;
  float _837;
  float _838;
  float _839;
  float _842;
  float _845;
  float _862;
  float _863;
  float _864;
  float _882;
  float _886;
  float _909;
  bool _912;
  bool _913;
  bool _914;
  bool _915;
  float _947;
  float _953;
  float _958;
  float _965;
  float _969;
  uint _999;
  bool _1007;
  bool _1013;
  int _1015;
  uint _1018;
  float _1020;
  float _1039;
  float _1046;
  float _1047;
  float _1049;
  float _1050;
  float _1052;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  float _1059;
  float _1069;
  float _1077;
  float _1084;
  bool _1085;
  float _1109;
  float4 _1116;
  float4 _1152;
  float _1167;
  float _1168;
  float _1171;
  float _1178;
  float _1179;
  float _1180;
  float _1200;
  float _1204;
  float _1208;
  float _1209;
  float _1210;
  bool _1221;
  float _1237;
  float _1238;
  float _1239;
  float _1259;
  float _1263;
  float _1267;
  bool _1278;
  float _1323;
  float _1327;
  float _1331;
  float _1351;
  float _1365;
  float _1366;
  float _1375;
  float _1376;
  float _1379;
  float _1380;
  float _1384;
  float _1385;
  float _1386;
  float _1392;
  float _1416;
  float _1417;
  float _1433;
  float _1434;
  float _1436;
  float _1452;
  float _1456;
  float _1473;
  float _1492;
  float _1529;
  float _1530;
  float _1531;
  float _1533;
  float _1534;
  float _1535;
  float _1537;
  float _1538;
  float _1539;
  float _1541;
  float _1542;
  float _1543;
  float _1545;
  float _1546;
  float _1547;
  float _1549;
  float _1550;
  float _1551;
  float _1552;
  float _1554;
  float _1555;
  float _1556;
  float _1557;
  int _1559;
  int _1560;
  float _1562;
  float _1563;
  float _1564;
  float _1565;
  float _1567;
  float _1568;
  float _1569;
  float _1570;
  float _1572;
  float _1573;
  float _1574;
  float _1575;
  float _1577;
  float _1578;
  float _1579;
  float _1581;
  float _1582;
  float _1583;
  float _1584;
  float _1588;
  float _1592;
  float _1596;
  float _1598;
  float _1604;
  float _1607;
  float _1610;
  float _1613;
  float _1618;
  float _1627;
  float _1631;
  float _1632;
  bool _1633;
  bool _1634;
  float _1638;
  float _1644;
  float _1647;
  float _1649;
  bool _1652;
  bool _1653;
  bool _1654;
  bool _1655;
  float _1665;
  float _1666;
  float _1677;
  float _1679;
  float _1680;
  float _1681;
  float _1686;
  float _1695;
  float _1698;
  float _1699;
  float _1700;
  float _1711;
  float _1713;
  float _1717;
  float _1724;
  float _1725;
  float _1726;
  float _1729;
  float _1732;
  float _1749;
  float _1750;
  float _1751;
  float _1769;
  float _1773;
  float _1796;
  bool _1799;
  bool _1800;
  bool _1801;
  bool _1802;
  float _1834;
  float _1840;
  float _1845;
  float _1852;
  float _1856;
  uint _1886;
  float _1893;
  float _1895;
  float _1898;
  float _1904;
  float _1907;
  float _1908;
  float _1909;
  float _1910;
  float _1911;
  float _1937;
  float _1946;
  float _1961;
  float _1962;
  float _1964;
  bool _1967;
  float _1968;
  float _1969;
  float _1970;
  bool _1971;
  float _1980;
  float _1983;
  float _1989;
  float _2011;
  float _2016;
  float _2018;
  float _2020;
  float _2026;
  float _2029;
  float _2030;
  float _2044;
  float _2079;
  float _2080;
  float _2081;
  float _2083;
  float _2084;
  float _2085;
  float _2087;
  float _2088;
  float _2089;
  float _2091;
  float _2092;
  float _2093;
  float _2097;
  float _2101;
  float _2105;
  float _2108;
  float _2111;
  float _2114;
  float _2115;
  float _2121;
  float _2127;
  float _2142;
  float _2143;
  float _2144;
  float _2148;
  float _2149;
  float _2150;
  float _2154;
  float _2155;
  float _2156;
  float _2167;
  float _2168;
  uint _2180;
  float _2189;
  float _2193;
  int _2214;
  float _2220;
  float _2221;
  float _2225;
  float _2232;
  float _2237;
  float _2240;
  float _2245;
  float _2254;
  float _2297;
  float _2298;
  float _2314;
  float _2315;
  float _2317;
  float _2329;
  float _2333;
  float _2337;
  float _2356;
  float _2372;
  float _2375;
  float _2376;
  float _2408;
  float _2409;
  float _2410;
  float _2412;
  float _2413;
  float _2414;
  float _2416;
  float _2417;
  float _2418;
  float _2420;
  float _2421;
  float _2422;
  float _2424;
  float _2425;
  float _2426;
  float _2428;
  float _2429;
  float _2430;
  float _2431;
  float _2433;
  float _2434;
  float _2435;
  float _2436;
  int _2438;
  int _2439;
  float _2441;
  float _2442;
  float _2443;
  float _2444;
  float _2446;
  float _2447;
  float _2448;
  float _2449;
  float _2451;
  float _2452;
  float _2453;
  float _2454;
  float _2456;
  float _2457;
  float _2458;
  float _2460;
  float _2461;
  float _2462;
  float _2463;
  float _2467;
  float _2471;
  float _2475;
  float _2477;
  float _2483;
  float _2486;
  float _2489;
  float _2492;
  float _2497;
  float _2506;
  float _2510;
  float _2511;
  bool _2512;
  bool _2513;
  float _2517;
  float _2523;
  float _2526;
  float _2528;
  bool _2531;
  bool _2532;
  bool _2533;
  bool _2534;
  float _2544;
  float _2545;
  float _2556;
  float _2558;
  float _2559;
  float _2560;
  float _2565;
  float _2574;
  float _2577;
  float _2578;
  float _2579;
  float _2590;
  float _2592;
  float _2596;
  float _2603;
  float _2604;
  float _2605;
  float _2608;
  float _2611;
  float _2628;
  float _2629;
  float _2630;
  float _2648;
  float _2652;
  float _2675;
  bool _2678;
  bool _2679;
  bool _2680;
  bool _2681;
  float _2713;
  float _2719;
  float _2724;
  float _2732;
  float _2736;
  uint _2766;
  float _2773;
  float _2789;
  float _2790;
  float _2791;
  float _2792;
  float _2793;
  float _2794;
  float _2795;
  float _2796;
  float _2797;
  int _2798;
  bool _2806;
  float4 _2826;
  float _2828;
  float _2829;
  float _2830;
  float _2831;
  float _2835;
  float _2840;
  float _2841;
  float _2843;
  float _2849;
  float _2871;
  float _2872;
  float _2888;
  float _2889;
  float _2891;
  float _2903;
  float _2907;
  float _2911;
  float _2928;
  float _2950;
  bool _2959;
  float _2984;
  float _2985;
  float _2986;
  float _2988;
  float _2989;
  float _2990;
  float _2992;
  float _2993;
  float _2994;
  float _2996;
  float _2997;
  float _2998;
  float _3000;
  float _3001;
  float _3002;
  float _3004;
  float _3005;
  float _3006;
  float _3007;
  float _3009;
  float _3010;
  float _3011;
  float _3012;
  int _3014;
  int _3015;
  float _3017;
  float _3018;
  float _3019;
  float _3020;
  float _3022;
  float _3023;
  float _3024;
  float _3025;
  float _3027;
  float _3028;
  float _3029;
  float _3030;
  float _3032;
  float _3033;
  float _3034;
  float _3036;
  float _3037;
  float _3038;
  float _3039;
  float _3043;
  float _3047;
  float _3051;
  float _3053;
  float _3059;
  float _3062;
  float _3065;
  float _3068;
  float _3073;
  float _3082;
  float _3086;
  float _3087;
  bool _3088;
  bool _3089;
  float _3093;
  float _3099;
  float _3102;
  float _3104;
  bool _3107;
  bool _3108;
  bool _3109;
  bool _3110;
  float _3120;
  float _3121;
  float _3132;
  float _3134;
  float _3135;
  float _3136;
  float _3141;
  float _3150;
  float _3153;
  float _3154;
  float _3155;
  float _3166;
  float _3168;
  float _3172;
  float _3179;
  float _3180;
  float _3181;
  float _3184;
  float _3187;
  float _3204;
  float _3205;
  float _3206;
  float _3224;
  float _3228;
  float _3251;
  bool _3254;
  bool _3255;
  bool _3256;
  bool _3257;
  float _3289;
  float _3295;
  float _3300;
  float _3308;
  float _3312;
  uint _3342;
  float _3350;
  float _3351;
  float _3352;
  float _3356;
  float _3361;
  float _3368;
  float _3390;
  float _3391;
  float _3407;
  float _3408;
  float _3410;
  float _3422;
  float _3426;
  float _3430;
  float _3447;
  float _3469;
  float _3502;
  float _3503;
  float _3504;
  float _3506;
  float _3507;
  float _3508;
  float _3510;
  float _3511;
  float _3512;
  float _3514;
  float _3515;
  float _3516;
  float _3518;
  float _3519;
  float _3520;
  float _3522;
  float _3523;
  float _3524;
  float _3525;
  float _3527;
  float _3528;
  float _3529;
  float _3530;
  int _3532;
  int _3533;
  float _3535;
  float _3536;
  float _3537;
  float _3538;
  float _3540;
  float _3541;
  float _3542;
  float _3543;
  float _3545;
  float _3546;
  float _3547;
  float _3548;
  float _3550;
  float _3551;
  float _3552;
  float _3554;
  float _3555;
  float _3556;
  float _3557;
  float _3561;
  float _3565;
  float _3569;
  float _3571;
  float _3577;
  float _3580;
  float _3583;
  float _3586;
  float _3591;
  float _3600;
  float _3604;
  float _3605;
  bool _3606;
  bool _3607;
  float _3611;
  float _3617;
  float _3620;
  float _3622;
  bool _3625;
  bool _3626;
  bool _3627;
  bool _3628;
  float _3638;
  float _3639;
  float _3650;
  float _3652;
  float _3653;
  float _3654;
  float _3659;
  float _3668;
  float _3671;
  float _3672;
  float _3673;
  float _3684;
  float _3686;
  float _3690;
  float _3697;
  float _3698;
  float _3699;
  float _3702;
  float _3705;
  float _3722;
  float _3723;
  float _3724;
  float _3742;
  float _3746;
  float _3769;
  bool _3772;
  bool _3773;
  bool _3774;
  bool _3775;
  float _3807;
  float _3813;
  float _3818;
  float _3826;
  float _3830;
  uint _3860;
  float _3874;
  float _3878;
  float _3886;
  float _3895;
  float _3920;
  float2 _3923;
  float _3926;
  float2 _3950;
  float _3953;
  float _3958;
  float _3963;
  float _3964;
  float _3965;
  float _3966;
  float _3967;
  float _3968;
  float _3975;
  float _3978;
  float _3980;
  float _3987;
  float _3988;
  float _3989;
  float _3998;
  float _3999;
  float _4000;
  float _4001;
  float _4002;
  float _4004;
  float _4005;
  float _4007;
  float _4008;
  float _4013;
  float _4014;
  float _4015;
  float _4028;
  float _4029;
  float _4030;
  float _4031;
  float _4032;
  float _4033;
  float _4034;
  float _4035;
  float _4042;
  float _4046;
  float _4050;
  float _4052;
  float _4060;
  float _4066;
  float _4073;
  float _4079;
  float _4089;
  float _4097;
  float _4100;
  float _4103;
  float _4106;
  float _4136;
  float _4145;
  float _4146;
  float _4147;
  float _4167;
  float _4171;
  float _4174;
  float _4179;
  float _4182;
  float _4187;
  float _4190;
  float _4195;
  float _4196;
  float _4198;
  float _4199;
  float _4200;
  float _4202;
  float _4204;
  float _4209;
  float _4210;
  float _4211;
  float _4228;
  float _4239;
  float _4251;
  float _4259;
  float _4267;
  float _4275;
  float _4279;
  float _4280;
  float _4296;
  float _4297;
  float _4304;
  float _4305;
  float _4306;
  float _4325;
  float _4327;
  float _4328;
  float _4342;
  float _4349;
  float _4350;
  float _4351;
  float _4368;
  float _4382;
  uint _4414;
  float _4422;
  float _4428;
  float _4432;
  float _4444;
  float _4458;
  float _4459;
  float _4461;
  float _4462;
  float _4463;
  float _4464;
  float _4472;
  float _4473;
  float4 _4477;
  float _4489;
  float _4493;
  float _4502;
  float _4531;
  int _4534;
  float _4543;
  float _4546;
  float _4547;
  float _4548;
  float _4550;
  float _4551;
  float _4553;
  float _4554;
  float _4555;
  float _4556;
  float _4557;
  float _4560;
  float _4570;
  float _4578;
  float _4585;
  bool _4586;
  float _4610;
  float4 _4618;
  float4 _4654;
  float _4676;
  float _4677;
  float _4686;
  float _4687;
  float _4691;
  float _4692;
  float _4695;
  float _4696;
  float _4702;
  float _4703;
  float _4706;
  float _4709;
  float _4712;
  float _4719;
  float _4742;
  float _4743;
  float _4757;
  float _4758;
  float _4760;
  float _4776;
  float _4780;
  float _4797;
  float _4815;
  float _4854;
  float _4855;
  float _4856;
  float _4858;
  float _4859;
  float _4860;
  float _4862;
  float _4863;
  float _4864;
  float _4866;
  float _4867;
  float _4868;
  float _4870;
  float _4871;
  float _4872;
  float _4874;
  float _4875;
  float _4876;
  float _4877;
  float _4879;
  float _4880;
  float _4881;
  float _4882;
  int _4884;
  int _4885;
  float _4887;
  float _4888;
  float _4889;
  float _4890;
  float _4892;
  float _4893;
  float _4894;
  float _4895;
  float _4897;
  float _4898;
  float _4899;
  float _4900;
  float _4902;
  float _4903;
  float _4904;
  float _4906;
  float _4907;
  float _4908;
  float _4909;
  float _4913;
  float _4917;
  float _4921;
  float _4923;
  float _4929;
  float _4932;
  float _4935;
  float _4938;
  float _4943;
  float _4952;
  float _4956;
  float _4957;
  bool _4958;
  bool _4959;
  float _4963;
  float _4969;
  float _4972;
  float _4974;
  bool _4977;
  bool _4978;
  bool _4979;
  bool _4980;
  float _4990;
  float _4991;
  float _5002;
  float _5004;
  float _5005;
  float _5006;
  float _5011;
  float _5020;
  float _5023;
  float _5024;
  float _5025;
  float _5036;
  float _5038;
  float _5042;
  float _5049;
  float _5050;
  float _5051;
  float _5054;
  float _5057;
  float _5074;
  float _5075;
  float _5076;
  float _5094;
  float _5098;
  float _5121;
  bool _5124;
  bool _5125;
  bool _5126;
  bool _5127;
  float _5159;
  float _5165;
  float _5170;
  float _5177;
  float _5181;
  uint _5211;
  float _5220;
  float _5223;
  float _5229;
  float _5230;
  float _5231;
  float _5232;
  float _5233;
  float _5234;
  float _5255;
  float _5273;
  float _5274;
  float _5276;
  bool _5279;
  float _5280;
  float _5281;
  float _5282;
  bool _5283;
  float _5292;
  float _5295;
  float _5301;
  float _5324;
  float _5329;
  float _5331;
  float _5333;
  float _5339;
  float _5342;
  float _5343;
  float _5357;
  float _5392;
  float _5393;
  float _5394;
  float _5396;
  float _5397;
  float _5398;
  float _5400;
  float _5401;
  float _5402;
  float _5404;
  float _5405;
  float _5406;
  float _5410;
  float _5414;
  float _5418;
  float _5421;
  float _5424;
  float _5427;
  float _5428;
  float _5434;
  float _5440;
  float _5455;
  float _5456;
  float _5457;
  float _5461;
  float _5462;
  float _5463;
  float _5467;
  float _5468;
  float _5469;
  float _5480;
  float _5481;
  uint _5493;
  float _5502;
  float _5506;
  int _5527;
  float _5533;
  float _5534;
  float _5538;
  float _5545;
  float _5550;
  float _5553;
  float _5558;
  float _5567;
  float _5610;
  float _5611;
  float _5627;
  float _5628;
  float _5630;
  float _5642;
  float _5646;
  float _5650;
  float _5669;
  float _5685;
  float _5688;
  float _5689;
  float _5721;
  float _5722;
  float _5723;
  float _5725;
  float _5726;
  float _5727;
  float _5729;
  float _5730;
  float _5731;
  float _5733;
  float _5734;
  float _5735;
  float _5737;
  float _5738;
  float _5739;
  float _5741;
  float _5742;
  float _5743;
  float _5744;
  float _5746;
  float _5747;
  float _5748;
  float _5749;
  int _5751;
  int _5752;
  float _5754;
  float _5755;
  float _5756;
  float _5757;
  float _5759;
  float _5760;
  float _5761;
  float _5762;
  float _5764;
  float _5765;
  float _5766;
  float _5767;
  float _5769;
  float _5770;
  float _5771;
  float _5773;
  float _5774;
  float _5775;
  float _5776;
  float _5780;
  float _5784;
  float _5788;
  float _5790;
  float _5796;
  float _5799;
  float _5802;
  float _5805;
  float _5810;
  float _5819;
  float _5823;
  float _5824;
  bool _5825;
  bool _5826;
  float _5830;
  float _5836;
  float _5839;
  float _5841;
  bool _5844;
  bool _5845;
  bool _5846;
  bool _5847;
  float _5857;
  float _5858;
  float _5869;
  float _5871;
  float _5872;
  float _5873;
  float _5878;
  float _5887;
  float _5890;
  float _5891;
  float _5892;
  float _5903;
  float _5905;
  float _5909;
  float _5916;
  float _5917;
  float _5918;
  float _5921;
  float _5924;
  float _5941;
  float _5942;
  float _5943;
  float _5961;
  float _5965;
  float _5988;
  bool _5991;
  bool _5992;
  bool _5993;
  bool _5994;
  float _6026;
  float _6032;
  float _6037;
  float _6045;
  float _6049;
  uint _6079;
  float _6086;
  float _6102;
  float _6103;
  float _6104;
  float _6105;
  float _6106;
  float _6107;
  float _6108;
  float _6109;
  float _6110;
  int _6111;
  bool _6119;
  float4 _6139;
  float _6141;
  float _6142;
  float _6143;
  float _6144;
  float _6148;
  float _6153;
  float _6154;
  float _6156;
  float _6162;
  float _6184;
  float _6185;
  float _6201;
  float _6202;
  float _6204;
  float _6216;
  float _6220;
  float _6224;
  float _6241;
  float _6263;
  bool _6272;
  float _6297;
  float _6298;
  float _6299;
  float _6301;
  float _6302;
  float _6303;
  float _6305;
  float _6306;
  float _6307;
  float _6309;
  float _6310;
  float _6311;
  float _6313;
  float _6314;
  float _6315;
  float _6317;
  float _6318;
  float _6319;
  float _6320;
  float _6322;
  float _6323;
  float _6324;
  float _6325;
  int _6327;
  int _6328;
  float _6330;
  float _6331;
  float _6332;
  float _6333;
  float _6335;
  float _6336;
  float _6337;
  float _6338;
  float _6340;
  float _6341;
  float _6342;
  float _6343;
  float _6345;
  float _6346;
  float _6347;
  float _6349;
  float _6350;
  float _6351;
  float _6352;
  float _6356;
  float _6360;
  float _6364;
  float _6366;
  float _6372;
  float _6375;
  float _6378;
  float _6381;
  float _6386;
  float _6395;
  float _6399;
  float _6400;
  bool _6401;
  bool _6402;
  float _6406;
  float _6412;
  float _6415;
  float _6417;
  bool _6420;
  bool _6421;
  bool _6422;
  bool _6423;
  float _6433;
  float _6434;
  float _6445;
  float _6447;
  float _6448;
  float _6449;
  float _6454;
  float _6463;
  float _6466;
  float _6467;
  float _6468;
  float _6479;
  float _6481;
  float _6485;
  float _6492;
  float _6493;
  float _6494;
  float _6497;
  float _6500;
  float _6517;
  float _6518;
  float _6519;
  float _6537;
  float _6541;
  float _6564;
  bool _6567;
  bool _6568;
  bool _6569;
  bool _6570;
  float _6602;
  float _6608;
  float _6613;
  float _6621;
  float _6625;
  uint _6655;
  float _6663;
  float _6664;
  float _6665;
  float _6669;
  float _6674;
  float _6681;
  float _6703;
  float _6704;
  float _6720;
  float _6721;
  float _6723;
  float _6735;
  float _6739;
  float _6743;
  float _6760;
  float _6782;
  float _6815;
  float _6816;
  float _6817;
  float _6819;
  float _6820;
  float _6821;
  float _6823;
  float _6824;
  float _6825;
  float _6827;
  float _6828;
  float _6829;
  float _6831;
  float _6832;
  float _6833;
  float _6835;
  float _6836;
  float _6837;
  float _6838;
  float _6840;
  float _6841;
  float _6842;
  float _6843;
  int _6845;
  int _6846;
  float _6848;
  float _6849;
  float _6850;
  float _6851;
  float _6853;
  float _6854;
  float _6855;
  float _6856;
  float _6858;
  float _6859;
  float _6860;
  float _6861;
  float _6863;
  float _6864;
  float _6865;
  float _6867;
  float _6868;
  float _6869;
  float _6870;
  float _6874;
  float _6878;
  float _6882;
  float _6884;
  float _6890;
  float _6893;
  float _6896;
  float _6899;
  float _6904;
  float _6913;
  float _6917;
  float _6918;
  bool _6919;
  bool _6920;
  float _6924;
  float _6930;
  float _6933;
  float _6935;
  bool _6938;
  bool _6939;
  bool _6940;
  bool _6941;
  float _6951;
  float _6952;
  float _6963;
  float _6965;
  float _6966;
  float _6967;
  float _6972;
  float _6981;
  float _6984;
  float _6985;
  float _6986;
  float _6997;
  float _6999;
  float _7003;
  float _7010;
  float _7011;
  float _7012;
  float _7015;
  float _7018;
  float _7035;
  float _7036;
  float _7037;
  float _7055;
  float _7059;
  float _7082;
  bool _7085;
  bool _7086;
  bool _7087;
  bool _7088;
  float _7120;
  float _7126;
  float _7131;
  float _7139;
  float _7143;
  uint _7173;
  float _7187;
  float _7191;
  float _7199;
  float _7208;
  float _7233;
  float2 _7236;
  float _7239;
  float2 _7263;
  float _7274;
  float _7275;
  float _7276;
  float _7277;
  float _7278;
  float _7279;
  float _7286;
  float _7289;
  float _7291;
  float _7298;
  float _7299;
  float _7309;
  float _7310;
  float _7311;
  float _7313;
  float _7315;
  float _7318;
  float _7324;
  float _7325;
  float _7326;
  float _7339;
  float _7340;
  float _7341;
  float _7342;
  float _7343;
  float _7344;
  float _7345;
  float _7352;
  float _7356;
  float _7357;
  float _7361;
  float _7366;
  float _7372;
  float _7379;
  float _7385;
  float _7394;
  float _7402;
  float _7403;
  float _7405;
  float _7407;
  float _7415;
  float _7419;
  float _7440;
  float _7449;
  float _7450;
  float _7451;
  float _7464;
  float _7465;
  float _7466;
  float _7471;
  float _7475;
  float _7477;
  float _7483;
  float _7484;
  float _7488;
  float _7494;
  float _7498;
  float _7504;
  float _7507;
  float _7511;
  float _7520;
  float _7521;
  float _7522;
  float _7535;
  float _7536;
  float _7537;
  float _7538;
  float _7549;
  float _7560;
  float _7632;
  float _7633;
  float _7634;
  float _7641;
  float _7647;
  float _7648;
  float _7649;
  float _7650;
  float _7653;
  float _7655;
  float _7658;
  float _7660;
  float _7662;
  float _7668;
  float _7669;
  float _7675;
  bool _7676;
  float _7700;
  float _7705;
  float4 _7708;
  float4 _7713;
  float _7720;
  float _7721;
  float _7725;
  float _7731;
  float _7732;
  float _7739;
  float _7740;
  float4 _7745;
  float4 _7750;
  float _7754;
  float _7760;
  float _7761;
  float _7762;
  float _7763;
  float _7766;
  float _7769;
  float _7776;
  float _7782;
  bool _7783;
  float _7807;
  float _7812;
  float4 _7813;
  float4 _7817;
  float4 _7827;
  float4 _7831;
  float _7844;
  float _7845;
  float _7846;
  float _7847;
  float _7848;
  float _7854;
  float _7861;
  float _7862;
  float _7864;
  float _7865;
  float _7866;
  float _7867;
  float _7868;
  float _7889;
  float _7890;
  float _7891;
  float _7892;
  float _7893;
  float _7894;
  bool _7895;
  bool _7901;
  float _7937;
  float _7943;
  float _7950;
  float _7955;
  float _7962;
  float _7963;
  float _7964;
  float _7967;
  float _7987;
  float _7988;
  float _7994;
  float _7997;
  float _8000;
  float _8006;
  float _8007;
  float _8008;
  float _8032;
  float _8059;
  float4 _8060;
  float4 _8064;
  float _8069;
  float _8070;
  float _8080;
  float4 _8084;
  float4 _8088;
  float _8119;
  float4 _8120;
  float4 _8124;
  float4 _8134;
  float4 _8138;
  float _8163;
  float _8164;
  float _8221;
  float _8222;
  float _8226;
  float _8230;
  float _8231;
  float _8238;
  float _8239;
  float _8245;
  float _8246;
  float _8247;
  float _8248;
  float _8251;
  float _8253;
  float _8256;
  float _8258;
  float _8260;
  float _8266;
  float _8267;
  float _8273;
  bool _8274;
  float _8298;
  float _8303;
  float4 _8306;
  float4 _8311;
  float _8318;
  float _8319;
  float _8323;
  float _8329;
  float _8330;
  float _8337;
  float _8338;
  float4 _8343;
  float4 _8348;
  float _8352;
  float _8358;
  float _8359;
  float _8360;
  float _8361;
  float _8364;
  float _8367;
  float _8374;
  float _8380;
  bool _8381;
  float _8405;
  float _8410;
  float4 _8411;
  float4 _8415;
  float4 _8425;
  float4 _8429;
  float _8442;
  float _8443;
  float _8444;
  float _8445;
  float _8446;
  float _8447;
  float _8453;
  float _8460;
  float _8461;
  float _8463;
  float _8464;
  float _8465;
  float _8466;
  float _8467;
  float _8488;
  float _8489;
  float _8490;
  float _8491;
  float _8492;
  float _8493;
  bool _8494;
  bool _8500;
  float _8536;
  float _8542;
  float _8549;
  float _8554;
  float _8561;
  float _8562;
  float _8563;
  float _8566;
  float _8586;
  float _8587;
  float _8592;
  float _8595;
  float _8598;
  float _8604;
  float _8605;
  float _8606;
  float _8630;
  float _8657;
  float4 _8658;
  float4 _8662;
  float _8667;
  float _8668;
  float _8678;
  float4 _8682;
  float4 _8686;
  float _8717;
  float4 _8718;
  float4 _8722;
  float4 _8732;
  float4 _8736;
  float _8761;
  float _8762;
  float _8836;
  float _8847;
  float _8848;
  float _8849;
  float _8868;
  float _8869;
  float _8870;
  float _8871;
  float _8872;
  float _8873;
  float _8917;
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
    _186 = _178 + 1.0f;
    _187 = _175 * 2.0f;
    _194 = (((1.0f - _178) * 3.0f) / ((_178 + 2.0f) * 2.0f)) * 0.07957747f;
    _195 = (_185 / exp2(log2(_186 - (_cloudPhaseConstFront * _187)) * 1.5f)) * _194;
    _197 = _cloudPhaseConstBack * _cloudPhaseConstBack;
    _203 = _197 + 1.0f;
    _204 = _cloudPhaseConstBack * -2.0f;
    _211 = (((1.0f - _197) * 3.0f) / ((_197 + 2.0f) * 2.0f)) * 0.039788734f;
    _213 = ((_185 / exp2(log2(_203 - (_204 * _175)) * 1.5f)) * _211) + _195;
    _219 = dot(float3(_117, _118, _119), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
    _221 = (_219 * _219) + 1.0f;
    _222 = _219 * 2.0f;
    _229 = (_221 / exp2(log2(_186 - (_222 * _cloudPhaseConstFront)) * 1.5f)) * _194;
    _237 = ((_221 / exp2(log2(_203 - (_204 * _219)) * 1.5f)) * _211) + _229;
    _240 = min(_cloudVisibleRange, _cloudVisibleRange);
    _241 = select(_133, _166, _116);
    if (_renderFlags.x > 0.5f) {
      if ((_cloudDensityVolumeInfo.y & 1) == 0) {
        _369 = 0.0f;
        _370 = 3.4028235e+38f;
        _371 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
      } else {
        if (!(_cloudDensityVolumeInfo.x == 0)) {
          _256 = 0;
          _257 = 3.4028235e+38f;
          _258 = 0.0f;
          _259 = 0;
          while(true) {
            _262 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[0].x;
            _263 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[1].x;
            _264 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[2].x;
            _266 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[0].y;
            _267 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[1].y;
            _268 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[2].y;
            _270 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[0].z;
            _271 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[1].z;
            _272 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[2].z;
            _274 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[0].w;
            _275 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[1].w;
            _276 = __3__37__0__0__g_cloudDensityVolumes[_256]._relativeWorldToLocal[2].w;
            _280 = mad(_270, _viewPos.z, mad(_266, _viewPos.y, (_262 * _viewPos.x))) + _274;
            _284 = mad(_271, _viewPos.z, mad(_267, _viewPos.y, (_263 * _viewPos.x))) + _275;
            _288 = mad(_272, _viewPos.z, mad(_268, _viewPos.y, (_264 * _viewPos.x))) + _276;
            _291 = mad(_270, _119, mad(_266, _118, (_262 * _117)));
            _294 = mad(_271, _119, mad(_267, _118, (_263 * _117)));
            _297 = mad(_272, _119, mad(_268, _118, (_264 * _117)));
            _298 = abs(_291);
            if (!(_298 < 1e-06f) || !(abs(_280) > 0.5f)) {
              _304 = abs(_294);
              if (!(_304 < 1e-06f) || !(abs(_284) > 0.5f)) {
                _310 = abs(_297);
                if (!(_310 < 1e-06f) || !(abs(_288) > 0.5f)) {
                  _325 = max(_298, 1e-06f) * select((_291 < 0.0f), -1.0f, 1.0f);
                  _326 = max(_304, 1e-06f) * select((_294 < 0.0f), -1.0f, 1.0f);
                  _327 = max(_310, 1e-06f) * select((_297 < 0.0f), -1.0f, 1.0f);
                  _331 = (-0.5f - _280) / _325;
                  _332 = (-0.5f - _284) / _326;
                  _333 = (-0.5f - _288) / _327;
                  _337 = (0.5f - _280) / _325;
                  _338 = (0.5f - _284) / _326;
                  _339 = (0.5f - _288) / _327;
                  _350 = max(max(max(min(_331, _337), min(_332, _338)), min(_333, _339)), 0.0f);
                  _351 = min(min(min(max(_331, _337), max(_332, _338)), max(_333, _339)), _241);
                  if (!(_351 < _350)) {
                    _360 = min(_257, _350);
                    _361 = max(_258, _351);
                    _362 = ((int)(_259) | (int)((int)((uint)(1) << (_256 & 31))));
                  } else {
                    _360 = _257;
                    _361 = _258;
                    _362 = _259;
                  }
                } else {
                  _360 = _257;
                  _361 = _258;
                  _362 = _259;
                }
              } else {
                _360 = _257;
                _361 = _258;
                _362 = _259;
              }
            } else {
              _360 = _257;
              _361 = _258;
              _362 = _259;
            }
            _363 = (uint)((uint)(_256)) + (uint)(1);
            if ((uint)_363 < (uint)_cloudDensityVolumeInfo.x) {
              _256 = _363;
              _257 = _360;
              _258 = _361;
              _259 = _362;
              continue;
            }
            _369 = _360;
            _370 = _361;
            _371 = _362;
            break;
          }
        } else {
          _369 = 3.4028235e+38f;
          _370 = 0.0f;
          _371 = 0;
        }
      }
      _377 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0033333334f));
      _382 = 1;
      _383 = 0.0f;
      _384 = 0.0f;
      _385 = 0.0f;
      _386 = 0.0f;
      _387 = 0.0f;
      _388 = 0.0f;
      _389 = 0.0f;
      _390 = 0.0f;
      _391 = 0.0f;
      _392 = 0.0f;
      _393 = 0.0f;
      _394 = 0.0f;
      _395 = 0.0f;
      _396 = 0.0f;
      _397 = 0;
      _398 = 0;
      _399 = 128.0f;
      while(true) {
        _401 = (float)((int)(_397));
        _411 = (((exp2(select(((uint)_397 < (uint)12), (_401 * 0.33f), (_401 + -8.039999f)) * _377) + -1.0f) * (_240 + -128.0f)) / (exp2(_377 * 300.0f) + -1.0f)) + 128.0f;
        _412 = min(_411, _241);
        _414 = max(0.0f, (_412 - _399));
        _416 = (_414 * _132) + _399;
        _419 = _distanceScale * _414;
        _423 = (_416 * _117) + _viewPos.x;
        _424 = (_416 * _118) + _viewPos.y;
        _425 = (_416 * _119) + _viewPos.z;
        // [sem: _3__36__0__0__g_climateTex2_sampleLod]
        _447 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_423 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_425 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
        _454 = select(((_416 >= _369) && (_416 <= _370)), _371, 0);
        _458 = select(((_412 >= _369) && (_412 <= _370)), _371, 0);
        _462 = (_412 * _117) + _viewPos.x;
        _463 = (_412 * _118) + _viewPos.y;
        _464 = (_412 * _119) + _viewPos.z;
        _468 = _462 - _viewPos.x;
        _469 = _464 - _viewPos.z;
        _473 = sqrt((_468 * _468) + (_469 * _469));
        _480 = _cloudAltitude - (max(((_473 * _473) + -400000.0f), 0.0f) * 1e-06f);
        _483 = _cloudDetailScale * 0.004f;
        _486 = _cloudBaseScale * 0.0004f;
        _491 = _earthRadius + _463;
        _500 = ((sqrt(((_464 * _464) + (_462 * _462)) + (_491 * _491)) - _480) - _earthRadius) / _cloudThickness;
        if (!((_500 < 0.0f) || (_500 > 1.0f))) {
          _524 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
          _525 = _463 - _480;
          _541 = _483 / _486;
          _542 = _541 * _486;
          _544 = _541 * _524;
          _556 = saturate(max((_473 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
          _560 = (4.0f - (_556 * 3.0f)) * (_cloudDetailScale * 0.001884f);
          _564 = _542 * 4.355f;
          _581 = 1.0f - sqrt(saturate((1.0f - _500) * 1.4285715f));
          _603 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_483 * _462) - (_542 * _cloudScroll.x)), ((_525 * _483) - _544), ((_483 * _464) - (_542 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_556 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_560 * _462) - (_564 * _cloudScroll.x)), ((_560 * _525) - (_544 * 4.355f)), ((_560 * _464) - (_564 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_500 * 4.0f) * 0.8f) + 0.2f);
          _610 = (saturate(((saturate(saturate(((_447.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_486 * (_462 - _cloudScroll.x)), ((_486 * _525) - _524), (_486 * (_464 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_581 * 0.5f), ((_581 * _581) * _581))) * saturate(_500 * 10.0f)) - _603) / (1.0f - _603)) * _cloudAlpha);
        } else {
          _610 = 0.0f;
        }
        _612 = (_cloudFadeRange > 1e-05f);
        if (_612) {
          _622 = saturate((((1.0f - _cloudNear) * _473) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
        } else {
          _622 = 1.0f;  // [sem: expr_sat]
        }
        if (!((_458 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
          _633 = 0.0f;
          _634 = 0;
          while(true) {
            _998 = _633;
            if (!((((int)((uint)(1) << (_634 & 31))) & _458) == 0)) {
              _642 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[0].x;
              _643 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[1].x;
              _644 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[2].x;
              _646 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[0].y;
              _647 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[1].y;
              _648 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[2].y;
              _650 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[0].z;
              _651 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[1].z;
              _652 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[2].z;
              _654 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[0].w;
              _655 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[1].w;
              _656 = __3__37__0__0__g_cloudDensityVolumes[_634]._relativeWorldToLocal[2].w;
              _658 = __3__37__0__0__g_cloudDensityVolumes[_634]._shapeParameter.x;
              _659 = __3__37__0__0__g_cloudDensityVolumes[_634]._shapeParameter.z;
              _660 = __3__37__0__0__g_cloudDensityVolumes[_634]._shapeParameter.w;
              _662 = __3__37__0__0__g_cloudDensityVolumes[_634]._macroNoiseParameter.x;
              _663 = __3__37__0__0__g_cloudDensityVolumes[_634]._macroNoiseParameter.y;
              _664 = __3__37__0__0__g_cloudDensityVolumes[_634]._macroNoiseParameter.z;
              _665 = __3__37__0__0__g_cloudDensityVolumes[_634]._macroNoiseParameter.w;
              _667 = __3__37__0__0__g_cloudDensityVolumes[_634]._detailNoiseParameter.x;
              _668 = __3__37__0__0__g_cloudDensityVolumes[_634]._detailNoiseParameter.y;
              _669 = __3__37__0__0__g_cloudDensityVolumes[_634]._detailNoiseParameter.z;
              _670 = __3__37__0__0__g_cloudDensityVolumes[_634]._detailNoiseParameter.w;
              _672 = __3__37__0__0__g_cloudDensityVolumes[_634]._modeParameter.x;
              _673 = __3__37__0__0__g_cloudDensityVolumes[_634]._modeParameter.y;
              _675 = __3__37__0__0__g_cloudDensityVolumes[_634]._vortexParameter.x;
              _676 = __3__37__0__0__g_cloudDensityVolumes[_634]._vortexParameter.y;
              _677 = __3__37__0__0__g_cloudDensityVolumes[_634]._vortexParameter.z;
              _678 = __3__37__0__0__g_cloudDensityVolumes[_634]._vortexParameter.w;
              _680 = __3__37__0__0__g_cloudDensityVolumes[_634]._spiralParameter.x;
              _681 = __3__37__0__0__g_cloudDensityVolumes[_634]._spiralParameter.y;
              _682 = __3__37__0__0__g_cloudDensityVolumes[_634]._spiralParameter.z;
              _683 = __3__37__0__0__g_cloudDensityVolumes[_634]._spiralParameter.w;
              _685 = __3__37__0__0__g_cloudDensityVolumes[_634]._animationParameter.x;
              _686 = __3__37__0__0__g_cloudDensityVolumes[_634]._animationParameter.y;
              _687 = __3__37__0__0__g_cloudDensityVolumes[_634]._animationParameter.z;
              _688 = __3__37__0__0__g_cloudDensityVolumes[_634]._animationParameter.w;
              _690 = __3__37__0__0__g_cloudDensityVolumes[_634]._flowParameter.x;
              _691 = __3__37__0__0__g_cloudDensityVolumes[_634]._flowParameter.y;
              _692 = __3__37__0__0__g_cloudDensityVolumes[_634]._flowParameter.z;
              _694 = __3__37__0__0__g_cloudDensityVolumes[_634]._tornadoParameter.x;
              _695 = __3__37__0__0__g_cloudDensityVolumes[_634]._tornadoParameter.y;
              _696 = __3__37__0__0__g_cloudDensityVolumes[_634]._tornadoParameter.z;
              _697 = __3__37__0__0__g_cloudDensityVolumes[_634]._tornadoParameter.w;
              _701 = mad(_650, _464, mad(_646, _463, (_642 * _462))) + _654;
              _705 = mad(_651, _464, mad(_647, _463, (_643 * _462))) + _655;
              _709 = mad(_652, _464, mad(_648, _463, (_644 * _462))) + _656;
              _711 = abs(_705);
              _717 = max((abs(_701) + -0.5f), max((_711 + -0.5f), (abs(_709) + -0.5f)));
              if (!(_717 >= 0.0f)) {
                _720 = __3__37__0__0__g_cloudDensityVolumes[_634]._shapeParameter.y;
                _723 = max((saturate(_720) * 0.5f), 0.0001f);
                _726 = saturate((_723 + _717) / _723);  // [sem: expr_sat]
                _731 = 1.0f - ((_726 * _726) * (3.0f - (_726 * 2.0f)));
                if (!(_731 <= 0.0f)) {
                  _740 = sqrt((_709 * _709) + (_701 * _701)) * 2.0f;
                  _744 = saturate(1.0f - (_740 / max(_676, 0.0001f)));  // [sem: expr_sat]
                  _745 = _time.x * _688;
                  _746 = (_672 == 1);
                  _747 = (_672 == 2);
                  if (_746) {
                    _824 = exp2(log2(_744) * max(_683, 0.0001f));
                    _826 = max(_682, 0.0001f);
                    _830 = _705 / (((max(_681, 0.0001f) - _826) * _824) + _826);
                    _837 = (((_744 * _744) * _675) * ((_740 * _677) + _705)) - (_744 * _745);
                    _838 = sin(_837);
                    _839 = cos(_837);
                    _842 = (_839 * _701) - (_838 * _709);
                    _845 = (_839 * _709) + (_838 * _701);
                    if (_747) {
                      _847 = 0.0f;
                      _848 = 1.0f;
                      _849 = _824;
                      _850 = _744;
                      _851 = _842;
                      _852 = _830;
                      _853 = _845;
                      _873 = _848;
                      _874 = _849;
                      _875 = _850;
                      _876 = _851;
                      _877 = _852;
                      _878 = _853;
                      _879 = max(_847, ((_711 * 2.0f) + -1.0f));
                    } else {
                      _858 = _824;
                      _859 = _842;
                      _860 = _830;
                      _861 = _845;
                      _862 = _859 * 2.0f;
                      _863 = _860 * 2.0f;
                      _864 = _861 * 2.0f;
                      _873 = 1.0f;
                      _874 = _858;
                      _875 = _744;
                      _876 = _859;
                      _877 = _860;
                      _878 = _861;
                      _879 = (sqrt(((_863 * _863) + (_862 * _862)) + (_864 * _864)) + -1.0f);
                    }
                  } else {
                    if (_747) {
                      _751 = saturate(_705 + 0.5f);  // [sem: expr_sat]
                      _757 = max(_694, 0.0001f);
                      _760 = ((max(_695, 0.0001f) - _757) * exp2(log2(_751) * max(_696, 0.0001f))) + _757;
                      _762 = atan(_709 / _701);
                      _765 = (_701 < 0.0f);
                      _766 = (_701 == 0.0f);
                      _767 = (_709 >= 0.0f);
                      _768 = (_709 < 0.0f);
                      _778 = max(((float)((uint)((uint)(_673)))), 1.0f);
                      _779 = _751 * _677;
                      _790 = _760 * _670;
                      _792 = max((_760 - _790), 0.0f);
                      _793 = _740 - _792;
                      _794 = _792 * (acos(min(max(cos(((((_779 * -6.2831855f) - _745) + select((_766 && _767), 1.5707964f, select((_766 && _768), -1.5707964f, select((_765 && _768), (_762 + -3.1415927f), select((_765 && _767), (_762 + 3.1415927f), _762))))) * _778) + _680), -1.0f), 1.0f)) / _778);
                      _799 = _740 - _760;
                      _808 = saturate(1.0f - (_740 / _760));  // [sem: expr_sat]
                      _811 = ((_808 + _779) * _675) - _745;
                      _812 = sin(_811);
                      _813 = cos(_811);
                      _847 = ((saturate(_678) * (((-0.0f - _799) - _790) + sqrt((_793 * _793) + (_794 * _794)))) + _799);
                      _848 = _760;
                      _849 = 0.0f;
                      _850 = _808;
                      _851 = ((_813 * _701) - (_812 * _709));
                      _852 = _705;
                      _853 = ((_813 * _709) + (_812 * _701));
                      _873 = _848;
                      _874 = _849;
                      _875 = _850;
                      _876 = _851;
                      _877 = _852;
                      _878 = _853;
                      _879 = max(_847, ((_711 * 2.0f) + -1.0f));
                    } else {
                      _858 = 0.0f;
                      _859 = _701;
                      _860 = _705;
                      _861 = _709;
                      _862 = _859 * 2.0f;
                      _863 = _860 * 2.0f;
                      _864 = _861 * 2.0f;
                      _873 = 1.0f;
                      _874 = _858;
                      _875 = _744;
                      _876 = _859;
                      _877 = _860;
                      _878 = _861;
                      _879 = (sqrt(((_863 * _863) + (_862 * _862)) + (_864 * _864)) + -1.0f);
                    }
                  }
                  if (_663 > 0.0f) {
                    _882 = _time.x * _686;
                    _886 = max(_662, 0.0001f);
                    _904 = (_879 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_882 * _690) + _664) + (_886 * _876)), (((_882 * _691) + _665) + (_886 * _877)), (((_882 * _692) + _669) + (_886 * _878))), 0.0f)).x) + -0.5f) * _663));
                  } else {
                    _904 = _879;
                  }
                  if (_746 && (_678 > 0.0f)) {
                    _909 = atan(_709 / _701);
                    _912 = (_701 < 0.0f);
                    _913 = (_701 == 0.0f);
                    _914 = (_709 >= 0.0f);
                    _915 = (_709 < 0.0f);
                    _937 = (_904 - (((_678 * 0.5f) * _875) * cos(((((_740 * _677) - _745) + select((_913 && _914), 1.5707964f, select((_913 && _915), -1.5707964f, select((_912 && _915), (_909 + -3.1415927f), select((_912 && _914), (_909 + 3.1415927f), _909))))) * max(((float)((uint)((uint)(_673)))), 1.0f)) + _680)));
                  } else {
                    _937 = _904;
                  }
                  if (_747 && (_697 > 0.0f)) {
                    _945 = max(_937, ((_873 * _697) - _740));
                  } else {
                    _945 = _937;
                  }
                  _947 = max(_660, 0.0001f);
                  _953 = saturate((((_659 - (_874 * _685)) + _945) + _947) / (_947 * 2.0f));  // [sem: expr_sat]
                  _958 = 1.0f - ((_953 * _953) * (3.0f - (_953 * 2.0f)));
                  if (!((_958 >= 1.0f) || ((_668 <= 0.0f) || (_958 <= 0.0f)))) {
                    _965 = _time.x * _687;
                    _969 = max(_667, 0.0001f);
                    // [sem: expr_sat]
                    _993 = saturate(_958 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_965 * _690) + _664) + (_969 * _876)), (((_965 * _691) + _665) + (_969 * _877)), (((_965 * _692) + _669) + (_969 * _878))), 0.0f)).x) * _668) * saturate(1.0f - abs((_958 * 2.0f) + -1.0f))));
                  } else {
                    _993 = _958;  // [sem: expr_sat]
                  }
                  _998 = (((_731 * _658) * _993) + _633);
                } else {
                  _998 = _633;
                }
              } else {
                _998 = _633;
              }
            } else {
              _998 = _633;
            }
            _999 = (uint)((uint)(_634)) + (uint)(1);
            if ((uint)_999 < (uint)_cloudDensityVolumeInfo.x) {
              _633 = _998;
              _634 = _999;
              continue;
            }
            while(true) {
              _1004 = saturate(_998);  // [sem: _998_sat]
              break;
            }
            break;
          }
        } else {
          _1004 = 0.0f;  // [sem: _998_sat]
        }
        _1007 = (saturate(_1004 + (_622 * _610)) > 0.001f);
        if ((_398 != 0) && _1007) {
          _4395 = _399;
          _4396 = 0;
          _4397 = ((int)((uint)((uint)(_397)) + (uint)(-2)));
          _4398 = _396;
          _4399 = _395;
          _4400 = _394;
          _4401 = _393;
          _4402 = _392;
          _4403 = _391;
          _4404 = _390;
          _4405 = _389;
          _4406 = _388;
          _4407 = _387;
          _4408 = _386;
          _4409 = _385;
          _4410 = _384;
          _4411 = _383;
          _4412 = _382;
          _4413 = 0;
        } else {
          _1013 = ((uint)_397 < (uint)298);
          _1015 = ((int)(uint)(_1007)) ^ 1;
          _1018 = (uint)((uint)(_397)) + (uint)((uint)(select(_1013, _1015, 0)));
          _1020 = _cloudThickness + _cloudAltitude;
          if (!(_411 < _241) || !(((_371 != 0) && (_411 < _370)) || (_424 < _1020))) {
            _1030 = (_viewPos.y > _1020);
          } else {
            _1030 = true;
          }
          _1039 = saturate((_416 + -4000.0f) * 0.001f);  // [sem: expr_sat]
          _1046 = _424 + _earthRadius;
          _1047 = _423 * _423;
          _1049 = _425 * _425;
          _1050 = _1049 + _1047;
          _1052 = sqrt(_1050 + (_1046 * _1046));
          _1053 = _423 / _1052;
          _1054 = _1046 / _1052;
          _1055 = _425 / _1052;
          _1056 = _1052 - _earthRadius;
          if (_1056 > 0.0f) {
            _1059 = dot(float3(_1053, _1054, _1055), float3(_117, _118, _119));
            _1069 = min(max(_1056, 16.0f), (_atmosphereThickness + -16.0f));
            _1077 = max(_1069, 0.0f);
            _1084 = (-0.0f - sqrt((_1077 + (_earthRadius * 2.0f)) * _1077)) / (_1077 + _earthRadius);
            _1085 = (_1059 > _1084);
            if (_1085) {
              _1107 = ((exp2(log2(saturate((_1059 - _1084) / (1.0f - _1084))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1107 = ((exp2(log2(saturate((_1084 - _1059) / (_1084 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _1109 = (exp2(log2(saturate((_1069 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _1116 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1109, _1107, ((1.0f - exp2(-1.1541561f - (dot(float3(_1053, _1054, _1055), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            if (_1085) {
              _1146 = ((exp2(log2(saturate((_1059 - _1084) / (1.0f - _1084))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1146 = ((exp2(log2(saturate((_1084 - _1059) / (_1084 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
            _1152 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1109, _1146, ((1.0f - exp2(-1.1541561f - (dot(float3(_1053, _1054, _1055), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
            _1160 = _1116.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1161 = _1116.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1162 = _1116.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1163 = (_1152.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1164 = (_1152.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1165 = (_1152.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          } else {
            _1160 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1161 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1162 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1163 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1164 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            _1165 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
          }
          _1167 = _423 - _viewPos.x;
          _1168 = _425 - _viewPos.z;
          if (_1039 < 0.9999f) {
            _1171 = _424 - _viewPos.y;
            _1178 = _423 - (_staticShadowPosition[1].x);
            _1179 = _424 - (_staticShadowPosition[1].y);
            _1180 = _425 - (_staticShadowPosition[1].z);
            _1200 = mad((_shadowProjRelativeTexScale[1][0].z), _1180, mad((_shadowProjRelativeTexScale[1][0].y), _1179, ((_shadowProjRelativeTexScale[1][0].x) * _1178))) + (_shadowProjRelativeTexScale[1][0].w);
            _1204 = mad((_shadowProjRelativeTexScale[1][1].z), _1180, mad((_shadowProjRelativeTexScale[1][1].y), _1179, ((_shadowProjRelativeTexScale[1][1].x) * _1178))) + (_shadowProjRelativeTexScale[1][1].w);
            _1208 = mad((_shadowProjRelativeTexScale[1][2].z), _1180, mad((_shadowProjRelativeTexScale[1][2].y), _1179, ((_shadowProjRelativeTexScale[1][2].x) * _1178))) + (_shadowProjRelativeTexScale[1][2].w);
            _1209 = 2.0f / _shadowSizeAndInvSize.y;
            _1210 = 1.0f - _1209;
            if (!(((!(_1200 <= _1210)) || (!(_1200 >= _1209))) || (!(_1204 <= _1210)))) {
              _1221 = (_1208 >= 0.0001f) && ((_1208 <= 1.0f) && (_1204 >= _1209));
              _1228 = select(_1221, _1200, 0.0f);
              _1229 = select(_1221, _1204, 0.0f);
              _1230 = select(_1221, _1208, 0.0f);
              _1231 = select(_1221, 0.0002f, 0.0f);
              _1232 = ((int)(uint)(_1221));
            } else {
              _1228 = 0.0f;
              _1229 = 0.0f;
              _1230 = 0.0f;
              _1231 = 0.0f;
              _1232 = 0;
            }
            _1237 = _423 - (_staticShadowPosition[0].x);
            _1238 = _424 - (_staticShadowPosition[0].y);
            _1239 = _425 - (_staticShadowPosition[0].z);
            _1259 = mad((_shadowProjRelativeTexScale[0][0].z), _1239, mad((_shadowProjRelativeTexScale[0][0].y), _1238, ((_shadowProjRelativeTexScale[0][0].x) * _1237))) + (_shadowProjRelativeTexScale[0][0].w);
            _1263 = mad((_shadowProjRelativeTexScale[0][1].z), _1239, mad((_shadowProjRelativeTexScale[0][1].y), _1238, ((_shadowProjRelativeTexScale[0][1].x) * _1237))) + (_shadowProjRelativeTexScale[0][1].w);
            _1267 = mad((_shadowProjRelativeTexScale[0][2].z), _1239, mad((_shadowProjRelativeTexScale[0][2].y), _1238, ((_shadowProjRelativeTexScale[0][2].x) * _1237))) + (_shadowProjRelativeTexScale[0][2].w);
            if (!(((!(_1259 >= _1209)) || (!(_1259 <= _1210))) || (!(_1263 <= _1210)))) {
              _1278 = (_1267 >= 0.0001f) && ((_1263 >= _1209) && (_1267 <= 1.0f));
              _1286 = select(_1278, _1259, _1228);
              _1287 = select(_1278, _1263, _1229);
              _1288 = select(_1278, _1267, _1230);
              _1289 = select(_1278, 0.0002f, _1231);
              _1290 = select(_1278, 1, _1232);
              _1291 = select(_1278, 0, _1232);
            } else {
              _1286 = _1228;
              _1287 = _1229;
              _1288 = _1230;
              _1289 = _1231;
              _1290 = _1232;
              _1291 = _1232;
            }
            [branch]
            if (!(_1290 == 0)) {
              // [sem: expr_sat]
              _1303 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1286, _1287, ((float)((uint)((uint)(_1291))))), (_1288 - _1289))).x));
            } else {
              _1303 = 1.0f;  // [sem: expr_sat]
            }
            _1323 = mad((_terrainShadowProjRelativeTexScale[0].z), _1168, mad((_terrainShadowProjRelativeTexScale[0].y), _1171, ((_terrainShadowProjRelativeTexScale[0].x) * _1167))) + (_terrainShadowProjRelativeTexScale[0].w);
            _1327 = mad((_terrainShadowProjRelativeTexScale[1].z), _1168, mad((_terrainShadowProjRelativeTexScale[1].y), _1171, ((_terrainShadowProjRelativeTexScale[1].x) * _1167))) + (_terrainShadowProjRelativeTexScale[1].w);
            _1331 = mad((_terrainShadowProjRelativeTexScale[2].z), _1168, mad((_terrainShadowProjRelativeTexScale[2].y), _1171, ((_terrainShadowProjRelativeTexScale[2].x) * _1167))) + (_terrainShadowProjRelativeTexScale[2].w);
            if (saturate(_1323) == _1323) {
              if ((_1331 >= 0.0001f) && ((_1331 <= 1.0f) && (saturate(_1327) == _1327))) {
                // [sem: expr_sat]
                _1350 = saturate(1.0f - ((__3__36__0__0__g_terrainShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2(_1323, _1327), (_1331 + -0.005f))).x));
              } else {
                _1350 = 1.0f;  // [sem: expr_sat]
              }
            } else {
              _1350 = 1.0f;  // [sem: expr_sat]
            }
            _1351 = min(_1303, _1350);
            _1356 = (lerp(_1351, 1.0f, _1039));  // [sem: blended]
          } else {
            _1356 = 1.0f;  // [sem: blended]
          }
          _1365 = max(_1056, 0.01f);
          _1366 = -0.0f - _1365;
          _1375 = exp2((_1366 / _rayleighScaledHeight) * 1.442695f);
          _1376 = exp2((_1366 / _mieScaledHeight) * 1.442695f);
          _1379 = (_1167 * _1167) + (_1168 * _1168);
          _1380 = sqrt(_1379);
          _1384 = max(((_1380 * _1380) + -400000.0f), 0.0f) * 1e-06f;
          _1385 = _cloudAltitude - _1384;
          _1386 = _earthRadius + _424;
          _1392 = ((sqrt((_1386 * _1386) + _1050) - _earthRadius) - _1385) / _cloudThickness;
          if (!((_1392 < 0.0f) || (_1392 > 1.0f))) {
            _1416 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _1417 = _424 - _1385;
            _1433 = _483 / _486;
            _1434 = _1433 * _486;
            _1436 = _1433 * _1416;
            _1452 = (4.0f - (saturate(max((_1380 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
            _1456 = _1434 * 4.355f;
            _1473 = 1.0f - sqrt(saturate((1.0f - _1392) * 1.4285715f));
            _1492 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_483 * _423) - (_1434 * _cloudScroll.x)), ((_1417 * _483) - _1436), ((_483 * _425) - (_1434 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1452 * _423) - (_1456 * _cloudScroll.x)), ((_1452 * _1417) - (_1436 * 4.355f)), ((_1452 * _425) - (_1456 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1392 * 4.0f) * 0.8f) + 0.2f);
            _1499 = (saturate(((saturate(saturate(((_447.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_486 * (_423 - _cloudScroll.x)), ((_1417 * _486) - _1416), (_486 * (_425 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1473 * 0.5f), ((_1473 * _1473) * _1473))) * saturate(_1392 * 10.0f)) - _1492) / (1.0f - _1492)) * _cloudAlpha);
          } else {
            _1499 = 0.0f;
          }
          if (_612) {
            _1509 = saturate(((_1380 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _1509 = 1.0f;  // [sem: expr_sat]
          }
          if (!((_454 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
            _1520 = 0.0f;
            _1521 = 0;
            while(true) {
              _1885 = _1520;
              if (!((((int)((uint)(1) << (_1521 & 31))) & _454) == 0)) {
                _1529 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[0].x;
                _1530 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[1].x;
                _1531 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[2].x;
                _1533 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[0].y;
                _1534 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[1].y;
                _1535 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[2].y;
                _1537 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[0].z;
                _1538 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[1].z;
                _1539 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[2].z;
                _1541 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[0].w;
                _1542 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[1].w;
                _1543 = __3__37__0__0__g_cloudDensityVolumes[_1521]._relativeWorldToLocal[2].w;
                _1545 = __3__37__0__0__g_cloudDensityVolumes[_1521]._shapeParameter.x;
                _1546 = __3__37__0__0__g_cloudDensityVolumes[_1521]._shapeParameter.z;
                _1547 = __3__37__0__0__g_cloudDensityVolumes[_1521]._shapeParameter.w;
                _1549 = __3__37__0__0__g_cloudDensityVolumes[_1521]._macroNoiseParameter.x;
                _1550 = __3__37__0__0__g_cloudDensityVolumes[_1521]._macroNoiseParameter.y;
                _1551 = __3__37__0__0__g_cloudDensityVolumes[_1521]._macroNoiseParameter.z;
                _1552 = __3__37__0__0__g_cloudDensityVolumes[_1521]._macroNoiseParameter.w;
                _1554 = __3__37__0__0__g_cloudDensityVolumes[_1521]._detailNoiseParameter.x;
                _1555 = __3__37__0__0__g_cloudDensityVolumes[_1521]._detailNoiseParameter.y;
                _1556 = __3__37__0__0__g_cloudDensityVolumes[_1521]._detailNoiseParameter.z;
                _1557 = __3__37__0__0__g_cloudDensityVolumes[_1521]._detailNoiseParameter.w;
                _1559 = __3__37__0__0__g_cloudDensityVolumes[_1521]._modeParameter.x;
                _1560 = __3__37__0__0__g_cloudDensityVolumes[_1521]._modeParameter.y;
                _1562 = __3__37__0__0__g_cloudDensityVolumes[_1521]._vortexParameter.x;
                _1563 = __3__37__0__0__g_cloudDensityVolumes[_1521]._vortexParameter.y;
                _1564 = __3__37__0__0__g_cloudDensityVolumes[_1521]._vortexParameter.z;
                _1565 = __3__37__0__0__g_cloudDensityVolumes[_1521]._vortexParameter.w;
                _1567 = __3__37__0__0__g_cloudDensityVolumes[_1521]._spiralParameter.x;
                _1568 = __3__37__0__0__g_cloudDensityVolumes[_1521]._spiralParameter.y;
                _1569 = __3__37__0__0__g_cloudDensityVolumes[_1521]._spiralParameter.z;
                _1570 = __3__37__0__0__g_cloudDensityVolumes[_1521]._spiralParameter.w;
                _1572 = __3__37__0__0__g_cloudDensityVolumes[_1521]._animationParameter.x;
                _1573 = __3__37__0__0__g_cloudDensityVolumes[_1521]._animationParameter.y;
                _1574 = __3__37__0__0__g_cloudDensityVolumes[_1521]._animationParameter.z;
                _1575 = __3__37__0__0__g_cloudDensityVolumes[_1521]._animationParameter.w;
                _1577 = __3__37__0__0__g_cloudDensityVolumes[_1521]._flowParameter.x;
                _1578 = __3__37__0__0__g_cloudDensityVolumes[_1521]._flowParameter.y;
                _1579 = __3__37__0__0__g_cloudDensityVolumes[_1521]._flowParameter.z;
                _1581 = __3__37__0__0__g_cloudDensityVolumes[_1521]._tornadoParameter.x;
                _1582 = __3__37__0__0__g_cloudDensityVolumes[_1521]._tornadoParameter.y;
                _1583 = __3__37__0__0__g_cloudDensityVolumes[_1521]._tornadoParameter.z;
                _1584 = __3__37__0__0__g_cloudDensityVolumes[_1521]._tornadoParameter.w;
                _1588 = mad(_1537, _425, mad(_1533, _424, (_1529 * _423))) + _1541;
                _1592 = mad(_1538, _425, mad(_1534, _424, (_1530 * _423))) + _1542;
                _1596 = mad(_1539, _425, mad(_1535, _424, (_1531 * _423))) + _1543;
                _1598 = abs(_1592);
                _1604 = max((abs(_1588) + -0.5f), max((_1598 + -0.5f), (abs(_1596) + -0.5f)));
                if (!(_1604 >= 0.0f)) {
                  _1607 = __3__37__0__0__g_cloudDensityVolumes[_1521]._shapeParameter.y;
                  _1610 = max((saturate(_1607) * 0.5f), 0.0001f);
                  _1613 = saturate((_1610 + _1604) / _1610);  // [sem: expr_sat]
                  _1618 = 1.0f - ((_1613 * _1613) * (3.0f - (_1613 * 2.0f)));
                  if (!(_1618 <= 0.0f)) {
                    _1627 = sqrt((_1596 * _1596) + (_1588 * _1588)) * 2.0f;
                    _1631 = saturate(1.0f - (_1627 / max(_1563, 0.0001f)));  // [sem: expr_sat]
                    _1632 = _time.x * _1575;
                    _1633 = (_1559 == 1);
                    _1634 = (_1559 == 2);
                    if (_1633) {
                      _1711 = exp2(log2(_1631) * max(_1570, 0.0001f));
                      _1713 = max(_1569, 0.0001f);
                      _1717 = _1592 / (((max(_1568, 0.0001f) - _1713) * _1711) + _1713);
                      _1724 = (((_1631 * _1631) * _1562) * ((_1627 * _1564) + _1592)) - (_1631 * _1632);
                      _1725 = sin(_1724);
                      _1726 = cos(_1724);
                      _1729 = (_1726 * _1588) - (_1725 * _1596);
                      _1732 = (_1726 * _1596) + (_1725 * _1588);
                      if (_1634) {
                        _1734 = 0.0f;
                        _1735 = 1.0f;
                        _1736 = _1711;
                        _1737 = _1631;
                        _1738 = _1729;
                        _1739 = _1717;
                        _1740 = _1732;
                        _1760 = _1735;
                        _1761 = _1736;
                        _1762 = _1737;
                        _1763 = _1738;
                        _1764 = _1739;
                        _1765 = _1740;
                        _1766 = max(_1734, ((_1598 * 2.0f) + -1.0f));
                      } else {
                        _1745 = _1711;
                        _1746 = _1729;
                        _1747 = _1717;
                        _1748 = _1732;
                        _1749 = _1746 * 2.0f;
                        _1750 = _1747 * 2.0f;
                        _1751 = _1748 * 2.0f;
                        _1760 = 1.0f;
                        _1761 = _1745;
                        _1762 = _1631;
                        _1763 = _1746;
                        _1764 = _1747;
                        _1765 = _1748;
                        _1766 = (sqrt(((_1750 * _1750) + (_1749 * _1749)) + (_1751 * _1751)) + -1.0f);
                      }
                    } else {
                      if (_1634) {
                        _1638 = saturate(_1592 + 0.5f);  // [sem: expr_sat]
                        _1644 = max(_1581, 0.0001f);
                        _1647 = ((max(_1582, 0.0001f) - _1644) * exp2(log2(_1638) * max(_1583, 0.0001f))) + _1644;
                        _1649 = atan(_1596 / _1588);
                        _1652 = (_1588 < 0.0f);
                        _1653 = (_1588 == 0.0f);
                        _1654 = (_1596 >= 0.0f);
                        _1655 = (_1596 < 0.0f);
                        _1665 = max(((float)((uint)((uint)(_1560)))), 1.0f);
                        _1666 = _1638 * _1564;
                        _1677 = _1647 * _1557;
                        _1679 = max((_1647 - _1677), 0.0f);
                        _1680 = _1627 - _1679;
                        _1681 = _1679 * (acos(min(max(cos(((((_1666 * -6.2831855f) - _1632) + select((_1653 && _1654), 1.5707964f, select((_1653 && _1655), -1.5707964f, select((_1652 && _1655), (_1649 + -3.1415927f), select((_1652 && _1654), (_1649 + 3.1415927f), _1649))))) * _1665) + _1567), -1.0f), 1.0f)) / _1665);
                        _1686 = _1627 - _1647;
                        _1695 = saturate(1.0f - (_1627 / _1647));  // [sem: expr_sat]
                        _1698 = ((_1695 + _1666) * _1562) - _1632;
                        _1699 = sin(_1698);
                        _1700 = cos(_1698);
                        _1734 = ((saturate(_1565) * (((-0.0f - _1686) - _1677) + sqrt((_1680 * _1680) + (_1681 * _1681)))) + _1686);
                        _1735 = _1647;
                        _1736 = 0.0f;
                        _1737 = _1695;
                        _1738 = ((_1700 * _1588) - (_1699 * _1596));
                        _1739 = _1592;
                        _1740 = ((_1700 * _1596) + (_1699 * _1588));
                        _1760 = _1735;
                        _1761 = _1736;
                        _1762 = _1737;
                        _1763 = _1738;
                        _1764 = _1739;
                        _1765 = _1740;
                        _1766 = max(_1734, ((_1598 * 2.0f) + -1.0f));
                      } else {
                        _1745 = 0.0f;
                        _1746 = _1588;
                        _1747 = _1592;
                        _1748 = _1596;
                        _1749 = _1746 * 2.0f;
                        _1750 = _1747 * 2.0f;
                        _1751 = _1748 * 2.0f;
                        _1760 = 1.0f;
                        _1761 = _1745;
                        _1762 = _1631;
                        _1763 = _1746;
                        _1764 = _1747;
                        _1765 = _1748;
                        _1766 = (sqrt(((_1750 * _1750) + (_1749 * _1749)) + (_1751 * _1751)) + -1.0f);
                      }
                    }
                    if (_1550 > 0.0f) {
                      _1769 = _time.x * _1573;
                      _1773 = max(_1549, 0.0001f);
                      _1791 = (_1766 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1769 * _1577) + _1551) + (_1773 * _1763)), (((_1769 * _1578) + _1552) + (_1773 * _1764)), (((_1769 * _1579) + _1556) + (_1773 * _1765))), 0.0f)).x) + -0.5f) * _1550));
                    } else {
                      _1791 = _1766;
                    }
                    if (_1633 && (_1565 > 0.0f)) {
                      _1796 = atan(_1596 / _1588);
                      _1799 = (_1588 < 0.0f);
                      _1800 = (_1588 == 0.0f);
                      _1801 = (_1596 >= 0.0f);
                      _1802 = (_1596 < 0.0f);
                      _1824 = (_1791 - (((_1565 * 0.5f) * _1762) * cos(((((_1627 * _1564) - _1632) + select((_1800 && _1801), 1.5707964f, select((_1800 && _1802), -1.5707964f, select((_1799 && _1802), (_1796 + -3.1415927f), select((_1799 && _1801), (_1796 + 3.1415927f), _1796))))) * max(((float)((uint)((uint)(_1560)))), 1.0f)) + _1567)));
                    } else {
                      _1824 = _1791;
                    }
                    if (_1634 && (_1584 > 0.0f)) {
                      _1832 = max(_1824, ((_1760 * _1584) - _1627));
                    } else {
                      _1832 = _1824;
                    }
                    _1834 = max(_1547, 0.0001f);
                    _1840 = saturate((((_1546 - (_1761 * _1572)) + _1832) + _1834) / (_1834 * 2.0f));  // [sem: expr_sat]
                    _1845 = 1.0f - ((_1840 * _1840) * (3.0f - (_1840 * 2.0f)));
                    if (!((_1845 >= 1.0f) || ((_1555 <= 0.0f) || (_1845 <= 0.0f)))) {
                      _1852 = _time.x * _1574;
                      _1856 = max(_1554, 0.0001f);
                      // [sem: expr_sat]
                      _1880 = saturate(_1845 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_1852 * _1577) + _1551) + (_1856 * _1763)), (((_1852 * _1578) + _1552) + (_1856 * _1764)), (((_1852 * _1579) + _1556) + (_1856 * _1765))), 0.0f)).x) * _1555) * saturate(1.0f - abs((_1845 * 2.0f) + -1.0f))));
                    } else {
                      _1880 = _1845;  // [sem: expr_sat]
                    }
                    _1885 = (((_1618 * _1545) * _1880) + _1520);
                  } else {
                    _1885 = _1520;
                  }
                } else {
                  _1885 = _1520;
                }
              } else {
                _1885 = _1520;
              }
              _1886 = (uint)((uint)(_1521)) + (uint)(1);
              if ((uint)_1886 < (uint)_cloudDensityVolumeInfo.x) {
                _1520 = _1885;
                _1521 = _1886;
                continue;
              }
              while(true) {
                _1891 = saturate(_1885);  // [sem: _1885_sat]
                break;
              }
              break;
            }
          } else {
            _1891 = 0.0f;  // [sem: _1885_sat]
          }
          _1893 = saturate(_1891 + (_1509 * _1499));  // [sem: expr_sat]
          _1895 = _424 - _viewPos.y;
          _1898 = sqrt(_1379 + (_1895 * _1895));
          _1904 = max(1e-06f, (_heightFogScale * 0.0025f));
          _1907 = _1904 * _cloudScroll.x;
          _1908 = _1904 * _cloudScroll.y;
          _1909 = _1904 * _423;
          _1910 = _1904 * _424;
          _1911 = _1904 * _425;
          // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
          _1937 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1909 * 6.393882f) - (_1907 * 1.871f)), (_1910 * 6.393882f), ((_1911 * 6.393882f) - (_1908 * 1.871f))), 0.0f);
          _1946 = _heightFogFalloff * -0.14426951f;
          _1961 = (((saturate(_1898 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1909 * 0.5127f) - _1907), (_1910 * 0.5127f), ((_1911 * 0.5127f) - _1908)), 0.0f)).x))) * (((0.5f - _1937.x) * saturate((_1898 + -300.0f) * 0.0025f)) + _1937.x)) * ((exp2(_1946 * max(0.001f, (_1365 - _heightFogBaseline))) * _heightFogDensity) + (exp2(_1946 * max(0.001f, ((_1365 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _447.z)))) * _447.y));
          _1962 = _424 - _cloudAltitude;
          _1964 = (_1384 + _1962) / _cloudThickness;
          _1967 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
          _1968 = select(_1967, _sunDirection.x, _moonDirection.x);
          _1969 = select(_1967, _sunDirection.y, _moonDirection.y);
          _1970 = select(_1967, _sunDirection.z, _moonDirection.z);
          _1971 = (_1969 > 0.0f);
          _1980 = ((0.5f - (((float)((int)((int)((int)(uint)(_1971)) - (int)((int)(uint)((int)(_1969 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _1385;
          if (_424 < _1385) {
            _1983 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1968, _1969, _1970));
            _1989 = select((abs(_1983) < 1e-08f), 1e+08f, ((_1980 - dot(float3(0.0f, 1.0f, 0.0f), float3(_423, _424, _425))) / _1983));
            _1995 = ((_1989 * _1968) + _423);
            _1996 = _1980;
            _1997 = ((_1989 * _1970) + _425);
          } else {
            _1995 = _423;
            _1996 = _424;
            _1997 = _425;
          }
          _2011 = _cloudScatteringCoefficient / _distanceScale;
          _2016 = abs(_1969);
          _2018 = saturate(_2016 * 4.0f);  // [sem: expr_sat]
          _2020 = (_2018 * _2018) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1995 - _viewPos.x) * 5e-05f) + 0.5f), ((_1996 - _cloudAltitude) / _cloudThickness), (((_1997 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _2011);
          _2026 = ((1.0f - _2020) * saturate((_1962 - _cloudThickness) * 0.1f)) + _2020;
          _2029 = -0.0f - _2011;
          _2030 = (log2(_2026) * 0.6931472f) / _2029;
          if ((_1893 > 0.001f) && ((_1891 > 0.001f) || ((_1964 >= 0.0f) && (_1964 <= 1.0f)))) {
            _2044 = (_424 - _1385) / _cloudThickness;
            if (((_2044 >= 0.0f) && (_2044 <= 1.0f)) && (_2016 > 0.001f)) {
              _2061 = min(300.0f, (((_1385 - _424) + select(_1971, _cloudThickness, 0.0f)) / _1969));
            } else {
              _2061 = 300.0f;
            }
            if ((_cloudDensityVolumeInfo.y & 1) == 0) {
              _2186 = 0.0f;
              _2187 = 3.4028235e+38f;
              _2188 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
            } else {
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _2073 = 0;
                _2074 = 3.4028235e+38f;
                _2075 = 0.0f;
                _2076 = 0;
                while(true) {
                  _2079 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[0].x;
                  _2080 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[1].x;
                  _2081 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[2].x;
                  _2083 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[0].y;
                  _2084 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[1].y;
                  _2085 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[2].y;
                  _2087 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[0].z;
                  _2088 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[1].z;
                  _2089 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[2].z;
                  _2091 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[0].w;
                  _2092 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[1].w;
                  _2093 = __3__37__0__0__g_cloudDensityVolumes[_2073]._relativeWorldToLocal[2].w;
                  _2097 = mad(_2087, _425, mad(_2083, _424, (_2079 * _423))) + _2091;
                  _2101 = mad(_2088, _425, mad(_2084, _424, (_2080 * _423))) + _2092;
                  _2105 = mad(_2089, _425, mad(_2085, _424, (_2081 * _423))) + _2093;
                  _2108 = mad(_2087, _1970, mad(_2083, _1969, (_2079 * _1968)));
                  _2111 = mad(_2088, _1970, mad(_2084, _1969, (_2080 * _1968)));
                  _2114 = mad(_2089, _1970, mad(_2085, _1969, (_2081 * _1968)));
                  _2115 = abs(_2108);
                  if (!(_2115 < 1e-06f) || !(abs(_2097) > 0.5f)) {
                    _2121 = abs(_2111);
                    if (!(_2121 < 1e-06f) || !(abs(_2101) > 0.5f)) {
                      _2127 = abs(_2114);
                      if (!(_2127 < 1e-06f) || !(abs(_2105) > 0.5f)) {
                        _2142 = max(_2115, 1e-06f) * select((_2108 < 0.0f), -1.0f, 1.0f);
                        _2143 = max(_2121, 1e-06f) * select((_2111 < 0.0f), -1.0f, 1.0f);
                        _2144 = max(_2127, 1e-06f) * select((_2114 < 0.0f), -1.0f, 1.0f);
                        _2148 = (-0.5f - _2097) / _2142;
                        _2149 = (-0.5f - _2101) / _2143;
                        _2150 = (-0.5f - _2105) / _2144;
                        _2154 = (0.5f - _2097) / _2142;
                        _2155 = (0.5f - _2101) / _2143;
                        _2156 = (0.5f - _2105) / _2144;
                        _2167 = max(max(max(min(_2148, _2154), min(_2149, _2155)), min(_2150, _2156)), 0.0f);
                        _2168 = min(min(min(max(_2148, _2154), max(_2149, _2155)), max(_2150, _2156)), 3.4028235e+38f);
                        if (!(_2168 < _2167)) {
                          _2177 = min(_2074, _2167);
                          _2178 = max(_2075, _2168);
                          _2179 = ((int)(_2076) | (int)((int)((uint)(1) << (_2073 & 31))));
                        } else {
                          _2177 = _2074;
                          _2178 = _2075;
                          _2179 = _2076;
                        }
                      } else {
                        _2177 = _2074;
                        _2178 = _2075;
                        _2179 = _2076;
                      }
                    } else {
                      _2177 = _2074;
                      _2178 = _2075;
                      _2179 = _2076;
                    }
                  } else {
                    _2177 = _2074;
                    _2178 = _2075;
                    _2179 = _2076;
                  }
                  _2180 = (uint)((uint)(_2073)) + (uint)(1);
                  if ((uint)_2180 < (uint)_cloudDensityVolumeInfo.x) {
                    _2073 = _2180;
                    _2074 = _2177;
                    _2075 = _2178;
                    _2076 = _2179;
                    continue;
                  }
                  _2186 = _2177;
                  _2187 = _2178;
                  _2188 = _2179;
                  break;
                }
              } else {
                _2186 = 3.4028235e+38f;
                _2187 = 0.0f;
                _2188 = 0;
              }
            }
            _2189 = _2061 * 0.2f;
            _2193 = _2061 * 0.1f;
            _2201 = 0.0f;
            _2202 = _2189;
            _2203 = (_2189 * _1968);
            _2204 = (_2189 * _1969);
            _2205 = (_2189 * _1970);
            _2206 = _2193;
            _2207 = ((_2193 * _1968) + _423);
            _2208 = ((_2193 * _1969) + _424);
            _2209 = ((_2193 * _1970) + _425);
            _2210 = 0;
            while(true) {
              _2214 = select(((_2206 >= _2186) && (_2206 <= _2187)), _2188, 0);
              _2220 = _2207 - _viewPos.x;
              _2221 = _2209 - _viewPos.z;
              _2225 = sqrt((_2220 * _2220) + (_2221 * _2221));
              _2232 = _cloudAltitude - (max(((_2225 * _2225) + -400000.0f), 0.0f) * 1e-06f);
              _2237 = _cloudDetailScale * 0.004f;
              _2240 = _cloudBaseScale * 0.0004f;
              _2245 = _earthRadius + _2208;
              _2254 = ((sqrt(((_2209 * _2209) + (_2207 * _2207)) + (_2245 * _2245)) - _2232) - _earthRadius) / _cloudThickness;
              if (!((_2254 < 0.0f) || (_2254 > 1.0f))) {
                _2297 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2298 = _2208 - _2232;
                _2314 = _2237 / _2240;
                _2315 = _2314 * _2240;
                _2317 = _2314 * _2297;
                _2329 = saturate(max((_2225 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2333 = (4.0f - (_2329 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2337 = _2315 * 4.355f;
                _2356 = 1.0f - sqrt(saturate((1.0f - _2254) * 1.4285715f));
                // [sem: expr_sat]
                _2372 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_2207 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2209 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2240 * (_2207 - _cloudScroll.x)), ((_2240 * _2298) - _2297), (_2240 * (_2209 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2356 * 0.5f), ((_2356 * _2356) * _2356))) * saturate(_2254 * 10.0f);
                _2375 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2333 * _2207) - (_2337 * _cloudScroll.x)), ((_2333 * _2298) - (_2317 * 4.355f)), ((_2333 * _2209) - (_2337 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2237 * _2207) - (_2315 * _cloudScroll.x)), ((_2237 * _2298) - _2317), ((_2237 * _2209) - (_2315 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_2254 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                _2376 = _2375 * ((_2329 * 0.4f) + 0.1f);
                _2388 = (saturate((_2372 - _2375) / (1.0f - _2375)) * _cloudAlpha);
                _2389 = (saturate((_2372 - _2376) / (1.0f - _2376)) * _cloudAlpha);
              } else {
                _2388 = 0.0f;
                _2389 = 0.0f;
              }
              if (!((_2214 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                _2399 = 0.0f;
                _2400 = 0;
                while(true) {
                  _2765 = _2399;
                  if (!((((int)((uint)(1) << (_2400 & 31))) & _2214) == 0)) {
                    _2408 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[0].x;
                    _2409 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[1].x;
                    _2410 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[2].x;
                    _2412 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[0].y;
                    _2413 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[1].y;
                    _2414 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[2].y;
                    _2416 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[0].z;
                    _2417 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[1].z;
                    _2418 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[2].z;
                    _2420 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[0].w;
                    _2421 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[1].w;
                    _2422 = __3__37__0__0__g_cloudDensityVolumes[_2400]._relativeWorldToLocal[2].w;
                    _2424 = __3__37__0__0__g_cloudDensityVolumes[_2400]._shapeParameter.x;
                    _2425 = __3__37__0__0__g_cloudDensityVolumes[_2400]._shapeParameter.z;
                    _2426 = __3__37__0__0__g_cloudDensityVolumes[_2400]._shapeParameter.w;
                    _2428 = __3__37__0__0__g_cloudDensityVolumes[_2400]._macroNoiseParameter.x;
                    _2429 = __3__37__0__0__g_cloudDensityVolumes[_2400]._macroNoiseParameter.y;
                    _2430 = __3__37__0__0__g_cloudDensityVolumes[_2400]._macroNoiseParameter.z;
                    _2431 = __3__37__0__0__g_cloudDensityVolumes[_2400]._macroNoiseParameter.w;
                    _2433 = __3__37__0__0__g_cloudDensityVolumes[_2400]._detailNoiseParameter.x;
                    _2434 = __3__37__0__0__g_cloudDensityVolumes[_2400]._detailNoiseParameter.y;
                    _2435 = __3__37__0__0__g_cloudDensityVolumes[_2400]._detailNoiseParameter.z;
                    _2436 = __3__37__0__0__g_cloudDensityVolumes[_2400]._detailNoiseParameter.w;
                    _2438 = __3__37__0__0__g_cloudDensityVolumes[_2400]._modeParameter.x;
                    _2439 = __3__37__0__0__g_cloudDensityVolumes[_2400]._modeParameter.y;
                    _2441 = __3__37__0__0__g_cloudDensityVolumes[_2400]._vortexParameter.x;
                    _2442 = __3__37__0__0__g_cloudDensityVolumes[_2400]._vortexParameter.y;
                    _2443 = __3__37__0__0__g_cloudDensityVolumes[_2400]._vortexParameter.z;
                    _2444 = __3__37__0__0__g_cloudDensityVolumes[_2400]._vortexParameter.w;
                    _2446 = __3__37__0__0__g_cloudDensityVolumes[_2400]._spiralParameter.x;
                    _2447 = __3__37__0__0__g_cloudDensityVolumes[_2400]._spiralParameter.y;
                    _2448 = __3__37__0__0__g_cloudDensityVolumes[_2400]._spiralParameter.z;
                    _2449 = __3__37__0__0__g_cloudDensityVolumes[_2400]._spiralParameter.w;
                    _2451 = __3__37__0__0__g_cloudDensityVolumes[_2400]._animationParameter.x;
                    _2452 = __3__37__0__0__g_cloudDensityVolumes[_2400]._animationParameter.y;
                    _2453 = __3__37__0__0__g_cloudDensityVolumes[_2400]._animationParameter.z;
                    _2454 = __3__37__0__0__g_cloudDensityVolumes[_2400]._animationParameter.w;
                    _2456 = __3__37__0__0__g_cloudDensityVolumes[_2400]._flowParameter.x;
                    _2457 = __3__37__0__0__g_cloudDensityVolumes[_2400]._flowParameter.y;
                    _2458 = __3__37__0__0__g_cloudDensityVolumes[_2400]._flowParameter.z;
                    _2460 = __3__37__0__0__g_cloudDensityVolumes[_2400]._tornadoParameter.x;
                    _2461 = __3__37__0__0__g_cloudDensityVolumes[_2400]._tornadoParameter.y;
                    _2462 = __3__37__0__0__g_cloudDensityVolumes[_2400]._tornadoParameter.z;
                    _2463 = __3__37__0__0__g_cloudDensityVolumes[_2400]._tornadoParameter.w;
                    _2467 = mad(_2416, _2209, mad(_2412, _2208, (_2408 * _2207))) + _2420;
                    _2471 = mad(_2417, _2209, mad(_2413, _2208, (_2409 * _2207))) + _2421;
                    _2475 = mad(_2418, _2209, mad(_2414, _2208, (_2410 * _2207))) + _2422;
                    _2477 = abs(_2471);
                    _2483 = max((abs(_2467) + -0.5f), max((_2477 + -0.5f), (abs(_2475) + -0.5f)));
                    if (!(_2483 >= 0.0f)) {
                      _2486 = __3__37__0__0__g_cloudDensityVolumes[_2400]._shapeParameter.y;
                      _2489 = max((saturate(_2486) * 0.5f), 0.0001f);
                      _2492 = saturate((_2489 + _2483) / _2489);  // [sem: expr_sat]
                      _2497 = 1.0f - ((_2492 * _2492) * (3.0f - (_2492 * 2.0f)));
                      if (!(_2497 <= 0.0f)) {
                        _2506 = sqrt((_2475 * _2475) + (_2467 * _2467)) * 2.0f;
                        _2510 = saturate(1.0f - (_2506 / max(_2442, 0.0001f)));  // [sem: expr_sat]
                        _2511 = _time.x * _2454;
                        _2512 = (_2438 == 1);
                        _2513 = (_2438 == 2);
                        if (_2512) {
                          _2590 = exp2(log2(_2510) * max(_2449, 0.0001f));
                          _2592 = max(_2448, 0.0001f);
                          _2596 = _2471 / (((max(_2447, 0.0001f) - _2592) * _2590) + _2592);
                          _2603 = (((_2510 * _2510) * _2441) * ((_2506 * _2443) + _2471)) - (_2510 * _2511);
                          _2604 = sin(_2603);
                          _2605 = cos(_2603);
                          _2608 = (_2605 * _2467) - (_2604 * _2475);
                          _2611 = (_2605 * _2475) + (_2604 * _2467);
                          if (_2513) {
                            _2613 = 0.0f;
                            _2614 = 1.0f;
                            _2615 = _2590;
                            _2616 = _2510;
                            _2617 = _2608;
                            _2618 = _2596;
                            _2619 = _2611;
                            _2639 = _2614;
                            _2640 = _2615;
                            _2641 = _2616;
                            _2642 = _2617;
                            _2643 = _2618;
                            _2644 = _2619;
                            _2645 = max(_2613, ((_2477 * 2.0f) + -1.0f));
                          } else {
                            _2624 = _2590;
                            _2625 = _2608;
                            _2626 = _2596;
                            _2627 = _2611;
                            _2628 = _2625 * 2.0f;
                            _2629 = _2626 * 2.0f;
                            _2630 = _2627 * 2.0f;
                            _2639 = 1.0f;
                            _2640 = _2624;
                            _2641 = _2510;
                            _2642 = _2625;
                            _2643 = _2626;
                            _2644 = _2627;
                            _2645 = (sqrt(((_2629 * _2629) + (_2628 * _2628)) + (_2630 * _2630)) + -1.0f);
                          }
                        } else {
                          if (_2513) {
                            _2517 = saturate(_2471 + 0.5f);  // [sem: expr_sat]
                            _2523 = max(_2460, 0.0001f);
                            _2526 = ((max(_2461, 0.0001f) - _2523) * exp2(log2(_2517) * max(_2462, 0.0001f))) + _2523;
                            _2528 = atan(_2475 / _2467);
                            _2531 = (_2467 < 0.0f);
                            _2532 = (_2467 == 0.0f);
                            _2533 = (_2475 >= 0.0f);
                            _2534 = (_2475 < 0.0f);
                            _2544 = max(((float)((uint)((uint)(_2439)))), 1.0f);
                            _2545 = _2517 * _2443;
                            _2556 = _2526 * _2436;
                            _2558 = max((_2526 - _2556), 0.0f);
                            _2559 = _2506 - _2558;
                            _2560 = _2558 * (acos(min(max(cos(((((_2545 * -6.2831855f) - _2511) + select((_2532 && _2533), 1.5707964f, select((_2532 && _2534), -1.5707964f, select((_2531 && _2534), (_2528 + -3.1415927f), select((_2531 && _2533), (_2528 + 3.1415927f), _2528))))) * _2544) + _2446), -1.0f), 1.0f)) / _2544);
                            _2565 = _2506 - _2526;
                            _2574 = saturate(1.0f - (_2506 / _2526));  // [sem: expr_sat]
                            _2577 = ((_2574 + _2545) * _2441) - _2511;
                            _2578 = sin(_2577);
                            _2579 = cos(_2577);
                            _2613 = ((saturate(_2444) * (((-0.0f - _2565) - _2556) + sqrt((_2559 * _2559) + (_2560 * _2560)))) + _2565);
                            _2614 = _2526;
                            _2615 = 0.0f;
                            _2616 = _2574;
                            _2617 = ((_2579 * _2467) - (_2578 * _2475));
                            _2618 = _2471;
                            _2619 = ((_2579 * _2475) + (_2578 * _2467));
                            _2639 = _2614;
                            _2640 = _2615;
                            _2641 = _2616;
                            _2642 = _2617;
                            _2643 = _2618;
                            _2644 = _2619;
                            _2645 = max(_2613, ((_2477 * 2.0f) + -1.0f));
                          } else {
                            _2624 = 0.0f;
                            _2625 = _2467;
                            _2626 = _2471;
                            _2627 = _2475;
                            _2628 = _2625 * 2.0f;
                            _2629 = _2626 * 2.0f;
                            _2630 = _2627 * 2.0f;
                            _2639 = 1.0f;
                            _2640 = _2624;
                            _2641 = _2510;
                            _2642 = _2625;
                            _2643 = _2626;
                            _2644 = _2627;
                            _2645 = (sqrt(((_2629 * _2629) + (_2628 * _2628)) + (_2630 * _2630)) + -1.0f);
                          }
                        }
                        if (_2429 > 0.0f) {
                          _2648 = _time.x * _2452;
                          _2652 = max(_2428, 0.0001f);
                          _2670 = (_2645 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2648 * _2456) + _2430) + (_2652 * _2642)), (((_2648 * _2457) + _2431) + (_2652 * _2643)), (((_2648 * _2458) + _2435) + (_2652 * _2644))), 0.0f)).x) + -0.5f) * _2429));
                        } else {
                          _2670 = _2645;
                        }
                        if (_2512 && (_2444 > 0.0f)) {
                          _2675 = atan(_2475 / _2467);
                          _2678 = (_2467 < 0.0f);
                          _2679 = (_2467 == 0.0f);
                          _2680 = (_2475 >= 0.0f);
                          _2681 = (_2475 < 0.0f);
                          _2703 = (_2670 - (((_2444 * 0.5f) * _2641) * cos(((((_2506 * _2443) - _2511) + select((_2679 && _2680), 1.5707964f, select((_2679 && _2681), -1.5707964f, select((_2678 && _2681), (_2675 + -3.1415927f), select((_2678 && _2680), (_2675 + 3.1415927f), _2675))))) * max(((float)((uint)((uint)(_2439)))), 1.0f)) + _2446)));
                        } else {
                          _2703 = _2670;
                        }
                        if (_2513 && (_2463 > 0.0f)) {
                          _2711 = max(_2703, ((_2639 * _2463) - _2506));
                        } else {
                          _2711 = _2703;
                        }
                        _2713 = max(_2426, 0.0001f);
                        _2719 = saturate((((_2425 - (_2640 * _2451)) + _2711) + _2713) / (_2713 * 2.0f));  // [sem: expr_sat]
                        _2724 = 1.0f - ((_2719 * _2719) * (3.0f - (_2719 * 2.0f)));
                        if (!((_2724 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_2434 <= 0.0f)) || (_2724 <= 0.0f)))) {
                          _2732 = _time.x * _2453;
                          _2736 = max(_2433, 0.0001f);
                          // [sem: expr_sat]
                          _2760 = saturate(_2724 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_2732 * _2456) + _2430) + (_2736 * _2642)), (((_2732 * _2457) + _2431) + (_2736 * _2643)), (((_2732 * _2458) + _2435) + (_2736 * _2644))), 0.0f)).x) * _2434) * saturate(1.0f - abs((_2724 * 2.0f) + -1.0f))));
                        } else {
                          _2760 = _2724;  // [sem: expr_sat]
                        }
                        _2765 = (((_2497 * _2424) * _2760) + _2399);
                      } else {
                        _2765 = _2399;
                      }
                    } else {
                      _2765 = _2399;
                    }
                  } else {
                    _2765 = _2399;
                  }
                  _2766 = (uint)((uint)(_2400)) + (uint)(1);
                  if ((uint)_2766 < (uint)_cloudDensityVolumeInfo.x) {
                    _2399 = _2765;
                    _2400 = _2766;
                    continue;
                  }
                  while(true) {
                    _2771 = saturate(_2765);  // [sem: _2765_sat]
                    break;
                  }
                  break;
                }
              } else {
                _2771 = 0.0f;  // [sem: _2765_sat]
              }
              _2773 = saturate(_2771 + _2389);  // [sem: expr_sat]
              _2789 = (((exp2((((_2201 * -0.0072134747f) * _2202) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_2771 + _2388) - _2773)) + _2773) * _2202) + _2201;
              _2790 = _2206 + _2202;
              _2791 = _2207 + _2203;
              _2792 = _2208 + _2204;
              _2793 = _2209 + _2205;
              _2794 = _2202 * 1.3f;
              _2795 = _2203 * 1.3f;
              _2796 = _2204 * 1.3f;
              _2797 = _2205 * 1.3f;
              _2798 = (int)(_2210) + (int)(1);
              if (!(_2798 == 6)) {
                _2201 = _2789;
                _2202 = _2794;
                _2203 = _2795;
                _2204 = _2796;
                _2205 = _2797;
                _2206 = _2790;
                _2207 = _2791;
                _2208 = _2792;
                _2209 = _2793;
                _2210 = _2798;
                continue;
              }
              _2806 = ((_cloudDensityVolumeInfo.y & 2) != 0);
              // [sem: _3__36__0__0__g_climateTex2_sampleLod]
              _2826 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_423 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_425 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
              _2828 = _423 + 50.0f;
              _2829 = _424 + 200.0f;
              _2830 = _2828 - _viewPos.x;
              _2831 = _425 - _viewPos.z;
              _2835 = sqrt((_2830 * _2830) + (_2831 * _2831));
              _2840 = _cloudAltitude - (max(((_2835 * _2835) + -400000.0f), 0.0f) * 1e-06f);
              _2841 = _earthRadius + _2829;
              _2843 = _2841 * _2841;
              _2849 = ((sqrt(((_2828 * _2828) + _1049) + _2843) - _earthRadius) - _2840) / _cloudThickness;
              if (!((_2849 < 0.0f) || (_2849 > 1.0f))) {
                _2871 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _2872 = _2829 - _2840;
                _2888 = _2237 / _2240;
                _2889 = _2888 * _2240;
                _2891 = _2888 * _2871;
                _2903 = saturate(max((_2835 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _2907 = (4.0f - (_2903 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _2911 = _2889 * 4.355f;
                _2928 = 1.0f - sqrt(saturate((1.0f - _2849) * 1.4285715f));
                _2950 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2237 * _2828) - (_2889 * _cloudScroll.x)), ((_2872 * _2237) - _2891), ((_2237 * _425) - (_2889 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_2903 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2907 * _2828) - (_2911 * _cloudScroll.x)), ((_2907 * _2872) - (_2891 * 4.355f)), ((_2907 * _425) - (_2911 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2849 * 4.0f) * 0.8f) + 0.2f);
                _2957 = (saturate(((saturate(saturate(((_2826.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2240 * (_2828 - _cloudScroll.x)), ((_2872 * _2240) - _2871), (_2240 * (_425 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2928 * 0.5f), ((_2928 * _2928) * _2928))) * saturate(_2849 * 10.0f)) - _2950) / (1.0f - _2950)) * _cloudAlpha);
              } else {
                _2957 = 0.0f;
              }
              _2959 = (_cloudFadeRange > 1e-05f);
              if (_2959) {
                _2969 = saturate(((_2835 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _2969 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _2977 = 0.0f;
                _2978 = 0;
                while(true) {
                  _3341 = _2977;
                  if (!((uint)(_2978 & 16) > (uint)15)) {
                    _2984 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[0].x;
                    _2985 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[1].x;
                    _2986 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[2].x;
                    _2988 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[0].y;
                    _2989 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[1].y;
                    _2990 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[2].y;
                    _2992 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[0].z;
                    _2993 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[1].z;
                    _2994 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[2].z;
                    _2996 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[0].w;
                    _2997 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[1].w;
                    _2998 = __3__37__0__0__g_cloudDensityVolumes[_2978]._relativeWorldToLocal[2].w;
                    _3000 = __3__37__0__0__g_cloudDensityVolumes[_2978]._shapeParameter.x;
                    _3001 = __3__37__0__0__g_cloudDensityVolumes[_2978]._shapeParameter.z;
                    _3002 = __3__37__0__0__g_cloudDensityVolumes[_2978]._shapeParameter.w;
                    _3004 = __3__37__0__0__g_cloudDensityVolumes[_2978]._macroNoiseParameter.x;
                    _3005 = __3__37__0__0__g_cloudDensityVolumes[_2978]._macroNoiseParameter.y;
                    _3006 = __3__37__0__0__g_cloudDensityVolumes[_2978]._macroNoiseParameter.z;
                    _3007 = __3__37__0__0__g_cloudDensityVolumes[_2978]._macroNoiseParameter.w;
                    _3009 = __3__37__0__0__g_cloudDensityVolumes[_2978]._detailNoiseParameter.x;
                    _3010 = __3__37__0__0__g_cloudDensityVolumes[_2978]._detailNoiseParameter.y;
                    _3011 = __3__37__0__0__g_cloudDensityVolumes[_2978]._detailNoiseParameter.z;
                    _3012 = __3__37__0__0__g_cloudDensityVolumes[_2978]._detailNoiseParameter.w;
                    _3014 = __3__37__0__0__g_cloudDensityVolumes[_2978]._modeParameter.x;
                    _3015 = __3__37__0__0__g_cloudDensityVolumes[_2978]._modeParameter.y;
                    _3017 = __3__37__0__0__g_cloudDensityVolumes[_2978]._vortexParameter.x;
                    _3018 = __3__37__0__0__g_cloudDensityVolumes[_2978]._vortexParameter.y;
                    _3019 = __3__37__0__0__g_cloudDensityVolumes[_2978]._vortexParameter.z;
                    _3020 = __3__37__0__0__g_cloudDensityVolumes[_2978]._vortexParameter.w;
                    _3022 = __3__37__0__0__g_cloudDensityVolumes[_2978]._spiralParameter.x;
                    _3023 = __3__37__0__0__g_cloudDensityVolumes[_2978]._spiralParameter.y;
                    _3024 = __3__37__0__0__g_cloudDensityVolumes[_2978]._spiralParameter.z;
                    _3025 = __3__37__0__0__g_cloudDensityVolumes[_2978]._spiralParameter.w;
                    _3027 = __3__37__0__0__g_cloudDensityVolumes[_2978]._animationParameter.x;
                    _3028 = __3__37__0__0__g_cloudDensityVolumes[_2978]._animationParameter.y;
                    _3029 = __3__37__0__0__g_cloudDensityVolumes[_2978]._animationParameter.z;
                    _3030 = __3__37__0__0__g_cloudDensityVolumes[_2978]._animationParameter.w;
                    _3032 = __3__37__0__0__g_cloudDensityVolumes[_2978]._flowParameter.x;
                    _3033 = __3__37__0__0__g_cloudDensityVolumes[_2978]._flowParameter.y;
                    _3034 = __3__37__0__0__g_cloudDensityVolumes[_2978]._flowParameter.z;
                    _3036 = __3__37__0__0__g_cloudDensityVolumes[_2978]._tornadoParameter.x;
                    _3037 = __3__37__0__0__g_cloudDensityVolumes[_2978]._tornadoParameter.y;
                    _3038 = __3__37__0__0__g_cloudDensityVolumes[_2978]._tornadoParameter.z;
                    _3039 = __3__37__0__0__g_cloudDensityVolumes[_2978]._tornadoParameter.w;
                    _3043 = mad(_2992, _425, mad(_2988, _2829, (_2984 * _2828))) + _2996;
                    _3047 = mad(_2993, _425, mad(_2989, _2829, (_2985 * _2828))) + _2997;
                    _3051 = mad(_2994, _425, mad(_2990, _2829, (_2986 * _2828))) + _2998;
                    _3053 = abs(_3047);
                    _3059 = max((abs(_3043) + -0.5f), max((_3053 + -0.5f), (abs(_3051) + -0.5f)));
                    if (!(_3059 >= 0.0f)) {
                      _3062 = __3__37__0__0__g_cloudDensityVolumes[_2978]._shapeParameter.y;
                      _3065 = max((saturate(_3062) * 0.5f), 0.0001f);
                      _3068 = saturate((_3065 + _3059) / _3065);  // [sem: expr_sat]
                      _3073 = 1.0f - ((_3068 * _3068) * (3.0f - (_3068 * 2.0f)));
                      if (!(_3073 <= 0.0f)) {
                        _3082 = sqrt((_3051 * _3051) + (_3043 * _3043)) * 2.0f;
                        _3086 = saturate(1.0f - (_3082 / max(_3018, 0.0001f)));  // [sem: expr_sat]
                        _3087 = _time.x * _3030;
                        _3088 = (_3014 == 1);
                        _3089 = (_3014 == 2);
                        if (_3088) {
                          _3166 = exp2(log2(_3086) * max(_3025, 0.0001f));
                          _3168 = max(_3024, 0.0001f);
                          _3172 = _3047 / (((max(_3023, 0.0001f) - _3168) * _3166) + _3168);
                          _3179 = (((_3086 * _3086) * _3017) * ((_3082 * _3019) + _3047)) - (_3086 * _3087);
                          _3180 = sin(_3179);
                          _3181 = cos(_3179);
                          _3184 = (_3181 * _3043) - (_3180 * _3051);
                          _3187 = (_3181 * _3051) + (_3180 * _3043);
                          if (_3089) {
                            _3189 = 0.0f;
                            _3190 = 1.0f;
                            _3191 = _3166;
                            _3192 = _3086;
                            _3193 = _3184;
                            _3194 = _3172;
                            _3195 = _3187;
                            _3215 = _3190;
                            _3216 = _3191;
                            _3217 = _3192;
                            _3218 = _3193;
                            _3219 = _3194;
                            _3220 = _3195;
                            _3221 = max(_3189, ((_3053 * 2.0f) + -1.0f));
                          } else {
                            _3200 = _3166;
                            _3201 = _3184;
                            _3202 = _3172;
                            _3203 = _3187;
                            _3204 = _3201 * 2.0f;
                            _3205 = _3202 * 2.0f;
                            _3206 = _3203 * 2.0f;
                            _3215 = 1.0f;
                            _3216 = _3200;
                            _3217 = _3086;
                            _3218 = _3201;
                            _3219 = _3202;
                            _3220 = _3203;
                            _3221 = (sqrt(((_3205 * _3205) + (_3204 * _3204)) + (_3206 * _3206)) + -1.0f);
                          }
                        } else {
                          if (_3089) {
                            _3093 = saturate(_3047 + 0.5f);  // [sem: expr_sat]
                            _3099 = max(_3036, 0.0001f);
                            _3102 = ((max(_3037, 0.0001f) - _3099) * exp2(log2(_3093) * max(_3038, 0.0001f))) + _3099;
                            _3104 = atan(_3051 / _3043);
                            _3107 = (_3043 < 0.0f);
                            _3108 = (_3043 == 0.0f);
                            _3109 = (_3051 >= 0.0f);
                            _3110 = (_3051 < 0.0f);
                            _3120 = max(((float)((uint)((uint)(_3015)))), 1.0f);
                            _3121 = _3093 * _3019;
                            _3132 = _3102 * _3012;
                            _3134 = max((_3102 - _3132), 0.0f);
                            _3135 = _3082 - _3134;
                            _3136 = _3134 * (acos(min(max(cos(((((_3121 * -6.2831855f) - _3087) + select((_3108 && _3109), 1.5707964f, select((_3108 && _3110), -1.5707964f, select((_3107 && _3110), (_3104 + -3.1415927f), select((_3107 && _3109), (_3104 + 3.1415927f), _3104))))) * _3120) + _3022), -1.0f), 1.0f)) / _3120);
                            _3141 = _3082 - _3102;
                            _3150 = saturate(1.0f - (_3082 / _3102));  // [sem: expr_sat]
                            _3153 = ((_3150 + _3121) * _3017) - _3087;
                            _3154 = sin(_3153);
                            _3155 = cos(_3153);
                            _3189 = ((saturate(_3020) * (((-0.0f - _3141) - _3132) + sqrt((_3135 * _3135) + (_3136 * _3136)))) + _3141);
                            _3190 = _3102;
                            _3191 = 0.0f;
                            _3192 = _3150;
                            _3193 = ((_3155 * _3043) - (_3154 * _3051));
                            _3194 = _3047;
                            _3195 = ((_3155 * _3051) + (_3154 * _3043));
                            _3215 = _3190;
                            _3216 = _3191;
                            _3217 = _3192;
                            _3218 = _3193;
                            _3219 = _3194;
                            _3220 = _3195;
                            _3221 = max(_3189, ((_3053 * 2.0f) + -1.0f));
                          } else {
                            _3200 = 0.0f;
                            _3201 = _3043;
                            _3202 = _3047;
                            _3203 = _3051;
                            _3204 = _3201 * 2.0f;
                            _3205 = _3202 * 2.0f;
                            _3206 = _3203 * 2.0f;
                            _3215 = 1.0f;
                            _3216 = _3200;
                            _3217 = _3086;
                            _3218 = _3201;
                            _3219 = _3202;
                            _3220 = _3203;
                            _3221 = (sqrt(((_3205 * _3205) + (_3204 * _3204)) + (_3206 * _3206)) + -1.0f);
                          }
                        }
                        if (_3005 > 0.0f) {
                          _3224 = _time.x * _3028;
                          _3228 = max(_3004, 0.0001f);
                          _3246 = (_3221 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3224 * _3032) + _3006) + (_3228 * _3218)), (((_3224 * _3033) + _3007) + (_3228 * _3219)), (((_3224 * _3034) + _3011) + (_3228 * _3220))), 0.0f)).x) + -0.5f) * _3005));
                        } else {
                          _3246 = _3221;
                        }
                        if (_3088 && (_3020 > 0.0f)) {
                          _3251 = atan(_3051 / _3043);
                          _3254 = (_3043 < 0.0f);
                          _3255 = (_3043 == 0.0f);
                          _3256 = (_3051 >= 0.0f);
                          _3257 = (_3051 < 0.0f);
                          _3279 = (_3246 - (((_3020 * 0.5f) * _3217) * cos(((((_3082 * _3019) - _3087) + select((_3255 && _3256), 1.5707964f, select((_3255 && _3257), -1.5707964f, select((_3254 && _3257), (_3251 + -3.1415927f), select((_3254 && _3256), (_3251 + 3.1415927f), _3251))))) * max(((float)((uint)((uint)(_3015)))), 1.0f)) + _3022)));
                        } else {
                          _3279 = _3246;
                        }
                        if (_3089 && (_3039 > 0.0f)) {
                          _3287 = max(_3279, ((_3215 * _3039) - _3082));
                        } else {
                          _3287 = _3279;
                        }
                        _3289 = max(_3002, 0.0001f);
                        _3295 = saturate((((_3001 - (_3216 * _3027)) + _3287) + _3289) / (_3289 * 2.0f));  // [sem: expr_sat]
                        _3300 = 1.0f - ((_3295 * _3295) * (3.0f - (_3295 * 2.0f)));
                        if (!((_3300 >= 1.0f) || ((_2806 || (_3010 <= 0.0f)) || (_3300 <= 0.0f)))) {
                          _3308 = _time.x * _3029;
                          _3312 = max(_3009, 0.0001f);
                          // [sem: expr_sat]
                          _3336 = saturate(_3300 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3308 * _3032) + _3006) + (_3312 * _3218)), (((_3308 * _3033) + _3007) + (_3312 * _3219)), (((_3308 * _3034) + _3011) + (_3312 * _3220))), 0.0f)).x) * _3010) * saturate(1.0f - abs((_3300 * 2.0f) + -1.0f))));
                        } else {
                          _3336 = _3300;  // [sem: expr_sat]
                        }
                        _3341 = (((_3073 * _3000) * _3336) + _2977);
                      } else {
                        _3341 = _2977;
                      }
                    } else {
                      _3341 = _2977;
                    }
                  } else {
                    _3341 = _2977;
                  }
                  _3342 = (uint)((uint)(_2978)) + (uint)(1);
                  if ((uint)_3342 < (uint)_cloudDensityVolumeInfo.x) {
                    _2977 = _3341;
                    _2978 = _3342;
                    continue;
                  }
                  while(true) {
                    _3347 = saturate(_3341);  // [sem: _3341_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3347 = 0.0f;  // [sem: _3341_sat]
              }
              _3350 = _425 + -50.0f;
              _3351 = _423 - _viewPos.x;
              _3352 = _3350 - _viewPos.z;
              _3356 = sqrt((_3351 * _3351) + (_3352 * _3352));
              _3361 = _cloudAltitude - (max(((_3356 * _3356) + -400000.0f), 0.0f) * 1e-06f);
              _3368 = ((sqrt(((_3350 * _3350) + _1047) + _2843) - _earthRadius) - _3361) / _cloudThickness;
              if (!((_3368 < 0.0f) || (_3368 > 1.0f))) {
                _3390 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _3391 = _2829 - _3361;
                _3407 = _2237 / _2240;
                _3408 = _3407 * _2240;
                _3410 = _3407 * _3390;
                _3422 = saturate(max((_3356 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                _3426 = (4.0f - (_3422 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                _3430 = _3408 * 4.355f;
                _3447 = 1.0f - sqrt(saturate((1.0f - _3368) * 1.4285715f));
                _3469 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2237 * _423) - (_3408 * _cloudScroll.x)), ((_3391 * _2237) - _3410), ((_2237 * _3350) - (_3408 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_3422 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3426 * _423) - (_3430 * _cloudScroll.x)), ((_3426 * _3391) - (_3410 * 4.355f)), ((_3426 * _3350) - (_3430 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3368 * 4.0f) * 0.8f) + 0.2f);
                _3476 = (saturate(((saturate(saturate(((_2826.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2240 * (_423 - _cloudScroll.x)), ((_3391 * _2240) - _3390), (_2240 * (_3350 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3447 * 0.5f), ((_3447 * _3447) * _3447))) * saturate(_3368 * 10.0f)) - _3469) / (1.0f - _3469)) * _cloudAlpha);
              } else {
                _3476 = 0.0f;
              }
              if (_2959) {
                _3486 = saturate(((_3356 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _3486 = 1.0f;  // [sem: expr_sat]
              }
              if (!(_cloudDensityVolumeInfo.x == 0)) {
                _3495 = 0.0f;
                _3496 = 0;
                while(true) {
                  _3859 = _3495;
                  if (!((uint)(_3496 & 16) > (uint)15)) {
                    _3502 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[0].x;
                    _3503 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[1].x;
                    _3504 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[2].x;
                    _3506 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[0].y;
                    _3507 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[1].y;
                    _3508 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[2].y;
                    _3510 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[0].z;
                    _3511 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[1].z;
                    _3512 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[2].z;
                    _3514 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[0].w;
                    _3515 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[1].w;
                    _3516 = __3__37__0__0__g_cloudDensityVolumes[_3496]._relativeWorldToLocal[2].w;
                    _3518 = __3__37__0__0__g_cloudDensityVolumes[_3496]._shapeParameter.x;
                    _3519 = __3__37__0__0__g_cloudDensityVolumes[_3496]._shapeParameter.z;
                    _3520 = __3__37__0__0__g_cloudDensityVolumes[_3496]._shapeParameter.w;
                    _3522 = __3__37__0__0__g_cloudDensityVolumes[_3496]._macroNoiseParameter.x;
                    _3523 = __3__37__0__0__g_cloudDensityVolumes[_3496]._macroNoiseParameter.y;
                    _3524 = __3__37__0__0__g_cloudDensityVolumes[_3496]._macroNoiseParameter.z;
                    _3525 = __3__37__0__0__g_cloudDensityVolumes[_3496]._macroNoiseParameter.w;
                    _3527 = __3__37__0__0__g_cloudDensityVolumes[_3496]._detailNoiseParameter.x;
                    _3528 = __3__37__0__0__g_cloudDensityVolumes[_3496]._detailNoiseParameter.y;
                    _3529 = __3__37__0__0__g_cloudDensityVolumes[_3496]._detailNoiseParameter.z;
                    _3530 = __3__37__0__0__g_cloudDensityVolumes[_3496]._detailNoiseParameter.w;
                    _3532 = __3__37__0__0__g_cloudDensityVolumes[_3496]._modeParameter.x;
                    _3533 = __3__37__0__0__g_cloudDensityVolumes[_3496]._modeParameter.y;
                    _3535 = __3__37__0__0__g_cloudDensityVolumes[_3496]._vortexParameter.x;
                    _3536 = __3__37__0__0__g_cloudDensityVolumes[_3496]._vortexParameter.y;
                    _3537 = __3__37__0__0__g_cloudDensityVolumes[_3496]._vortexParameter.z;
                    _3538 = __3__37__0__0__g_cloudDensityVolumes[_3496]._vortexParameter.w;
                    _3540 = __3__37__0__0__g_cloudDensityVolumes[_3496]._spiralParameter.x;
                    _3541 = __3__37__0__0__g_cloudDensityVolumes[_3496]._spiralParameter.y;
                    _3542 = __3__37__0__0__g_cloudDensityVolumes[_3496]._spiralParameter.z;
                    _3543 = __3__37__0__0__g_cloudDensityVolumes[_3496]._spiralParameter.w;
                    _3545 = __3__37__0__0__g_cloudDensityVolumes[_3496]._animationParameter.x;
                    _3546 = __3__37__0__0__g_cloudDensityVolumes[_3496]._animationParameter.y;
                    _3547 = __3__37__0__0__g_cloudDensityVolumes[_3496]._animationParameter.z;
                    _3548 = __3__37__0__0__g_cloudDensityVolumes[_3496]._animationParameter.w;
                    _3550 = __3__37__0__0__g_cloudDensityVolumes[_3496]._flowParameter.x;
                    _3551 = __3__37__0__0__g_cloudDensityVolumes[_3496]._flowParameter.y;
                    _3552 = __3__37__0__0__g_cloudDensityVolumes[_3496]._flowParameter.z;
                    _3554 = __3__37__0__0__g_cloudDensityVolumes[_3496]._tornadoParameter.x;
                    _3555 = __3__37__0__0__g_cloudDensityVolumes[_3496]._tornadoParameter.y;
                    _3556 = __3__37__0__0__g_cloudDensityVolumes[_3496]._tornadoParameter.z;
                    _3557 = __3__37__0__0__g_cloudDensityVolumes[_3496]._tornadoParameter.w;
                    _3561 = mad(_3510, _3350, mad(_3506, _2829, (_3502 * _423))) + _3514;
                    _3565 = mad(_3511, _3350, mad(_3507, _2829, (_3503 * _423))) + _3515;
                    _3569 = mad(_3512, _3350, mad(_3508, _2829, (_3504 * _423))) + _3516;
                    _3571 = abs(_3565);
                    _3577 = max((abs(_3561) + -0.5f), max((_3571 + -0.5f), (abs(_3569) + -0.5f)));
                    if (!(_3577 >= 0.0f)) {
                      _3580 = __3__37__0__0__g_cloudDensityVolumes[_3496]._shapeParameter.y;
                      _3583 = max((saturate(_3580) * 0.5f), 0.0001f);
                      _3586 = saturate((_3583 + _3577) / _3583);  // [sem: expr_sat]
                      _3591 = 1.0f - ((_3586 * _3586) * (3.0f - (_3586 * 2.0f)));
                      if (!(_3591 <= 0.0f)) {
                        _3600 = sqrt((_3569 * _3569) + (_3561 * _3561)) * 2.0f;
                        _3604 = saturate(1.0f - (_3600 / max(_3536, 0.0001f)));  // [sem: expr_sat]
                        _3605 = _time.x * _3548;
                        _3606 = (_3532 == 1);
                        _3607 = (_3532 == 2);
                        if (_3606) {
                          _3684 = exp2(log2(_3604) * max(_3543, 0.0001f));
                          _3686 = max(_3542, 0.0001f);
                          _3690 = _3565 / (((max(_3541, 0.0001f) - _3686) * _3684) + _3686);
                          _3697 = (((_3604 * _3604) * _3535) * ((_3600 * _3537) + _3565)) - (_3604 * _3605);
                          _3698 = sin(_3697);
                          _3699 = cos(_3697);
                          _3702 = (_3699 * _3561) - (_3698 * _3569);
                          _3705 = (_3699 * _3569) + (_3698 * _3561);
                          if (_3607) {
                            _3707 = 0.0f;
                            _3708 = 1.0f;
                            _3709 = _3684;
                            _3710 = _3604;
                            _3711 = _3702;
                            _3712 = _3690;
                            _3713 = _3705;
                            _3733 = _3708;
                            _3734 = _3709;
                            _3735 = _3710;
                            _3736 = _3711;
                            _3737 = _3712;
                            _3738 = _3713;
                            _3739 = max(_3707, ((_3571 * 2.0f) + -1.0f));
                          } else {
                            _3718 = _3684;
                            _3719 = _3702;
                            _3720 = _3690;
                            _3721 = _3705;
                            _3722 = _3719 * 2.0f;
                            _3723 = _3720 * 2.0f;
                            _3724 = _3721 * 2.0f;
                            _3733 = 1.0f;
                            _3734 = _3718;
                            _3735 = _3604;
                            _3736 = _3719;
                            _3737 = _3720;
                            _3738 = _3721;
                            _3739 = (sqrt(((_3723 * _3723) + (_3722 * _3722)) + (_3724 * _3724)) + -1.0f);
                          }
                        } else {
                          if (_3607) {
                            _3611 = saturate(_3565 + 0.5f);  // [sem: expr_sat]
                            _3617 = max(_3554, 0.0001f);
                            _3620 = ((max(_3555, 0.0001f) - _3617) * exp2(log2(_3611) * max(_3556, 0.0001f))) + _3617;
                            _3622 = atan(_3569 / _3561);
                            _3625 = (_3561 < 0.0f);
                            _3626 = (_3561 == 0.0f);
                            _3627 = (_3569 >= 0.0f);
                            _3628 = (_3569 < 0.0f);
                            _3638 = max(((float)((uint)((uint)(_3533)))), 1.0f);
                            _3639 = _3611 * _3537;
                            _3650 = _3620 * _3530;
                            _3652 = max((_3620 - _3650), 0.0f);
                            _3653 = _3600 - _3652;
                            _3654 = _3652 * (acos(min(max(cos(((((_3639 * -6.2831855f) - _3605) + select((_3626 && _3627), 1.5707964f, select((_3626 && _3628), -1.5707964f, select((_3625 && _3628), (_3622 + -3.1415927f), select((_3625 && _3627), (_3622 + 3.1415927f), _3622))))) * _3638) + _3540), -1.0f), 1.0f)) / _3638);
                            _3659 = _3600 - _3620;
                            _3668 = saturate(1.0f - (_3600 / _3620));  // [sem: expr_sat]
                            _3671 = ((_3668 + _3639) * _3535) - _3605;
                            _3672 = sin(_3671);
                            _3673 = cos(_3671);
                            _3707 = ((saturate(_3538) * (((-0.0f - _3659) - _3650) + sqrt((_3653 * _3653) + (_3654 * _3654)))) + _3659);
                            _3708 = _3620;
                            _3709 = 0.0f;
                            _3710 = _3668;
                            _3711 = ((_3673 * _3561) - (_3672 * _3569));
                            _3712 = _3565;
                            _3713 = ((_3673 * _3569) + (_3672 * _3561));
                            _3733 = _3708;
                            _3734 = _3709;
                            _3735 = _3710;
                            _3736 = _3711;
                            _3737 = _3712;
                            _3738 = _3713;
                            _3739 = max(_3707, ((_3571 * 2.0f) + -1.0f));
                          } else {
                            _3718 = 0.0f;
                            _3719 = _3561;
                            _3720 = _3565;
                            _3721 = _3569;
                            _3722 = _3719 * 2.0f;
                            _3723 = _3720 * 2.0f;
                            _3724 = _3721 * 2.0f;
                            _3733 = 1.0f;
                            _3734 = _3718;
                            _3735 = _3604;
                            _3736 = _3719;
                            _3737 = _3720;
                            _3738 = _3721;
                            _3739 = (sqrt(((_3723 * _3723) + (_3722 * _3722)) + (_3724 * _3724)) + -1.0f);
                          }
                        }
                        if (_3523 > 0.0f) {
                          _3742 = _time.x * _3546;
                          _3746 = max(_3522, 0.0001f);
                          _3764 = (_3739 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3742 * _3550) + _3524) + (_3746 * _3736)), (((_3742 * _3551) + _3525) + (_3746 * _3737)), (((_3742 * _3552) + _3529) + (_3746 * _3738))), 0.0f)).x) + -0.5f) * _3523));
                        } else {
                          _3764 = _3739;
                        }
                        if (_3606 && (_3538 > 0.0f)) {
                          _3769 = atan(_3569 / _3561);
                          _3772 = (_3561 < 0.0f);
                          _3773 = (_3561 == 0.0f);
                          _3774 = (_3569 >= 0.0f);
                          _3775 = (_3569 < 0.0f);
                          _3797 = (_3764 - (((_3538 * 0.5f) * _3735) * cos(((((_3600 * _3537) - _3605) + select((_3773 && _3774), 1.5707964f, select((_3773 && _3775), -1.5707964f, select((_3772 && _3775), (_3769 + -3.1415927f), select((_3772 && _3774), (_3769 + 3.1415927f), _3769))))) * max(((float)((uint)((uint)(_3533)))), 1.0f)) + _3540)));
                        } else {
                          _3797 = _3764;
                        }
                        if (_3607 && (_3557 > 0.0f)) {
                          _3805 = max(_3797, ((_3733 * _3557) - _3600));
                        } else {
                          _3805 = _3797;
                        }
                        _3807 = max(_3520, 0.0001f);
                        _3813 = saturate((((_3519 - (_3734 * _3545)) + _3805) + _3807) / (_3807 * 2.0f));  // [sem: expr_sat]
                        _3818 = 1.0f - ((_3813 * _3813) * (3.0f - (_3813 * 2.0f)));
                        if (!((_3818 >= 1.0f) || ((_2806 || (_3528 <= 0.0f)) || (_3818 <= 0.0f)))) {
                          _3826 = _time.x * _3547;
                          _3830 = max(_3527, 0.0001f);
                          // [sem: expr_sat]
                          _3854 = saturate(_3818 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_3826 * _3550) + _3524) + (_3830 * _3736)), (((_3826 * _3551) + _3525) + (_3830 * _3737)), (((_3826 * _3552) + _3529) + (_3830 * _3738))), 0.0f)).x) * _3528) * saturate(1.0f - abs((_3818 * 2.0f) + -1.0f))));
                        } else {
                          _3854 = _3818;  // [sem: expr_sat]
                        }
                        _3859 = (((_3591 * _3518) * _3854) + _3495);
                      } else {
                        _3859 = _3495;
                      }
                    } else {
                      _3859 = _3495;
                    }
                  } else {
                    _3859 = _3495;
                  }
                  _3860 = (uint)((uint)(_3496)) + (uint)(1);
                  if ((uint)_3860 < (uint)_cloudDensityVolumeInfo.x) {
                    _3495 = _3859;
                    _3496 = _3860;
                    continue;
                  }
                  while(true) {
                    _3865 = saturate(_3859);  // [sem: _3859_sat]
                    break;
                  }
                  break;
                }
              } else {
                _3865 = 0.0f;  // [sem: _3859_sat]
              }
              _3872 = max(_2030, (_2789 * _distanceScale));
              _3873 = ((_distanceScale * 20.0f) * (saturate(_3865 + (_3486 * _3476)) + saturate(_3347 + (_2969 * _2957))));
              break;
            }
          } else {
            _3872 = _2030;
            _3873 = ((log2(max(_2026, 0.5f)) * 0.6931472f) / _2029);
          }
          _3874 = dot(float3(_1053, _1054, _1055), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _3878 = min(max(_1365, 16.0f), (_atmosphereThickness + -16.0f));
          _3886 = max(_3878, 0.0f);
          _3895 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3886) * _3886)) / (_earthRadius + _3886);
          if (_3874 > _3895) {
            _3918 = ((exp2(log2(saturate((_3874 - _3895) / (1.0f - _3895))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3918 = ((exp2(log2(saturate((_3895 - _3874) / (_3895 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _3920 = (exp2(log2(saturate((_3878 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _3923 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3920, _3918), 0.0f);
          _3926 = dot(float3(_1053, _1054, _1055), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_3926 > _3895) {
            _3949 = ((exp2(log2(saturate((_3926 - _3895) / (1.0f - _3895))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3949 = ((exp2(log2(saturate((_3895 - _3926) / (_3895 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _3950 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3920, _3949), 0.0f);
          _3953 = _1893 * saturate((1.0f - saturate(_416 / _240)) * 10.0f);
          _3958 = _419 * 0.5f;
          _3963 = ((_1375 + _386) * _3958) + _390;
          _3964 = ((_1376 + _385) * _3958) + _389;
          _3965 = ((_3953 + _384) * _3958) + _388;
          _3966 = ((_1961 + _383) * _3958) + _387;
          _3967 = _3966 + _3965;
          _3968 = _3923.x + _3963;
          _3975 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
          _3978 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
          _3980 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
          _3987 = _mieAerosolDensity * 2e-05f;
          _3988 = _3987 * (_mieAerosolAbsorption + 1.0f);
          _3989 = _3988 * (_3923.y + _3964);
          _3998 = _cloudScatteringCoefficient / _distanceScale;
          _3999 = _3998 * (_3872 + _3967);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _4000 = (_3975 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _4001 = _4000 * _3968;
          _4002 = _3999 + _3989;
          _4004 = (_3978 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _4005 = _4004 * _3968;
          _4007 = (_3980 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _4008 = _4007 * _3968;
          _4013 = exp2((_4001 + _4002) * -1.442695f);
          _4014 = exp2((_4005 + _4002) * -1.442695f);
          _4015 = exp2((_4008 + _4002) * -1.442695f);
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
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
          //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
          //              no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor = CloudReddeningFactor((_3872 + _3998), _dawnDuskFactor, false);
          _4013 *= 1.f;               // R unchanged
          _4014 *= _cloudRedFactor;   // G attenuated
          _4015 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _4028 = ((_4014 * 0.33951f) + (_4013 * 0.61312f)) + (_4015 * 0.04737f);
          _4029 = ((_4014 * 0.91636f) + (_4013 * 0.0702f)) + (_4015 * 0.01345f);
          _4030 = ((_4014 * 0.10958f) + (_4013 * 0.02062f)) + (_4015 * 0.8698f);
          _4031 = _1376 * _1356;
          _4032 = _4028 * _4031;
          _4033 = _4029 * _4031;
          _4034 = _4030 * _4031;
          _4035 = _3998 * _distanceScale;
          _4042 = exp2(log2(1.0f - exp2((_4035 * -14.42695f) * _3953)) * 1.25f);
          _4046 = 1.0f - exp2((_4035 * -288.539f) * _1961);
          _4050 = _1375 * 1.9607843e-07f;
          _4052 = ((_185 * 0.059683103f) * _1356) * _4050;
          _4060 = _miePhaseConst * _miePhaseConst;
          _4066 = _4060 + 1.0f;
          _4073 = (((1.0f - _4060) * 3.0f) / ((_4060 + 2.0f) * 2.0f)) * 0.07957747f;
          // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
          // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
          [branch]
          if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
            float _rndx_mie_g2_4079 = _boostedMieG * _boostedMieG;
            float _rndx_mie_g2p1_4079 = _rndx_mie_g2_4079 + 1.0f;
            float _rndx_mie_norm_4079 = (((1.0f - _rndx_mie_g2_4079) * 3.0f) / ((_rndx_mie_g2_4079 + 2.0f) * 2.0f)) * 0.07957747f;
            _4079 = (_rndx_mie_norm_4079 * _3987) * (_185 / exp2(log2(_rndx_mie_g2p1_4079 - (_boostedMieG * _187)) * 1.5f));
          } else {
            _4079 = (_4073 * _3987) * (_185 / exp2(log2(_4066 - (_miePhaseConst * _187)) * 1.5f));
          }
          // RenoDX: <<< [Patch: DawnDuskImprovements]
          _4089 = _4042 * (((_195 * 64.0f) * _1356) * _3953);
          _4097 = ((_1961 * 2.0f) * _1356) * _213;
          _4100 = ((_4097 * _4028) * _4046) * _volumeFogScatterColor.x;
          _4103 = ((_4097 * _4029) * _4046) * _volumeFogScatterColor.y;
          _4106 = ((_4097 * _4030) * _4046) * _volumeFogScatterColor.z;
          _4136 = (_3998 * (_3873 + _3967)) + (_3988 * _3964);
          _4145 = exp2(((_4000 * _3963) + _4136) * -1.442695f);
          _4146 = exp2(((_4004 * _3963) + _4136) * -1.442695f);
          _4147 = exp2(((_4007 * _3963) + _4136) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
          float _rndx_cloud_red_2_4145 = CloudReddeningFactor((_3873 + _3998), _dawnDuskFactor, false);
          _4146 *= _rndx_cloud_red_2_4145;
          _4147 *= _rndx_cloud_red_2_4145;
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _4167 = _1376 * _3987;
          _4171 = _3998 * (_1961 + _3953);
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Converts this ray-march step's Rayleigh in-scatter radiance with the
          //              spectral matrix instead of the vanilla RGB matrix. The Rayleigh term
          //              (transmittance x beta x phase) is per-wavelength radiance and needs the
          //              spectral-to-working conversion; the Mie term is artist colour already in
          //              display space, so SKY_VAN_DOT keeps it on the vanilla matrix. Beta stays
          //              the native packed value on both arms — only the matrix differs — and each
          //              Off arm is the complete native RGB expression. The same conversion applies
          //              to the sun's direct single-scatter sub-term inside _4179/_4187/_4195, so it
          //              matches the moon counterpart in _4259/_4267/_4275 and both bodies use one
          //              matrix within a pixel; the volume-fog, cloud and Mie sub-terms sharing those
          //              statements carry no Rayleigh beta and keep the vanilla matrix.
          _4174 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(0, _4145, _4146, _4147, _3975, _3978, _3980, _4050) + SKY_VAN_DOT(0, _4145, _4146, _4147) * (_4171 + _mieScatterColor.x * _4167))
            : (((_4146 * 0.33951f) + (_4145 * 0.61312f)) + (_4147 * 0.04737f)) * (((_3975 * _4050) + _4171) + (_mieScatterColor.x * _4167));
          _4179 = (((((_4079 * _4032) * _mieScatterColor.x) + (SKY_SCATTERING ? SKY_RAY_INSCATTER(0, _4013, _4014, _4015, _3975, _3978, _3980, _4052) : ((_3975 * _4052) * _4028))) + ((_4100 + (_4089 * _4028)) * _3998)) + (_4174 * _1160)) * _419;
          _4182 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(1, _4145, _4146, _4147, _3975, _3978, _3980, _4050) + SKY_VAN_DOT(1, _4145, _4146, _4147) * (_4171 + _mieScatterColor.y * _4167))
            : (((_4146 * 0.91636f) + (_4145 * 0.0702f)) + (_4147 * 0.01345f)) * (((_3978 * _4050) + _4171) + (_mieScatterColor.y * _4167));
          _4187 = (((((_4079 * _4033) * _mieScatterColor.y) + (SKY_SCATTERING ? SKY_RAY_INSCATTER(1, _4013, _4014, _4015, _3975, _3978, _3980, _4052) : ((_3978 * _4052) * _4029))) + ((_4103 + (_4089 * _4029)) * _3998)) + (_4182 * _1161)) * _419;
          _4190 = SKY_SCATTERING
            ? (SKY_RAY_INSCATTER(2, _4145, _4146, _4147, _3975, _3978, _3980, _4050) + SKY_VAN_DOT(2, _4145, _4146, _4147) * (_4171 + _mieScatterColor.z * _4167))
            : (((_4146 * 0.10958f) + (_4145 * 0.02062f)) + (_4147 * 0.8698f)) * ((_4171 + (_3980 * _4050)) + (_mieScatterColor.z * _4167));
          _4195 = (((((_4079 * _4034) * _mieScatterColor.z) + (SKY_SCATTERING ? SKY_RAY_INSCATTER(2, _4013, _4014, _4015, _3975, _3978, _3980, _4052) : ((_3980 * _4052) * _4030))) + ((_4106 + (_4089 * _4030)) * _3998)) + (_4190 * _1162)) * _419;
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          _4196 = _3950.x + _3963;
          _4198 = _3988 * (_3950.y + _3964);
          _4199 = _4000 * _4196;
          _4200 = _3999 + _4198;
          _4202 = _4004 * _4196;
          _4204 = _4007 * _4196;
          _4209 = exp2((_4199 + _4200) * -1.442695f);
          _4210 = exp2((_4202 + _4200) * -1.442695f);
          _4211 = exp2((_4204 + _4200) * -1.442695f);
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
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
          //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
          //              no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor3 = CloudReddeningFactor((_3872 + _3998), _dawnDuskFactor, false);
          _4209 *= 1.f;                // R unchanged
          _4210 *= _cloudRedFactor3;   // G attenuated
          _4211 *= _cloudRedFactor3;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
          _4228 = (_221 * 0.059683103f) * _4050;
          _4239 = (_4167 * _4073) * (_221 / exp2(log2(_4066 - (_miePhaseConst * _222)) * 1.5f));
          _4251 = (_3998 * _1356) * ((((_237 * 2.0f) * _1961) * _4046) + (((_229 * 64.0f) * _3953) * _4042));
          // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
          // Description: Converts the second in-scatter cluster's Rayleigh radiance with the
          //              spectral matrix instead of the vanilla RGB matrix, leaving the Mie term on
          //              the vanilla matrix because it is artist colour already in display space.
          //              Here the Rayleigh phase carrier is the product _4228 * _1356, so the whole
          //              product is the phase argument and the sun-blend factor _1356 stays applied
          //              to the Mie term separately. Beta stays the native packed value on both
          //              arms — only the matrix differs — and each Off arm is the complete native
          //              RGB expression.
          _4259 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(0, _4209, _4210, _4211, _3975, _3978, _3980, _4228 * _1356) + SKY_VAN_DOT(0, _4209, _4210, _4211) * (((_4239 * _mieScatterColor.x) * _1356) + _4251)) + (_4174 * _1163)) * _419) + _396)
            : (((((((_4239 * _mieScatterColor.x) + (_3975 * _4228)) * _1356) + _4251) * (((_4210 * 0.33951f) + (_4209 * 0.61312f)) + (_4211 * 0.04737f))) + (_4174 * _1163)) * _419) + _396;
          _4267 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(1, _4209, _4210, _4211, _3975, _3978, _3980, _4228 * _1356) + SKY_VAN_DOT(1, _4209, _4210, _4211) * (((_4239 * _mieScatterColor.y) * _1356) + _4251)) + (_4182 * _1164)) * _419) + _395)
            : (((((((_4239 * _mieScatterColor.y) + (_3978 * _4228)) * _1356) + _4251) * (((_4210 * 0.91636f) + (_4209 * 0.0702f)) + (_4211 * 0.01345f))) + (_4182 * _1164)) * _419) + _395;
          _4275 = SKY_SCATTERING
            ? ((((SKY_RAY_INSCATTER(2, _4209, _4210, _4211, _3975, _3978, _3980, _4228 * _1356) + SKY_VAN_DOT(2, _4209, _4210, _4211) * (((_4239 * _mieScatterColor.z) * _1356) + _4251)) + (_4190 * _1165)) * _419) + _394)
            : (((((((_4239 * _mieScatterColor.z) + (_3980 * _4228)) * _1356) + _4251) * (((_4210 * 0.10958f) + (_4209 * 0.02062f)) + (_4211 * 0.8698f))) + (_4190 * _1165)) * _419) + _394;
          // RenoDX: <<< [Patch: SkySpectralRayleigh]
          if (_3953 > 0.001f) {
            _4279 = _cloudPhaseConstFront * 0.5f;
            _4280 = _4279 * _4279;
            _4296 = _3998 * ((_3872 * 0.2f) + _3967);
            _4297 = _4296 + _3989;
            _4304 = exp2((_4001 + _4297) * -1.442695f);
            _4305 = exp2((_4005 + _4297) * -1.442695f);
            _4306 = exp2((_4008 + _4297) * -1.442695f);
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
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor4 = CloudReddeningFactor(((_3872 * 0.20000000298023224f) + _3998), _dawnDuskFactor, false);
            _4304 *= 1.f;                // R unchanged
            _4305 *= _cloudRedFactor4;   // G attenuated
            _4306 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _4325 = ((((1.0f - _4280) * 3.0f) / ((_4280 + 2.0f) * 2.0f)) * 0.07957747f) * (((_3953 * _1356) * 51.2f) * _419);
            _4327 = _4042 * _3998;
            _4328 = _4327 * (_4325 * (_185 / exp2(log2((1.0f - (_cloudPhaseConstFront * _175)) + _4280) * 1.5f)));
            _4342 = _4296 + _4198;
            _4349 = exp2((_4199 + _4342) * -1.442695f);
            _4350 = exp2((_4202 + _4342) * -1.442695f);
            _4351 = exp2((_4204 + _4342) * -1.442695f);
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
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor5 = CloudReddeningFactor(((_3872 * 0.20000000298023224f) + _3998), _dawnDuskFactor, false);
            _4349 *= 1.f;                // R unchanged
            _4350 *= _cloudRedFactor5;   // G attenuated
            _4351 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _4368 = _4327 * (_4325 * (_221 / exp2(log2((1.0f - (_cloudPhaseConstFront * _219)) + _4280) * 1.5f)));
            _4376 = ((_4328 * (((_4305 * 0.33951f) + (_4304 * 0.61312f)) + (_4306 * 0.04737f))) + _4179);
            _4377 = ((_4328 * (((_4305 * 0.91636f) + (_4304 * 0.0702f)) + (_4306 * 0.01345f))) + _4187);
            _4378 = ((_4328 * (((_4305 * 0.10958f) + (_4304 * 0.02062f)) + (_4306 * 0.8698f))) + _4195);
            _4379 = ((_4368 * (((_4350 * 0.33951f) + (_4349 * 0.61312f)) + (_4351 * 0.04737f))) + _4259);
            _4380 = ((_4368 * (((_4350 * 0.91636f) + (_4349 * 0.0702f)) + (_4351 * 0.01345f))) + _4267);
            _4381 = ((_4368 * (((_4350 * 0.10958f) + (_4349 * 0.02062f)) + (_4351 * 0.8698f))) + _4275);
          } else {
            _4376 = _4179;
            _4377 = _4187;
            _4378 = _4195;
            _4379 = _4259;
            _4380 = _4267;
            _4381 = _4275;
          }
          _4382 = saturate(((float)((int)((int)(((float)((uint)((uint)(_1018)))) * 0.33f)))) + _132) * _precomputedAmbient7.y;
          _4395 = _412;
          _4396 = select(_1013, _1015, 0);
          _4397 = _1018;
          _4398 = _4379;
          _4399 = _4380;
          _4400 = _4381;
          _4401 = (((((_precomputedAmbients[48].x) * _419) * (_4100 + (_4032 * _3987))) + _393) + (_4376 * _4382));
          _4402 = (((((_precomputedAmbients[48].y) * _419) * (_4103 + (_4033 * _3987))) + _392) + (_4377 * _4382));
          _4403 = (((((_precomputedAmbients[48].z) * _419) * (_4106 + (_4034 * _3987))) + _391) + (_4378 * _4382));
          _4404 = _3963;
          _4405 = _3964;
          _4406 = _3965;
          _4407 = _3966;
          _4408 = _1375;
          _4409 = _1376;
          _4410 = _3953;
          _4411 = _1961;
          _4412 = ((int)(uint)(_1030));
          _4413 = ((int)(uint)((int)(exp2((_3967 * -1.442695f) * _3998) < 0.001f)));
        }
        _4414 = (uint)((uint)(_4397)) + (uint)(1);
        if ((((uint)_4414 < (uint)300) && (_4412 != 0)) && (_4413 == 0)) {
          _382 = _4412;
          _383 = _4411;
          _384 = _4410;
          _385 = _4409;
          _386 = _4408;
          _387 = _4407;
          _388 = _4406;
          _389 = _4405;
          _390 = _4404;
          _391 = _4403;
          _392 = _4402;
          _393 = _4401;
          _394 = _4400;
          _395 = _4399;
          _396 = _4398;
          _397 = _4414;
          _398 = _4396;
          _399 = _4395;
          continue;
        }
        _4422 = select((_4413 != 0), 1e+06f, _4406);
        if (_133) {
          _4428 = _cloudCirrusAltitude + _earthRadius;
          _4432 = _155 - ((_152 - (_4428 * _4428)) * _156);
          if (!(_4432 < 0.0f)) {
            _4440 = ((sqrt(_4432) - _151) / (_149 * 2.0f));
          } else {
            _4440 = -1.0f;
          }
          _4444 = _155 - ((_152 - (_earthRadius * _earthRadius)) * _156);
          if (!(_4444 < 0.0f)) {
            _4452 = ((sqrt(_4444) - _151) / (_149 * 2.0f));
          } else {
            _4452 = -1.0f;
          }
          if ((_4440 >= 0.0f) && (_4452 <= 0.0f)) {
            _4458 = _cloudCirrusScale * 5e-05f;
            _4459 = _4440 * _117;
            _4461 = _4440 * _119;
            _4462 = _4459 + _viewPos.x;
            _4463 = (_4440 * _118) + _viewPos.y;
            _4464 = _4461 + _viewPos.z;
            _4472 = (_4462 * _4458) - (_cloudScroll.y * 0.0003f);
            _4473 = (_4464 * _4458) - (_cloudScroll.x * 0.0003f);
            // [sem: _3__36__0__0__g_texCirrus_SampleBias]
            _4477 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_4472, _4473), -1.0f, int2(0, 0));
            _39[0] = _4477.x;
            _39[1] = _4477.y;
            _39[2] = _4477.z;
            _39[3] = _4477.w;
            _4489 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
            _4493 = sqrt((_4459 * _4459) + (_4461 * _4461));
            if (!(_4493 > _4489)) {
              _4501 = (1.0f - cos((1.5707964f / _4489) * _4493));
            } else {
              _4501 = 1.0f;
            }
            _4502 = _4501 * _cloudCirrusDensity;
            _39[0] = ((_4477.x * _cloudCirrusWeightR) * _4502);
            _39[1] = ((_4502 * _4477.y) * _cloudCirrusWeightG);
            _39[2] = ((_4502 * _4477.z) * _cloudCirrusWeightB);
            _4531 = ((((sin(mad(_4473, -0.6f, (_4472 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_4473, 0.8f, (_4472 * 0.6f)) * 3.03f)) + ((sin(_4472 * 1.5f) * 0.5f) * sin(_4473 * 1.5f))) * 1.6000001f) + 1.5f;
            _4534 = (int)(min(max(_4531, 0.0f), 2.0f));
            _4543 = _39[min((uint)(_4534), 3u)];
            _4546 = (((_39[min((uint)(((int)((int)(_4534) + (int)(1)) % (int)(3))), 3u)]) - _4543) * saturate(_4531 - ((float)((int)(_4534))))) + _4543;
            _4547 = _4463 + _earthRadius;
            _4548 = _4462 * _4462;
            _4550 = _4464 * _4464;
            _4551 = _4550 + _4548;
            _4553 = sqrt(_4551 + (_4547 * _4547));
            _4554 = _4462 / _4553;
            _4555 = _4547 / _4553;
            _4556 = _4464 / _4553;
            _4557 = _4553 - _earthRadius;
            if (_4557 > 0.0f) {
              _4560 = dot(float3(_4554, _4555, _4556), float3(_117, _118, _119));
              _4570 = min(max(_4557, 16.0f), (_atmosphereThickness + -16.0f));
              _4578 = max(_4570, 0.0f);
              _4585 = (-0.0f - sqrt((_4578 + (_earthRadius * 2.0f)) * _4578)) / (_4578 + _earthRadius);
              _4586 = (_4560 > _4585);
              if (_4586) {
                _4608 = ((exp2(log2(saturate((_4560 - _4585) / (1.0f - _4585))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _4608 = ((exp2(log2(saturate((_4585 - _4560) / (_4585 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _4610 = (exp2(log2(saturate((_4570 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _4618 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4610, _4608, ((1.0f - exp2(-1.1541561f - (dot(float3(_4554, _4555, _4556), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_4586) {
                _4648 = ((exp2(log2(saturate((_4560 - _4585) / (1.0f - _4585))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _4648 = ((exp2(log2(saturate((_4585 - _4560) / (_4585 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _4654 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4610, _4648, ((1.0f - exp2(-1.1541561f - (dot(float3(_4554, _4555, _4556), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _4662 = _4618.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4663 = _4618.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4664 = _4618.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4665 = (_4654.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4666 = (_4654.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4667 = (_4654.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _4662 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4663 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4664 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4665 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4666 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _4667 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _4676 = max(_4557, 0.01f);
            _4677 = -0.0f - _4676;
            _4686 = exp2((_4677 / _rayleighScaledHeight) * 1.442695f);
            _4687 = exp2((_4677 / _mieScaledHeight) * 1.442695f);
            _4691 = _4462 - _viewPos.x;
            _4692 = _4464 - _viewPos.z;
            _4695 = (_4691 * _4691) + (_4692 * _4692);
            _4696 = sqrt(_4695);
            _4702 = max(((_4696 * _4696) + -400000.0f), 0.0f) * 1e-06f;
            _4703 = _cloudAltitude - _4702;
            _4706 = _cloudDetailScale * 0.004f;
            _4709 = _cloudBaseScale * 0.0004f;
            _4712 = _4463 + _earthRadius;
            _4719 = (((-0.0f - _earthRadius) - _4703) + sqrt(_4551 + (_4712 * _4712))) / _cloudThickness;
            if (!((_4719 < 0.0f) || (_4719 > 1.0f))) {
              _4742 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
              _4743 = _4463 - _4703;
              _4757 = _4706 / _4709;
              _4758 = _4757 * _4709;
              _4760 = _4757 * _4742;
              _4776 = (4.0f - (saturate(max((_4696 + -2500.0f), 0.0f) * 0.05f) * 3.0f)) * (_cloudDetailScale * 0.001884f);
              _4780 = _4758 * 4.355f;
              _4797 = 1.0f - sqrt(saturate((1.0f - _4719) * 1.4285715f));
              _4815 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4706 * _4462) - (_4758 * _cloudScroll.x)), ((_4743 * _4706) - _4760), ((_4706 * _4464) - (_4758 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_4776 * _4462) - (_4780 * _cloudScroll.x)), ((_4776 * _4743) - (_4760 * 4.355f)), ((_4776 * _4464) - (_4780 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_4719 * 4.0f) * 0.8f) + 0.2f);
              _4822 = (saturate(((saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_4709 * (_4462 - _cloudScroll.x)), ((_4709 * _4743) - _4742), (_4709 * (_4464 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_4797 * 0.5f), ((_4797 * _4797) * _4797))) * saturate(_4719 * 10.0f)) - _4815) / (1.0f - _4815)) * _cloudAlpha);
            } else {
              _4822 = 0.0f;
            }
            if (_cloudFadeRange > 1e-05f) {
              _4834 = saturate((((1.0f - _cloudNear) * _4696) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _4834 = 1.0f;  // [sem: expr_sat]
            }
            if (!((_371 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
              _4845 = 0.0f;
              _4846 = 0;
              while(true) {
                _5210 = _4845;
                if (!((((int)((uint)(1) << (_4846 & 31))) & _371) == 0)) {
                  _4854 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[0].x;
                  _4855 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[1].x;
                  _4856 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[2].x;
                  _4858 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[0].y;
                  _4859 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[1].y;
                  _4860 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[2].y;
                  _4862 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[0].z;
                  _4863 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[1].z;
                  _4864 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[2].z;
                  _4866 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[0].w;
                  _4867 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[1].w;
                  _4868 = __3__37__0__0__g_cloudDensityVolumes[_4846]._relativeWorldToLocal[2].w;
                  _4870 = __3__37__0__0__g_cloudDensityVolumes[_4846]._shapeParameter.x;
                  _4871 = __3__37__0__0__g_cloudDensityVolumes[_4846]._shapeParameter.z;
                  _4872 = __3__37__0__0__g_cloudDensityVolumes[_4846]._shapeParameter.w;
                  _4874 = __3__37__0__0__g_cloudDensityVolumes[_4846]._macroNoiseParameter.x;
                  _4875 = __3__37__0__0__g_cloudDensityVolumes[_4846]._macroNoiseParameter.y;
                  _4876 = __3__37__0__0__g_cloudDensityVolumes[_4846]._macroNoiseParameter.z;
                  _4877 = __3__37__0__0__g_cloudDensityVolumes[_4846]._macroNoiseParameter.w;
                  _4879 = __3__37__0__0__g_cloudDensityVolumes[_4846]._detailNoiseParameter.x;
                  _4880 = __3__37__0__0__g_cloudDensityVolumes[_4846]._detailNoiseParameter.y;
                  _4881 = __3__37__0__0__g_cloudDensityVolumes[_4846]._detailNoiseParameter.z;
                  _4882 = __3__37__0__0__g_cloudDensityVolumes[_4846]._detailNoiseParameter.w;
                  _4884 = __3__37__0__0__g_cloudDensityVolumes[_4846]._modeParameter.x;
                  _4885 = __3__37__0__0__g_cloudDensityVolumes[_4846]._modeParameter.y;
                  _4887 = __3__37__0__0__g_cloudDensityVolumes[_4846]._vortexParameter.x;
                  _4888 = __3__37__0__0__g_cloudDensityVolumes[_4846]._vortexParameter.y;
                  _4889 = __3__37__0__0__g_cloudDensityVolumes[_4846]._vortexParameter.z;
                  _4890 = __3__37__0__0__g_cloudDensityVolumes[_4846]._vortexParameter.w;
                  _4892 = __3__37__0__0__g_cloudDensityVolumes[_4846]._spiralParameter.x;
                  _4893 = __3__37__0__0__g_cloudDensityVolumes[_4846]._spiralParameter.y;
                  _4894 = __3__37__0__0__g_cloudDensityVolumes[_4846]._spiralParameter.z;
                  _4895 = __3__37__0__0__g_cloudDensityVolumes[_4846]._spiralParameter.w;
                  _4897 = __3__37__0__0__g_cloudDensityVolumes[_4846]._animationParameter.x;
                  _4898 = __3__37__0__0__g_cloudDensityVolumes[_4846]._animationParameter.y;
                  _4899 = __3__37__0__0__g_cloudDensityVolumes[_4846]._animationParameter.z;
                  _4900 = __3__37__0__0__g_cloudDensityVolumes[_4846]._animationParameter.w;
                  _4902 = __3__37__0__0__g_cloudDensityVolumes[_4846]._flowParameter.x;
                  _4903 = __3__37__0__0__g_cloudDensityVolumes[_4846]._flowParameter.y;
                  _4904 = __3__37__0__0__g_cloudDensityVolumes[_4846]._flowParameter.z;
                  _4906 = __3__37__0__0__g_cloudDensityVolumes[_4846]._tornadoParameter.x;
                  _4907 = __3__37__0__0__g_cloudDensityVolumes[_4846]._tornadoParameter.y;
                  _4908 = __3__37__0__0__g_cloudDensityVolumes[_4846]._tornadoParameter.z;
                  _4909 = __3__37__0__0__g_cloudDensityVolumes[_4846]._tornadoParameter.w;
                  _4913 = mad(_4862, _4464, mad(_4858, _4463, (_4854 * _4462))) + _4866;
                  _4917 = mad(_4863, _4464, mad(_4859, _4463, (_4855 * _4462))) + _4867;
                  _4921 = mad(_4864, _4464, mad(_4860, _4463, (_4856 * _4462))) + _4868;
                  _4923 = abs(_4917);
                  _4929 = max((abs(_4913) + -0.5f), max((_4923 + -0.5f), (abs(_4921) + -0.5f)));
                  if (!(_4929 >= 0.0f)) {
                    _4932 = __3__37__0__0__g_cloudDensityVolumes[_4846]._shapeParameter.y;
                    _4935 = max((saturate(_4932) * 0.5f), 0.0001f);
                    _4938 = saturate((_4935 + _4929) / _4935);  // [sem: expr_sat]
                    _4943 = 1.0f - ((_4938 * _4938) * (3.0f - (_4938 * 2.0f)));
                    if (!(_4943 <= 0.0f)) {
                      _4952 = sqrt((_4921 * _4921) + (_4913 * _4913)) * 2.0f;
                      _4956 = saturate(1.0f - (_4952 / max(_4888, 0.0001f)));  // [sem: expr_sat]
                      _4957 = _time.x * _4900;
                      _4958 = (_4884 == 1);
                      _4959 = (_4884 == 2);
                      if (_4958) {
                        _5036 = exp2(log2(_4956) * max(_4895, 0.0001f));
                        _5038 = max(_4894, 0.0001f);
                        _5042 = _4917 / (((max(_4893, 0.0001f) - _5038) * _5036) + _5038);
                        _5049 = (((_4956 * _4956) * _4887) * ((_4952 * _4889) + _4917)) - (_4956 * _4957);
                        _5050 = sin(_5049);
                        _5051 = cos(_5049);
                        _5054 = (_5051 * _4913) - (_5050 * _4921);
                        _5057 = (_5051 * _4921) + (_5050 * _4913);
                        if (_4959) {
                          _5059 = 0.0f;
                          _5060 = 1.0f;
                          _5061 = _5036;
                          _5062 = _4956;
                          _5063 = _5054;
                          _5064 = _5042;
                          _5065 = _5057;
                          _5085 = _5060;
                          _5086 = _5061;
                          _5087 = _5062;
                          _5088 = _5063;
                          _5089 = _5064;
                          _5090 = _5065;
                          _5091 = max(_5059, ((_4923 * 2.0f) + -1.0f));
                        } else {
                          _5070 = _5036;
                          _5071 = _5054;
                          _5072 = _5042;
                          _5073 = _5057;
                          _5074 = _5071 * 2.0f;
                          _5075 = _5072 * 2.0f;
                          _5076 = _5073 * 2.0f;
                          _5085 = 1.0f;
                          _5086 = _5070;
                          _5087 = _4956;
                          _5088 = _5071;
                          _5089 = _5072;
                          _5090 = _5073;
                          _5091 = (sqrt(((_5075 * _5075) + (_5074 * _5074)) + (_5076 * _5076)) + -1.0f);
                        }
                      } else {
                        if (_4959) {
                          _4963 = saturate(_4917 + 0.5f);  // [sem: expr_sat]
                          _4969 = max(_4906, 0.0001f);
                          _4972 = ((max(_4907, 0.0001f) - _4969) * exp2(log2(_4963) * max(_4908, 0.0001f))) + _4969;
                          _4974 = atan(_4921 / _4913);
                          _4977 = (_4913 < 0.0f);
                          _4978 = (_4913 == 0.0f);
                          _4979 = (_4921 >= 0.0f);
                          _4980 = (_4921 < 0.0f);
                          _4990 = max(((float)((uint)((uint)(_4885)))), 1.0f);
                          _4991 = _4963 * _4889;
                          _5002 = _4972 * _4882;
                          _5004 = max((_4972 - _5002), 0.0f);
                          _5005 = _4952 - _5004;
                          _5006 = _5004 * (acos(min(max(cos(((((_4991 * -6.2831855f) - _4957) + select((_4978 && _4979), 1.5707964f, select((_4978 && _4980), -1.5707964f, select((_4977 && _4980), (_4974 + -3.1415927f), select((_4977 && _4979), (_4974 + 3.1415927f), _4974))))) * _4990) + _4892), -1.0f), 1.0f)) / _4990);
                          _5011 = _4952 - _4972;
                          _5020 = saturate(1.0f - (_4952 / _4972));  // [sem: expr_sat]
                          _5023 = ((_5020 + _4991) * _4887) - _4957;
                          _5024 = sin(_5023);
                          _5025 = cos(_5023);
                          _5059 = ((saturate(_4890) * (((-0.0f - _5011) - _5002) + sqrt((_5005 * _5005) + (_5006 * _5006)))) + _5011);
                          _5060 = _4972;
                          _5061 = 0.0f;
                          _5062 = _5020;
                          _5063 = ((_5025 * _4913) - (_5024 * _4921));
                          _5064 = _4917;
                          _5065 = ((_5025 * _4921) + (_5024 * _4913));
                          _5085 = _5060;
                          _5086 = _5061;
                          _5087 = _5062;
                          _5088 = _5063;
                          _5089 = _5064;
                          _5090 = _5065;
                          _5091 = max(_5059, ((_4923 * 2.0f) + -1.0f));
                        } else {
                          _5070 = 0.0f;
                          _5071 = _4913;
                          _5072 = _4917;
                          _5073 = _4921;
                          _5074 = _5071 * 2.0f;
                          _5075 = _5072 * 2.0f;
                          _5076 = _5073 * 2.0f;
                          _5085 = 1.0f;
                          _5086 = _5070;
                          _5087 = _4956;
                          _5088 = _5071;
                          _5089 = _5072;
                          _5090 = _5073;
                          _5091 = (sqrt(((_5075 * _5075) + (_5074 * _5074)) + (_5076 * _5076)) + -1.0f);
                        }
                      }
                      if (_4875 > 0.0f) {
                        _5094 = _time.x * _4898;
                        _5098 = max(_4874, 0.0001f);
                        _5116 = (_5091 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5094 * _4902) + _4876) + (_5098 * _5088)), (((_5094 * _4903) + _4877) + (_5098 * _5089)), (((_5094 * _4904) + _4881) + (_5098 * _5090))), 0.0f)).x) + -0.5f) * _4875));
                      } else {
                        _5116 = _5091;
                      }
                      if (_4958 && (_4890 > 0.0f)) {
                        _5121 = atan(_4921 / _4913);
                        _5124 = (_4913 < 0.0f);
                        _5125 = (_4913 == 0.0f);
                        _5126 = (_4921 >= 0.0f);
                        _5127 = (_4921 < 0.0f);
                        _5149 = (_5116 - (((_4890 * 0.5f) * _5087) * cos(((((_4952 * _4889) - _4957) + select((_5125 && _5126), 1.5707964f, select((_5125 && _5127), -1.5707964f, select((_5124 && _5127), (_5121 + -3.1415927f), select((_5124 && _5126), (_5121 + 3.1415927f), _5121))))) * max(((float)((uint)((uint)(_4885)))), 1.0f)) + _4892)));
                      } else {
                        _5149 = _5116;
                      }
                      if (_4959 && (_4909 > 0.0f)) {
                        _5157 = max(_5149, ((_5085 * _4909) - _4952));
                      } else {
                        _5157 = _5149;
                      }
                      _5159 = max(_4872, 0.0001f);
                      _5165 = saturate((((_4871 - (_5086 * _4897)) + _5157) + _5159) / (_5159 * 2.0f));  // [sem: expr_sat]
                      _5170 = 1.0f - ((_5165 * _5165) * (3.0f - (_5165 * 2.0f)));
                      if (!((_5170 >= 1.0f) || ((_4880 <= 0.0f) || (_5170 <= 0.0f)))) {
                        _5177 = _time.x * _4899;
                        _5181 = max(_4879, 0.0001f);
                        // [sem: expr_sat]
                        _5205 = saturate(_5170 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5177 * _4902) + _4876) + (_5181 * _5088)), (((_5177 * _4903) + _4877) + (_5181 * _5089)), (((_5177 * _4904) + _4881) + (_5181 * _5090))), 0.0f)).x) * _4880) * saturate(1.0f - abs((_5170 * 2.0f) + -1.0f))));
                      } else {
                        _5205 = _5170;  // [sem: expr_sat]
                      }
                      _5210 = (((_4943 * _4870) * _5205) + _4845);
                    } else {
                      _5210 = _4845;
                    }
                  } else {
                    _5210 = _4845;
                  }
                } else {
                  _5210 = _4845;
                }
                _5211 = (uint)((uint)(_4846)) + (uint)(1);
                if ((uint)_5211 < (uint)_cloudDensityVolumeInfo.x) {
                  _4845 = _5210;
                  _4846 = _5211;
                  continue;
                }
                while(true) {
                  _5216 = saturate(_5210);  // [sem: _5210_sat]
                  break;
                }
                break;
              }
            } else {
              _5216 = 0.0f;  // [sem: _5210_sat]
            }
            _5220 = _4463 - _viewPos.y;
            _5223 = sqrt(_4695 + (_5220 * _5220));
            _5229 = max(1e-06f, (_heightFogScale * 0.0025f));
            _5230 = _5229 * _cloudScroll.x;
            _5231 = _5229 * _cloudScroll.y;
            _5232 = _5229 * _4462;
            _5233 = _5229 * _4463;
            _5234 = _5229 * _4464;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _5255 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5232 * 6.393882f) - (_5230 * 1.871f)), (_5233 * 6.393882f), ((_5234 * 6.393882f) - (_5231 * 1.871f))), 0.0f);
            _5273 = ((((saturate(_5223 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5232 * 0.5127f) - _5230), (_5233 * 0.5127f), ((_5234 * 0.5127f) - _5231)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_4676 - _heightFogBaseline)))) * (((0.5f - _5255.x) * saturate((_5223 + -300.0f) * 0.0025f)) + _5255.x)) * _heightFogDensity;
            _5274 = _4463 - _cloudAltitude;
            _5276 = (_5274 + _4702) / _cloudThickness;
            _5279 = (_sunDirection.y > 0.0f) || (_sunDirection.y > _moonDirection.y);
            _5280 = select(_5279, _sunDirection.x, _moonDirection.x);
            _5281 = select(_5279, _sunDirection.y, _moonDirection.y);
            _5282 = select(_5279, _sunDirection.z, _moonDirection.z);
            _5283 = (_5281 > 0.0f);
            _5292 = ((0.5f - (((float)((int)((int)((int)(uint)(_5283)) - (int)((int)(uint)((int)(_5281 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _4703;
            if (_4463 < _4703) {
              _5295 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5280, _5281, _5282));
              _5301 = select((abs(_5295) < 1e-08f), 1e+08f, ((_5292 - dot(float3(0.0f, 1.0f, 0.0f), float3(_4462, _4463, _4464))) / _5295));
              _5307 = ((_5301 * _5280) + _4462);
              _5308 = _5292;
              _5309 = ((_5301 * _5282) + _4464);
            } else {
              _5307 = _4462;
              _5308 = _4463;
              _5309 = _4464;
            }
            _5324 = _cloudScatteringCoefficient / _distanceScale;
            _5329 = abs(_5281);
            _5331 = saturate(_5329 * 4.0f);  // [sem: expr_sat]
            _5333 = (_5331 * _5331) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_5307 - _viewPos.x) * 5e-05f) + 0.5f), ((_5308 - _cloudAltitude) / _cloudThickness), (((_5309 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * _5324);
            _5339 = ((1.0f - _5333) * saturate((_5274 - _cloudThickness) * 0.1f)) + _5333;
            _5342 = -0.0f - _5324;
            _5343 = (log2(_5339) * 0.6931472f) / _5342;
            if ((saturate(_5216 + (_4834 * _4822)) > 0.001f) && ((_5216 > 0.001f) || ((_5276 >= 0.0f) && (_5276 <= 1.0f)))) {
              _5357 = (_4463 - _4703) / _cloudThickness;
              if (((_5357 >= 0.0f) && (_5357 <= 1.0f)) && (_5329 > 0.001f)) {
                _5374 = min(300.0f, (((_4703 - _4463) + select(_5283, _cloudThickness, 0.0f)) / _5281));
              } else {
                _5374 = 300.0f;
              }
              if ((_cloudDensityVolumeInfo.y & 1) == 0) {
                _5499 = 0.0f;
                _5500 = 3.4028235e+38f;
                _5501 = ((int)((uint)((uint)(1) << (_cloudDensityVolumeInfo.x & 31)) + (uint)(-1)));
              } else {
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _5386 = 0;
                  _5387 = 3.4028235e+38f;
                  _5388 = 0.0f;
                  _5389 = 0;
                  while(true) {
                    _5392 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[0].x;
                    _5393 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[1].x;
                    _5394 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[2].x;
                    _5396 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[0].y;
                    _5397 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[1].y;
                    _5398 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[2].y;
                    _5400 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[0].z;
                    _5401 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[1].z;
                    _5402 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[2].z;
                    _5404 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[0].w;
                    _5405 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[1].w;
                    _5406 = __3__37__0__0__g_cloudDensityVolumes[_5386]._relativeWorldToLocal[2].w;
                    _5410 = mad(_5400, _4464, mad(_5396, _4463, (_5392 * _4462))) + _5404;
                    _5414 = mad(_5401, _4464, mad(_5397, _4463, (_5393 * _4462))) + _5405;
                    _5418 = mad(_5402, _4464, mad(_5398, _4463, (_5394 * _4462))) + _5406;
                    _5421 = mad(_5400, _5282, mad(_5396, _5281, (_5392 * _5280)));
                    _5424 = mad(_5401, _5282, mad(_5397, _5281, (_5393 * _5280)));
                    _5427 = mad(_5402, _5282, mad(_5398, _5281, (_5394 * _5280)));
                    _5428 = abs(_5421);
                    if (!(_5428 < 1e-06f) || !(abs(_5410) > 0.5f)) {
                      _5434 = abs(_5424);
                      if (!(_5434 < 1e-06f) || !(abs(_5414) > 0.5f)) {
                        _5440 = abs(_5427);
                        if (!(_5440 < 1e-06f) || !(abs(_5418) > 0.5f)) {
                          _5455 = max(_5428, 1e-06f) * select((_5421 < 0.0f), -1.0f, 1.0f);
                          _5456 = max(_5434, 1e-06f) * select((_5424 < 0.0f), -1.0f, 1.0f);
                          _5457 = max(_5440, 1e-06f) * select((_5427 < 0.0f), -1.0f, 1.0f);
                          _5461 = (-0.5f - _5410) / _5455;
                          _5462 = (-0.5f - _5414) / _5456;
                          _5463 = (-0.5f - _5418) / _5457;
                          _5467 = (0.5f - _5410) / _5455;
                          _5468 = (0.5f - _5414) / _5456;
                          _5469 = (0.5f - _5418) / _5457;
                          _5480 = max(max(max(min(_5461, _5467), min(_5462, _5468)), min(_5463, _5469)), 0.0f);
                          _5481 = min(min(min(max(_5461, _5467), max(_5462, _5468)), max(_5463, _5469)), 3.4028235e+38f);
                          if (!(_5481 < _5480)) {
                            _5490 = min(_5387, _5480);
                            _5491 = max(_5388, _5481);
                            _5492 = ((int)(_5389) | (int)((int)((uint)(1) << (_5386 & 31))));
                          } else {
                            _5490 = _5387;
                            _5491 = _5388;
                            _5492 = _5389;
                          }
                        } else {
                          _5490 = _5387;
                          _5491 = _5388;
                          _5492 = _5389;
                        }
                      } else {
                        _5490 = _5387;
                        _5491 = _5388;
                        _5492 = _5389;
                      }
                    } else {
                      _5490 = _5387;
                      _5491 = _5388;
                      _5492 = _5389;
                    }
                    _5493 = (uint)((uint)(_5386)) + (uint)(1);
                    if ((uint)_5493 < (uint)_cloudDensityVolumeInfo.x) {
                      _5386 = _5493;
                      _5387 = _5490;
                      _5388 = _5491;
                      _5389 = _5492;
                      continue;
                    }
                    _5499 = _5490;
                    _5500 = _5491;
                    _5501 = _5492;
                    break;
                  }
                } else {
                  _5499 = 3.4028235e+38f;
                  _5500 = 0.0f;
                  _5501 = 0;
                }
              }
              _5502 = _5374 * 0.2f;
              _5506 = _5374 * 0.1f;
              _5514 = 0.0f;
              _5515 = _5502;
              _5516 = (_5502 * _5280);
              _5517 = (_5502 * _5281);
              _5518 = (_5502 * _5282);
              _5519 = _5506;
              _5520 = ((_5506 * _5280) + _4462);
              _5521 = ((_5506 * _5281) + _4463);
              _5522 = ((_5506 * _5282) + _4464);
              _5523 = 0;
              while(true) {
                _5527 = select(((_5519 >= _5499) && (_5519 <= _5500)), _5501, 0);
                _5533 = _5520 - _viewPos.x;
                _5534 = _5522 - _viewPos.z;
                _5538 = sqrt((_5533 * _5533) + (_5534 * _5534));
                _5545 = _cloudAltitude - (max(((_5538 * _5538) + -400000.0f), 0.0f) * 1e-06f);
                _5550 = _cloudDetailScale * 0.004f;
                _5553 = _cloudBaseScale * 0.0004f;
                _5558 = _earthRadius + _5521;
                _5567 = ((sqrt(((_5522 * _5522) + (_5520 * _5520)) + (_5558 * _5558)) - _5545) - _earthRadius) / _cloudThickness;
                if (!((_5567 < 0.0f) || (_5567 > 1.0f))) {
                  _5610 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _5611 = _5521 - _5545;
                  _5627 = _5550 / _5553;
                  _5628 = _5627 * _5553;
                  _5630 = _5627 * _5610;
                  _5642 = saturate(max((_5538 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _5646 = (4.0f - (_5642 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _5650 = _5628 * 4.355f;
                  _5669 = 1.0f - sqrt(saturate((1.0f - _5567) * 1.4285715f));
                  // [sem: expr_sat]
                  _5685 = saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_5520 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5522 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5553 * (_5520 - _cloudScroll.x)), ((_5553 * _5611) - _5610), (_5553 * (_5522 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5669 * 0.5f), ((_5669 * _5669) * _5669))) * saturate(_5567 * 10.0f);
                  _5688 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5646 * _5520) - (_5650 * _cloudScroll.x)), ((_5646 * _5611) - (_5630 * 4.355f)), ((_5646 * _5522) - (_5650 * _cloudScroll.y))), 0.0f)).x) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5550 * _5520) - (_5628 * _cloudScroll.x)), ((_5550 * _5611) - _5630), ((_5550 * _5522) - (_5628 * _cloudScroll.y))), 0.0f)).x))) * ((saturate(_5567 * 4.0f) * 0.8f) + 0.2f)) * _cloudDetailRatio;
                  _5689 = _5688 * ((_5642 * 0.4f) + 0.1f);
                  _5701 = (saturate((_5685 - _5688) / (1.0f - _5688)) * _cloudAlpha);
                  _5702 = (saturate((_5685 - _5689) / (1.0f - _5689)) * _cloudAlpha);
                } else {
                  _5701 = 0.0f;
                  _5702 = 0.0f;
                }
                if (!((_5527 == 0) || (_cloudDensityVolumeInfo.x == 0))) {
                  _5712 = 0.0f;
                  _5713 = 0;
                  while(true) {
                    _6078 = _5712;
                    if (!((((int)((uint)(1) << (_5713 & 31))) & _5527) == 0)) {
                      _5721 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[0].x;
                      _5722 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[1].x;
                      _5723 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[2].x;
                      _5725 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[0].y;
                      _5726 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[1].y;
                      _5727 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[2].y;
                      _5729 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[0].z;
                      _5730 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[1].z;
                      _5731 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[2].z;
                      _5733 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[0].w;
                      _5734 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[1].w;
                      _5735 = __3__37__0__0__g_cloudDensityVolumes[_5713]._relativeWorldToLocal[2].w;
                      _5737 = __3__37__0__0__g_cloudDensityVolumes[_5713]._shapeParameter.x;
                      _5738 = __3__37__0__0__g_cloudDensityVolumes[_5713]._shapeParameter.z;
                      _5739 = __3__37__0__0__g_cloudDensityVolumes[_5713]._shapeParameter.w;
                      _5741 = __3__37__0__0__g_cloudDensityVolumes[_5713]._macroNoiseParameter.x;
                      _5742 = __3__37__0__0__g_cloudDensityVolumes[_5713]._macroNoiseParameter.y;
                      _5743 = __3__37__0__0__g_cloudDensityVolumes[_5713]._macroNoiseParameter.z;
                      _5744 = __3__37__0__0__g_cloudDensityVolumes[_5713]._macroNoiseParameter.w;
                      _5746 = __3__37__0__0__g_cloudDensityVolumes[_5713]._detailNoiseParameter.x;
                      _5747 = __3__37__0__0__g_cloudDensityVolumes[_5713]._detailNoiseParameter.y;
                      _5748 = __3__37__0__0__g_cloudDensityVolumes[_5713]._detailNoiseParameter.z;
                      _5749 = __3__37__0__0__g_cloudDensityVolumes[_5713]._detailNoiseParameter.w;
                      _5751 = __3__37__0__0__g_cloudDensityVolumes[_5713]._modeParameter.x;
                      _5752 = __3__37__0__0__g_cloudDensityVolumes[_5713]._modeParameter.y;
                      _5754 = __3__37__0__0__g_cloudDensityVolumes[_5713]._vortexParameter.x;
                      _5755 = __3__37__0__0__g_cloudDensityVolumes[_5713]._vortexParameter.y;
                      _5756 = __3__37__0__0__g_cloudDensityVolumes[_5713]._vortexParameter.z;
                      _5757 = __3__37__0__0__g_cloudDensityVolumes[_5713]._vortexParameter.w;
                      _5759 = __3__37__0__0__g_cloudDensityVolumes[_5713]._spiralParameter.x;
                      _5760 = __3__37__0__0__g_cloudDensityVolumes[_5713]._spiralParameter.y;
                      _5761 = __3__37__0__0__g_cloudDensityVolumes[_5713]._spiralParameter.z;
                      _5762 = __3__37__0__0__g_cloudDensityVolumes[_5713]._spiralParameter.w;
                      _5764 = __3__37__0__0__g_cloudDensityVolumes[_5713]._animationParameter.x;
                      _5765 = __3__37__0__0__g_cloudDensityVolumes[_5713]._animationParameter.y;
                      _5766 = __3__37__0__0__g_cloudDensityVolumes[_5713]._animationParameter.z;
                      _5767 = __3__37__0__0__g_cloudDensityVolumes[_5713]._animationParameter.w;
                      _5769 = __3__37__0__0__g_cloudDensityVolumes[_5713]._flowParameter.x;
                      _5770 = __3__37__0__0__g_cloudDensityVolumes[_5713]._flowParameter.y;
                      _5771 = __3__37__0__0__g_cloudDensityVolumes[_5713]._flowParameter.z;
                      _5773 = __3__37__0__0__g_cloudDensityVolumes[_5713]._tornadoParameter.x;
                      _5774 = __3__37__0__0__g_cloudDensityVolumes[_5713]._tornadoParameter.y;
                      _5775 = __3__37__0__0__g_cloudDensityVolumes[_5713]._tornadoParameter.z;
                      _5776 = __3__37__0__0__g_cloudDensityVolumes[_5713]._tornadoParameter.w;
                      _5780 = mad(_5729, _5522, mad(_5725, _5521, (_5721 * _5520))) + _5733;
                      _5784 = mad(_5730, _5522, mad(_5726, _5521, (_5722 * _5520))) + _5734;
                      _5788 = mad(_5731, _5522, mad(_5727, _5521, (_5723 * _5520))) + _5735;
                      _5790 = abs(_5784);
                      _5796 = max((abs(_5780) + -0.5f), max((_5790 + -0.5f), (abs(_5788) + -0.5f)));
                      if (!(_5796 >= 0.0f)) {
                        _5799 = __3__37__0__0__g_cloudDensityVolumes[_5713]._shapeParameter.y;
                        _5802 = max((saturate(_5799) * 0.5f), 0.0001f);
                        _5805 = saturate((_5802 + _5796) / _5802);  // [sem: expr_sat]
                        _5810 = 1.0f - ((_5805 * _5805) * (3.0f - (_5805 * 2.0f)));
                        if (!(_5810 <= 0.0f)) {
                          _5819 = sqrt((_5788 * _5788) + (_5780 * _5780)) * 2.0f;
                          _5823 = saturate(1.0f - (_5819 / max(_5755, 0.0001f)));  // [sem: expr_sat]
                          _5824 = _time.x * _5767;
                          _5825 = (_5751 == 1);
                          _5826 = (_5751 == 2);
                          if (_5825) {
                            _5903 = exp2(log2(_5823) * max(_5762, 0.0001f));
                            _5905 = max(_5761, 0.0001f);
                            _5909 = _5784 / (((max(_5760, 0.0001f) - _5905) * _5903) + _5905);
                            _5916 = (((_5823 * _5823) * _5754) * ((_5819 * _5756) + _5784)) - (_5823 * _5824);
                            _5917 = sin(_5916);
                            _5918 = cos(_5916);
                            _5921 = (_5918 * _5780) - (_5917 * _5788);
                            _5924 = (_5918 * _5788) + (_5917 * _5780);
                            if (_5826) {
                              _5926 = 0.0f;
                              _5927 = 1.0f;
                              _5928 = _5903;
                              _5929 = _5823;
                              _5930 = _5921;
                              _5931 = _5909;
                              _5932 = _5924;
                              _5952 = _5927;
                              _5953 = _5928;
                              _5954 = _5929;
                              _5955 = _5930;
                              _5956 = _5931;
                              _5957 = _5932;
                              _5958 = max(_5926, ((_5790 * 2.0f) + -1.0f));
                            } else {
                              _5937 = _5903;
                              _5938 = _5921;
                              _5939 = _5909;
                              _5940 = _5924;
                              _5941 = _5938 * 2.0f;
                              _5942 = _5939 * 2.0f;
                              _5943 = _5940 * 2.0f;
                              _5952 = 1.0f;
                              _5953 = _5937;
                              _5954 = _5823;
                              _5955 = _5938;
                              _5956 = _5939;
                              _5957 = _5940;
                              _5958 = (sqrt(((_5942 * _5942) + (_5941 * _5941)) + (_5943 * _5943)) + -1.0f);
                            }
                          } else {
                            if (_5826) {
                              _5830 = saturate(_5784 + 0.5f);  // [sem: expr_sat]
                              _5836 = max(_5773, 0.0001f);
                              _5839 = ((max(_5774, 0.0001f) - _5836) * exp2(log2(_5830) * max(_5775, 0.0001f))) + _5836;
                              _5841 = atan(_5788 / _5780);
                              _5844 = (_5780 < 0.0f);
                              _5845 = (_5780 == 0.0f);
                              _5846 = (_5788 >= 0.0f);
                              _5847 = (_5788 < 0.0f);
                              _5857 = max(((float)((uint)((uint)(_5752)))), 1.0f);
                              _5858 = _5830 * _5756;
                              _5869 = _5839 * _5749;
                              _5871 = max((_5839 - _5869), 0.0f);
                              _5872 = _5819 - _5871;
                              _5873 = _5871 * (acos(min(max(cos(((((_5858 * -6.2831855f) - _5824) + select((_5845 && _5846), 1.5707964f, select((_5845 && _5847), -1.5707964f, select((_5844 && _5847), (_5841 + -3.1415927f), select((_5844 && _5846), (_5841 + 3.1415927f), _5841))))) * _5857) + _5759), -1.0f), 1.0f)) / _5857);
                              _5878 = _5819 - _5839;
                              _5887 = saturate(1.0f - (_5819 / _5839));  // [sem: expr_sat]
                              _5890 = ((_5887 + _5858) * _5754) - _5824;
                              _5891 = sin(_5890);
                              _5892 = cos(_5890);
                              _5926 = ((saturate(_5757) * (((-0.0f - _5878) - _5869) + sqrt((_5872 * _5872) + (_5873 * _5873)))) + _5878);
                              _5927 = _5839;
                              _5928 = 0.0f;
                              _5929 = _5887;
                              _5930 = ((_5892 * _5780) - (_5891 * _5788));
                              _5931 = _5784;
                              _5932 = ((_5892 * _5788) + (_5891 * _5780));
                              _5952 = _5927;
                              _5953 = _5928;
                              _5954 = _5929;
                              _5955 = _5930;
                              _5956 = _5931;
                              _5957 = _5932;
                              _5958 = max(_5926, ((_5790 * 2.0f) + -1.0f));
                            } else {
                              _5937 = 0.0f;
                              _5938 = _5780;
                              _5939 = _5784;
                              _5940 = _5788;
                              _5941 = _5938 * 2.0f;
                              _5942 = _5939 * 2.0f;
                              _5943 = _5940 * 2.0f;
                              _5952 = 1.0f;
                              _5953 = _5937;
                              _5954 = _5823;
                              _5955 = _5938;
                              _5956 = _5939;
                              _5957 = _5940;
                              _5958 = (sqrt(((_5942 * _5942) + (_5941 * _5941)) + (_5943 * _5943)) + -1.0f);
                            }
                          }
                          if (_5742 > 0.0f) {
                            _5961 = _time.x * _5765;
                            _5965 = max(_5741, 0.0001f);
                            _5983 = (_5958 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_5961 * _5769) + _5743) + (_5965 * _5955)), (((_5961 * _5770) + _5744) + (_5965 * _5956)), (((_5961 * _5771) + _5748) + (_5965 * _5957))), 0.0f)).x) + -0.5f) * _5742));
                          } else {
                            _5983 = _5958;
                          }
                          if (_5825 && (_5757 > 0.0f)) {
                            _5988 = atan(_5788 / _5780);
                            _5991 = (_5780 < 0.0f);
                            _5992 = (_5780 == 0.0f);
                            _5993 = (_5788 >= 0.0f);
                            _5994 = (_5788 < 0.0f);
                            _6016 = (_5983 - (((_5757 * 0.5f) * _5954) * cos(((((_5819 * _5756) - _5824) + select((_5992 && _5993), 1.5707964f, select((_5992 && _5994), -1.5707964f, select((_5991 && _5994), (_5988 + -3.1415927f), select((_5991 && _5993), (_5988 + 3.1415927f), _5988))))) * max(((float)((uint)((uint)(_5752)))), 1.0f)) + _5759)));
                          } else {
                            _6016 = _5983;
                          }
                          if (_5826 && (_5776 > 0.0f)) {
                            _6024 = max(_6016, ((_5952 * _5776) - _5819));
                          } else {
                            _6024 = _6016;
                          }
                          _6026 = max(_5739, 0.0001f);
                          _6032 = saturate((((_5738 - (_5953 * _5764)) + _6024) + _6026) / (_6026 * 2.0f));  // [sem: expr_sat]
                          _6037 = 1.0f - ((_6032 * _6032) * (3.0f - (_6032 * 2.0f)));
                          if (!((_6037 >= 1.0f) || ((((_cloudDensityVolumeInfo.y & 2) != 0) || (_5747 <= 0.0f)) || (_6037 <= 0.0f)))) {
                            _6045 = _time.x * _5766;
                            _6049 = max(_5746, 0.0001f);
                            // [sem: expr_sat]
                            _6073 = saturate(_6037 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6045 * _5769) + _5743) + (_6049 * _5955)), (((_6045 * _5770) + _5744) + (_6049 * _5956)), (((_6045 * _5771) + _5748) + (_6049 * _5957))), 0.0f)).x) * _5747) * saturate(1.0f - abs((_6037 * 2.0f) + -1.0f))));
                          } else {
                            _6073 = _6037;  // [sem: expr_sat]
                          }
                          _6078 = (((_5810 * _5737) * _6073) + _5712);
                        } else {
                          _6078 = _5712;
                        }
                      } else {
                        _6078 = _5712;
                      }
                    } else {
                      _6078 = _5712;
                    }
                    _6079 = (uint)((uint)(_5713)) + (uint)(1);
                    if ((uint)_6079 < (uint)_cloudDensityVolumeInfo.x) {
                      _5712 = _6078;
                      _5713 = _6079;
                      continue;
                    }
                    while(true) {
                      _6084 = saturate(_6078);  // [sem: _6078_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _6084 = 0.0f;  // [sem: _6078_sat]
                }
                _6086 = saturate(_6084 + _5702);  // [sem: expr_sat]
                _6102 = (((exp2((((_5514 * -0.0072134747f) * _5515) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (saturate(_6084 + _5701) - _6086)) + _6086) * _5515) + _5514;
                _6103 = _5519 + _5515;
                _6104 = _5520 + _5516;
                _6105 = _5521 + _5517;
                _6106 = _5522 + _5518;
                _6107 = _5515 * 1.3f;
                _6108 = _5516 * 1.3f;
                _6109 = _5517 * 1.3f;
                _6110 = _5518 * 1.3f;
                _6111 = (int)(_5523) + (int)(1);
                if (!(_6111 == 6)) {
                  _5514 = _6102;
                  _5515 = _6107;
                  _5516 = _6108;
                  _5517 = _6109;
                  _5518 = _6110;
                  _5519 = _6103;
                  _5520 = _6104;
                  _5521 = _6105;
                  _5522 = _6106;
                  _5523 = _6111;
                  continue;
                }
                _6119 = ((_cloudDensityVolumeInfo.y & 2) != 0);
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _6139 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_4462 / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_4464 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _6141 = _4462 + 50.0f;
                _6142 = _4463 + 200.0f;
                _6143 = _6141 - _viewPos.x;
                _6144 = _4464 - _viewPos.z;
                _6148 = sqrt((_6143 * _6143) + (_6144 * _6144));
                _6153 = _cloudAltitude - (max(((_6148 * _6148) + -400000.0f), 0.0f) * 1e-06f);
                _6154 = _earthRadius + _6142;
                _6156 = _6154 * _6154;
                _6162 = ((sqrt(((_6141 * _6141) + _4550) + _6156) - _earthRadius) - _6153) / _cloudThickness;
                if (!((_6162 < 0.0f) || (_6162 > 1.0f))) {
                  _6184 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _6185 = _6142 - _6153;
                  _6201 = _5550 / _5553;
                  _6202 = _6201 * _5553;
                  _6204 = _6201 * _6184;
                  _6216 = saturate(max((_6148 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _6220 = (4.0f - (_6216 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _6224 = _6202 * 4.355f;
                  _6241 = 1.0f - sqrt(saturate((1.0f - _6162) * 1.4285715f));
                  _6263 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5550 * _6141) - (_6202 * _cloudScroll.x)), ((_6185 * _5550) - _6204), ((_5550 * _4464) - (_6202 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6216 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6220 * _6141) - (_6224 * _cloudScroll.x)), ((_6220 * _6185) - (_6204 * 4.355f)), ((_6220 * _4464) - (_6224 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6162 * 4.0f) * 0.8f) + 0.2f);
                  _6270 = (saturate(((saturate(saturate(((_6139.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5553 * (_6141 - _cloudScroll.x)), ((_6185 * _5553) - _6184), (_5553 * (_4464 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6241 * 0.5f), ((_6241 * _6241) * _6241))) * saturate(_6162 * 10.0f)) - _6263) / (1.0f - _6263)) * _cloudAlpha);
                } else {
                  _6270 = 0.0f;
                }
                _6272 = (_cloudFadeRange > 1e-05f);
                if (_6272) {
                  _6282 = saturate(((_6148 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _6282 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _6290 = 0.0f;
                  _6291 = 0;
                  while(true) {
                    _6654 = _6290;
                    if (!((uint)(_6291 & 16) > (uint)15)) {
                      _6297 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[0].x;
                      _6298 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[1].x;
                      _6299 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[2].x;
                      _6301 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[0].y;
                      _6302 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[1].y;
                      _6303 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[2].y;
                      _6305 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[0].z;
                      _6306 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[1].z;
                      _6307 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[2].z;
                      _6309 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[0].w;
                      _6310 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[1].w;
                      _6311 = __3__37__0__0__g_cloudDensityVolumes[_6291]._relativeWorldToLocal[2].w;
                      _6313 = __3__37__0__0__g_cloudDensityVolumes[_6291]._shapeParameter.x;
                      _6314 = __3__37__0__0__g_cloudDensityVolumes[_6291]._shapeParameter.z;
                      _6315 = __3__37__0__0__g_cloudDensityVolumes[_6291]._shapeParameter.w;
                      _6317 = __3__37__0__0__g_cloudDensityVolumes[_6291]._macroNoiseParameter.x;
                      _6318 = __3__37__0__0__g_cloudDensityVolumes[_6291]._macroNoiseParameter.y;
                      _6319 = __3__37__0__0__g_cloudDensityVolumes[_6291]._macroNoiseParameter.z;
                      _6320 = __3__37__0__0__g_cloudDensityVolumes[_6291]._macroNoiseParameter.w;
                      _6322 = __3__37__0__0__g_cloudDensityVolumes[_6291]._detailNoiseParameter.x;
                      _6323 = __3__37__0__0__g_cloudDensityVolumes[_6291]._detailNoiseParameter.y;
                      _6324 = __3__37__0__0__g_cloudDensityVolumes[_6291]._detailNoiseParameter.z;
                      _6325 = __3__37__0__0__g_cloudDensityVolumes[_6291]._detailNoiseParameter.w;
                      _6327 = __3__37__0__0__g_cloudDensityVolumes[_6291]._modeParameter.x;
                      _6328 = __3__37__0__0__g_cloudDensityVolumes[_6291]._modeParameter.y;
                      _6330 = __3__37__0__0__g_cloudDensityVolumes[_6291]._vortexParameter.x;
                      _6331 = __3__37__0__0__g_cloudDensityVolumes[_6291]._vortexParameter.y;
                      _6332 = __3__37__0__0__g_cloudDensityVolumes[_6291]._vortexParameter.z;
                      _6333 = __3__37__0__0__g_cloudDensityVolumes[_6291]._vortexParameter.w;
                      _6335 = __3__37__0__0__g_cloudDensityVolumes[_6291]._spiralParameter.x;
                      _6336 = __3__37__0__0__g_cloudDensityVolumes[_6291]._spiralParameter.y;
                      _6337 = __3__37__0__0__g_cloudDensityVolumes[_6291]._spiralParameter.z;
                      _6338 = __3__37__0__0__g_cloudDensityVolumes[_6291]._spiralParameter.w;
                      _6340 = __3__37__0__0__g_cloudDensityVolumes[_6291]._animationParameter.x;
                      _6341 = __3__37__0__0__g_cloudDensityVolumes[_6291]._animationParameter.y;
                      _6342 = __3__37__0__0__g_cloudDensityVolumes[_6291]._animationParameter.z;
                      _6343 = __3__37__0__0__g_cloudDensityVolumes[_6291]._animationParameter.w;
                      _6345 = __3__37__0__0__g_cloudDensityVolumes[_6291]._flowParameter.x;
                      _6346 = __3__37__0__0__g_cloudDensityVolumes[_6291]._flowParameter.y;
                      _6347 = __3__37__0__0__g_cloudDensityVolumes[_6291]._flowParameter.z;
                      _6349 = __3__37__0__0__g_cloudDensityVolumes[_6291]._tornadoParameter.x;
                      _6350 = __3__37__0__0__g_cloudDensityVolumes[_6291]._tornadoParameter.y;
                      _6351 = __3__37__0__0__g_cloudDensityVolumes[_6291]._tornadoParameter.z;
                      _6352 = __3__37__0__0__g_cloudDensityVolumes[_6291]._tornadoParameter.w;
                      _6356 = mad(_6305, _4464, mad(_6301, _6142, (_6297 * _6141))) + _6309;
                      _6360 = mad(_6306, _4464, mad(_6302, _6142, (_6298 * _6141))) + _6310;
                      _6364 = mad(_6307, _4464, mad(_6303, _6142, (_6299 * _6141))) + _6311;
                      _6366 = abs(_6360);
                      _6372 = max((abs(_6356) + -0.5f), max((_6366 + -0.5f), (abs(_6364) + -0.5f)));
                      if (!(_6372 >= 0.0f)) {
                        _6375 = __3__37__0__0__g_cloudDensityVolumes[_6291]._shapeParameter.y;
                        _6378 = max((saturate(_6375) * 0.5f), 0.0001f);
                        _6381 = saturate((_6378 + _6372) / _6378);  // [sem: expr_sat]
                        _6386 = 1.0f - ((_6381 * _6381) * (3.0f - (_6381 * 2.0f)));
                        if (!(_6386 <= 0.0f)) {
                          _6395 = sqrt((_6364 * _6364) + (_6356 * _6356)) * 2.0f;
                          _6399 = saturate(1.0f - (_6395 / max(_6331, 0.0001f)));  // [sem: expr_sat]
                          _6400 = _time.x * _6343;
                          _6401 = (_6327 == 1);
                          _6402 = (_6327 == 2);
                          if (_6401) {
                            _6479 = exp2(log2(_6399) * max(_6338, 0.0001f));
                            _6481 = max(_6337, 0.0001f);
                            _6485 = _6360 / (((max(_6336, 0.0001f) - _6481) * _6479) + _6481);
                            _6492 = (((_6399 * _6399) * _6330) * ((_6395 * _6332) + _6360)) - (_6399 * _6400);
                            _6493 = sin(_6492);
                            _6494 = cos(_6492);
                            _6497 = (_6494 * _6356) - (_6493 * _6364);
                            _6500 = (_6494 * _6364) + (_6493 * _6356);
                            if (_6402) {
                              _6502 = 0.0f;
                              _6503 = 1.0f;
                              _6504 = _6479;
                              _6505 = _6399;
                              _6506 = _6497;
                              _6507 = _6485;
                              _6508 = _6500;
                              _6528 = _6503;
                              _6529 = _6504;
                              _6530 = _6505;
                              _6531 = _6506;
                              _6532 = _6507;
                              _6533 = _6508;
                              _6534 = max(_6502, ((_6366 * 2.0f) + -1.0f));
                            } else {
                              _6513 = _6479;
                              _6514 = _6497;
                              _6515 = _6485;
                              _6516 = _6500;
                              _6517 = _6514 * 2.0f;
                              _6518 = _6515 * 2.0f;
                              _6519 = _6516 * 2.0f;
                              _6528 = 1.0f;
                              _6529 = _6513;
                              _6530 = _6399;
                              _6531 = _6514;
                              _6532 = _6515;
                              _6533 = _6516;
                              _6534 = (sqrt(((_6518 * _6518) + (_6517 * _6517)) + (_6519 * _6519)) + -1.0f);
                            }
                          } else {
                            if (_6402) {
                              _6406 = saturate(_6360 + 0.5f);  // [sem: expr_sat]
                              _6412 = max(_6349, 0.0001f);
                              _6415 = ((max(_6350, 0.0001f) - _6412) * exp2(log2(_6406) * max(_6351, 0.0001f))) + _6412;
                              _6417 = atan(_6364 / _6356);
                              _6420 = (_6356 < 0.0f);
                              _6421 = (_6356 == 0.0f);
                              _6422 = (_6364 >= 0.0f);
                              _6423 = (_6364 < 0.0f);
                              _6433 = max(((float)((uint)((uint)(_6328)))), 1.0f);
                              _6434 = _6406 * _6332;
                              _6445 = _6415 * _6325;
                              _6447 = max((_6415 - _6445), 0.0f);
                              _6448 = _6395 - _6447;
                              _6449 = _6447 * (acos(min(max(cos(((((_6434 * -6.2831855f) - _6400) + select((_6421 && _6422), 1.5707964f, select((_6421 && _6423), -1.5707964f, select((_6420 && _6423), (_6417 + -3.1415927f), select((_6420 && _6422), (_6417 + 3.1415927f), _6417))))) * _6433) + _6335), -1.0f), 1.0f)) / _6433);
                              _6454 = _6395 - _6415;
                              _6463 = saturate(1.0f - (_6395 / _6415));  // [sem: expr_sat]
                              _6466 = ((_6463 + _6434) * _6330) - _6400;
                              _6467 = sin(_6466);
                              _6468 = cos(_6466);
                              _6502 = ((saturate(_6333) * (((-0.0f - _6454) - _6445) + sqrt((_6448 * _6448) + (_6449 * _6449)))) + _6454);
                              _6503 = _6415;
                              _6504 = 0.0f;
                              _6505 = _6463;
                              _6506 = ((_6468 * _6356) - (_6467 * _6364));
                              _6507 = _6360;
                              _6508 = ((_6468 * _6364) + (_6467 * _6356));
                              _6528 = _6503;
                              _6529 = _6504;
                              _6530 = _6505;
                              _6531 = _6506;
                              _6532 = _6507;
                              _6533 = _6508;
                              _6534 = max(_6502, ((_6366 * 2.0f) + -1.0f));
                            } else {
                              _6513 = 0.0f;
                              _6514 = _6356;
                              _6515 = _6360;
                              _6516 = _6364;
                              _6517 = _6514 * 2.0f;
                              _6518 = _6515 * 2.0f;
                              _6519 = _6516 * 2.0f;
                              _6528 = 1.0f;
                              _6529 = _6513;
                              _6530 = _6399;
                              _6531 = _6514;
                              _6532 = _6515;
                              _6533 = _6516;
                              _6534 = (sqrt(((_6518 * _6518) + (_6517 * _6517)) + (_6519 * _6519)) + -1.0f);
                            }
                          }
                          if (_6318 > 0.0f) {
                            _6537 = _time.x * _6341;
                            _6541 = max(_6317, 0.0001f);
                            _6559 = (_6534 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6537 * _6345) + _6319) + (_6541 * _6531)), (((_6537 * _6346) + _6320) + (_6541 * _6532)), (((_6537 * _6347) + _6324) + (_6541 * _6533))), 0.0f)).x) + -0.5f) * _6318));
                          } else {
                            _6559 = _6534;
                          }
                          if (_6401 && (_6333 > 0.0f)) {
                            _6564 = atan(_6364 / _6356);
                            _6567 = (_6356 < 0.0f);
                            _6568 = (_6356 == 0.0f);
                            _6569 = (_6364 >= 0.0f);
                            _6570 = (_6364 < 0.0f);
                            _6592 = (_6559 - (((_6333 * 0.5f) * _6530) * cos(((((_6395 * _6332) - _6400) + select((_6568 && _6569), 1.5707964f, select((_6568 && _6570), -1.5707964f, select((_6567 && _6570), (_6564 + -3.1415927f), select((_6567 && _6569), (_6564 + 3.1415927f), _6564))))) * max(((float)((uint)((uint)(_6328)))), 1.0f)) + _6335)));
                          } else {
                            _6592 = _6559;
                          }
                          if (_6402 && (_6352 > 0.0f)) {
                            _6600 = max(_6592, ((_6528 * _6352) - _6395));
                          } else {
                            _6600 = _6592;
                          }
                          _6602 = max(_6315, 0.0001f);
                          _6608 = saturate((((_6314 - (_6529 * _6340)) + _6600) + _6602) / (_6602 * 2.0f));  // [sem: expr_sat]
                          _6613 = 1.0f - ((_6608 * _6608) * (3.0f - (_6608 * 2.0f)));
                          if (!((_6613 >= 1.0f) || ((_6119 || (_6323 <= 0.0f)) || (_6613 <= 0.0f)))) {
                            _6621 = _time.x * _6342;
                            _6625 = max(_6322, 0.0001f);
                            // [sem: expr_sat]
                            _6649 = saturate(_6613 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_6621 * _6345) + _6319) + (_6625 * _6531)), (((_6621 * _6346) + _6320) + (_6625 * _6532)), (((_6621 * _6347) + _6324) + (_6625 * _6533))), 0.0f)).x) * _6323) * saturate(1.0f - abs((_6613 * 2.0f) + -1.0f))));
                          } else {
                            _6649 = _6613;  // [sem: expr_sat]
                          }
                          _6654 = (((_6386 * _6313) * _6649) + _6290);
                        } else {
                          _6654 = _6290;
                        }
                      } else {
                        _6654 = _6290;
                      }
                    } else {
                      _6654 = _6290;
                    }
                    _6655 = (uint)((uint)(_6291)) + (uint)(1);
                    if ((uint)_6655 < (uint)_cloudDensityVolumeInfo.x) {
                      _6290 = _6654;
                      _6291 = _6655;
                      continue;
                    }
                    while(true) {
                      _6660 = saturate(_6654);  // [sem: _6654_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _6660 = 0.0f;  // [sem: _6654_sat]
                }
                _6663 = _4464 + -50.0f;
                _6664 = _4462 - _viewPos.x;
                _6665 = _6663 - _viewPos.z;
                _6669 = sqrt((_6664 * _6664) + (_6665 * _6665));
                _6674 = _cloudAltitude - (max(((_6669 * _6669) + -400000.0f), 0.0f) * 1e-06f);
                _6681 = ((sqrt(((_6663 * _6663) + _4548) + _6156) - _earthRadius) - _6674) / _cloudThickness;
                if (!((_6681 < 0.0f) || (_6681 > 1.0f))) {
                  _6703 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _6704 = _6142 - _6674;
                  _6720 = _5550 / _5553;
                  _6721 = _6720 * _5553;
                  _6723 = _6720 * _6703;
                  _6735 = saturate(max((_6669 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _6739 = (4.0f - (_6735 * 3.0f)) * (_cloudDetailScale * 0.001884f);
                  _6743 = _6721 * 4.355f;
                  _6760 = 1.0f - sqrt(saturate((1.0f - _6681) * 1.4285715f));
                  _6782 = ((((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5550 * _4462) - (_6721 * _cloudScroll.x)), ((_6704 * _5550) - _6723), ((_5550 * _6663) - (_6721 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((_6735 * 0.4f) + 0.1f)) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6739 * _4462) - (_6743 * _cloudScroll.x)), ((_6739 * _6704) - (_6723 * 4.355f)), ((_6739 * _6663) - (_6743 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6681 * 4.0f) * 0.8f) + 0.2f);
                  _6789 = (saturate(((saturate(saturate(((_6139.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5553 * (_4462 - _cloudScroll.x)), ((_6704 * _5553) - _6703), (_5553 * (_6663 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6760 * 0.5f), ((_6760 * _6760) * _6760))) * saturate(_6681 * 10.0f)) - _6782) / (1.0f - _6782)) * _cloudAlpha);
                } else {
                  _6789 = 0.0f;
                }
                if (_6272) {
                  _6799 = saturate(((_6669 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _6799 = 1.0f;  // [sem: expr_sat]
                }
                if (!(_cloudDensityVolumeInfo.x == 0)) {
                  _6808 = 0.0f;
                  _6809 = 0;
                  while(true) {
                    _7172 = _6808;
                    if (!((uint)(_6809 & 16) > (uint)15)) {
                      _6815 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[0].x;
                      _6816 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[1].x;
                      _6817 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[2].x;
                      _6819 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[0].y;
                      _6820 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[1].y;
                      _6821 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[2].y;
                      _6823 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[0].z;
                      _6824 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[1].z;
                      _6825 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[2].z;
                      _6827 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[0].w;
                      _6828 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[1].w;
                      _6829 = __3__37__0__0__g_cloudDensityVolumes[_6809]._relativeWorldToLocal[2].w;
                      _6831 = __3__37__0__0__g_cloudDensityVolumes[_6809]._shapeParameter.x;
                      _6832 = __3__37__0__0__g_cloudDensityVolumes[_6809]._shapeParameter.z;
                      _6833 = __3__37__0__0__g_cloudDensityVolumes[_6809]._shapeParameter.w;
                      _6835 = __3__37__0__0__g_cloudDensityVolumes[_6809]._macroNoiseParameter.x;
                      _6836 = __3__37__0__0__g_cloudDensityVolumes[_6809]._macroNoiseParameter.y;
                      _6837 = __3__37__0__0__g_cloudDensityVolumes[_6809]._macroNoiseParameter.z;
                      _6838 = __3__37__0__0__g_cloudDensityVolumes[_6809]._macroNoiseParameter.w;
                      _6840 = __3__37__0__0__g_cloudDensityVolumes[_6809]._detailNoiseParameter.x;
                      _6841 = __3__37__0__0__g_cloudDensityVolumes[_6809]._detailNoiseParameter.y;
                      _6842 = __3__37__0__0__g_cloudDensityVolumes[_6809]._detailNoiseParameter.z;
                      _6843 = __3__37__0__0__g_cloudDensityVolumes[_6809]._detailNoiseParameter.w;
                      _6845 = __3__37__0__0__g_cloudDensityVolumes[_6809]._modeParameter.x;
                      _6846 = __3__37__0__0__g_cloudDensityVolumes[_6809]._modeParameter.y;
                      _6848 = __3__37__0__0__g_cloudDensityVolumes[_6809]._vortexParameter.x;
                      _6849 = __3__37__0__0__g_cloudDensityVolumes[_6809]._vortexParameter.y;
                      _6850 = __3__37__0__0__g_cloudDensityVolumes[_6809]._vortexParameter.z;
                      _6851 = __3__37__0__0__g_cloudDensityVolumes[_6809]._vortexParameter.w;
                      _6853 = __3__37__0__0__g_cloudDensityVolumes[_6809]._spiralParameter.x;
                      _6854 = __3__37__0__0__g_cloudDensityVolumes[_6809]._spiralParameter.y;
                      _6855 = __3__37__0__0__g_cloudDensityVolumes[_6809]._spiralParameter.z;
                      _6856 = __3__37__0__0__g_cloudDensityVolumes[_6809]._spiralParameter.w;
                      _6858 = __3__37__0__0__g_cloudDensityVolumes[_6809]._animationParameter.x;
                      _6859 = __3__37__0__0__g_cloudDensityVolumes[_6809]._animationParameter.y;
                      _6860 = __3__37__0__0__g_cloudDensityVolumes[_6809]._animationParameter.z;
                      _6861 = __3__37__0__0__g_cloudDensityVolumes[_6809]._animationParameter.w;
                      _6863 = __3__37__0__0__g_cloudDensityVolumes[_6809]._flowParameter.x;
                      _6864 = __3__37__0__0__g_cloudDensityVolumes[_6809]._flowParameter.y;
                      _6865 = __3__37__0__0__g_cloudDensityVolumes[_6809]._flowParameter.z;
                      _6867 = __3__37__0__0__g_cloudDensityVolumes[_6809]._tornadoParameter.x;
                      _6868 = __3__37__0__0__g_cloudDensityVolumes[_6809]._tornadoParameter.y;
                      _6869 = __3__37__0__0__g_cloudDensityVolumes[_6809]._tornadoParameter.z;
                      _6870 = __3__37__0__0__g_cloudDensityVolumes[_6809]._tornadoParameter.w;
                      _6874 = mad(_6823, _6663, mad(_6819, _6142, (_6815 * _4462))) + _6827;
                      _6878 = mad(_6824, _6663, mad(_6820, _6142, (_6816 * _4462))) + _6828;
                      _6882 = mad(_6825, _6663, mad(_6821, _6142, (_6817 * _4462))) + _6829;
                      _6884 = abs(_6878);
                      _6890 = max((abs(_6874) + -0.5f), max((_6884 + -0.5f), (abs(_6882) + -0.5f)));
                      if (!(_6890 >= 0.0f)) {
                        _6893 = __3__37__0__0__g_cloudDensityVolumes[_6809]._shapeParameter.y;
                        _6896 = max((saturate(_6893) * 0.5f), 0.0001f);
                        _6899 = saturate((_6896 + _6890) / _6896);  // [sem: expr_sat]
                        _6904 = 1.0f - ((_6899 * _6899) * (3.0f - (_6899 * 2.0f)));
                        if (!(_6904 <= 0.0f)) {
                          _6913 = sqrt((_6882 * _6882) + (_6874 * _6874)) * 2.0f;
                          _6917 = saturate(1.0f - (_6913 / max(_6849, 0.0001f)));  // [sem: expr_sat]
                          _6918 = _time.x * _6861;
                          _6919 = (_6845 == 1);
                          _6920 = (_6845 == 2);
                          if (_6919) {
                            _6997 = exp2(log2(_6917) * max(_6856, 0.0001f));
                            _6999 = max(_6855, 0.0001f);
                            _7003 = _6878 / (((max(_6854, 0.0001f) - _6999) * _6997) + _6999);
                            _7010 = (((_6917 * _6917) * _6848) * ((_6913 * _6850) + _6878)) - (_6917 * _6918);
                            _7011 = sin(_7010);
                            _7012 = cos(_7010);
                            _7015 = (_7012 * _6874) - (_7011 * _6882);
                            _7018 = (_7012 * _6882) + (_7011 * _6874);
                            if (_6920) {
                              _7020 = 0.0f;
                              _7021 = 1.0f;
                              _7022 = _6997;
                              _7023 = _6917;
                              _7024 = _7015;
                              _7025 = _7003;
                              _7026 = _7018;
                              _7046 = _7021;
                              _7047 = _7022;
                              _7048 = _7023;
                              _7049 = _7024;
                              _7050 = _7025;
                              _7051 = _7026;
                              _7052 = max(_7020, ((_6884 * 2.0f) + -1.0f));
                            } else {
                              _7031 = _6997;
                              _7032 = _7015;
                              _7033 = _7003;
                              _7034 = _7018;
                              _7035 = _7032 * 2.0f;
                              _7036 = _7033 * 2.0f;
                              _7037 = _7034 * 2.0f;
                              _7046 = 1.0f;
                              _7047 = _7031;
                              _7048 = _6917;
                              _7049 = _7032;
                              _7050 = _7033;
                              _7051 = _7034;
                              _7052 = (sqrt(((_7036 * _7036) + (_7035 * _7035)) + (_7037 * _7037)) + -1.0f);
                            }
                          } else {
                            if (_6920) {
                              _6924 = saturate(_6878 + 0.5f);  // [sem: expr_sat]
                              _6930 = max(_6867, 0.0001f);
                              _6933 = ((max(_6868, 0.0001f) - _6930) * exp2(log2(_6924) * max(_6869, 0.0001f))) + _6930;
                              _6935 = atan(_6882 / _6874);
                              _6938 = (_6874 < 0.0f);
                              _6939 = (_6874 == 0.0f);
                              _6940 = (_6882 >= 0.0f);
                              _6941 = (_6882 < 0.0f);
                              _6951 = max(((float)((uint)((uint)(_6846)))), 1.0f);
                              _6952 = _6924 * _6850;
                              _6963 = _6933 * _6843;
                              _6965 = max((_6933 - _6963), 0.0f);
                              _6966 = _6913 - _6965;
                              _6967 = _6965 * (acos(min(max(cos(((((_6952 * -6.2831855f) - _6918) + select((_6939 && _6940), 1.5707964f, select((_6939 && _6941), -1.5707964f, select((_6938 && _6941), (_6935 + -3.1415927f), select((_6938 && _6940), (_6935 + 3.1415927f), _6935))))) * _6951) + _6853), -1.0f), 1.0f)) / _6951);
                              _6972 = _6913 - _6933;
                              _6981 = saturate(1.0f - (_6913 / _6933));  // [sem: expr_sat]
                              _6984 = ((_6981 + _6952) * _6848) - _6918;
                              _6985 = sin(_6984);
                              _6986 = cos(_6984);
                              _7020 = ((saturate(_6851) * (((-0.0f - _6972) - _6963) + sqrt((_6966 * _6966) + (_6967 * _6967)))) + _6972);
                              _7021 = _6933;
                              _7022 = 0.0f;
                              _7023 = _6981;
                              _7024 = ((_6986 * _6874) - (_6985 * _6882));
                              _7025 = _6878;
                              _7026 = ((_6986 * _6882) + (_6985 * _6874));
                              _7046 = _7021;
                              _7047 = _7022;
                              _7048 = _7023;
                              _7049 = _7024;
                              _7050 = _7025;
                              _7051 = _7026;
                              _7052 = max(_7020, ((_6884 * 2.0f) + -1.0f));
                            } else {
                              _7031 = 0.0f;
                              _7032 = _6874;
                              _7033 = _6878;
                              _7034 = _6882;
                              _7035 = _7032 * 2.0f;
                              _7036 = _7033 * 2.0f;
                              _7037 = _7034 * 2.0f;
                              _7046 = 1.0f;
                              _7047 = _7031;
                              _7048 = _6917;
                              _7049 = _7032;
                              _7050 = _7033;
                              _7051 = _7034;
                              _7052 = (sqrt(((_7036 * _7036) + (_7035 * _7035)) + (_7037 * _7037)) + -1.0f);
                            }
                          }
                          if (_6836 > 0.0f) {
                            _7055 = _time.x * _6859;
                            _7059 = max(_6835, 0.0001f);
                            _7077 = (_7052 - ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_7055 * _6863) + _6837) + (_7059 * _7049)), (((_7055 * _6864) + _6838) + (_7059 * _7050)), (((_7055 * _6865) + _6842) + (_7059 * _7051))), 0.0f)).x) + -0.5f) * _6836));
                          } else {
                            _7077 = _7052;
                          }
                          if (_6919 && (_6851 > 0.0f)) {
                            _7082 = atan(_6882 / _6874);
                            _7085 = (_6874 < 0.0f);
                            _7086 = (_6874 == 0.0f);
                            _7087 = (_6882 >= 0.0f);
                            _7088 = (_6882 < 0.0f);
                            _7110 = (_7077 - (((_6851 * 0.5f) * _7048) * cos(((((_6913 * _6850) - _6918) + select((_7086 && _7087), 1.5707964f, select((_7086 && _7088), -1.5707964f, select((_7085 && _7088), (_7082 + -3.1415927f), select((_7085 && _7087), (_7082 + 3.1415927f), _7082))))) * max(((float)((uint)((uint)(_6846)))), 1.0f)) + _6853)));
                          } else {
                            _7110 = _7077;
                          }
                          if (_6920 && (_6870 > 0.0f)) {
                            _7118 = max(_7110, ((_7046 * _6870) - _6913));
                          } else {
                            _7118 = _7110;
                          }
                          _7120 = max(_6833, 0.0001f);
                          _7126 = saturate((((_6832 - (_7047 * _6858)) + _7118) + _7120) / (_7120 * 2.0f));  // [sem: expr_sat]
                          _7131 = 1.0f - ((_7126 * _7126) * (3.0f - (_7126 * 2.0f)));
                          if (!((_7131 >= 1.0f) || ((_6119 || (_6841 <= 0.0f)) || (_7131 <= 0.0f)))) {
                            _7139 = _time.x * _6860;
                            _7143 = max(_6840, 0.0001f);
                            // [sem: expr_sat]
                            _7167 = saturate(_7131 - ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((((_7139 * _6863) + _6837) + (_7143 * _7049)), (((_7139 * _6864) + _6838) + (_7143 * _7050)), (((_7139 * _6865) + _6842) + (_7143 * _7051))), 0.0f)).x) * _6841) * saturate(1.0f - abs((_7131 * 2.0f) + -1.0f))));
                          } else {
                            _7167 = _7131;  // [sem: expr_sat]
                          }
                          _7172 = (((_6904 * _6831) * _7167) + _6808);
                        } else {
                          _7172 = _6808;
                        }
                      } else {
                        _7172 = _6808;
                      }
                    } else {
                      _7172 = _6808;
                    }
                    _7173 = (uint)((uint)(_6809)) + (uint)(1);
                    if ((uint)_7173 < (uint)_cloudDensityVolumeInfo.x) {
                      _6808 = _7172;
                      _6809 = _7173;
                      continue;
                    }
                    while(true) {
                      _7178 = saturate(_7172);  // [sem: _7172_sat]
                      break;
                    }
                    break;
                  }
                } else {
                  _7178 = 0.0f;  // [sem: _7172_sat]
                }
                _7185 = max(_5343, (_6102 * _distanceScale));
                _7186 = ((_distanceScale * 20.0f) * (saturate(_7178 + (_6799 * _6789)) + saturate(_6660 + (_6282 * _6270))));
                break;
              }
            } else {
              _7185 = _5343;
              _7186 = ((log2(max(_5339, 0.5f)) * 0.6931472f) / _5342);
            }
            _7187 = dot(float3(_4554, _4555, _4556), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _7191 = min(max(_4676, 16.0f), (_atmosphereThickness + -16.0f));
            _7199 = max(_7191, 0.0f);
            _7208 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _7199) * _7199)) / (_earthRadius + _7199);
            if (_7187 > _7208) {
              _7231 = ((exp2(log2(saturate((_7187 - _7208) / (1.0f - _7208))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7231 = ((exp2(log2(saturate((_7208 - _7187) / (_7208 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _7233 = (exp2(log2(saturate((_7191 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _7236 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7233, _7231), 0.0f);
            _7239 = dot(float3(_4554, _4555, _4556), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_7239 > _7208) {
              _7262 = ((exp2(log2(saturate((_7239 - _7208) / (1.0f - _7208))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7262 = ((exp2(log2(saturate((_7208 - _7239) / (_7208 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _7263 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_7233, _7262), 0.0f);
            _7274 = ((_4686 + _4408) * 12.5f) + _4404;
            _7275 = ((_4687 + _4409) * 12.5f) + _4405;
            _7276 = ((_4546 + _4410) * 12.5f) + _4422;
            _7277 = ((_5273 + _4411) * 12.5f) + _4407;
            _7278 = _7277 + _7276;
            _7279 = _7236.x + _7274;
            _7286 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _7289 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _7291 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _7298 = _mieAerosolDensity * 2e-05f;
            _7299 = _7298 * (_mieAerosolAbsorption + 1.0f);
            _7309 = _cloudScatteringCoefficient / _distanceScale;
            _7310 = _7309 * (_7185 + _7278);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _7311 = (_7286 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _7313 = _7310 + (_7299 * (_7236.y + _7275));
            _7315 = (_7289 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _7318 = (_7291 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _7324 = exp2(((_7311 * _7279) + _7313) * -1.442695f);
            _7325 = exp2(((_7315 * _7279) + _7313) * -1.442695f);
            _7326 = exp2(((_7318 * _7279) + _7313) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_6_7324 = CloudReddeningFactor((_7185 + _7278), _dawnDuskFactor, false);
            _7325 *= _rndx_cloud_red_6_7324;
            _7326 *= _rndx_cloud_red_6_7324;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _7339 = ((_7325 * 0.33951f) + (_7324 * 0.61312f)) + (_7326 * 0.04737f);
            _7340 = ((_7325 * 0.91636f) + (_7324 * 0.0702f)) + (_7326 * 0.01345f);
            _7341 = ((_7325 * 0.10958f) + (_7324 * 0.02062f)) + (_7326 * 0.8698f);
            _7342 = _7339 * _4687;
            _7343 = _7340 * _4687;
            _7344 = _7341 * _4687;
            _7345 = _7309 * _distanceScale;
            _7352 = exp2(log2(1.0f - exp2((_7345 * -14.42695f) * _4546)) * 1.25f);
            _7356 = 1.0f - exp2((_7345 * -288.539f) * _5273);
            _7357 = _7356 * _5273;
            _7361 = _185 * 0.059683103f;
            _7366 = _miePhaseConst * _miePhaseConst;
            _7372 = _7366 + 1.0f;
            _7379 = (((1.0f - _7366) * 3.0f) / ((_7366 + 2.0f) * 2.0f)) * 0.07957747f;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
            //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
            //              the top of main): the sun in-scatter path consumes the boosted phase for a
            //              stronger forward-scatter lobe around the low sun, while the moon HG (_7549)
            //              keeps the vanilla _7372/_7379. When Dawn/Dusk Improvements is Off (or the
            //              sun is outside the dawn/dusk window) _boostedMieG equals the vanilla
            //              _miePhaseConst, so the boosted result is bit-identical to the vanilla term
            //              it mirrors.
            // [DAWN_DUSK] Sun HG uses boosted g - moon HG (_7549) still uses vanilla _7372/_7379
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              float _7366b = _boostedMieG * _boostedMieG;
              float _7372b = _7366b + 1.0f;
              float _7379b = (((1.0f - _7366b) * 3.0f) / ((_7366b + 2.0f) * 2.0f)) * 0.07957746833562851f;
              _7385 = (_7379b * _7298) * (_185 / exp2(log2(_7372b - (_boostedMieG * _187)) * 1.5f));
            } else {
              _7385 = (_7379 * _7298) * (_185 / exp2(log2(_7372 - (_miePhaseConst * _187)) * 1.5f));
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            _7394 = _7352 * ((_195 * 64.0f) * _4546);
            _7402 = _213 * 2.0f;
            _7403 = _volumeFogScatterColor.x * (_7357 * _7339);
            _7405 = _volumeFogScatterColor.y * (_7357 * _7340);
            _7407 = _volumeFogScatterColor.z * (_7357 * _7341);
            _7415 = _mieAerosolDensity * 0.00049999997f;
            _7419 = _213 * 50.0f;
            _7440 = (_7309 * (_7186 + _7278)) + (_7299 * _7275);
            _7449 = exp2(((_7311 * _7274) + _7440) * -1.442695f);
            _7450 = exp2(((_7315 * _7274) + _7440) * -1.442695f);
            _7451 = exp2(((_7318 * _7274) + _7440) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_7_7449 = CloudReddeningFactor((_7186 + _7278), _dawnDuskFactor, false);
            _7450 *= _rndx_cloud_red_7_7449;
            _7451 *= _rndx_cloud_red_7_7449;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _7464 = ((_7450 * 0.33951f) + (_7449 * 0.61312f)) + (_7451 * 0.04737f);
            _7465 = ((_7450 * 0.91636f) + (_7449 * 0.0702f)) + (_7451 * 0.01345f);
            _7466 = ((_7450 * 0.10958f) + (_7449 * 0.02062f)) + (_7451 * 0.8698f);
            _7471 = _4687 * _7298;
            _7475 = _7309 * (_5273 + _4546);
            _7477 = _7464 * ((_mieScatterColor.x * _7471) + _7475);
            _7483 = _4686 * 4.901961e-06f;
            _7484 = _7483 * _7286;
            _7488 = _7465 * ((_mieScatterColor.y * _7471) + _7475);
            _7494 = _7483 * _7289;
            _7498 = _7466 * ((_mieScatterColor.z * _7471) + _7475);
            _7504 = _7483 * _7291;
            _7507 = _7263.x + _7274;
            _7511 = _7310 + (_7299 * (_7263.y + _7275));
            _7520 = exp2(((_7311 * _7507) + _7511) * -1.442695f);
            _7521 = exp2(((_7315 * _7507) + _7511) * -1.442695f);
            _7522 = exp2(((_7318 * _7507) + _7511) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_8_7520 = CloudReddeningFactor((_7185 + _7278), _dawnDuskFactor, false);
            _7521 *= _rndx_cloud_red_8_7520;
            _7522 *= _rndx_cloud_red_8_7520;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _7535 = ((_7521 * 0.33951f) + (_7520 * 0.61312f)) + (_7522 * 0.04737f);
            _7536 = ((_7521 * 0.91636f) + (_7520 * 0.0702f)) + (_7522 * 0.01345f);
            _7537 = ((_7521 * 0.10958f) + (_7520 * 0.02062f)) + (_7522 * 0.8698f);
            _7538 = _221 * 0.059683103f;
            _7549 = (_7471 * _7379) * (_221 / exp2(log2(_7372 - (_miePhaseConst * _222)) * 1.5f));
            _7560 = ((((_237 * 2.0f) * _5273) * _7356) + (((_229 * 64.0f) * _4546) * _7352)) * _7309;
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
            // Description: Converts the Rayleigh in-scatter of this region's ray-march step with the
            //              spectral matrix instead of the vanilla RGB matrix, for the moon cluster
            //              (_7598/_7599/_7600) and the sun cluster (_7601/_7602/_7603) alike. In each
            //              cluster the Rayleigh sub-term is the one carrying a beta channel: the
            //              density carrier _7483 times the packed beta _7286/_7289/_7291, applied to
            //              a body+view transmittance times the body's Rayleigh phase (_7538 moon,
            //              _7361 sun) plus a view-only transmittance times that body's multi-scatter
            //              gather (_4665..4667 moon, _4662..4664 sun). Both halves are per-wavelength
            //              radiance, so each becomes a SKY_RAY_INSCATTER over the raw transmittance
            //              triple with the carrier passed through as the phase argument, which keeps
            //              the native scale exactly. The gather scalar stays factored onto the output
            //              row, matching the shipped pattern. Every other sub-term here is volume
            //              fog, cloud or Mie and carries no beta, so it keeps the vanilla matrix, and
            //              each Off arm is the complete native expression.
            _7598 = (((SKY_SCATTERING ? (SKY_RAY_INSCATTER(0, _7520, _7521, _7522, _7286, _7289, _7291, _7538 * _7483) + (_4665 * SKY_RAY_INSCATTER(0, _7449, _7450, _7451, _7286, _7289, _7291, _7483))) : (_7484 * ((_7535 * _7538) + (_7464 * _4665)))) + _4398) + (((((_7549 * _mieScatterColor.x) + _7560) * _7535) + (_7477 * _4665)) * 25.0f));
            _7599 = (((SKY_SCATTERING ? (SKY_RAY_INSCATTER(1, _7520, _7521, _7522, _7286, _7289, _7291, _7538 * _7483) + (_4666 * SKY_RAY_INSCATTER(1, _7449, _7450, _7451, _7286, _7289, _7291, _7483))) : (_7494 * ((_7536 * _7538) + (_7465 * _4666)))) + _4399) + (((((_7549 * _mieScatterColor.y) + _7560) * _7536) + (_7488 * _4666)) * 25.0f));
            _7600 = (((SKY_SCATTERING ? (SKY_RAY_INSCATTER(2, _7520, _7521, _7522, _7286, _7289, _7291, _7538 * _7483) + (_4667 * SKY_RAY_INSCATTER(2, _7449, _7450, _7451, _7286, _7289, _7291, _7483))) : (_7504 * ((_7537 * _7538) + (_7466 * _4667)))) + _4400) + (((((_7549 * _mieScatterColor.z) + _7560) * _7537) + (_7498 * _4667)) * 25.0f));
            _7601 = ((((_precomputedAmbients[48].x) * ((_7403 * _7419) + (_7342 * _7415))) + _4401) + (((SKY_SCATTERING ? ((_4662 * SKY_RAY_INSCATTER(0, _7449, _7450, _7451, _7286, _7289, _7291, _7483)) + SKY_RAY_INSCATTER(0, _7324, _7325, _7326, _7286, _7289, _7291, _7361 * _7483)) : (_7484 * ((_7464 * _4662) + (_7339 * _7361)))) + (((((_7385 * _7342) * _mieScatterColor.x) + (((_7403 * _7402) + (_7394 * _7339)) * _7309)) + (_7477 * _4662)) * 25.0f)) * _precomputedAmbient7.y));
            _7602 = ((((_precomputedAmbients[48].y) * ((_7405 * _7419) + (_7343 * _7415))) + _4402) + (((SKY_SCATTERING ? ((_4663 * SKY_RAY_INSCATTER(1, _7449, _7450, _7451, _7286, _7289, _7291, _7483)) + SKY_RAY_INSCATTER(1, _7324, _7325, _7326, _7286, _7289, _7291, _7361 * _7483)) : (_7494 * ((_7465 * _4663) + (_7340 * _7361)))) + (((((_7385 * _7343) * _mieScatterColor.y) + (((_7405 * _7402) + (_7394 * _7340)) * _7309)) + (_7488 * _4663)) * 25.0f)) * _precomputedAmbient7.y));
            _7603 = ((((_precomputedAmbients[48].z) * ((_7407 * _7419) + (_7344 * _7415))) + _4403) + (((SKY_SCATTERING ? ((_4664 * SKY_RAY_INSCATTER(2, _7449, _7450, _7451, _7286, _7289, _7291, _7483)) + SKY_RAY_INSCATTER(2, _7324, _7325, _7326, _7286, _7289, _7291, _7361 * _7483)) : (_7504 * ((_7466 * _4664) + (_7341 * _7361)))) + (((((_7385 * _7344) * _mieScatterColor.z) + (((_7407 * _7402) + (_7394 * _7341)) * _7309)) + (_7498 * _4664)) * 25.0f)) * _precomputedAmbient7.y));
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _7604 = _7274;
            _7605 = _7275;
            _7606 = _7276;
            _7607 = _7277;
            _7608 = _423;
            _7609 = _424;
            _7610 = _425;
            _7611 = _411;
          } else {
            _7598 = _4398;
            _7599 = _4399;
            _7600 = _4400;
            _7601 = _4401;
            _7602 = _4402;
            _7603 = _4403;
            _7604 = _4404;
            _7605 = _4405;
            _7606 = _4422;
            _7607 = _4407;
            _7608 = _423;
            _7609 = _424;
            _7610 = _425;
            _7611 = _411;
          }
          _8196 = _7611;
          _8197 = _7604;
          _8198 = _7605;
          _8199 = _7606;
          _8200 = _7607;
          _8201 = _7601;
          _8202 = _7602;
          _8203 = _7603;
          _8204 = _7598;
          _8205 = _7599;
          _8206 = _7600;
          _8207 = 1.0f;
          _8208 = 1.0f;
          _8209 = 1.0f;
          _8210 = 0.0f;
          _8211 = 0.0f;
          _8212 = 0.0f;
          _8213 = 0.0f;
          _8214 = 0.0f;
          _8215 = 0.0f;
        } else {
          _7613 = _411;
          _7614 = _423;
          _7615 = _424;
          _7616 = _425;
          _7617 = _4404;
          _7618 = _4405;
          _7619 = _4422;
          _7620 = _4407;
          _7621 = _4401;
          _7622 = _4402;
          _7623 = _4403;
          _7624 = _4398;
          _7625 = _4399;
          _7626 = _4400;
          if (_240 < _116) {
            _7632 = _viewPos.x + (_117 * _116);
            _7633 = _viewPos.y + (_118 * _116);
            _7634 = _viewPos.z + (_119 * _116);
            _7641 = _earthRadius + _7615;
            _7647 = sqrt(((_7616 * _7616) + (_7614 * _7614)) + (_7641 * _7641));
            _7648 = _7614 / _7647;
            _7649 = _7641 / _7647;
            _7650 = _7616 / _7647;
            _7653 = dot(float3(_7648, _7649, _7650), float3(_117, _118, _119));
            _7655 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _7658 = _atmosphereThickness + -16.0f;
            _7660 = min(max(max((_7647 - _earthRadius), 0.01f), 16.0f), _7658);
            _7662 = _atmosphereThickness + -32.0f;
            _7668 = max(_7660, 0.0f);
            _7669 = _earthRadius * 2.0f;
            _7675 = (-0.0f - sqrt((_7668 + _7669) * _7668)) / (_7668 + _earthRadius);
            _7676 = (_7653 > _7675);
            if (_7676) {
              _7698 = ((exp2(log2(saturate((_7653 - _7675) / (1.0f - _7675))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7698 = ((exp2(log2(saturate((_7675 - _7653) / (_7675 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _7700 = (exp2(log2(saturate((_7660 + -16.0f) / _7662)) * 0.5f) * 0.96875f) + 0.015625f;
            _7705 = (1.0f - exp2(-1.1541561f - (dot(float3(_7648, _7649, _7650), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _7708 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _7713 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
            _7720 = (_7655 * _7655) + 1.0f;
            _7721 = _7720 * 0.059683103f;
            _7725 = _miePhaseConst * _miePhaseConst;
            _7731 = _7725 + 1.0f;
            _7732 = _miePhaseConst * 2.0f;
            _7739 = (((1.0f - _7725) * 3.0f) / ((_7725 + 2.0f) * 2.0f)) * 0.07957747f;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              float _rndx_mie_g2_7740 = _boostedMieG * _boostedMieG;
              float _rndx_mie_g2p1_7740 = _rndx_mie_g2_7740 + 1.0f;
              float _rndx_mie_g2x_7740 = _boostedMieG * 2.0f;
              float _rndx_mie_norm_7740 = (((1.0f - _rndx_mie_g2_7740) * 3.0f) / ((_rndx_mie_g2_7740 + 2.0f) * 2.0f)) * 0.07957747f;
              _7740 = (_7720 / exp2(log2(_rndx_mie_g2p1_7740 - (_rndx_mie_g2x_7740 * _7655)) * 1.5f)) * _rndx_mie_norm_7740;
            } else {
              _7740 = (_7720 / exp2(log2(_7731 - (_7732 * _7655)) * 1.5f)) * _7739;
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _7745 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _7750 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
            _7754 = _earthRadius + _7633;
            _7760 = sqrt(((_7634 * _7634) + (_7632 * _7632)) + (_7754 * _7754));
            _7761 = _7632 / _7760;
            _7762 = _7754 / _7760;
            _7763 = _7634 / _7760;
            _7766 = dot(float3(_7761, _7762, _7763), float3(_117, _118, _119));
            _7769 = min(max(max((_7760 - _earthRadius), 0.01f), 16.0f), _7658);
            _7776 = max(_7769, 0.0f);
            _7782 = (-0.0f - sqrt((_7776 + _7669) * _7776)) / (_7776 + _earthRadius);
            _7783 = (_7766 > _7782);
            if (_7783) {
              _7805 = ((exp2(log2(saturate((_7766 - _7782) / (1.0f - _7782))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _7805 = ((exp2(log2(saturate((_7782 - _7766) / (_7782 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _7807 = (exp2(log2(saturate((_7769 + -16.0f) / _7662)) * 0.5f) * 0.96875f) + 0.015625f;
            _7812 = (1.0f - exp2(-1.1541561f - (dot(float3(_7761, _7762, _7763), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _7813 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _7817 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _7827 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _7831 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
            _7844 = dot(float3(_7614, _7641, _7616), float3(_117, _118, _119));
            _7845 = _7844 / _7647;
            _7846 = _7614 - _7632;
            _7847 = _7615 - _7633;
            _7848 = _7616 - _7634;
            _7854 = sqrt(((_7847 * _7847) + (_7846 * _7846)) + (_7848 * _7848));
            _7861 = sqrt((0.5f / _rayleighScaledHeight) * _7647);
            _7862 = sqrt((0.5f / _mieScaledHeight) * _7647);
            _7864 = (_7854 + _7844) / _7647;
            _7865 = _7861 * _7845;
            _7866 = _7864 * _7861;
            _7867 = _7862 * _7845;
            _7868 = _7864 * _7862;
            _7889 = (float)((int)((int)((int)(uint)((int)(_7865 > 0.0f))) - (int)((int)(uint)((int)(_7865 < 0.0f)))));
            _7890 = (float)((int)((int)((int)(uint)((int)(_7866 > 0.0f))) - (int)((int)(uint)((int)(_7866 < 0.0f)))));
            _7891 = (float)((int)((int)((int)(uint)((int)(_7867 > 0.0f))) - (int)((int)(uint)((int)(_7867 < 0.0f)))));
            _7892 = (float)((int)((int)((int)(uint)((int)(_7868 > 0.0f))) - (int)((int)(uint)((int)(_7868 < 0.0f)))));
            _7893 = _7865 * _7865;
            _7894 = _7867 * _7867;
            _7895 = (_7890 > _7889);
            if (_7895) {
              _7900 = exp2(_7893 * 1.442695f);
            } else {
              _7900 = 0.0f;
            }
            _7901 = (_7892 > _7891);
            if (_7901) {
              _7906 = exp2(_7894 * 1.442695f);
            } else {
              _7906 = 0.0f;
            }
            _7937 = -0.0f - _7854;
            _7943 = ((_7854 / (_7647 * 2.0f)) + _7845) * 1.442695f;
            _7950 = _7647 * 6.2831f;
            _7955 = _earthRadius - _7647;
            _7962 = exp2((_7955 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7950);
            _7963 = dot(float2((_7889 / (sqrt((_7893 * 1.52f) + 4.0f) + (abs(_7865) * 2.3193f))), (exp2(_7943 * (_7937 / _rayleighScaledHeight)) * (_7890 / (sqrt(((_7866 * _7866) * 1.52f) + 4.0f) + (abs(_7866) * 2.3193f))))), float2(1.0f, -1.0f));
            _7964 = dot(float2((_7891 / (sqrt((_7894 * 1.52f) + 4.0f) + (abs(_7867) * 2.3193f))), (exp2(_7943 * (_7937 / _mieScaledHeight)) * (_7892 / (sqrt(((_7868 * _7868) * 1.52f) + 4.0f) + (abs(_7868) * 2.3193f))))), float2(1.0f, -1.0f));
            _7967 = (_7963 + _7900) * _7962;
            _7987 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _7950) * 2e-05f) * exp2((_7955 / _mieScaledHeight) * 1.442695f));
            _7988 = _7987 * (_7964 + _7906);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _7994 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _7997 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _8000 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _8006 = exp2(((_7994 * _7967) + _7988) * -1.442695f);
            _8007 = exp2(((_7997 * _7967) + _7988) * -1.442695f);
            _8008 = exp2(((_8000 * _7967) + _7988) * -1.442695f);
            _8032 = dot(float3(_117, _118, _119), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_7676) {
              _8054 = ((exp2(log2(saturate((_7653 - _7675) / (1.0f - _7675))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _8054 = ((exp2(log2(saturate((_7675 - _7653) / (_7675 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _8059 = (1.0f - exp2(-1.1541561f - (dot(float3(_7648, _7649, _7650), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _8060 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _8064 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
            _8069 = (_8032 * _8032) + 1.0f;
            _8070 = _8069 * 0.059683103f;
            _8080 = (_8069 / exp2(log2(_7731 - (_7732 * _8032)) * 1.5f)) * _7739;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _8084 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _8088 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
            if (_7783) {
              _8114 = ((exp2(log2(saturate((_7766 - _7782) / (1.0f - _7782))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _8114 = ((exp2(log2(saturate((_7782 - _7766) / (_7782 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _8119 = (1.0f - exp2(-1.1541561f - (dot(float3(_7761, _7762, _7763), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _8120 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _8124 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _8134 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _8138 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
            if (_7895) {
              _8155 = exp2(_7893 * 1.442695f);
            } else {
              _8155 = 0.0f;
            }
            if (_7901) {
              _8160 = exp2(_7894 * 1.442695f);
            } else {
              _8160 = 0.0f;
            }
            _8163 = (_8155 + _7963) * _7962;
            _8164 = _7987 * (_8160 + _7964);
            _8196 = _7613;
            _8197 = _7617;
            _8198 = _7618;
            _8199 = _7619;
            _8200 = _7620;
            _8201 = _7621;
            _8202 = _7622;
            _8203 = _7623;
            _8204 = _7624;
            _8205 = _7625;
            _8206 = _7626;
            _8207 = _8006;
            _8208 = _8007;
            _8209 = _8008;
            _8210 = max(0.0f, (((((_7740 * _7713.x) + (_7708.x * _7721)) + _7745.x) + _7750.x) - (_8006 * ((((_7817.x * _7740) + (_7813.x * _7721)) + _7827.x) + _7831.x))));
            _8211 = max(0.0f, (((((_7740 * _7713.y) + (_7708.y * _7721)) + _7745.y) + _7750.y) - (_8007 * ((((_7817.y * _7740) + (_7813.y * _7721)) + _7827.y) + _7831.y))));
            _8212 = max(0.0f, (((((_7740 * _7713.z) + (_7708.z * _7721)) + _7745.z) + _7750.z) - (_8008 * ((((_7817.z * _7740) + (_7813.z * _7721)) + _7827.z) + _7831.z))));
            _8213 = max(0.0f, (((((_8080 * _8064.x) + (_8060.x * _8070)) + _8084.x) + _8088.x) - (exp2((_8164 + (_8163 * _7994)) * -1.442695f) * ((((_8124.x * _8080) + (_8120.x * _8070)) + _8134.x) + _8138.x))));
            _8214 = max(0.0f, (((((_8080 * _8064.y) + (_8060.y * _8070)) + _8084.y) + _8088.y) - (exp2((_8164 + (_8163 * _7997)) * -1.442695f) * ((((_8124.y * _8080) + (_8120.y * _8070)) + _8134.y) + _8138.y))));
            _8215 = max(0.0f, (((((_8080 * _8064.z) + (_8060.z * _8070)) + _8084.z) + _8088.z) - (exp2((_8164 + (_8163 * _8000)) * -1.442695f) * ((((_8124.z * _8080) + (_8120.z * _8070)) + _8134.z) + _8138.z))));
          } else {
            _8196 = _7613;
            _8197 = _7617;
            _8198 = _7618;
            _8199 = _7619;
            _8200 = _7620;
            _8201 = _7621;
            _8202 = _7622;
            _8203 = _7623;
            _8204 = _7624;
            _8205 = _7625;
            _8206 = _7626;
            _8207 = 1.0f;
            _8208 = 1.0f;
            _8209 = 1.0f;
            _8210 = 0.0f;
            _8211 = 0.0f;
            _8212 = 0.0f;
            _8213 = 0.0f;
            _8214 = 0.0f;
            _8215 = 0.0f;
          }
        }
        break;
      }
    } else {
      _7598 = 0.0f;
      _7599 = 0.0f;
      _7600 = 0.0f;
      _7601 = 0.0f;
      _7602 = 0.0f;
      _7603 = 0.0f;
      _7604 = 0.0f;
      _7605 = 0.0f;
      _7606 = 0.0f;
      _7607 = 0.0f;
      _7608 = _viewPos.x;
      _7609 = _viewPos.y;
      _7610 = _viewPos.z;
      _7611 = 0.0f;
      if (!_133) {
        _7613 = _7611;
        _7614 = _7608;
        _7615 = _7609;
        _7616 = _7610;
        _7617 = _7604;
        _7618 = _7605;
        _7619 = _7606;
        _7620 = _7607;
        _7621 = _7601;
        _7622 = _7602;
        _7623 = _7603;
        _7624 = _7598;
        _7625 = _7599;
        _7626 = _7600;
        if (_240 < _116) {
          _7632 = _viewPos.x + (_117 * _116);
          _7633 = _viewPos.y + (_118 * _116);
          _7634 = _viewPos.z + (_119 * _116);
          _7641 = _earthRadius + _7615;
          _7647 = sqrt(((_7616 * _7616) + (_7614 * _7614)) + (_7641 * _7641));
          _7648 = _7614 / _7647;
          _7649 = _7641 / _7647;
          _7650 = _7616 / _7647;
          _7653 = dot(float3(_7648, _7649, _7650), float3(_117, _118, _119));
          _7655 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _7658 = _atmosphereThickness + -16.0f;
          _7660 = min(max(max((_7647 - _earthRadius), 0.01f), 16.0f), _7658);
          _7662 = _atmosphereThickness + -32.0f;
          _7668 = max(_7660, 0.0f);
          _7669 = _earthRadius * 2.0f;
          _7675 = (-0.0f - sqrt((_7668 + _7669) * _7668)) / (_7668 + _earthRadius);
          _7676 = (_7653 > _7675);
          if (_7676) {
            _7698 = ((exp2(log2(saturate((_7653 - _7675) / (1.0f - _7675))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7698 = ((exp2(log2(saturate((_7675 - _7653) / (_7675 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7700 = (exp2(log2(saturate((_7660 + -16.0f) / _7662)) * 0.5f) * 0.96875f) + 0.015625f;
          _7705 = (1.0f - exp2(-1.1541561f - (dot(float3(_7648, _7649, _7650), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7708 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7713 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
          _7720 = (_7655 * _7655) + 1.0f;
          _7721 = _7720 * 0.059683103f;
          _7725 = _miePhaseConst * _miePhaseConst;
          _7731 = _7725 + 1.0f;
          _7732 = _miePhaseConst * 2.0f;
          _7739 = (((1.0f - _7725) * 3.0f) / ((_7725 + 2.0f) * 2.0f)) * 0.07957747f;
          _7740 = (_7720 / exp2(log2(_7731 - (_7732 * _7655)) * 1.5f)) * _7739;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7745 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7750 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _7698, _7705), 0.0f);
          _7754 = _earthRadius + _7633;
          _7760 = sqrt(((_7634 * _7634) + (_7632 * _7632)) + (_7754 * _7754));
          _7761 = _7632 / _7760;
          _7762 = _7754 / _7760;
          _7763 = _7634 / _7760;
          _7766 = dot(float3(_7761, _7762, _7763), float3(_117, _118, _119));
          _7769 = min(max(max((_7760 - _earthRadius), 0.01f), 16.0f), _7658);
          _7776 = max(_7769, 0.0f);
          _7782 = (-0.0f - sqrt((_7776 + _7669) * _7776)) / (_7776 + _earthRadius);
          _7783 = (_7766 > _7782);
          if (_7783) {
            _7805 = ((exp2(log2(saturate((_7766 - _7782) / (1.0f - _7782))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _7805 = ((exp2(log2(saturate((_7782 - _7766) / (_7782 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _7807 = (exp2(log2(saturate((_7769 + -16.0f) / _7662)) * 0.5f) * 0.96875f) + 0.015625f;
          _7812 = (1.0f - exp2(-1.1541561f - (dot(float3(_7761, _7762, _7763), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _7813 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _7817 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _7827 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _7831 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _7805, _7812), 0.0f);
          _7844 = dot(float3(_7614, _7641, _7616), float3(_117, _118, _119));
          _7845 = _7844 / _7647;
          _7846 = _7614 - _7632;
          _7847 = _7615 - _7633;
          _7848 = _7616 - _7634;
          _7854 = sqrt(((_7847 * _7847) + (_7846 * _7846)) + (_7848 * _7848));
          _7861 = sqrt((0.5f / _rayleighScaledHeight) * _7647);
          _7862 = sqrt((0.5f / _mieScaledHeight) * _7647);
          _7864 = (_7854 + _7844) / _7647;
          _7865 = _7861 * _7845;
          _7866 = _7864 * _7861;
          _7867 = _7862 * _7845;
          _7868 = _7864 * _7862;
          _7889 = (float)((int)((int)((int)(uint)((int)(_7865 > 0.0f))) - (int)((int)(uint)((int)(_7865 < 0.0f)))));
          _7890 = (float)((int)((int)((int)(uint)((int)(_7866 > 0.0f))) - (int)((int)(uint)((int)(_7866 < 0.0f)))));
          _7891 = (float)((int)((int)((int)(uint)((int)(_7867 > 0.0f))) - (int)((int)(uint)((int)(_7867 < 0.0f)))));
          _7892 = (float)((int)((int)((int)(uint)((int)(_7868 > 0.0f))) - (int)((int)(uint)((int)(_7868 < 0.0f)))));
          _7893 = _7865 * _7865;
          _7894 = _7867 * _7867;
          _7895 = (_7890 > _7889);
          if (_7895) {
            _7900 = exp2(_7893 * 1.442695f);
          } else {
            _7900 = 0.0f;
          }
          _7901 = (_7892 > _7891);
          if (_7901) {
            _7906 = exp2(_7894 * 1.442695f);
          } else {
            _7906 = 0.0f;
          }
          _7937 = -0.0f - _7854;
          _7943 = ((_7854 / (_7647 * 2.0f)) + _7845) * 1.442695f;
          _7950 = _7647 * 6.2831f;
          _7955 = _earthRadius - _7647;
          _7962 = exp2((_7955 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _7950);
          _7963 = dot(float2((_7889 / (sqrt((_7893 * 1.52f) + 4.0f) + (abs(_7865) * 2.3193f))), (exp2(_7943 * (_7937 / _rayleighScaledHeight)) * (_7890 / (sqrt(((_7866 * _7866) * 1.52f) + 4.0f) + (abs(_7866) * 2.3193f))))), float2(1.0f, -1.0f));
          _7964 = dot(float2((_7891 / (sqrt((_7894 * 1.52f) + 4.0f) + (abs(_7867) * 2.3193f))), (exp2(_7943 * (_7937 / _mieScaledHeight)) * (_7892 / (sqrt(((_7868 * _7868) * 1.52f) + 4.0f) + (abs(_7868) * 2.3193f))))), float2(1.0f, -1.0f));
          _7967 = (_7963 + _7900) * _7962;
          _7987 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _7950) * 2e-05f) * exp2((_7955 / _mieScaledHeight) * 1.442695f));
          _7988 = _7987 * (_7964 + _7906);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _7994 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _7997 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _8000 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _8006 = exp2(((_7994 * _7967) + _7988) * -1.442695f);
          _8007 = exp2(((_7997 * _7967) + _7988) * -1.442695f);
          _8008 = exp2(((_8000 * _7967) + _7988) * -1.442695f);
          _8032 = dot(float3(_117, _118, _119), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_7676) {
            _8054 = ((exp2(log2(saturate((_7653 - _7675) / (1.0f - _7675))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8054 = ((exp2(log2(saturate((_7675 - _7653) / (_7675 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8059 = (1.0f - exp2(-1.1541561f - (dot(float3(_7648, _7649, _7650), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _8060 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _8064 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
          _8069 = (_8032 * _8032) + 1.0f;
          _8070 = _8069 * 0.059683103f;
          _8080 = (_8069 / exp2(log2(_7731 - (_7732 * _8032)) * 1.5f)) * _7739;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8084 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8088 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7700, _8054, _8059), 0.0f);
          if (_7783) {
            _8114 = ((exp2(log2(saturate((_7766 - _7782) / (1.0f - _7782))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8114 = ((exp2(log2(saturate((_7782 - _7766) / (_7782 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8119 = (1.0f - exp2(-1.1541561f - (dot(float3(_7761, _7762, _7763), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _8120 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _8124 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8134 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8138 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7807, _8114, _8119), 0.0f);
          if (_7895) {
            _8155 = exp2(_7893 * 1.442695f);
          } else {
            _8155 = 0.0f;
          }
          if (_7901) {
            _8160 = exp2(_7894 * 1.442695f);
          } else {
            _8160 = 0.0f;
          }
          _8163 = (_8155 + _7963) * _7962;
          _8164 = _7987 * (_8160 + _7964);
          _8196 = _7613;
          _8197 = _7617;
          _8198 = _7618;
          _8199 = _7619;
          _8200 = _7620;
          _8201 = _7621;
          _8202 = _7622;
          _8203 = _7623;
          _8204 = _7624;
          _8205 = _7625;
          _8206 = _7626;
          _8207 = _8006;
          _8208 = _8007;
          _8209 = _8008;
          _8210 = max(0.0f, (((((_7740 * _7713.x) + (_7708.x * _7721)) + _7745.x) + _7750.x) - (_8006 * ((((_7817.x * _7740) + (_7813.x * _7721)) + _7827.x) + _7831.x))));
          _8211 = max(0.0f, (((((_7740 * _7713.y) + (_7708.y * _7721)) + _7745.y) + _7750.y) - (_8007 * ((((_7817.y * _7740) + (_7813.y * _7721)) + _7827.y) + _7831.y))));
          _8212 = max(0.0f, (((((_7740 * _7713.z) + (_7708.z * _7721)) + _7745.z) + _7750.z) - (_8008 * ((((_7817.z * _7740) + (_7813.z * _7721)) + _7827.z) + _7831.z))));
          _8213 = max(0.0f, (((((_8080 * _8064.x) + (_8060.x * _8070)) + _8084.x) + _8088.x) - (exp2((_8164 + (_8163 * _7994)) * -1.442695f) * ((((_8124.x * _8080) + (_8120.x * _8070)) + _8134.x) + _8138.x))));
          _8214 = max(0.0f, (((((_8080 * _8064.y) + (_8060.y * _8070)) + _8084.y) + _8088.y) - (exp2((_8164 + (_8163 * _7997)) * -1.442695f) * ((((_8124.y * _8080) + (_8120.y * _8070)) + _8134.y) + _8138.y))));
          _8215 = max(0.0f, (((((_8080 * _8064.z) + (_8060.z * _8070)) + _8084.z) + _8088.z) - (exp2((_8164 + (_8163 * _8000)) * -1.442695f) * ((((_8124.z * _8080) + (_8120.z * _8070)) + _8134.z) + _8138.z))));
        } else {
          _8196 = _7613;
          _8197 = _7617;
          _8198 = _7618;
          _8199 = _7619;
          _8200 = _7620;
          _8201 = _7621;
          _8202 = _7622;
          _8203 = _7623;
          _8204 = _7624;
          _8205 = _7625;
          _8206 = _7626;
          _8207 = 1.0f;
          _8208 = 1.0f;
          _8209 = 1.0f;
          _8210 = 0.0f;
          _8211 = 0.0f;
          _8212 = 0.0f;
          _8213 = 0.0f;
          _8214 = 0.0f;
          _8215 = 0.0f;
        }
      } else {
        _8196 = _7611;
        _8197 = _7604;
        _8198 = _7605;
        _8199 = _7606;
        _8200 = _7607;
        _8201 = _7601;
        _8202 = _7602;
        _8203 = _7603;
        _8204 = _7598;
        _8205 = _7599;
        _8206 = _7600;
        _8207 = 1.0f;
        _8208 = 1.0f;
        _8209 = 1.0f;
        _8210 = 0.0f;
        _8211 = 0.0f;
        _8212 = 0.0f;
        _8213 = 0.0f;
        _8214 = 0.0f;
        _8215 = 0.0f;
      }
    }
    if (_8196 < _241) {
      _8221 = (_241 * _117) + _viewPos.x;
      _8222 = (_241 * _119) + _viewPos.z;
      _8226 = min((_distanceScale * _8196), _241);
      _8230 = (_8226 * _117) + _viewPos.x;
      _8231 = (_8226 * _119) + _viewPos.z;
      _8238 = _earthRadius + _viewPos.y;
      _8239 = _8238 + (_8226 * _118);
      _8245 = sqrt(((_8231 * _8231) + (_8230 * _8230)) + (_8239 * _8239));
      _8246 = _8230 / _8245;
      _8247 = _8239 / _8245;
      _8248 = _8231 / _8245;
      _8251 = dot(float3(_8246, _8247, _8248), float3(_117, _118, _119));
      _8253 = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _8256 = _atmosphereThickness + -16.0f;
      _8258 = min(max(max((_8245 - _earthRadius), 0.01f), 16.0f), _8256);
      _8260 = _atmosphereThickness + -32.0f;
      _8266 = max(_8258, 0.0f);
      _8267 = _earthRadius * 2.0f;
      _8273 = (-0.0f - sqrt((_8266 + _8267) * _8266)) / (_8266 + _earthRadius);
      _8274 = (_8251 > _8273);
      if (_8274) {
        _8296 = ((exp2(log2(saturate((_8251 - _8273) / (1.0f - _8273))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _8296 = ((exp2(log2(saturate((_8273 - _8251) / (_8273 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _8298 = (exp2(log2(saturate((_8258 + -16.0f) / _8260)) * 0.5f) * 0.96875f) + 0.015625f;
      _8303 = (1.0f - exp2(-1.1541561f - (dot(float3(_8246, _8247, _8248), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _8306 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8296, _8303), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _8311 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8296, _8303), 0.0f);
      _8318 = (_8253 * _8253) + 1.0f;
      _8319 = _8318 * 0.059683103f;
      _8323 = _miePhaseConst * _miePhaseConst;
      _8329 = _8323 + 1.0f;
      _8330 = _miePhaseConst * 2.0f;
      _8337 = (((1.0f - _8323) * 3.0f) / ((_8323 + 2.0f) * 2.0f)) * 0.07957747f;
      // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
      // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
      [branch]
      if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
        float _rndx_mie_g2_8338 = _boostedMieG * _boostedMieG;
        float _rndx_mie_g2p1_8338 = _rndx_mie_g2_8338 + 1.0f;
        float _rndx_mie_g2x_8338 = _boostedMieG * 2.0f;
        float _rndx_mie_norm_8338 = (((1.0f - _rndx_mie_g2_8338) * 3.0f) / ((_rndx_mie_g2_8338 + 2.0f) * 2.0f)) * 0.07957747f;
        _8338 = (_8318 / exp2(log2(_rndx_mie_g2p1_8338 - (_rndx_mie_g2x_8338 * _8253)) * 1.5f)) * _rndx_mie_norm_8338;
      } else {
        _8338 = (_8318 / exp2(log2(_8329 - (_8330 * _8253)) * 1.5f)) * _8337;
      }
      // RenoDX: <<< [Patch: DawnDuskImprovements]
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _8343 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8296, _8303), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _8348 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8296, _8303), 0.0f);
      _8352 = _8238 + (_241 * _118);
      _8358 = sqrt(((_8222 * _8222) + (_8221 * _8221)) + (_8352 * _8352));
      _8359 = _8221 / _8358;
      _8360 = _8352 / _8358;
      _8361 = _8222 / _8358;
      _8364 = dot(float3(_8359, _8360, _8361), float3(_117, _118, _119));
      _8367 = min(max(max((_8358 - _earthRadius), 0.01f), 16.0f), _8256);
      _8374 = max(_8367, 0.0f);
      _8380 = (-0.0f - sqrt((_8374 + _8267) * _8374)) / (_8374 + _earthRadius);
      _8381 = (_8364 > _8380);
      if (_8381) {
        _8403 = ((exp2(log2(saturate((_8364 - _8380) / (1.0f - _8380))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _8403 = ((exp2(log2(saturate((_8380 - _8364) / (_8380 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _8405 = (exp2(log2(saturate((_8367 + -16.0f) / _8260)) * 0.5f) * 0.96875f) + 0.015625f;
      _8410 = (1.0f - exp2(-1.1541561f - (dot(float3(_8359, _8360, _8361), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _8411 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8403, _8410), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _8415 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8403, _8410), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _8425 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8403, _8410), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _8429 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8403, _8410), 0.0f);
      _8442 = dot(float3(_8230, _8239, _8231), float3(_117, _118, _119));
      _8443 = _8442 / _8245;
      _8444 = _8226 - _241;
      _8445 = _8444 * _117;
      _8446 = _8444 * _118;
      _8447 = _8444 * _119;
      _8453 = sqrt(((_8445 * _8445) + (_8446 * _8446)) + (_8447 * _8447));
      _8460 = sqrt((0.5f / _rayleighScaledHeight) * _8245);
      _8461 = sqrt((0.5f / _mieScaledHeight) * _8245);
      _8463 = (_8453 + _8442) / _8245;
      _8464 = _8460 * _8443;
      _8465 = _8463 * _8460;
      _8466 = _8461 * _8443;
      _8467 = _8463 * _8461;
      _8488 = (float)((int)((int)((int)(uint)((int)(_8464 > 0.0f))) - (int)((int)(uint)((int)(_8464 < 0.0f)))));
      _8489 = (float)((int)((int)((int)(uint)((int)(_8465 > 0.0f))) - (int)((int)(uint)((int)(_8465 < 0.0f)))));
      _8490 = (float)((int)((int)((int)(uint)((int)(_8466 > 0.0f))) - (int)((int)(uint)((int)(_8466 < 0.0f)))));
      _8491 = (float)((int)((int)((int)(uint)((int)(_8467 > 0.0f))) - (int)((int)(uint)((int)(_8467 < 0.0f)))));
      _8492 = _8464 * _8464;
      _8493 = _8466 * _8466;
      _8494 = (_8489 > _8488);
      if (_8494) {
        _8499 = exp2(_8492 * 1.442695f);
      } else {
        _8499 = 0.0f;
      }
      _8500 = (_8491 > _8490);
      if (_8500) {
        _8505 = exp2(_8493 * 1.442695f);
      } else {
        _8505 = 0.0f;
      }
      _8536 = -0.0f - _8453;
      _8542 = ((_8453 / (_8245 * 2.0f)) + _8443) * 1.442695f;
      _8549 = _8245 * 6.2831f;
      _8554 = _earthRadius - _8245;
      _8561 = exp2((_8554 / _rayleighScaledHeight) * 1.442695f) * sqrt(_rayleighScaledHeight * _8549);
      _8562 = dot(float2((_8488 / (sqrt((_8492 * 1.52f) + 4.0f) + (abs(_8464) * 2.3193f))), (exp2(_8542 * (_8536 / _rayleighScaledHeight)) * (_8489 / (sqrt(((_8465 * _8465) * 1.52f) + 4.0f) + (abs(_8465) * 2.3193f))))), float2(1.0f, -1.0f));
      _8563 = dot(float2((_8490 / (sqrt((_8493 * 1.52f) + 4.0f) + (abs(_8466) * 2.3193f))), (exp2(_8542 * (_8536 / _mieScaledHeight)) * (_8491 / (sqrt(((_8467 * _8467) * 1.52f) + 4.0f) + (abs(_8467) * 2.3193f))))), float2(1.0f, -1.0f));
      _8566 = (_8562 + _8499) * _8561;
      _8586 = ((_mieAerosolAbsorption + 1.0f) * _mieAerosolDensity) * ((sqrt(_mieScaledHeight * _8549) * 2e-05f) * exp2((_8554 / _mieScaledHeight) * 1.442695f));
      _8587 = _8586 * (_8563 + _8505);
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      _8592 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
      _8595 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
      _8598 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _8604 = exp2(((_8592 * _8566) + _8587) * -1.442695f);
      _8605 = exp2(((_8595 * _8566) + _8587) * -1.442695f);
      _8606 = exp2(((_8598 * _8566) + _8587) * -1.442695f);
      _8630 = dot(float3(_117, _118, _119), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      if (_8274) {
        _8652 = ((exp2(log2(saturate((_8251 - _8273) / (1.0f - _8273))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _8652 = ((exp2(log2(saturate((_8273 - _8251) / (_8273 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _8657 = (1.0f - exp2(-1.1541561f - (dot(float3(_8246, _8247, _8248), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _8658 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8652, _8657), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _8662 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8652, _8657), 0.0f);
      _8667 = (_8630 * _8630) + 1.0f;
      _8668 = _8667 * 0.059683103f;
      _8678 = (_8667 / exp2(log2(_8329 - (_8330 * _8630)) * 1.5f)) * _8337;
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _8682 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8652, _8657), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _8686 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8298, _8652, _8657), 0.0f);
      if (_8381) {
        _8712 = ((exp2(log2(saturate((_8364 - _8380) / (1.0f - _8380))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _8712 = ((exp2(log2(saturate((_8380 - _8364) / (_8380 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      _8717 = (1.0f - exp2(-1.1541561f - (dot(float3(_8359, _8360, _8361), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
      _8718 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8712, _8717), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
      _8722 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8712, _8717), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
      _8732 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8712, _8717), 0.0f);
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
      _8736 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8405, _8712, _8717), 0.0f);
      if (_8494) {
        _8753 = exp2(_8492 * 1.442695f);
      } else {
        _8753 = 0.0f;
      }
      if (_8500) {
        _8758 = exp2(_8493 * 1.442695f);
      } else {
        _8758 = 0.0f;
      }
      _8761 = (_8753 + _8562) * _8561;
      _8762 = _8586 * (_8758 + _8563);
      _8794 = _8604;
      _8795 = _8605;
      _8796 = _8606;
      _8797 = max(0.0f, (((((_8338 * _8311.x) + (_8306.x * _8319)) + _8343.x) + _8348.x) - (_8604 * ((((_8415.x * _8338) + (_8411.x * _8319)) + _8425.x) + _8429.x))));
      _8798 = max(0.0f, (((((_8338 * _8311.y) + (_8306.y * _8319)) + _8343.y) + _8348.y) - (_8605 * ((((_8415.y * _8338) + (_8411.y * _8319)) + _8425.y) + _8429.y))));
      _8799 = max(0.0f, (((((_8338 * _8311.z) + (_8306.z * _8319)) + _8343.z) + _8348.z) - (_8606 * ((((_8415.z * _8338) + (_8411.z * _8319)) + _8425.z) + _8429.z))));
      _8800 = max(0.0f, (((((_8678 * _8662.x) + (_8658.x * _8668)) + _8682.x) + _8686.x) - (exp2((_8762 + (_8761 * _8592)) * -1.442695f) * ((((_8722.x * _8678) + (_8718.x * _8668)) + _8732.x) + _8736.x))));
      _8801 = max(0.0f, (((((_8678 * _8662.y) + (_8658.y * _8668)) + _8682.y) + _8686.y) - (exp2((_8762 + (_8761 * _8595)) * -1.442695f) * ((((_8722.y * _8678) + (_8718.y * _8668)) + _8732.y) + _8736.y))));
      _8802 = max(0.0f, (((((_8678 * _8662.z) + (_8658.z * _8668)) + _8682.z) + _8686.z) - (exp2((_8762 + (_8761 * _8598)) * -1.442695f) * ((((_8722.z * _8678) + (_8718.z * _8668)) + _8732.z) + _8736.z))));
    } else {
      _8794 = _8207;
      _8795 = _8208;
      _8796 = _8209;
      _8797 = _8210;
      _8798 = _8211;
      _8799 = _8212;
      _8800 = _8213;
      _8801 = _8214;
      _8802 = _8215;
    }
    _8836 = ((_cloudScatteringCoefficient / _distanceScale) * (_8200 + _8199)) + (((_8198 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f));
    // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
    // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
    _8847 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _8197) + _8836) * -1.442695f);
    _8848 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _8197) + _8836) * -1.442695f);
    _8849 = exp2((_8836 + (((_ozoneRatio * SKY_OZONE_3) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _8197)) * -1.442695f);
    // RenoDX: <<< [Patch: SkySpectralOzone]
    _8868 = (((_8797 * _precomputedAmbient7.y) * _8847) + _8201) + (((_8847 * _8800) + _8204) * _precomputedAmbient7.w);
    _8869 = (((_8798 * _precomputedAmbient7.y) * _8848) + _8202) + (((_8848 * _8801) + _8205) * _precomputedAmbient7.w);
    _8870 = (((_8799 * _precomputedAmbient7.y) * _8849) + _8203) + (((_8849 * _8802) + _8206) * _precomputedAmbient7.w);
    _8871 = _8847 * _8794;
    _8872 = _8848 * _8795;
    _8873 = _8849 * _8796;
    if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
      _8917 = saturate(max(0.0f, (((-0.0f - (_118 * _116)) - _viewPos.y) + _atmosphereSeaBaseline)) * 2.0f);  // [sem: expr_sat]
      _8926 = (((1.0f - ((_8917 * _8917) * (3.0f - (_8917 * 2.0f)))) * 0.98f) + 0.02f);
    } else {
      _8926 = 1.0f;
    }
    _8931 = (((_8872 * 0.33951f) + (_8871 * 0.61312f)) + (_8873 * 0.04737f));
    _8932 = (((_8872 * 0.91636f) + (_8871 * 0.0702f)) + (_8873 * 0.01345f));
    _8933 = (((_8872 * 0.10958f) + (_8871 * 0.02062f)) + (_8873 * 0.8698f));
    // RenoDX: >>> [Patch: SpectralAerialPerspective] [Version: 1.16.00]
    // Description: Converts the aerial-perspective in-scatter this dome writes to
    //              g_texSkyInscatterUAV with the spectral matrix instead of the vanilla RGB matrix.
    //              The combined lanes _8868/_8869/_8870 mix two things: the precomputed-LUT aerial
    //              term (sun _8797.._8799 and moon _8800.._8802, already clamped at zero upstream)
    //              scaled by the segment transmittances _8847/_8848/_8849, which is per-wavelength
    //              radiance at 680/550/440 nm and takes SKY_SPEC_DOT; and the ray-march accumulator
    //              (sun _8201.._8203, moon _8204.._8206), which is already working space and which
    //              the native code converts a second time here. Splitting the two lets the
    //              accumulator keep SKY_VAN_DOT so that second conversion is reproduced exactly,
    //              while only the LUT term changes matrix. The max(0, ...) clamps upstream are
    //              untouched, the split is an exact re-association of the native sum, and the
    //              extinction write above stays on the vanilla matrix permanently because a
    //              transmittance needs rows summing to one.
    float _rndx_aerial_680 = ((_8797 * _precomputedAmbient7.y) * _8847) + ((_8847 * _8800) * _precomputedAmbient7.w);
    float _rndx_aerial_550 = ((_8798 * _precomputedAmbient7.y) * _8848) + ((_8848 * _8801) * _precomputedAmbient7.w);
    float _rndx_aerial_440 = ((_8799 * _precomputedAmbient7.y) * _8849) + ((_8849 * _8802) * _precomputedAmbient7.w);
    float _rndx_march_row0 = _8201 + (_8204 * _precomputedAmbient7.w);
    float _rndx_march_row1 = _8202 + (_8205 * _precomputedAmbient7.w);
    float _rndx_march_row2 = _8203 + (_8206 * _precomputedAmbient7.w);
    _8934 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8926 * (SKY_SPEC_DOT(0, _rndx_aerial_680, _rndx_aerial_550, _rndx_aerial_440) + SKY_VAN_DOT(0, _rndx_march_row0, _rndx_march_row1, _rndx_march_row2)))
      : (_8926 * (((_8869 * 0.33951f) + (_8868 * 0.61312f)) + (_8870 * 0.04737f)));
    _8935 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8926 * (SKY_SPEC_DOT(1, _rndx_aerial_680, _rndx_aerial_550, _rndx_aerial_440) + SKY_VAN_DOT(1, _rndx_march_row0, _rndx_march_row1, _rndx_march_row2)))
      : (_8926 * (((_8869 * 0.91636f) + (_8868 * 0.0702f)) + (_8870 * 0.01345f)));
    _8936 = SPECTRAL_AERIAL_PERSPECTIVE
      ? (_8926 * (SKY_SPEC_DOT(2, _rndx_aerial_680, _rndx_aerial_550, _rndx_aerial_440) + SKY_VAN_DOT(2, _rndx_march_row0, _rndx_march_row1, _rndx_march_row2)))
      : (_8926 * (((_8869 * 0.10958f) + (_8868 * 0.02062f)) + (_8870 * 0.8698f)));
    // RenoDX: <<< [Patch: SpectralAerialPerspective]
  } else {
    _8931 = 1.0f;
    _8932 = 1.0f;
    _8933 = 1.0f;
    _8934 = 0.0f;
    _8935 = 0.0f;
    _8936 = 0.0f;
  }
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Applies a directional warm/cool hue bias to the final inscatter during the
  //              dawn/dusk window: the sun-facing and away-from-sun hemispheres get distinct horizon
  //              hues (vanilla east and west horizons look nearly identical at sunrise and sunset).
  //              Bias colours come from WeatherInscatterBias via InscatterColorBias
  //              (sky_dawn_dusk_common.hlsli / sky_weather_common.hlsli); when Dynamic Dawn/Dusk
  //              Hues is additionally active the warm tint shifts per day cycle. Gated by
  //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements", default On per the
  //              addon.cpp settings list); when Off (or outside the window) the helper returns
  //              (1,1,1) and the multiplies are bit-exact no-ops.
  // [DAWN_DUSK] Inscatter colour bias
  float _viewSunDot = dot(float3(_117, _118, _119), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
  float3 _inscatterBias = InscatterColorBias(_viewSunDot, _dawnDuskFactor, float3(_8931, _8932, _8933));
  _8934 *= _inscatterBias.x;
  _8935 *= _inscatterBias.y;
  _8936 *= _inscatterBias.z;
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
    _8934 *= _nightSkyAtten;
    _8935 *= _nightSkyAtten;
    _8936 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8934, _8935, _8936, _64.x);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_8931, _8932, _8933, 0.0f);
}
