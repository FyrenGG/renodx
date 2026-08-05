Texture2D<float4> __3__36__0__0__g_texSkyInscatter : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinction : register(t38, space36);

Texture2D<float> __3__36__0__0__g_depthHalf : register(t28, space36);

Texture2D<float> __3__36__0__0__g_depthHalfHistory : register(t29, space36);

Texture2D<float4> __3__36__0__0__g_texSkyInscatterHistory : register(t32, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinctionHistory : register(t33, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b2, space35) {
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

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[4] = { 0, 1, 3, 2 };

struct OutputSignature {
  float4 SV_Target : SV_Target;
  float4 SV_Target_1 : SV_Target1;
};

OutputSignature main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD,
  linear float3 TEXCOORD_1 : TEXCOORD1
) {
  float4 SV_Target;
  float4 SV_Target_1;
  float _15;
  int _16;
  float _17;
  int _18;
  float4 _20;
  float4 _25;
  int _31;
  int _37;
  float _41;
  int _45;
  float _49;
  int _53;
  float _59;
  float _64;
  bool _65;
  int _66;
  int _67;
  float _69;
  float _71;
  float _73;
  float _85;
  float _94;
  float _103;
  float _112;
  float _124;
  float _135;
  float _146;
  int _157;
  int _158;
  int _159;
  int _160;
  float _161;
  float _162;
  float _163;
  float _164;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _170;
  float _171;
  float _172;
  float _173;
  int _174;
  int _175;
  int _176;
  int _178;
  int _179;
  int _180;
  int _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  int _195;
  int _196;
  int _197;
  int _283;
  int _284;
  int _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  int _314;
  int _315;
  int _316;
  float _317;
  float _318;
  float _319;
  float _320;
  int _321;
  int _322;
  int _323;
  float _333;
  float _377;
  float _378;
  float _379;
  float _380;
  float _381;
  float _382;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _445;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  int _206;
  int _214;
  int _220;
  float _228;
  float _233;
  bool _234;
  int _237;
  int _242;
  float4 _244;
  bool _251;
  int _252;
  float _253;
  float _257;
  bool _261;
  float4 _263;
  int _299;
  int _302;
  bool _326;
  float _337;
  float _338;
  float _339;
  float4 _358;
  float4 _362;
  float4 _368;
  float4 _372;
  float _409;
  float4 _430;
  float4 _440;
  int __loop_jump_target = -1;
  _15 = SV_Position.x * 0.5f;
  _16 = (int)(_15);
  _17 = SV_Position.y * 0.5f;
  _18 = (int)(_17);
  _20 = __3__36__0__0__g_texSkyInscatter.Load(int3(_16, _18, 0));  // [sem: _3__36__0__0__g_texSkyInscatter_load]
  _25 = __3__36__0__0__g_texSkyExtinction.Load(int3(_16, _18, 0));  // [sem: _3__36__0__0__g_texSkyExtinction_load]
  _31 = (int)(uint)((int)(dot(float3(_25.x, _25.y, _25.z), float3(0.212671f, 0.71516f, 0.072169f)) < 0.01f));
  _37 = _global_0[(((int)((uint)((uint)(_frameNumber.x)) + (uint)((uint)(_16)))) & 3)];
  _41 = frac(abs(_15));
  _45 = (int)(select((_15 >= (-0.0f - _15)), _41, (-0.0f - _41)) * 2.0f);
  _49 = frac(abs(_17));
  _53 = (int)(select((_17 >= (-0.0f - _17)), _49, (-0.0f - _49)) * 2.0f);
  // [sem: _3__36__0__0__g_depthHalf_load]
  _59 = __3__36__0__0__g_depthHalf.Load(int3(((int)((uint)((uint)(_45)) + (uint)((uint)((uint)(_16)) << 1))), ((int)((uint)((uint)(_53)) + (uint)((uint)((uint)(_18)) << 1))), 0));
  _64 = _nearFarProj.x / max(1e-07f, _59.x);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _65 = (_59.x < 1e-07f);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _66 = (int)(uint)(_65);
  _67 = _66 ^ 1;
  _69 = (TEXCOORD.x * 2.0f) + -1.0f;
  _71 = 1.0f - (TEXCOORD.y * 2.0f);
  _73 = max(1e-07f, select(_65, 1.0f, _59.x));
  _85 = (_invViewProjRelativeNoJitter[3].w) + mad((_invViewProjRelativeNoJitter[3].z), _73, mad((_invViewProjRelativeNoJitter[3].y), _71, ((_invViewProjRelativeNoJitter[3].x) * _69)));
  _94 = (mad((_invViewProjRelativeNoJitter[0].z), _73, mad((_invViewProjRelativeNoJitter[0].y), _71, ((_invViewProjRelativeNoJitter[0].x) * _69))) + (_invViewProjRelativeNoJitter[0].w)) / _85;
  _103 = (mad((_invViewProjRelativeNoJitter[1].z), _73, mad((_invViewProjRelativeNoJitter[1].y), _71, ((_invViewProjRelativeNoJitter[1].x) * _69))) + (_invViewProjRelativeNoJitter[1].w)) / _85;
  _112 = (mad((_invViewProjRelativeNoJitter[2].z), _73, mad((_invViewProjRelativeNoJitter[2].y), _71, ((_invViewProjRelativeNoJitter[2].x) * _69))) + (_invViewProjRelativeNoJitter[2].w)) / _85;
  _124 = (_viewProjRelativeNoJitterPrev[3].w) + mad((_viewProjRelativeNoJitterPrev[3].z), _112, mad((_viewProjRelativeNoJitterPrev[3].y), _103, ((_viewProjRelativeNoJitterPrev[3].x) * _94)));
  _135 = (((mad((_viewProjRelativeNoJitterPrev[0].z), _112, mad((_viewProjRelativeNoJitterPrev[0].y), _103, ((_viewProjRelativeNoJitterPrev[0].x) * _94))) + (_viewProjRelativeNoJitterPrev[0].w)) / _124) * 0.5f) + 0.5f;
  _146 = 0.5f - (((mad((_viewProjRelativeNoJitterPrev[1].z), _112, mad((_viewProjRelativeNoJitterPrev[1].y), _103, ((_viewProjRelativeNoJitterPrev[1].x) * _94))) + (_viewProjRelativeNoJitterPrev[1].w)) / _124) * 0.5f);
  if ((_65) || (sqrt(((_103 * _103) + (_94 * _94)) + (_112 * _112)) > 128.0f)) {
    _157 = -1;
    _158 = 0;
    _159 = _18;
    _160 = _16;
    _161 = _64;
    _162 = _25.z;
    _163 = _25.y;
    _164 = _25.x;
    _165 = _25.z;
    _166 = _25.y;
    _167 = _25.x;
    _168 = _20.z;
    _169 = _20.y;
    _170 = _20.x;
    _171 = _20.z;
    _172 = _20.y;
    _173 = _20.x;
    _174 = _67;
    _175 = _66;
    _176 = _31;
    while(true) {
      _178 = -1;
      _179 = _158;
      _180 = _159;
      _181 = _160;
      _182 = _161;
      _183 = _162;
      _184 = _163;
      _185 = _164;
      _186 = _165;
      _187 = _166;
      _188 = _167;
      _189 = _168;
      _190 = _169;
      _191 = _170;
      _192 = _171;
      _193 = _172;
      _194 = _173;
      _195 = _174;
      _196 = _175;
      _197 = _176;
      while(true) {
        _283 = _179;
        _284 = _180;
        _285 = _181;
        _286 = _182;
        _287 = _183;
        _288 = _184;
        _289 = _185;
        _290 = _186;
        _291 = _187;
        _292 = _188;
        _293 = _189;
        _294 = _190;
        _295 = _191;
        _296 = _192;
        _297 = _193;
        _298 = _194;
        _206 = min((int)(max((int)(((int)((uint)((uint)(_178)) + (uint)((uint)(_16))))), (int)(0))), (int)(((int)((int)((int)(_bufferSizeAndInvSize.x + 0.5f)) / (int)(4)) + (int)(-1))));
        _214 = min((int)(max((int)(((int)((uint)((uint)(_157)) + (uint)((uint)(_18))))), (int)(0))), (int)(((int)((int)((int)(_bufferSizeAndInvSize.y + 0.5f)) / (int)(4)) + (int)(-1))));
        _220 = _global_0[(((int)((uint)((uint)(_frameNumber.x)) + (uint)((uint)(_206)))) & 3)];
        // [sem: _3__36__0__0__g_depthHalf_load]
        _228 = __3__36__0__0__g_depthHalf.Load(int3(((int)((uint)((uint)((int)(_220) % (int)(2))) + (uint)((uint)((uint)(_206)) << 1))), ((int)((uint)((uint)((int)(_220) / (int)(2))) + (uint)((uint)((uint)(_214)) << 1))), 0));
        _233 = _nearFarProj.x / max(1e-07f, _228.x);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
        _234 = (_228.x < 1e-07f);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
        _237 = (int)(uint)((int)((_196 != 0) && _234));
        _242 = (((int)(uint)(_234)) ^ 1) & ((int)(uint)((int)(_195 != 0)));
        _244 = __3__36__0__0__g_texSkyExtinction.Load(int3(_206, _214, 0));  // [sem: _3__36__0__0__g_texSkyExtinction_load]
        _251 = (_197 != 0) && (dot(float3(_244.x, _244.y, _244.z), float3(0.212671f, 0.71516f, 0.072169f)) < 0.01f);
        _252 = (int)(uint)(_251);
        _253 = max(_64, _233);
        _257 = (_253 - min(_64, _233)) / max(1e-06f, _253);
        if (_251 || (!(_257 > 0.1f))) {
          _261 = (_257 < _182);
          _263 = __3__36__0__0__g_texSkyInscatter.Load(int3(_206, _214, 0));  // [sem: _3__36__0__0__g_texSkyInscatter_load]
          _283 = 1;
          _284 = select(_261, _214, _180);
          _285 = select(_261, _206, _181);
          _286 = select(_261, _257, _182);
          _287 = max(_183, _244.z);
          _288 = max(_184, _244.y);
          _289 = max(_185, _244.x);
          _290 = min(_186, _244.z);
          _291 = min(_187, _244.y);
          _292 = min(_188, _244.x);
          _293 = max(_189, _263.z);
          _294 = max(_190, _263.y);
          _295 = max(_191, _263.x);
          _296 = min(_192, _263.z);
          _297 = min(_193, _263.y);
          _298 = min(_194, _263.x);
        } else {
          _283 = _179;
          _284 = _180;
          _285 = _181;
          _286 = _182;
          _287 = _183;
          _288 = _184;
          _289 = _185;
          _290 = _186;
          _291 = _187;
          _292 = _188;
          _293 = _189;
          _294 = _190;
          _295 = _191;
          _296 = _192;
          _297 = _193;
          _298 = _194;
        }
        _299 = (int)(_178) + (int)(1);
        if (!(_299 == 2)) {
          _178 = _299;
          _179 = _283;
          _180 = _284;
          _181 = _285;
          _182 = _286;
          _183 = _287;
          _184 = _288;
          _185 = _289;
          _186 = _290;
          _187 = _291;
          _188 = _292;
          _189 = _293;
          _190 = _294;
          _191 = _295;
          _192 = _296;
          _193 = _297;
          _194 = _298;
          _195 = _242;
          _196 = _237;
          _197 = _252;
          continue;
        }
        _302 = (int)(_157) + (int)(1);
        if (!(_302 == 2)) {
          _157 = _302;
          _158 = _283;
          _159 = _284;
          _160 = _285;
          _161 = _286;
          _162 = _287;
          _163 = _288;
          _164 = _289;
          _165 = _290;
          _166 = _291;
          _167 = _292;
          _168 = _293;
          _169 = _294;
          _170 = _295;
          _171 = _296;
          _172 = _297;
          _173 = _298;
          _174 = _242;
          _175 = _237;
          _176 = _252;
          __loop_jump_target = 156;
          break;
        }
        _306 = _291;
        _307 = _292;
        _308 = _293;
        _309 = _294;
        _310 = _295;
        _311 = _296;
        _312 = _297;
        _313 = _298;
        _314 = _242;
        _315 = _237;
        _316 = _252;
        _317 = _290;
        _318 = _289;
        _319 = _288;
        _320 = _287;
        _321 = _285;
        _322 = _284;
        _323 = _283;
        break;
      }
      if (__loop_jump_target == 156) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _306 = _25.y;
    _307 = _25.x;
    _308 = _20.z;
    _309 = _20.y;
    _310 = _20.x;
    _311 = _20.z;
    _312 = _20.y;
    _313 = _20.x;
    _314 = _67;
    _315 = _66;
    _316 = _31;
    _317 = _25.z;
    _318 = _25.x;
    _319 = _25.y;
    _320 = _25.z;
    _321 = _16;
    _322 = _18;
    _323 = 0;
  }
  _326 = (_temporalReprojectionParams.w > 0.5f);
  if (!_326) {
    _333 = ((__3__36__0__0__g_depthHalfHistory.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_135, _146), 0.0f)).x);
  } else {
    _333 = _59.x;
  }
  _337 = _nearFarProj.x / max(1e-07f, _333);
  _338 = min(_64, _337);
  _339 = max(_64, _337);
  if (!(_316 == 0) || ((_316 == 0) && (!(_326 || (((_339 - _338) / _339) > ((max(0.0f, (_338 + -20000.0f)) * 0.0001f) + 0.1f)))))) {
    if (((int)((int)(_315) | (int)(_314)) | (int)(_316)) == 0) {
      // [sem: _3__36__0__0__g_texSkyInscatterHistory_sampleLod]
      _358 = __3__36__0__0__g_texSkyInscatterHistory.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_135, _146), 0.0f);
      // [sem: _3__36__0__0__g_texSkyExtinctionHistory_sampleLod]
      _362 = __3__36__0__0__g_texSkyExtinctionHistory.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_135, _146), 0.0f);
      _377 = _362.x;
      _378 = _362.y;
      _379 = _362.z;
      _380 = _358.x;
      _381 = _358.y;
      _382 = _358.z;
    } else {
      // [sem: _3__36__0__0__g_texSkyInscatterHistory_sampleLod]
      _368 = __3__36__0__0__g_texSkyInscatterHistory.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_135, _146), 0.0f);
      // [sem: _3__36__0__0__g_texSkyExtinctionHistory_sampleLod]
      _372 = __3__36__0__0__g_texSkyExtinctionHistory.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_135, _146), 0.0f);
      _377 = _372.x;
      _378 = _372.y;
      _379 = _372.z;
      _380 = _368.x;
      _381 = _368.y;
      _382 = _368.z;
    }
    if (!(_323 == 0)) {
      _398 = min(max(_380, _313), _310);
      _399 = min(max(_381, _312), _309);
      _400 = min(max(_382, _311), _308);
      _401 = min(max(_377, _307), _318);
      _402 = min(max(_378, _306), _319);
      _403 = min(max(_379, _317), _320);
    } else {
      _398 = _380;
      _399 = _381;
      _400 = _382;
      _401 = _377;
      _402 = _378;
      _403 = _379;
    }
    _409 = select(((((int)(_37) % (int)(2)) != _45) || (((int)(_37) / (int)(2)) != _53)), 1.0f, 0.8f);
    _445 = ((_409 * (_398 - _20.x)) + _20.x);
    _446 = ((_409 * (_399 - _20.y)) + _20.y);
    _447 = ((_409 * (_400 - _20.z)) + _20.z);
    _448 = ((_409 * (_401 - _25.x)) + _25.x);
    _449 = ((_409 * (_402 - _25.y)) + _25.y);
    _450 = ((_409 * (_403 - _25.z)) + _25.z);
  } else {
    _430 = __3__36__0__0__g_texSkyInscatter.Load(int3(_321, _322, 0));  // [sem: _3__36__0__0__g_texSkyInscatter_load]
    if (!((_323 == 0) && (_65 ^ (_333 < 1e-07f)))) {
      _440 = __3__36__0__0__g_texSkyExtinction.Load(int3(_321, _322, 0));  // [sem: _3__36__0__0__g_texSkyExtinction_load]
      _445 = _430.x;
      _446 = _430.y;
      _447 = _430.z;
      _448 = _440.x;
      _449 = _440.y;
      _450 = _440.z;
    } else {
      _445 = _430.x;
      _446 = _430.y;
      _447 = _430.z;
      _448 = 0.0f;
      _449 = 0.0f;
      _450 = 0.0f;
    }
  }
  SV_Target.x = _445;
  SV_Target.y = _446;
  SV_Target.z = _447;
  SV_Target.w = 1.0f;
  SV_Target_1.x = _448;
  SV_Target_1.y = _449;
  SV_Target_1.z = _450;
  SV_Target_1.w = 0.0f;
  OutputSignature output_signature = { SV_Target, SV_Target_1 };
  return output_signature;
}
