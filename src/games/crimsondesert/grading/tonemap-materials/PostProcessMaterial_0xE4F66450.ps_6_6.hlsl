struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float2 _seedPoint : packoffset(c000.y);
  float _dirDependency : packoffset(c000.w);
  float _choppyScale : packoffset(c001.x);
  float _cascadeSize1 : packoffset(c001.y);
  float _cascadeSize2 : packoffset(c001.z);
  float _cascadeSize3 : packoffset(c001.w);
  float _cascadeSize4 : packoffset(c002.x);
  float _cascadeAmplitude1 : packoffset(c002.y);
  float _cascadeAmplitude2 : packoffset(c002.z);
  float _cascadeAmplitude3 : packoffset(c002.w);
  float _cascadeAmplitude4 : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  uint _scatteringAlbedo : packoffset(c003.z);
  float _underWaterMossRate : packoffset(c003.w);
  float _underWaterMossScale : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float2 _seaPadding : packoffset(c004.z);
};

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

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
  float _482;
  float _483;
  float _484;
  float _485;
  int _486;
  float _636;
  float _637;
  float _638;
  float _639;
  int _640;
  float _725;
  float _726;
  float _727;
  float _741;
  float _946;
  float _947;
  float _948;
  float _1041;
  float _1042;
  float _1043;
  float _1097;
  float _1098;
  float _1099;
  float _1118;
  float _1119;
  float _1120;
  float _1150;
  float _1151;
  float _1152;
  float _1166;
  float _1167;
  float _1168;
  int _44;
  float _61;
  float _63;
  float _64;
  float4 _101;
  float _111;
  float _112;
  float _113;
  float _138;
  float _139;
  float _140;
  int _141;
  float _149;
  float _150;
  float _152;
  float _153;
  float _158;
  float _168;
  float _171;
  float _173;
  float _201;
  float4 _215;
  float _225;
  float _226;
  float _227;
  float _255;
  float4 _257;
  float _267;
  float _268;
  float _269;
  float4 _295;
  float _305;
  float _306;
  float _307;
  float _332;
  float4 _334;
  float _344;
  float _345;
  float _346;
  float4 _372;
  float _382;
  float _383;
  float _384;
  int _428;
  float _435;
  float _436;
  float _437;
  float _465;
  float _470;
  float _471;
  bool _472;
  float _477;
  float _478;
  float _487;
  int _488;
  float _496;
  float _499;
  int _504;
  float _512;
  float _515;
  float4 _518;
  float _528;
  float _529;
  float _530;
  float _555;
  float _559;
  float _560;
  float _561;
  float _562;
  int _563;
  float _566;
  int _570;
  float _578;
  float _589;
  float _590;
  float _591;
  float _619;
  float _624;
  float _625;
  bool _626;
  float _631;
  float _632;
  float _641;
  int _642;
  float _650;
  float _653;
  int _658;
  float _666;
  float _669;
  float4 _672;
  float _682;
  float _683;
  float _684;
  float _709;
  float _713;
  float _714;
  float _715;
  float _716;
  int _717;
  float _720;
  uint _728;
  bool _744;
  float _750;
  float _799;
  float _800;
  float _801;
  float _803;
  float _810;
  float _811;
  float _812;
  float _831;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _885;
  float _886;
  float _887;
  float _888;
  float _889;
  float _890;
  float _891;
  float _908;
  float _909;
  float _910;
  float _911;
  float _917;
  float _920;
  float _927;
  float _928;
  float _929;
  float _958;
  float _983;
  float _984;
  float _985;
  float _1004;
  float _1005;
  float _1006;
  float _1012;
  float _1016;
  float _1017;
  float _1018;
  float _1019;
  float _1024;
  float _1049;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  float _1086;
  float _1108;
  float _1109;
  float _1113;
  float _1157;
  float _1178;
  float _1179;
  float _1180;
  int __loop_jump_target = -1;
  if (_passIndex == 0) {
    _44 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127;
    if ((_44 != 107) && (!(((uint)(_44 + -27) < (uint)2) || ((_44 == 26) || ((uint)(_44 + -105) < (uint)2))))) {
      _61 = (TEXCOORD.x * 2.0f) + -1.0f;
      _63 = 1.0f - (TEXCOORD.y * 2.0f);
      _64 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      if (abs(((mad((_invViewProj[2].y), _64, mad((_invViewProj[1].y), _63, ((_invViewProj[0].y) * _61))) + (_invViewProj[3].y)) / (mad((_invViewProj[2].w), _64, mad((_invViewProj[1].w), _63, ((_invViewProj[0].w) * _61))) + (_invViewProj[3].w))) - _seaBaseline) < 1.0f) {
        _101 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _111 = (pow(_101.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _112 = (pow(_101.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _113 = (pow(_101.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _138 = exp2(log2(max(0.0f, (_111 + -0.8359375f)) / (18.8515625f - (_111 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
        _139 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.8515625f - (_112 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
        _140 = exp2(log2(max(0.0f, (_113 + -0.8359375f)) / (18.8515625f - (_113 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
        _141 = WaveReadLaneFirst(_materialIndex);
        _149 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_141 < (uint)170000), _141, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _150 = dot(float3(_138, _139, _140), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
        _152 = (_149 * 0.75f) + 9.999999747378752e-06f;
        _153 = _150 - _149;
        _158 = saturate((_153 + _152) / ((_149 * 1.5f) + 1.9999999494757503e-05f));  // [sem: expr_sat]
        _168 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _171 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _173 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        _201 = (max(_153, ((_158 * _158) * _152)) / max(_150, 9.999999747378752e-06f)) * saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) * 10.0f);
        _725 = ((_201 * _138) * select(((_168 * 0.003921568859368563f) < 0.040449999272823334f), (_168 * 0.0003035269910469651f), exp2(log2((_168 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _726 = ((_201 * _139) * select(((_171 * 0.003921568859368563f) < 0.040449999272823334f), (_171 * 0.0003035269910469651f), exp2(log2((_171 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
        _727 = ((_201 * _140) * select(((_173 * 0.003921568859368563f) < 0.040449999272823334f), (_173 * 0.0003035269910469651f), exp2(log2((_173 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)));
      } else {
        _725 = 0.0f;
        _726 = 0.0f;
        _727 = 0.0f;
      }
    } else {
      _725 = 0.0f;
      _726 = 0.0f;
      _727 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _215 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _225 = (pow(_215.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _226 = (pow(_215.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _227 = (pow(_215.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _255 = _srcTargetSizeAndInv.z * 1.384615421295166f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _257 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_255 + TEXCOORD.x), TEXCOORD.y));
      _267 = (pow(_257.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _268 = (pow(_257.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _269 = (pow(_257.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _295 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _255), TEXCOORD.y));
      _305 = (pow(_295.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _306 = (pow(_295.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _307 = (pow(_295.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _332 = _srcTargetSizeAndInv.z * 3.230769157409668f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _334 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_332 + TEXCOORD.x), TEXCOORD.y));
      _344 = (pow(_334.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _345 = (pow(_334.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _346 = (pow(_334.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _372 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _332), TEXCOORD.y));
      _382 = (pow(_372.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _383 = (pow(_372.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _384 = (pow(_372.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _725 = ((((exp2(log2(max(0.0f, (_305 + -0.8359375f)) / (18.8515625f - (_305 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_267 + -0.8359375f)) / (18.8515625f - (_267 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_225 + -0.8359375f)) / (18.8515625f - (_225 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_382 + -0.8359375f)) / (18.8515625f - (_382 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_344 + -0.8359375f)) / (18.8515625f - (_344 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _726 = ((((exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.8515625f - (_306 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_268 + -0.8359375f)) / (18.8515625f - (_268 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_226 + -0.8359375f)) / (18.8515625f - (_226 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_383 + -0.8359375f)) / (18.8515625f - (_383 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_345 + -0.8359375f)) / (18.8515625f - (_345 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
      _727 = ((((exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.8515625f - (_307 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_269 + -0.8359375f)) / (18.8515625f - (_269 * 18.6875f))) * 6.277394771575928f)) * 3162.162353515625f) + (exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.8515625f - (_227 * 18.6875f))) * 6.277394771575928f) * 2270.270263671875f)) + ((exp2(log2(max(0.0f, (_384 + -0.8359375f)) / (18.8515625f - (_384 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_346 + -0.8359375f)) / (18.8515625f - (_346 * 18.6875f))) * 6.277394771575928f)) * 702.7026977539062f));
    } else {
      _428 = _passIndex & -2;
      if (_428 == 2) {
        _435 = _sunDirection.x * 10000.0f;
        _436 = _sunDirection.y * 10000.0f;
        _437 = _sunDirection.z * 10000.0f;
        _465 = mad((_viewProjRelative[2].w), _437, mad((_viewProjRelative[1].w), _436, ((_viewProjRelative[0].w) * _435))) + (_viewProjRelative[3].w);
        _470 = (((mad((_viewProjRelative[2].x), _437, mad((_viewProjRelative[1].x), _436, ((_viewProjRelative[0].x) * _435))) + (_viewProjRelative[3].x)) / _465) * 0.5f) + 0.5f;
        _471 = 0.5f - (((mad((_viewProjRelative[2].y), _437, mad((_viewProjRelative[1].y), _436, ((_viewProjRelative[0].y) * _435))) + (_viewProjRelative[3].y)) / _465) * 0.5f);
        _472 = (_465 <= 0.0f);
        _477 = TEXCOORD.x - select(_472, (-0.0f - _470), _470);
        _478 = TEXCOORD.y - select(_472, (-0.0f - _471), _471);
        _482 = 0.0f;
        _483 = 0.0f;
        _484 = 0.0f;
        _485 = 0.0f;
        _486 = 0;
        while(true) {
          _487 = float((int)(_486));
          _488 = WaveReadLaneFirst(_materialIndex);
          _496 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_488 < (uint)170000), _488, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
          _499 = _496 * ((rsqrt(dot(float2(_477, _478), float2(_477, _478))) * 0.06666667014360428f) * _487);
          _504 = WaveReadLaneFirst(_materialIndex);
          _512 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_504 < (uint)170000), _504, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftDecay);
          _515 = (pow(_512, _487));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _518 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_499 * _477)), (TEXCOORD.y - (_499 * _478))));
          _528 = (pow(_518.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _529 = (pow(_518.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _530 = (pow(_518.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _555 = _515 * 10000.0f;
          _559 = (exp2(log2(max(0.0f, (_528 + -0.8359375f)) / (18.8515625f - (_528 * 18.6875f))) * 6.277394771575928f) * _555) + _482;
          _560 = (exp2(log2(max(0.0f, (_529 + -0.8359375f)) / (18.8515625f - (_529 * 18.6875f))) * 6.277394771575928f) * _555) + _483;
          _561 = (exp2(log2(max(0.0f, (_530 + -0.8359375f)) / (18.8515625f - (_530 * 18.6875f))) * 6.277394771575928f) * _555) + _484;
          _562 = _515 + _485;
          _563 = _486 + 1;
          if (!(_563 == 16)) {
            _482 = _559;
            _483 = _560;
            _484 = _561;
            _485 = _562;
            _486 = _563;
            continue;
          }
          _566 = max(_562, 9.999999747378752e-05f);
          _570 = WaveReadLaneFirst(_materialIndex);
          _578 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_570 < (uint)170000), _570, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
          _725 = (_578 * (_559 / _566));
          _726 = (_578 * (_560 / _566));
          _727 = (_578 * (_561 / _566));
          break;
        }
      } else {
        if (_428 == 4) {
          _589 = _sunDirection.x * 10000.0f;
          _590 = _sunDirection.y * 10000.0f;
          _591 = _sunDirection.z * 10000.0f;
          _619 = mad((_viewProjRelative[2].w), _591, mad((_viewProjRelative[1].w), _590, ((_viewProjRelative[0].w) * _589))) + (_viewProjRelative[3].w);
          _624 = (((mad((_viewProjRelative[2].x), _591, mad((_viewProjRelative[1].x), _590, ((_viewProjRelative[0].x) * _589))) + (_viewProjRelative[3].x)) / _619) * 0.5f) + 0.5f;
          _625 = 0.5f - (((mad((_viewProjRelative[2].y), _591, mad((_viewProjRelative[1].y), _590, ((_viewProjRelative[0].y) * _589))) + (_viewProjRelative[3].y)) / _619) * 0.5f);
          _626 = (_619 <= 0.0f);
          _631 = TEXCOORD.x - select(_626, (-0.0f - _624), _624);
          _632 = TEXCOORD.y - select(_626, (-0.0f - _625), _625);
          _636 = 0.0f;
          _637 = 0.0f;
          _638 = 0.0f;
          _639 = 0.0f;
          _640 = 0;
          while(true) {
            _641 = float((int)(_640));
            _642 = WaveReadLaneFirst(_materialIndex);
            _650 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_642 < (uint)170000), _642, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._blurStrength);
            _653 = _650 * ((rsqrt(dot(float2(_631, _632), float2(_631, _632))) * 0.06666667014360428f) * _641);
            _658 = WaveReadLaneFirst(_materialIndex);
            _666 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_658 < (uint)170000), _658, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._blurDecay);
            _669 = (pow(_666, _641));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _672 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_653 * _631)), (TEXCOORD.y - (_653 * _632))));
            _682 = (pow(_672.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _683 = (pow(_672.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _684 = (pow(_672.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _709 = _669 * 10000.0f;
            _713 = (exp2(log2(max(0.0f, (_682 + -0.8359375f)) / (18.8515625f - (_682 * 18.6875f))) * 6.277394771575928f) * _709) + _636;
            _714 = (exp2(log2(max(0.0f, (_683 + -0.8359375f)) / (18.8515625f - (_683 * 18.6875f))) * 6.277394771575928f) * _709) + _637;
            _715 = (exp2(log2(max(0.0f, (_684 + -0.8359375f)) / (18.8515625f - (_684 * 18.6875f))) * 6.277394771575928f) * _709) + _638;
            _716 = _669 + _639;
            _717 = _640 + 1;
            if (!(_717 == 16)) {
              _636 = _713;
              _637 = _714;
              _638 = _715;
              _639 = _716;
              _640 = _717;
              continue;
            }
            _720 = max(_716, 9.999999747378752e-05f);
            _725 = (_713 / _720);
            _726 = (_714 / _720);
            _727 = (_715 / _720);
            break;
          }
        } else {
          _725 = 0.0f;
          _726 = 0.0f;
          _727 = 0.0f;
        }
      }
    }
  }
  _728 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _741 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _728, 0)))).x) & 127)))) + 0.5f);
  } else {
    _741 = 1.0f;
  }
  _744 = (_localToneMappingParams.w > 0.0f);
  if (_744) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_725, _726, _727));
    _1004 = _rndx_tonemapped_color.x;
    _1005 = _rndx_tonemapped_color.y;
    _1006 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1012 = 1.0f - abs(_etcParams.w);
      _1016 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1017 = (_1012 * _1004) + _1016;
      _1018 = (_1012 * _1005) + _1016;
      _1019 = (_1012 * _1006) + _1016;
      if (_colorGradingParams.w > 0.0f) {
        _1024 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1041 = (((max(0.0f, (1.0f - _1017)) - _1017) * _1024) + _1017);
        _1042 = (((max(0.0f, (1.0f - _1018)) - _1018) * _1024) + _1018);
        _1043 = (((max(0.0f, (1.0f - _1019)) - _1019) * _1024) + _1019);
      } else {
        _1041 = _1017;
        _1042 = _1018;
        _1043 = _1019;
      }
      _1049 = _userImageAdjust.y + 1.0f;
      _1053 = _userImageAdjust.x + 0.5f;
      _1054 = ((_1041 + -0.5f) * _1049) + _1053;
      _1055 = ((_1042 + -0.5f) * _1049) + _1053;
      _1056 = ((_1043 + -0.5f) * _1049) + _1053;
      _1086 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _1097 = exp2(log2(saturate(mad(_colorBlind0.z, _1056, mad(_colorBlind0.y, _1055, (_colorBlind0.x * _1054))))) * _1086);
      _1098 = exp2(log2(saturate(mad(_colorBlind1.z, _1056, mad(_colorBlind1.y, _1055, (_colorBlind1.x * _1054))))) * _1086);
      _1099 = exp2(log2(saturate(mad(_colorBlind2.z, _1056, mad(_colorBlind2.y, _1055, (_colorBlind2.x * _1054))))) * _1086);
    } else {
      _1097 = _1004;
      _1098 = _1005;
      _1099 = _1006;
    }
  } else {
    _1097 = _725;
    _1098 = _726;
    _1099 = _727;
  }
  if (_etcParams.y > 1.0f) {
    _1108 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1109 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1113 = saturate(1.0f - (dot(float2(_1108, _1109), float2(_1108, _1109)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1118 = (_1113 * _1097);
    _1119 = (_1113 * _1098);
    _1120 = (_1113 * _1099);
  } else {
    _1118 = _1097;
    _1119 = _1098;
    _1120 = _1099;
  }
  if (_744 && (_etcParams.z > 0.0f)) {
    _1150 = select((_1118 <= 0.0031308000907301903f), (_1118 * 12.920000076293945f), (((pow(_1118, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1151 = select((_1119 <= 0.0031308000907301903f), (_1119 * 12.920000076293945f), (((pow(_1119, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1152 = select((_1120 <= 0.0031308000907301903f), (_1120 * 12.920000076293945f), (((pow(_1120, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1150 = _1118;
    _1151 = _1119;
    _1152 = _1120;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1157 = (float)((uint)_728);
    if (!(_1157 < _viewDir.w)) {
      if (!(_1157 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1166 = _1150;
        _1167 = _1151;
        _1168 = _1152;
      } else {
        _1166 = 0.0f;
        _1167 = 0.0f;
        _1168 = 0.0f;
      }
    } else {
      _1166 = 0.0f;
      _1167 = 0.0f;
      _1168 = 0.0f;
    }
  } else {
    _1166 = _1150;
    _1167 = _1151;
    _1168 = _1152;
  }
  _1178 = exp2(log2(_1166 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1179 = exp2(log2(_1167 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1180 = exp2(log2(_1168 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1178 * 18.6875f) + 1.0f)) * ((_1178 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1179 * 18.6875f) + 1.0f)) * ((_1179 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1180 * 18.6875f) + 1.0f)) * ((_1180 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _741;
  return SV_Target;
}
