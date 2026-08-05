struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};


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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _32;
  int _35;
  float _43;
  int _46;
  float _54;
  int _57;
  float _65;
  bool _66;
  bool _67;
  float _78;
  float _79;
  float _80;
  float _81;
  float _133;
  float _134;
  float _135;
  int _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _263;
  float _264;
  float _265;
  float _401;
  float _402;
  float _403;
  float _417;
  float _622;
  float _623;
  float _624;
  float _717;
  float _718;
  float _719;
  float _773;
  float _774;
  float _775;
  float _794;
  float _795;
  float _796;
  float _826;
  float _827;
  float _828;
  float _842;
  float _843;
  float _844;
  float4 _72;
  int _85;
  float _93;
  int _96;
  float _104;
  float _108;
  float _110;
  float _111;
  float _122;
  int _138;
  float _146;
  int _151;
  float _159;
  float _163;
  float _167;
  float _170;
  float4 _173;
  float _177;
  float _189;
  float _193;
  float4 _196;
  float _200;
  float _202;
  float _204;
  float _206;
  int _207;
  float _211;
  float _212;
  float _213;
  int _216;
  float _224;
  int _227;
  float _235;
  float _237;
  float _238;
  float _249;
  float _251;
  int _268;
  float _276;
  float _280;
  float _284;
  float _286;
  float _288;
  float _290;
  float _291;
  int _294;
  float _302;
  int _305;
  float _313;
  float _314;
  float _322;
  float _329;
  float _336;
  int _340;
  int _348;
  float _351;
  float _354;
  float _356;
  float _360;
  uint _404;
  bool _420;
  float _426;
  float _445;
  float _461;
  float _477;
  float _478;
  float _482;
  float _485;
  float _488;
  float _495;
  float _502;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _531;
  float _547;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _584;
  float _585;
  float _586;
  float _587;
  float _590;
  float _593;
  float _597;
  float _601;
  float _605;
  float _625;
  float _637;
  float _649;
  float _661;
  float _668;
  float _675;
  float _682;
  float _688;
  float _689;
  float _691;
  float _693;
  float _695;
  float _700;
  float _721;
  float _723;
  float _726;
  float _729;
  float _732;
  float _738;
  float _780;
  float _783;
  float _789;
  float _831;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _35 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_35 < (uint)170000), _35, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _57 = WaveReadLaneFirst(_materialIndex);
  _65 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  _66 = (_43 > 0.0f);
  _67 = (_65 > 0.0f);
  if (_66 || _67) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _72 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _78 = _72.w;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _79 = _72.z;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _80 = _72.y;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _81 = _72.x;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  } else {
    _78 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _79 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _80 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _81 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  }
  if (_66) {
    _85 = WaveReadLaneFirst(_materialIndex);
    _93 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _96 = WaveReadLaneFirst(_materialIndex);
    _104 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _108 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _110 = (TEXCOORD.x - _104) * _32;
    _111 = TEXCOORD.y - _108;
    // [sem: expr_sat]
    _122 = saturate((1.0f - (sqrt(dot(float2(_110, _111), float2(_110, _111))) * (1.0f / max(1e-05f, _54)))) * (1.0f / max((1.0f - _93), 1e-05f)));
    _133 = ((_122 * (_25.z - _79)) + _79);
    _134 = ((_122 * (_25.y - _80)) + _80);
    _135 = ((_122 * (_25.x - _81)) + _81);
  } else {
    _133 = _25.z;
    _134 = _25.y;
    _135 = _25.x;
  }
  _138 = WaveReadLaneFirst(_materialIndex);
  _146 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_146 > 0.0f) {
    _151 = WaveReadLaneFirst(_materialIndex);
    _159 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _163 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
    _167 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _170 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.y;
    _173 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_167, _170));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _177 = 32.0f / _146;
    _179 = 0;
    _180 = 1.0f;
    _181 = _173.z;
    _182 = _173.y;
    _183 = _173.x;
    _184 = _170;
    _185 = _167;
    while(true) {
      _189 = (((_159 - _167) / _177) * 0.1f) + _185;
      _193 = (((_163 - _170) / _177) * 0.1f) + _184;
      _196 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_189, _193));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _200 = _180 * 0.9f;
      _202 = (_196.x * _200) + _183;
      _204 = (_196.y * _200) + _182;
      _206 = (_196.z * _200) + _181;
      _207 = (int)(_179) + (int)(1);
      if (!(_207 == 10)) {
        _251 = _180 * 0.99f;
        _179 = _207;
        _180 = _251;
        _181 = _206;
        _182 = _204;
        _183 = _202;
        _184 = _193;
        _185 = _189;
        continue;
      }
      while(true) {
        _211 = _202 * 0.1f;
        _212 = _204 * 0.1f;
        _213 = _206 * 0.1f;
        _216 = WaveReadLaneFirst(_materialIndex);
        _224 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_216 < (uint)170000), _216, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _227 = WaveReadLaneFirst(_materialIndex);
        _235 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_227 < (uint)170000), _227, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _237 = (TEXCOORD.x - _159) * _32;
        _238 = TEXCOORD.y - _163;
        // [sem: expr_sat]
        _249 = saturate((1.0f - (sqrt(dot(float2(_237, _238), float2(_237, _238))) * (1.0f / max(1e-05f, _224)))) * (1.0f / max((1.0f - _235), 1e-05f)));
        if (!((_global_0[0]) == 0)) {
          continue;
        }
        _263 = ((_249 * (_133 - _213)) + _213);
        _264 = ((_249 * (_134 - _212)) + _212);
        _265 = ((_249 * (_135 - _211)) + _211);
        break;
      }
      break;
    }
  } else {
    _263 = _133;
    _264 = _134;
    _265 = _135;
  }
  _268 = WaveReadLaneFirst(_materialIndex);
  _276 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_268 < (uint)170000), _268, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.x);
  _280 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_268 < (uint)170000), _268, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.y);
  _284 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_268 < (uint)170000), _268, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.z);
  _286 = (1.0f - _276) * 0.3086f;
  _288 = (1.0f - _280) * 0.6094f;
  _290 = (1.0f - _284) * 0.082f;
  _291 = _286 * _265;
  _294 = WaveReadLaneFirst(_materialIndex);
  _302 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_294 < (uint)170000), _294, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _305 = WaveReadLaneFirst(_materialIndex);
  _313 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_305 < (uint)170000), _305, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _314 = max(_313, 0.0f);
  _322 = max(0.0f, (((mad(_263, _290, mad(_264, _288, ((_286 + _276) * _265))) + -0.5f) * _314) + 0.5f));
  _329 = max(0.0f, (((mad(_263, _290, mad(_264, (_288 + _280), _291)) + -0.5f) * _314) + 0.5f));
  _336 = max(0.0f, (((mad(_263, (_290 + _284), mad(_264, _288, _291)) + -0.5f) * _314) + 0.5f));
  if (_67) {
    _340 = WaveReadLaneFirst(_materialIndex);
    _348 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_340 < (uint)170000), _340, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderColor);
    _351 = (float)((uint)((uint)(((uint)((uint)(_348)) >> 16) & 255)));
    _354 = (float)((uint)((uint)(((uint)((uint)(_348)) >> 8) & 255)));
    _356 = (float)((uint)((uint)(_348 & 255)));
    _360 = 1.0f / max(0.001f, _exposure0.x);
    _401 = ((((select(((_356 * 0.003921569f) < 0.04045f), (_356 * 0.000303527f), exp2(log2((_356 * 0.003717127f) + 0.052132703f) * 2.4f)) * _360) - _336) * _78) + _336);
    _402 = ((((select(((_354 * 0.003921569f) < 0.04045f), (_354 * 0.000303527f), exp2(log2((_354 * 0.003717127f) + 0.052132703f) * 2.4f)) * _360) - _329) * _78) + _329);
    _403 = ((((select(((_351 * 0.003921569f) < 0.04045f), (_351 * 0.000303527f), exp2(log2((_351 * 0.003717127f) + 0.052132703f) * 2.4f)) * _360) - _322) * _78) + _322);
  } else {
    _401 = _336;
    _402 = _329;
    _403 = _322;
  }
  _404 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _417 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _404, 0)))).x) & 127)))) + 0.5f);
  } else {
    _417 = 1.0f;
  }
  _420 = (_localToneMappingParams.w > 0.0f);
  if (_420) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_403, _402, _401));
    _668 = _rndx_tonemapped_color.x;
    _675 = _rndx_tonemapped_color.y;
    _682 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _688 = 1.0f - abs(_etcParams.w);
      _689 = saturate(_etcParams.w);  // [sem: expr_sat]
      _691 = (_688 * _668) + _689;
      _693 = (_688 * _675) + _689;
      _695 = (_688 * _682) + _689;
      if (_colorGradingParams.w > 0.0f) {
        _700 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _717 = (((max(0.0f, (1.0f - _695)) - _695) * _700) + _695);
        _718 = (((max(0.0f, (1.0f - _693)) - _693) * _700) + _693);
        _719 = (((max(0.0f, (1.0f - _691)) - _691) * _700) + _691);
      } else {
        _717 = _695;
        _718 = _693;
        _719 = _691;
      }
      _721 = _userImageAdjust.y + 1.0f;
      _723 = _userImageAdjust.x + 0.5f;
      _726 = ((_719 + -0.5f) * _721) + _723;
      _729 = ((_718 + -0.5f) * _721) + _723;
      _732 = ((_717 + -0.5f) * _721) + _723;
      _738 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _773 = exp2(log2(saturate(mad(_colorBlind0.z, _732, mad(_colorBlind0.y, _729, (_colorBlind0.x * _726))))) * _738);
      _774 = exp2(log2(saturate(mad(_colorBlind1.z, _732, mad(_colorBlind1.y, _729, (_colorBlind1.x * _726))))) * _738);
      _775 = exp2(log2(saturate(mad(_colorBlind2.z, _732, mad(_colorBlind2.y, _729, (_colorBlind2.x * _726))))) * _738);
    } else {
      _773 = _668;
      _774 = _675;
      _775 = _682;
    }
  } else {
    _773 = _403;
    _774 = _402;
    _775 = _401;
  }
  if (_etcParams.y > 1.0f) {
    _780 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _783 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _789 = saturate(1.0f - (dot(float2(_780, _783), float2(_780, _783)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _794 = (_789 * _773);
    _795 = (_789 * _774);
    _796 = (_789 * _775);
  } else {
    _794 = _773;
    _795 = _774;
    _796 = _775;
  }
  if (_420 && (_etcParams.z > 0.0f)) {
    _826 = select((_794 <= 0.0031308f), (_794 * 12.92f), (((pow(_794, 0.41666666f)) * 1.055f) + -0.055f));
    _827 = select((_795 <= 0.0031308f), (_795 * 12.92f), (((pow(_795, 0.41666666f)) * 1.055f) + -0.055f));
    _828 = select((_796 <= 0.0031308f), (_796 * 12.92f), (((pow(_796, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _826 = _794;
    _827 = _795;
    _828 = _796;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _831 = (float)((uint)((uint)(_404)));
    if (!(_831 < _viewDir.w)) {
      if (!(!(_831 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _842 = 0.0f;
        _843 = 0.0f;
        _844 = 0.0f;
      } else {
        _842 = _826;
        _843 = _827;
        _844 = _828;
      }
    } else {
      _842 = 0.0f;
      _843 = 0.0f;
      _844 = 0.0f;
    }
  } else {
    _842 = _826;
    _843 = _827;
    _844 = _828;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_842, _843, _844), _sunDirection.y, _moonDirection.y);
    _842 = _rndx_final_color.x;
    _843 = _rndx_final_color.y;
    _844 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _842;
  SV_Target.y = _843;
  SV_Target.z = _844;
  SV_Target.w = _417;
  return SV_Target;
}
