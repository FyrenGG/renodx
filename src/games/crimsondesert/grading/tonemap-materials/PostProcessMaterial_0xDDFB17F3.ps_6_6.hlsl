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

struct BindlessParameters_PostProcessKnowledgeGain_CD {
  PostProcessKnowledgeGain_CDStruct BindlessParameters_PostProcessKnowledgeGain_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
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
  uint _characterMeshEffectType : packoffset(c029.z);
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
  float4 _27;
  int _33;
  float _41;
  bool _266;
  float _295;
  int _296;
  float _419;
  float _420;
  float _421;
  float _487;
  float _488;
  float _489;
  float _535;
  float _536;
  float _537;
  float _551;
  float _756;
  float _757;
  float _758;
  float _851;
  float _852;
  float _853;
  float _907;
  float _908;
  float _909;
  float _928;
  float _929;
  float _930;
  float _960;
  float _961;
  float _962;
  float _976;
  float _977;
  float _978;
  int _46;
  int _54;
  int _57;
  int _65;
  int _68;
  float _76;
  float _80;
  float _84;
  int _87;
  float _95;
  float _99;
  float _103;
  float _120;
  float _122;
  float _127;
  float _139;
  float _148;
  float _157;
  float _166;
  int _169;
  int _177;
  float4 _186;
  float _191;
  float _192;
  float _193;
  float _204;
  float _206;
  float _208;
  float _209;
  float _210;
  float _211;
  float _224;
  int _229;
  int _237;
  float4 _255;
  float _272;
  float _275;
  float _278;
  float4 _301;
  int _305;
  int _313;
  float _316;
  float _319;
  float _321;
  float _324;
  float _334;
  float _344;
  float _354;
  float _356;
  float _362;
  float _367;
  float _372;
  float _374;
  float _380;
  float _393;
  float _401;
  float _403;
  float _407;
  float _408;
  float _437;
  float _438;
  float _445;
  float _452;
  float _459;
  float _462;
  float _463;
  float _466;
  float _469;
  float _472;
  float _473;
  int _492;
  float _500;
  int _503;
  float _511;
  float4 _518;
  uint _538;
  bool _554;
  float _560;
  float _579;
  float _595;
  float _611;
  float _612;
  float _616;
  float _619;
  float _622;
  float _629;
  float _636;
  float _643;
  float _644;
  float _645;
  float _646;
  float _647;
  float _648;
  float _649;
  float _665;
  float _681;
  float _697;
  float _698;
  float _699;
  float _700;
  float _701;
  float _718;
  float _719;
  float _720;
  float _721;
  float _724;
  float _727;
  float _731;
  float _735;
  float _739;
  float _759;
  float _771;
  float _783;
  float _795;
  float _802;
  float _809;
  float _816;
  float _822;
  float _823;
  float _825;
  float _827;
  float _829;
  float _834;
  float _855;
  float _857;
  float _860;
  float _863;
  float _866;
  float _872;
  float _914;
  float _917;
  float _923;
  float _965;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionRatio);
  if (!(!(_41 >= 0.001f))) {
    _46 = WaveReadLaneFirst(_materialIndex);
    _54 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberR);
    _57 = WaveReadLaneFirst(_materialIndex);
    _65 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainRegionNumberG);
    _68 = WaveReadLaneFirst(_materialIndex);
    _76 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.x);
    _80 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.y);
    _84 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMax.z);
    _87 = WaveReadLaneFirst(_materialIndex);
    _95 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.x);
    _99 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.y);
    _103 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainBoundBoxMin.z);
    if (!(((int)(_65) | (int)(_54)) == 0) || !(((_76 == 0.0f) || (_80 == 0.0f)) || (_84 == 0.0f)) || !(((_95 == 0.0f) || (_99 == 0.0f)) || (_103 == 0.0f))) {
      _120 = (TEXCOORD.x * 2.0f) + -1.0f;
      _122 = 1.0f - (TEXCOORD.y * 2.0f);
      _127 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      _139 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _127, mad((_invViewProj[3].y), _122, ((_invViewProj[3].x) * _120)));
      _148 = (mad((_invViewProj[0].z), _127, mad((_invViewProj[0].y), _122, ((_invViewProj[0].x) * _120))) + (_invViewProj[0].w)) / _139;
      _157 = (mad((_invViewProj[1].z), _127, mad((_invViewProj[1].y), _122, ((_invViewProj[1].x) * _120))) + (_invViewProj[1].w)) / _139;
      _166 = (mad((_invViewProj[2].z), _127, mad((_invViewProj[2].y), _122, ((_invViewProj[2].x) * _120))) + (_invViewProj[2].w)) / _139;
      _169 = WaveReadLaneFirst(_materialIndex);
      _177 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_169 < (uint)170000), _169, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._noiseTex);
      _186 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_177 < (uint)65000), _177, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_148 * 0.02f), (_166 * 0.02f)));
      _191 = _76 - _95;
      _192 = _80 - _99;
      _193 = _84 - _103;
      bool __branch_chain_118;
      if (sqrt(((_192 * _192) + (_191 * _191)) + (_193 * _193)) < 0.01f) {
        __branch_chain_118 = true;
      } else {
        _204 = _95 - _mainPosition.x;
        _206 = _99 - _mainPosition.y;
        _208 = _103 - _mainPosition.z;
        _209 = _76 - _mainPosition.x;
        _210 = _80 - _mainPosition.y;
        _211 = _84 - _mainPosition.z;
        _224 = max(sqrt(((_210 * _210) + (_209 * _209)) + (_211 * _211)), sqrt(((_206 * _206) + (_204 * _204)) + (_208 * _208)));
        if (_224 < 0.01f) {
          __branch_chain_118 = true;
        } else {
          __branch_chain_118 = false;
        }
      }
      if (__branch_chain_118) {
        _229 = WaveReadLaneFirst(_materialIndex);
        _237 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_229 < (uint)170000), _229, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._regionTex);
        _255 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_237 < (uint)65000), _237, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticPointClamp, float2((((_186.x + -0.5f) * 0.0005f) + ((_148 + 16384.0f) * 4.8828126e-05f)), ((1.0f - ((_166 + 11264.0f) * 4.8828126e-05f)) + ((_186.y + -0.5f) * 0.0005f))));
        if (((int)((uint)(_255.x * 255.0f))) == _54) {
          _266 = (((int)((uint)(_255.y * 255.0f))) == _65);
        } else {
          _266 = false;
        }
        _295 = (_41 * 300.0f);
        _296 = ((int)(uint)(_266));
      } else {
        _272 = ((_186.x + -0.5f) * 10.0f) + _148;
        _275 = ((_186.y + -0.5f) * 10.0f) + _157;
        _278 = ((_186.z + -0.5f) * 10.0f) + _166;
        _295 = (min((_224 * 2.0f), 300.0f) * _41);
        _296 = ((int)(uint)((int)((_272 > _95) && ((_272 < _76) && ((_275 < _80) && ((_275 > _99) && ((_278 > _103) && (_278 < _84))))))));
      }
      if (!(_296 == 0)) {
        // [sem: _3__36__0__0__g_specularAO_sampleLod]
        _301 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
        _305 = WaveReadLaneFirst(_materialIndex);
        _313 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainColor);
        _316 = (float)((uint)((uint)(((uint)((uint)(_313)) >> 16) & 255)));
        _319 = (float)((uint)((uint)(((uint)((uint)(_313)) >> 8) & 255)));
        _321 = (float)((uint)((uint)(_313 & 255)));
        _324 = max(0.001f, _exposure0.x);
        _334 = select(((_316 * 0.003921569f) < 0.04045f), (_316 * 0.000303527f), exp2(log2((_316 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _344 = select(((_319 * 0.003921569f) < 0.04045f), (_319 * 0.000303527f), exp2(log2((_319 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _354 = select(((_321 * 0.003921569f) < 0.04045f), (_321 * 0.000303527f), exp2(log2((_321 * 0.003717127f) + 0.052132703f) * 2.4f)) / _324;
        _356 = min(max(_295, 0.0f), 30.0f);
        _362 = (_148 - _mainPosition.x) + (_356 * (_186.z + -0.5f));
        _367 = (_157 - _mainPosition.y) + (_356 * (_186.w + -0.5f));
        _372 = (_166 - _mainPosition.z) + (_356 * (_186.x + -0.5f));
        _374 = saturate(_295) * 30.0f;
        _380 = sqrt(((_367 * _367) + (_362 * _362)) + (_372 * _372));
        _393 = (saturate(((_374 - _295) + _380) / _374) * (1.0f - saturate(floor(_380 / _295)))) * saturate((1.0f - _41) * 10.0f);
        _401 = min(max((100.0f - (saturate(_380 * 0.01f) * 100.0f)), 10.0f), 30.0f) * log2(_393);
        _403 = exp2(_401 * 0.25f);
        _407 = ((8.0f - _403) * exp2(_401)) + _403;
        _408 = _393 * 0.5f;
        if (!(_301.w < 0.2f)) {
          if (!(_301.w < 0.3f)) {
            if (!(_301.w < 0.4f)) {
              _419 = (_354 * _301.w);
              _420 = (_344 * _301.w);
              _421 = (_334 * _301.w);
            } else {
              _419 = _354;
              _420 = _27.y;
              _421 = _27.x;
            }
          } else {
            _419 = _27.z;
            _420 = _344;
            _421 = _27.x;
          }
        } else {
          _419 = _27.z;
          _420 = _27.y;
          _421 = _334;
        }
        _437 = (float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15));
        _438 = _437 * _403;
        _445 = (_438 * (((((_421 + -1.0f) * 0.025f) + 1.0f) * _27.x) - _27.x)) + _27.x;
        _452 = (_438 * (((((_420 + -1.0f) * 0.025f) + 1.0f) * _27.y) - _27.y)) + _27.y;
        _459 = (_438 * (((((_419 + -1.0f) * 0.025f) + 1.0f) * _27.z) - _27.z)) + _27.z;
        _462 = ((_437 * 0.19999999f) + 0.6f) * _408;
        _463 = 0.001f / _324;
        _466 = ((_463 - _445) * _462) + _445;
        _469 = ((_463 - _452) * _462) + _452;
        _472 = ((_463 - _459) * _462) + _459;
        _473 = _437 * _408;
        _487 = ((((_407 * _354) - _472) * _473) + _472);
        _488 = ((((_407 * _344) - _469) * _473) + _469);
        _489 = ((((_407 * _334) - _466) * _473) + _466);
      } else {
        _487 = _27.z;
        _488 = _27.y;
        _489 = _27.x;
      }
    } else {
      _487 = _27.z;
      _488 = _27.y;
      _489 = _27.x;
    }
  } else {
    _487 = _27.z;
    _488 = _27.y;
    _489 = _27.x;
  }
  _492 = WaveReadLaneFirst(_materialIndex);
  _500 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_492 < (uint)170000), _492, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainCharacterRatio);
  _503 = WaveReadLaneFirst(_materialIndex);
  _511 = WaveReadLaneFirst(BindlessParameters_PostProcessKnowledgeGain_CD[((int)((uint)((uint)(select(((uint)_503 < (uint)170000), _503, 0))) + (uint)(0)))].BindlessParameters_PostProcessKnowledgeGain_CD._knowledgeGainGimmickRatio);
  if ((_500 >= 0.001f) || (_511 >= 0.001f)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _518 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(_518.w == 0.0f)) {
      _535 = (lerp(_487, _518.z, _518.w));  // [sem: blended]
      _536 = (lerp(_488, _518.y, _518.w));  // [sem: blended]
      _537 = (lerp(_489, _518.x, _518.w));  // [sem: blended]
    } else {
      _535 = _487;  // [sem: blended]
      _536 = _488;  // [sem: blended]
      _537 = _489;  // [sem: blended]
    }
  } else {
    _535 = _487;  // [sem: blended]
    _536 = _488;  // [sem: blended]
    _537 = _489;  // [sem: blended]
  }
  _538 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _551 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _538, 0)))).x) & 127)))) + 0.5f);
  } else {
    _551 = 1.0f;
  }
  _554 = (_localToneMappingParams.w > 0.0f);
  if (_554) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_537, _536, _535));
    _802 = _rndx_tonemapped_color.x;
    _809 = _rndx_tonemapped_color.y;
    _816 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _822 = 1.0f - abs(_etcParams.w);
      _823 = saturate(_etcParams.w);  // [sem: expr_sat]
      _825 = (_822 * _802) + _823;
      _827 = (_822 * _809) + _823;
      _829 = (_822 * _816) + _823;
      if (_colorGradingParams.w > 0.0f) {
        _834 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _851 = (((max(0.0f, (1.0f - _829)) - _829) * _834) + _829);
        _852 = (((max(0.0f, (1.0f - _827)) - _827) * _834) + _827);
        _853 = (((max(0.0f, (1.0f - _825)) - _825) * _834) + _825);
      } else {
        _851 = _829;
        _852 = _827;
        _853 = _825;
      }
      _855 = _userImageAdjust.y + 1.0f;
      _857 = _userImageAdjust.x + 0.5f;
      _860 = ((_853 + -0.5f) * _855) + _857;
      _863 = ((_852 + -0.5f) * _855) + _857;
      _866 = ((_851 + -0.5f) * _855) + _857;
      _872 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _907 = exp2(log2(saturate(mad(_colorBlind2.z, _866, mad(_colorBlind2.y, _863, (_colorBlind2.x * _860))))) * _872);
      _908 = exp2(log2(saturate(mad(_colorBlind1.z, _866, mad(_colorBlind1.y, _863, (_colorBlind1.x * _860))))) * _872);
      _909 = exp2(log2(saturate(mad(_colorBlind0.z, _866, mad(_colorBlind0.y, _863, (_colorBlind0.x * _860))))) * _872);
    } else {
      _907 = _816;
      _908 = _809;
      _909 = _802;
    }
  } else {
    _907 = _535;
    _908 = _536;
    _909 = _537;
  }
  if (_etcParams.y > 1.0f) {
    _914 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _917 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _923 = saturate(1.0f - (dot(float2(_914, _917), float2(_914, _917)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _928 = (_923 * _907);
    _929 = (_923 * _908);
    _930 = (_923 * _909);
  } else {
    _928 = _907;
    _929 = _908;
    _930 = _909;
  }
  if (_554 && (_etcParams.z > 0.0f)) {
    _960 = select((_928 <= 0.0031308f), (_928 * 12.92f), (((pow(_928, 0.41666666f)) * 1.055f) + -0.055f));
    _961 = select((_929 <= 0.0031308f), (_929 * 12.92f), (((pow(_929, 0.41666666f)) * 1.055f) + -0.055f));
    _962 = select((_930 <= 0.0031308f), (_930 * 12.92f), (((pow(_930, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _960 = _928;
    _961 = _929;
    _962 = _930;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _965 = (float)((uint)((uint)(_538)));
    if (!(_965 < _viewDir.w)) {
      if (!(!(_965 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _976 = 0.0f;
        _977 = 0.0f;
        _978 = 0.0f;
      } else {
        _976 = _962;
        _977 = _961;
        _978 = _960;
      }
    } else {
      _976 = 0.0f;
      _977 = 0.0f;
      _978 = 0.0f;
    }
  } else {
    _976 = _962;
    _977 = _961;
    _978 = _960;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_976, _977, _978), _sunDirection.y, _moonDirection.y);
    _976 = _rndx_final_color.x;
    _977 = _rndx_final_color.y;
    _978 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _976;
  SV_Target.y = _977;
  SV_Target.z = _978;
  SV_Target.w = _551;
  return SV_Target;
}
