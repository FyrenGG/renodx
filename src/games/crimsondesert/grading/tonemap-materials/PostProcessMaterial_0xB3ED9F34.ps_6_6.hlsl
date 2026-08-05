struct PostProcessDamageStruct {
  uint _bloodColor;
  float _bloodRatio;
  uint _dirtTexture;
  uint _dirtMaskTexture;
  float _dirtRatio1;
  float _dirtRatio2;
  float _dirtRatio3;
  uint _waterNormalTexture;
  uint _waterMaskTexture;
  float _waterRatio1;
  float _waterRatio2;
  float _waterRatio3;
  float _isDead;
  float _isBloodEffect;
};

struct BindlessParameters_PostProcessDamage {
  PostProcessDamageStruct BindlessParameters_PostProcessDamage;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessDamage BindlessParameters_PostProcessDamage_t;
ConstantBuffer<BindlessParameters_PostProcessDamage_t> BindlessParameters_PostProcessDamage[] : register(b0, space100);

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
  int _21;
  int _29;
  float4 _36;
  int _41;
  int _49;
  float4 _56;
  int _62;
  float _70;
  int _73;
  float _81;
  int _84;
  float _92;
  float _93;
  float4 _106;
  int _112;
  float _120;
  float _121;
  float _124;
  float _127;
  float _130;
  float _133;
  float _136;
  int _139;
  int _147;
  float _150;
  float _153;
  float _155;
  float _164;
  int _167;
  float _175;
  bool _183;
  float _336;
  float _541;
  float _542;
  float _543;
  float _636;
  float _637;
  float _638;
  float _692;
  float _693;
  float _694;
  float _707;
  float _708;
  float _709;
  float _739;
  float _740;
  float _741;
  float _755;
  float _756;
  float _757;
  float _184;
  int _187;
  int _195;
  float4 _202;
  int _209;
  int _217;
  float4 _224;
  int _230;
  float _238;
  int _241;
  float _249;
  int _252;
  float _260;
  float _262;
  float _265;
  float _268;
  float _271;
  int _274;
  float _282;
  float _286;
  float _291;
  float _305;
  float _319;
  uint _320;
  bool _339;
  float _345;
  float _364;
  float _380;
  float _396;
  float _397;
  float _401;
  float _404;
  float _407;
  float _414;
  float _421;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _450;
  float _466;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _503;
  float _504;
  float _505;
  float _506;
  float _509;
  float _512;
  float _516;
  float _520;
  float _524;
  float _544;
  float _556;
  float _568;
  float _580;
  float _587;
  float _594;
  float _601;
  float _607;
  float _608;
  float _610;
  float _612;
  float _614;
  float _619;
  float _640;
  float _642;
  float _645;
  float _648;
  float _651;
  float _657;
  float _702;
  float _744;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterNormalTexture);
  _36 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_29 < (uint)65000), _29, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterMaskTexture);
  _56 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_49 < (uint)65000), _49, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _62 = WaveReadLaneFirst(_materialIndex);
  _70 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio1);
  _73 = WaveReadLaneFirst(_materialIndex);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio2);
  _84 = WaveReadLaneFirst(_materialIndex);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio3);
  _93 = dot(float3(_56.x, _56.y, _56.z), float3(_70, _81, _92));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _106 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_93 * ((_36.x * 0.2f) + -0.09960785f)) + TEXCOORD.x), abs(TEXCOORD.y - (_93 * ((_36.y * 0.2f) + -0.09960785f)))));
  _112 = WaveReadLaneFirst(_materialIndex);
  _120 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_112 < (uint)170000), _112, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isDead);
  _121 = dot(float3(_106.x, _106.y, _106.z), float3(0.2627f, 0.678f, 0.0593f));
  _124 = ((_121 - _106.x) * _120) + _106.x;
  _127 = ((_121 - _106.y) * _120) + _106.y;
  _130 = ((_121 - _106.z) * _120) + _106.z;
  _133 = abs((TEXCOORD.x * 2.0f) + -1.0f);
  _136 = abs((TEXCOORD.y * 2.0f) + -1.0f);
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_139 < (uint)170000), _139, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodColor);
  _150 = (float)((uint)((uint)(((uint)((uint)(_147)) >> 16) & 255)));
  _153 = (float)((uint)((uint)(((uint)((uint)(_147)) >> 8) & 255)));
  _155 = (float)((uint)((uint)(_147 & 255)));
  _164 = select(((_150 * 0.003921569f) < 0.04045f), (_150 * 0.000303527f), exp2(log2((_150 * 0.003717127f) + 0.052132703f) * 2.4f));
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isBloodEffect);
  if (_175 > 0.001f) {
    _183 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
  } else {
    _183 = false;
  }
  _184 = _164 * 0.4f;
  _187 = WaveReadLaneFirst(_materialIndex);
  _195 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_187 < (uint)170000), _187, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtTexture);
  _202 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_195 < (uint)65000), _195, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _209 = WaveReadLaneFirst(_materialIndex);
  _217 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_209 < (uint)170000), _209, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtMaskTexture);
  _224 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_217 < (uint)65000), _217, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _230 = WaveReadLaneFirst(_materialIndex);
  _238 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_230 < (uint)170000), _230, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio1);
  _241 = WaveReadLaneFirst(_materialIndex);
  _249 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_241 < (uint)170000), _241, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio2);
  _252 = WaveReadLaneFirst(_materialIndex);
  _260 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_252 < (uint)170000), _252, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio3);
  _262 = dot(float3(_224.x, _224.y, _224.z), float3(_238, _249, _260)) * _202.w;
  _265 = (_262 * (_202.x - _124)) + _124;
  _268 = (_262 * (_202.y - _127)) + _127;
  _271 = (_262 * (_202.z - _130)) + _130;
  _274 = WaveReadLaneFirst(_materialIndex);
  _282 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_274 < (uint)170000), _274, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodRatio);
  _286 = max((_133 * _133), (_136 * _136)) * _282;
  _291 = _265 - ((_265 * (1.0f - select(_183, _184, _164))) * _286);
  _305 = _268 - ((_286 * _268) * (1.0f - select(_183, _184, select(((_153 * 0.003921569f) < 0.04045f), (_153 * 0.000303527f), exp2(log2((_153 * 0.003717127f) + 0.052132703f) * 2.4f)))));
  _319 = _271 - ((_286 * _271) * (1.0f - select(_183, _184, select(((_155 * 0.003921569f) < 0.04045f), (_155 * 0.000303527f), exp2(log2((_155 * 0.003717127f) + 0.052132703f) * 2.4f)))));
  _320 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _336 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _320, 0)))).x) & 127)))) + 0.5f);
  } else {
    _336 = _postProcessParams.x;
  }
  _339 = (_localToneMappingParams.w > 0.0f);
  if (_339) {
    _345 = _exposure0.x * _userImageAdjust.z;
    _364 = exp2(_powerParams.x * log2(max(0.0f, (((_345 * max(0.0f, (((_291 * 1.70505f) - (_305 * 0.62179f)) - (_319 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _380 = exp2(log2(max(0.0f, (((_slopeParams.y * _345) * max(0.0f, (((_305 * 1.1408f) - (_291 * 0.13026f)) - (_319 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _396 = exp2(log2(max(0.0f, (((_slopeParams.z * _345) * max(0.0f, (((_291 * -0.024f) - (_305 * 0.12897f)) + (_319 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _397 = dot(float3(_364, _380, _396), float3(0.212671f, 0.71516f, 0.072169f));
    _401 = ((_364 - _397) * _powerParams.w) + _397;
    _404 = ((_380 - _397) * _powerParams.w) + _397;
    _407 = ((_396 - _397) * _powerParams.w) + _397;
    _414 = min(max(log2(mad(_407, 0.079223745f, mad(_404, 0.0784336f, (_401 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _421 = min(max(log2(mad(_407, 0.07916613f, mad(_404, 0.87846863f, (_401 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _428 = min(max(log2(mad(_407, 0.879143f, mad(_404, 0.0784336f, (_401 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _429 = _414 * 0.060606062f;
    _430 = _421 * 0.060606062f;
    _431 = _428 * 0.060606062f;
    _432 = _429 * _429;
    _433 = _430 * _430;
    _434 = _431 * _431;
    _450 = min(0.0f, (-0.0f - (((_414 * 0.0072181816f) + ((_432 * 0.4298f) + (((_432 * _432) * ((31.96f - (_414 * 2.4327273f)) + (_432 * 15.5f))) - ((_414 * 0.41624245f) * _432)))) + -0.00232f)));
    _466 = min(0.0f, (-0.0f - (((_421 * 0.0072181816f) + ((_433 * 0.4298f) + (((_433 * _433) * ((31.96f - (_421 * 2.4327273f)) + (_433 * 15.5f))) - ((_421 * 0.41624245f) * _433)))) + -0.00232f)));
    _482 = min(0.0f, (-0.0f - (((_428 * 0.0072181816f) + ((_434 * 0.4298f) + (((_434 * _434) * ((31.96f - (_428 * 2.4327273f)) + (_434 * 15.5f))) - ((_428 * 0.41624245f) * _434)))) + -0.00232f)));
    _483 = -0.0f - _450;
    _484 = -0.0f - _466;
    _485 = -0.0f - _482;
    _486 = dot(float3(_483, _484, _485), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _503 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _504 = -0.79999995f / _503;
      _505 = -1.2f / _503;
      _506 = 0.20000005f / _503;
      _509 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _512 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _516 = (_504 + 1.4f) + (_512 * (-0.39999998f - _504));
      _520 = (_505 + 1.6f) + (_512 * (-0.6f - _505));
      _524 = (_506 + 0.9f) + (_512 * (0.5f - _506));
      _541 = (lerp(_520, 1.2f, _509));  // [sem: blended]
      _542 = (lerp(_516, 1.0f, _509));  // [sem: blended]
      _543 = (lerp(_524, 1.4f, _509));  // [sem: blended]
    } else {
      _541 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _542 = 1.0f;  // [sem: blended]
      _543 = 1.4f;  // [sem: blended]
    }
    _544 = 1.0f - _541;
    _556 = ((exp2(log2(((saturate((_450 * _450) * _483) * _544) + _541) * _483) * _542) - _486) * _543) + _486;
    _568 = ((exp2(log2(((saturate((_466 * _466) * _484) * _544) + _541) * _484) * _542) - _486) * _543) + _486;
    _580 = ((exp2(log2(((saturate((_482 * _482) * _485) * _544) + _541) * _485) * _542) - _486) * _543) + _486;
    _587 = saturate(exp2(log2(mad(_580, -0.09902974f, mad(_568, -0.09802088f, (_556 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _594 = saturate(exp2(log2(mad(_580, -0.098961174f, mad(_568, 1.1519032f, (_556 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _601 = saturate(exp2(log2(mad(_580, 1.1510737f, mad(_568, -0.09804345f, (_556 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _607 = 1.0f - abs(_etcParams.w);
      _608 = saturate(_etcParams.w);  // [sem: expr_sat]
      _610 = (_607 * _587) + _608;
      _612 = (_607 * _594) + _608;
      _614 = (_607 * _601) + _608;
      if (_colorGradingParams.w > 0.0f) {
        _619 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _636 = (((max(0.0f, (1.0f - _610)) - _610) * _619) + _610);
        _637 = (((max(0.0f, (1.0f - _612)) - _612) * _619) + _612);
        _638 = (((max(0.0f, (1.0f - _614)) - _614) * _619) + _614);
      } else {
        _636 = _610;
        _637 = _612;
        _638 = _614;
      }
      _640 = _userImageAdjust.y + 1.0f;
      _642 = _userImageAdjust.x + 0.5f;
      _645 = ((_636 + -0.5f) * _640) + _642;
      _648 = ((_637 + -0.5f) * _640) + _642;
      _651 = ((_638 + -0.5f) * _640) + _642;
      _657 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _692 = exp2(log2(saturate(mad(_colorBlind0.z, _651, mad(_colorBlind0.y, _648, (_colorBlind0.x * _645))))) * _657);
      _693 = exp2(log2(saturate(mad(_colorBlind1.z, _651, mad(_colorBlind1.y, _648, (_colorBlind1.x * _645))))) * _657);
      _694 = exp2(log2(saturate(mad(_colorBlind2.z, _651, mad(_colorBlind2.y, _648, (_colorBlind2.x * _645))))) * _657);
    } else {
      _692 = _587;
      _693 = _594;
      _694 = _601;
    }
  } else {
    _692 = _291;
    _693 = _305;
    _694 = _319;
  }
  if (_etcParams.y > 1.0f) {
    _702 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_133, _136), float2(_133, _136))));  // [sem: expr_sat]
    _707 = (_702 * _692);
    _708 = (_702 * _693);
    _709 = (_702 * _694);
  } else {
    _707 = _692;
    _708 = _693;
    _709 = _694;
  }
  if (_339 && (_etcParams.z > 0.0f)) {
    _739 = select((_707 <= 0.0031308f), (_707 * 12.92f), (((pow(_707, 0.41666666f)) * 1.055f) + -0.055f));
    _740 = select((_708 <= 0.0031308f), (_708 * 12.92f), (((pow(_708, 0.41666666f)) * 1.055f) + -0.055f));
    _741 = select((_709 <= 0.0031308f), (_709 * 12.92f), (((pow(_709, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _739 = _707;
    _740 = _708;
    _741 = _709;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _744 = (float)((uint)((uint)(_320)));
    if (!(_744 < _viewDir.w)) {
      if (!(!(_744 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _755 = 0.0f;
        _756 = 0.0f;
        _757 = 0.0f;
      } else {
        _755 = _739;
        _756 = _740;
        _757 = _741;
      }
    } else {
      _755 = 0.0f;
      _756 = 0.0f;
      _757 = 0.0f;
    }
  } else {
    _755 = _739;
    _756 = _740;
    _757 = _741;
  }
  SV_Target.x = _755;
  SV_Target.y = _756;
  SV_Target.z = _757;
  SV_Target.w = _336;
  return SV_Target;
}
