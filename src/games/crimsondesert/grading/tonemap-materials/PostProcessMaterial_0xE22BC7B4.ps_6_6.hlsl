struct PostProcessKnowledgeGain_CDStruct {
  uint _noiseTex;
  uint _regionTex;
  float _knowledgeGainRegionRatio;
  float _knowledgeGainCharacterRatio;
  float _knowledgeGainGimmickRatio;
  uint _knowledgeGainColor;
  uint _knowledgeGainRegionNumberR;
  uint _knowledgeGainRegionNumberG;
  float3 _knowledgeGainBoundBoxMin;
  float3 _knowledgeGainBoundBoxMax;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t44, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _targetFocusPosition : packoffset(c002.x);
  float _hpPercentage : packoffset(c002.w);
  uint _skinnedMeshNoiseTexture : packoffset(c003.x);
  float _highLightForVision : packoffset(c003.y);
  float _highLightForVisionRemoteCatch : packoffset(c003.z);
  float _characterHighlight : packoffset(c003.w);
  uint _specialModeType : packoffset(c004.x);
  float _visionRadius : packoffset(c004.y);
  float _interactionTime : packoffset(c004.z);
  float3 _questGuideWorldPosition : packoffset(c005.x);
  float3 _detectModeUp : packoffset(c006.x);
  float3 _detectModeLook : packoffset(c007.x);
  float3 _detectModePosition : packoffset(c008.x);
  float2 _detectModeLightProfileOffset : packoffset(c009.x);
  uint _detectModeLightProfileIndex : packoffset(c009.z);
  float _detectModeAngle : packoffset(c009.w);
  float _detectModeRadius : packoffset(c010.x);
  uint _useHatMode : packoffset(c010.y);
  uint4 _oreVeinBitMask : packoffset(c011.x);
  uint _oreVeinDissolveIndex : packoffset(c012.x);
  float _oreVeinDissolveRatio : packoffset(c012.y);
  float _hideStateRatio : packoffset(c012.z);
  float3 _hazardAlertPosition : packoffset(c013.x);
  float _wantedRegionRatio : packoffset(c013.w);
  float _wantedRegionOpacity : packoffset(c014.x);
  float _wantedRegionRadius : packoffset(c014.y);
  float3 _wantedRegionPosition : packoffset(c015.x);
  float _elementActivateDuration : packoffset(c015.w);
  float _temperatureWarning : packoffset(c016.x);
  float _electrocutionWarning : packoffset(c016.y);
  float _fleeCount : packoffset(c016.z);
  float _followLearning : packoffset(c016.w);
  float4 _enemyAlert1 : packoffset(c017.x);
  float4 _enemyAlert2 : packoffset(c018.x);
  float _pullingEffectAttractionOffRadius : packoffset(c019.x);
  float _pullingEffectPushFromCharacter : packoffset(c019.y);
  float _pullingEffectPushScale : packoffset(c019.z);
  float _pullingEffectAttractionScale : packoffset(c019.w);
  float _pullingEffectExternalScale : packoffset(c020.x);
  float _pullingEffectVectorFieldScale : packoffset(c020.y);
  float _pullingEffectHeightOffset : packoffset(c020.z);
  float _housingPreviewState : packoffset(c020.w);
  float _customEffectOpacity : packoffset(c021.x);
  uint _renderPassInteraction : packoffset(c021.y);
  uint _renderPassSelfPlayer : packoffset(c021.z);
  uint _renderPassEnemy : packoffset(c021.w);
  uint _renderPassTargetFocus : packoffset(c022.x);
  uint _renderPassLearning : packoffset(c022.y);
  uint _renderPassTest : packoffset(c022.z);
  uint _enableChromaticAberration : packoffset(c022.w);
  uint _renderPassDetectObjective : packoffset(c023.x);
  uint _renderPassDetectItem : packoffset(c023.y);
  uint _renderPassDetectGimmick : packoffset(c023.z);
  uint _renderPassDetectRemoteCatch : packoffset(c023.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c024.x);
  uint _renderPassDetectLift : packoffset(c024.y);
  uint _renderPassKnowledgeNPC : packoffset(c024.z);
  uint _renderPassKnowledgeGain : packoffset(c024.w);
  uint _renderPassAnamorphicMural : packoffset(c025.x);
  uint _renderPassMemoryBackground : packoffset(c025.y);
  uint _renderPassMemory : packoffset(c025.z);
  uint _renderPassEnemyBoss : packoffset(c025.w);
  uint _renderPassAimHighlight : packoffset(c026.x);
  float4 _aimHighlightPosition : packoffset(c027.x);
  uint _renderPassNPCGhost : packoffset(c028.x);
  uint _renderPassHousing : packoffset(c028.y);
  uint _characterMeshEffectType : packoffset(c028.z);
};

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
};

typedef BindlessParameters_PostProcessKnowledgeGain_CD BindlessParameters_PostProcessKnowledgeGain_CD_t;
ConstantBuffer<BindlessParameters_PostProcessKnowledgeGain_CD_t> BindlessParameters_PostProcessKnowledgeGain_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _29;
  float _39;
  float _40;
  float _41;
  float _66;
  float _67;
  float _68;
  int _69;
  float _77;
  bool _307;
  float _308;
  float _431;
  float _432;
  float _433;
  float _496;
  float _497;
  float _498;
  float _576;
  float _577;
  float _578;
  float _592;
  float _797;
  float _798;
  float _799;
  float _892;
  float _893;
  float _894;
  float _948;
  float _949;
  float _950;
  float _969;
  float _970;
  float _971;
  float _1001;
  float _1002;
  float _1003;
  float _1017;
  float _1018;
  float _1019;
  int _80;
  int _88;
  int _89;
  int _97;
  int _98;
  float _108;
  float _109;
  float _110;
  int _111;
  float _121;
  float _122;
  float _123;
  float _144;
  float _146;
  float _147;
  float _183;
  float _184;
  float _185;
  float _186;
  int _189;
  int _197;
  float4 _204;
  float _209;
  float _210;
  float _211;
  float _224;
  float _225;
  float _226;
  float _233;
  float _234;
  float _235;
  float _242;
  int _257;
  int _265;
  float4 _272;
  float _292;
  float _293;
  float _294;
  float4 _312;
  int _314;
  int _322;
  float _325;
  float _328;
  float _330;
  float _360;
  float _361;
  float _362;
  float _363;
  float _365;
  float _379;
  float _380;
  float _381;
  float _383;
  float _389;
  float _402;
  float _410;
  float _413;
  float _416;
  float _420;
  float _449;
  float _462;
  float _469;
  float _470;
  float _471;
  float _474;
  float _475;
  float _482;
  float _483;
  float _484;
  float _485;
  int _499;
  float _507;
  int _508;
  float _516;
  float4 _523;
  float _534;
  float _535;
  float _536;
  uint _579;
  bool _595;
  float _601;
  float _650;
  float _651;
  float _652;
  float _654;
  float _661;
  float _662;
  float _663;
  float _682;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  float _736;
  float _737;
  float _738;
  float _739;
  float _740;
  float _741;
  float _742;
  float _759;
  float _760;
  float _761;
  float _762;
  float _768;
  float _771;
  float _778;
  float _779;
  float _780;
  float _809;
  float _834;
  float _835;
  float _836;
  float _855;
  float _856;
  float _857;
  float _863;
  float _867;
  float _868;
  float _869;
  float _870;
  float _875;
  float _900;
  float _904;
  float _905;
  float _906;
  float _907;
  float _937;
  float _959;
  float _960;
  float _964;
  float _1008;
  float _1029;
  float _1030;
  float _1031;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _39 = (pow(_29.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_29.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _66 = exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.8515625f - (_39 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _67 = exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.8515625f - (_40 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.8515625f - (_41 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_69 < (uint)170000), _69, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_77 >= 0.0010000000474974513f))) {
    _80 = WaveReadLaneFirst(_materialIndex);
    _88 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_80 < (uint)170000), _80, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _89 = WaveReadLaneFirst(_materialIndex);
    _97 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_89 < (uint)170000), _89, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _98 = WaveReadLaneFirst(_materialIndex);
    _108 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_98 < (uint)170000), _98, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _109 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_98 < (uint)170000), _98, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _110 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_98 < (uint)170000), _98, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _111 = WaveReadLaneFirst(_materialIndex);
    _121 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _122 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _123 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!((_97 | _88) == 0) | (((!(_108 == 0.0f)) && (!(_109 == 0.0f))) && (!(_110 == 0.0f))) | (((!(_121 == 0.0f)) && (!(_122 == 0.0f))) && (!(_123 == 0.0f)))) {
      _144 = (TEXCOORD.x * 2.0f) + -1.0f;
      _146 = 1.0f - (TEXCOORD.y * 2.0f);
      _147 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _183 = mad((_invViewProj[2].w), _147, mad((_invViewProj[1].w), _146, ((_invViewProj[0].w) * _144))) + (_invViewProj[3].w);
      _184 = (mad((_invViewProj[2].x), _147, mad((_invViewProj[1].x), _146, ((_invViewProj[0].x) * _144))) + (_invViewProj[3].x)) / _183;
      _185 = (mad((_invViewProj[2].y), _147, mad((_invViewProj[1].y), _146, ((_invViewProj[0].y) * _144))) + (_invViewProj[3].y)) / _183;
      _186 = (mad((_invViewProj[2].z), _147, mad((_invViewProj[1].z), _146, ((_invViewProj[0].z) * _144))) + (_invViewProj[3].z)) / _183;
      _189 = WaveReadLaneFirst(_materialIndex);
      _197 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_189 < (uint)170000), _189, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_197 < (uint)65000), _197, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_184 * 0.019999999552965164f), (_186 * 0.019999999552965164f)));
      _209 = _108 - _121;
      _210 = _109 - _122;
      _211 = _110 - _123;
      bool __branch_chain_138;
      if (sqrt(((_210 * _210) + (_209 * _209)) + (_211 * _211)) < 0.009999999776482582f) {
        __branch_chain_138 = true;
      } else {
        _224 = _121 - _mainPosition.x;
        _225 = _122 - _mainPosition.y;
        _226 = _123 - _mainPosition.z;
        _233 = _108 - _mainPosition.x;
        _234 = _109 - _mainPosition.y;
        _235 = _110 - _mainPosition.z;
        _242 = max(sqrt(((_233 * _233) + (_234 * _234)) + (_235 * _235)), sqrt(((_224 * _224) + (_225 * _225)) + (_226 * _226)));
        if (_242 < 0.009999999776482582f) {
          __branch_chain_138 = true;
        } else {
          __branch_chain_138 = false;
        }
      }
      if (__branch_chain_138) {
        _257 = WaveReadLaneFirst(_materialIndex);
        _265 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_257 < (uint)170000), _257, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _272 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_265 < (uint)65000), _265, 0)) + 0u))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_204.x + -0.5f) * 0.0005000000237487257f) + ((_184 + 16384.0f) * 4.882812572759576e-05f)), ((1.0f - ((_186 + 11264.0f) * 4.882812572759576e-05f)) + ((_204.y + -0.5f) * 0.0005000000237487257f))));
        _307 = (((int)(uint(_272.x * 255.0f)) == _88) && ((int)(uint(_272.y * 255.0f)) == _97));
        _308 = (_77 * 300.0f);
      } else {
        _292 = ((_204.x + -0.5f) * 10.0f) + _184;
        _293 = ((_204.y + -0.5f) * 10.0f) + _185;
        _294 = ((_204.z + -0.5f) * 10.0f) + _186;
        _307 = ((_294 > _123) && ((_294 < _110) && ((_293 > _122) && ((_293 < _109) && ((_292 < _108) && (_292 > _121))))));
        _308 = (min((_242 * 2.0f), 300.0f) * _77);
      }
      if (_307) {
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
        _312 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
        _314 = WaveReadLaneFirst(_materialIndex);
        _322 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_314 < (uint)170000), _314, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _325 = (float)((uint)((uint)(((uint)(_322) >> 16) & 255)));
        _328 = (float)((uint)((uint)(((uint)(_322) >> 8) & 255)));
        _330 = (float)((uint)((uint)(_322 & 255)));
        _360 = max(0.0010000000474974513f, _exposure0.x);
        _361 = select(((_325 * 0.003921568859368563f) < 0.040449999272823334f), (_325 * 0.0003035269910469651f), exp2(log2((_325 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _360;
        _362 = select(((_328 * 0.003921568859368563f) < 0.040449999272823334f), (_328 * 0.0003035269910469651f), exp2(log2((_328 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _360;
        _363 = select(((_330 * 0.003921568859368563f) < 0.040449999272823334f), (_330 * 0.0003035269910469651f), exp2(log2((_330 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _360;
        _365 = min(max(_308, 0.0f), 30.0f);
        _379 = (_184 - _mainPosition.x) + (_365 * (_204.z + -0.5f));
        _380 = (_185 - _mainPosition.y) + (_365 * (_204.w + -0.5f));
        _381 = (_186 - _mainPosition.z) + (_365 * (_204.x + -0.5f));
        _383 = saturate(_308) * 30.0f;
        _389 = sqrt(((_379 * _379) + (_380 * _380)) + (_381 * _381));
        _402 = ((1.0f - saturate(floor(_389 / _308))) * saturate(((_383 - _308) + _389) / _383)) * saturate((1.0f - _77) * 10.0f);
        _410 = log2(_402) * min(max((100.0f - (saturate(_389 * 0.009999999776482582f) * 100.0f)), 10.0f), 30.0f);
        _413 = exp2(_410 * 0.25f);
        _416 = ((8.0f - _413) * exp2(_410)) + _413;
        _420 = _402 * 0.5f;
        if (!(_312.w < 0.20000000298023224f)) {
          if (!(_312.w < 0.30000001192092896f)) {
            if (!(_312.w < 0.4000000059604645f)) {
              _431 = (_361 * _312.w);
              _432 = (_362 * _312.w);
              _433 = (_363 * _312.w);
            } else {
              _431 = _66;
              _432 = _67;
              _433 = _363;
            }
          } else {
            _431 = _66;
            _432 = _362;
            _433 = _68;
          }
        } else {
          _431 = _361;
          _432 = _67;
          _433 = _68;
        }
        _449 = (float)((bool)(uint)((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127) + -53) > (uint)14));
        _462 = _449 * _413;
        _469 = (_462 * (((((_431 + -1.0f) * 0.02500000037252903f) + 1.0f) * _66) - _66)) + _66;
        _470 = (_462 * (((((_432 + -1.0f) * 0.02500000037252903f) + 1.0f) * _67) - _67)) + _67;
        _471 = (_462 * (((((_433 + -1.0f) * 0.02500000037252903f) + 1.0f) * _68) - _68)) + _68;
        _474 = ((_449 * 0.19999998807907104f) + 0.6000000238418579f) * _420;
        _475 = 0.0010000000474974513f / _360;
        _482 = ((_475 - _469) * _474) + _469;
        _483 = ((_475 - _470) * _474) + _470;
        _484 = ((_475 - _471) * _474) + _471;
        _485 = _449 * _420;
        _496 = ((((_416 * _361) - _482) * _485) + _482);
        _497 = ((((_416 * _362) - _483) * _485) + _483);
        _498 = ((((_416 * _363) - _484) * _485) + _484);
      } else {
        _496 = _66;
        _497 = _67;
        _498 = _68;
      }
    } else {
      _496 = _66;
      _497 = _67;
      _498 = _68;
    }
  } else {
    _496 = _66;
    _497 = _67;
    _498 = _68;
  }
  _499 = WaveReadLaneFirst(_materialIndex);
  _507 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_499 < (uint)170000), _499, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _508 = WaveReadLaneFirst(_materialIndex);
  _516 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)(select(((uint)_508 < (uint)170000), _508, 0)) + 0u))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_507 >= 0.0010000000474974513f) || (_516 >= 0.0010000000474974513f)) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _523 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
    _534 = (pow(_523.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _535 = (pow(_523.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _536 = (pow(_523.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    if (!(_523.w == 0.0f)) {
      _576 = ((((exp2(log2(max(0.0f, (_534 + -0.8359375f)) / (18.8515625f - (_534 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _496) * _523.w) + _496);
      _577 = ((((exp2(log2(max(0.0f, (_535 + -0.8359375f)) / (18.8515625f - (_535 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _497) * _523.w) + _497);
      _578 = ((((exp2(log2(max(0.0f, (_536 + -0.8359375f)) / (18.8515625f - (_536 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _498) * _523.w) + _498);
    } else {
      _576 = _496;
      _577 = _497;
      _578 = _498;
    }
  } else {
    _576 = _496;
    _577 = _497;
    _578 = _498;
  }
  _579 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _592 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _579, 0)))).x) & 127)))) + 0.5f);
  } else {
    _592 = 1.0f;
  }
  _595 = (_localToneMappingParams.w > 0.0f);
  if (_595) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_576, _577, _578));
    _855 = _rndx_tonemapped_color.x;
    _856 = _rndx_tonemapped_color.y;
    _857 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _863 = 1.0f - abs(_etcParams.w);
      _867 = saturate(_etcParams.w);  // [sem: expr_sat]
      _868 = (_863 * _855) + _867;
      _869 = (_863 * _856) + _867;
      _870 = (_863 * _857) + _867;
      if (_colorGradingParams.w > 0.0f) {
        _875 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _892 = (((max(0.0f, (1.0f - _868)) - _868) * _875) + _868);
        _893 = (((max(0.0f, (1.0f - _869)) - _869) * _875) + _869);
        _894 = (((max(0.0f, (1.0f - _870)) - _870) * _875) + _870);
      } else {
        _892 = _868;
        _893 = _869;
        _894 = _870;
      }
      _900 = _userImageAdjust.y + 1.0f;
      _904 = _userImageAdjust.x + 0.5f;
      _905 = ((_892 + -0.5f) * _900) + _904;
      _906 = ((_893 + -0.5f) * _900) + _904;
      _907 = ((_894 + -0.5f) * _900) + _904;
      _937 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _948 = exp2(log2(saturate(mad(_colorBlind0.z, _907, mad(_colorBlind0.y, _906, (_colorBlind0.x * _905))))) * _937);
      _949 = exp2(log2(saturate(mad(_colorBlind1.z, _907, mad(_colorBlind1.y, _906, (_colorBlind1.x * _905))))) * _937);
      _950 = exp2(log2(saturate(mad(_colorBlind2.z, _907, mad(_colorBlind2.y, _906, (_colorBlind2.x * _905))))) * _937);
    } else {
      _948 = _855;
      _949 = _856;
      _950 = _857;
    }
  } else {
    _948 = _576;
    _949 = _577;
    _950 = _578;
  }
  if (_etcParams.y > 1.0f) {
    _959 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _960 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _964 = saturate(1.0f - (dot(float2(_959, _960), float2(_959, _960)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _969 = (_964 * _948);
    _970 = (_964 * _949);
    _971 = (_964 * _950);
  } else {
    _969 = _948;
    _970 = _949;
    _971 = _950;
  }
  if (_595 && (_etcParams.z > 0.0f)) {
    _1001 = select((_969 <= 0.0031308000907301903f), (_969 * 12.920000076293945f), (((pow(_969, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1002 = select((_970 <= 0.0031308000907301903f), (_970 * 12.920000076293945f), (((pow(_970, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1003 = select((_971 <= 0.0031308000907301903f), (_971 * 12.920000076293945f), (((pow(_971, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1001 = _969;
    _1002 = _970;
    _1003 = _971;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1008 = (float)((uint)_579);
    if (!(_1008 < _viewDir.w)) {
      if (!(_1008 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1017 = _1001;
        _1018 = _1002;
        _1019 = _1003;
      } else {
        _1017 = 0.0f;
        _1018 = 0.0f;
        _1019 = 0.0f;
      }
    } else {
      _1017 = 0.0f;
      _1018 = 0.0f;
      _1019 = 0.0f;
    }
  } else {
    _1017 = _1001;
    _1018 = _1002;
    _1019 = _1003;
  }
  _1029 = exp2(log2(_1017 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1030 = exp2(log2(_1018 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1031 = exp2(log2(_1019 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1029 * 18.6875f) + 1.0f)) * ((_1029 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1030 * 18.6875f) + 1.0f)) * ((_1030 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1031 * 18.6875f) + 1.0f)) * ((_1031 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _592;
  return SV_Target;
}
