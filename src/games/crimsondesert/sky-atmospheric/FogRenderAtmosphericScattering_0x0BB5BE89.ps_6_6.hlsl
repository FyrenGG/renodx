Texture2D<float4> __3__36__0__0__g_texSkyInscatter : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinction : register(t38, space36);

Texture3D<float4> __3__36__0__0__g_texFroxel : register(t74, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t26, space36);

Texture2D<float> __3__36__0__0__g_depthHalf : register(t28, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t31, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b17, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _renderFlags : packoffset(c000.x);
  float4 _skyColor : packoffset(c001.x);
  float4 _volumeSize : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

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
  int _20;
  int _21;
  float _23;
  float _45;
  int _114;
  int _115;
  int _116;
  float _117;
  float _118;
  float _119;
  int _120;
  float _222;
  float _223;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  int _248;
  float _271;
  float _272;
  float _273;
  float _390;
  int _32;
  float _47;
  float _49;
  float _50;
  float _62;
  float _71;
  float _80;
  float _89;
  float _95;
  uint _98;
  uint _99;
  float _102;
  bool _103;
  float _106;
  float _108;
  int _111;
  int _124;
  float _127;
  float _130;
  float _135;
  float _137;
  bool _138;
  float _139;
  float _143;
  float _146;
  float _148;
  float _150;
  float _152;
  bool _153;
  int _159;
  int _161;
  int _163;
  int _164;
  float _167;
  uint _190;
  int _191;
  int _192;
  float _193;
  float _196;
  float _204;
  float _214;
  float _225;
  float _227;
  float4 _229;
  float4 _234;
  float _249;
  float _250;
  float _251;
  float _254;
  float _274;
  float _275;
  float _280;
  float _285;
  float _290;
  float _293;
  float _296;
  float _299;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _308;
  float _311;
  float _314;
  float _316;
  float _320;
  float _327;
  uint _338;
  int _339;
  int _340;
  float _341;
  float _344;
  float _352;
  float _362;
  float _364;
  float _368;
  float _369;
  float4 _432;
  float _437;
  float _449;
  float _459;
  float _469;
  float _471;
  float _478;
  float _483;
  float _488;
  float _493;
  float _496;
  float _497;
  float _498;
  float _499;
  int __loop_jump_target = -1;
  _20 = (int)(SV_Position.x);
  _21 = (int)(SV_Position.y);
  _23 = __3__36__0__0__g_depth.Load(int3(_20, _21, 0));  // [sem: _3__36__0__0__g_depth_load]
  if (!((_23.x < 1e-07f) || (_23.x == 1.0f))) {
    _32 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(_20, _21, 0)))).x) & 127;
    [branch]
    if (_32 == 10) {
      if (true) discard;
      _45 = _23.x;
    } else {
      [branch]
      if (_32 == 24) {
        _45 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_20, _21, 0)))).x) & 16777215)))) * 5.960465e-08f);
      } else {
        _45 = _23.x;
      }
    }
  } else {
    _45 = _23.x;
  }
  _47 = (TEXCOORD.x * 2.0f) + -1.0f;
  _49 = 1.0f - (TEXCOORD.y * 2.0f);
  _50 = max(1e-07f, _45);
  _62 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _50, mad((_invViewProjRelative[3].y), _49, ((_invViewProjRelative[3].x) * _47)));
  _71 = (mad((_invViewProjRelative[0].z), _50, mad((_invViewProjRelative[0].y), _49, ((_invViewProjRelative[0].x) * _47))) + (_invViewProjRelative[0].w)) / _62;
  _80 = (mad((_invViewProjRelative[1].z), _50, mad((_invViewProjRelative[1].y), _49, ((_invViewProjRelative[1].x) * _47))) + (_invViewProjRelative[1].w)) / _62;
  _89 = (mad((_invViewProjRelative[2].z), _50, mad((_invViewProjRelative[2].y), _49, ((_invViewProjRelative[2].x) * _47))) + (_invViewProjRelative[2].w)) / _62;
  _95 = sqrt(((_80 * _80) + (_71 * _71)) + (_89 * _89));
  if (_95 > 128.0f) {
    _98 = (uint)(SV_Position.x);
    _99 = (uint)(SV_Position.y);
    _102 = _nearFarProj.x / _50;
    _103 = (_45 < 1e-07f);
    _106 = 2.0f / _bufferSizeAndInvSize.x;
    _108 = 2.0f / _bufferSizeAndInvSize.y;
    _111 = (int)((int)((int)(_98) % (int)(2)) << 1) + (int)(-1);
    _114 = 0;
    _115 = 0;
    _116 = 0;
    _117 = _102;
    _118 = _102;
    _119 = _102;
    _120 = ((int)(uint)(_103));
    while(true) {
      _124 = (int)((int)((int)((int)(_99) % (int)(2)) << 1) + (int)(-1)) * (int)(_114);
      _127 = (((float)((int)(_124))) * _108) + TEXCOORD.y;
      _130 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, _127), 0.0f);  // [sem: _3__36__0__0__g_depthHalf_sampleLod]
      _135 = _nearFarProj.x / max(1e-07f, _130.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
      _137 = abs(_135 - _102);
      _138 = (_137 < _117);
      _139 = select(_138, _137, _117);
      // [sem: _3__36__0__0__g_depthHalf_sampleLod]
      _143 = __3__36__0__0__g_depthHalf.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((((float)((int)(_111))) * _106) + TEXCOORD.x), _127), 0.0f);
      _146 = _nearFarProj.x / max(1e-07f, _143.x);  // [sem: _3__36__0__0__g_depthHalf_sampleLod_derived]
      _148 = min(min(_119, _135), _146);
      _150 = max(max(_118, _135), _146);
      _152 = abs(_146 - _102);
      _153 = (_152 < _139);
      _159 = select(_153, ((int)(uint)((int)(_143.x < 1e-07f))), select(_138, ((int)(uint)((int)(_130.x < 1e-07f))), _120));
      _161 = select(_153, _111, select(_138, 0, _116));
      _163 = select((_138 || _153), _124, _115);
      _164 = (int)(_114) + (int)(1);
      if (!(_164 == 2)) {
        _167 = select(_153, _152, _139);
        _114 = _164;
        _115 = _163;
        _116 = _161;
        _117 = _167;
        _118 = _150;
        _119 = _148;
        _120 = _159;
        continue;
      }
      if (((_150 - _148) / _150) > ((max(0.0f, (_148 + -20000.0f)) * 0.0001f) + 0.1f)) {
        _222 = ((float)((int)(_163)));
        _223 = ((float)((int)(_161)));
      } else {
        _190 = (uint)(((_bufferSizeAndInvSize.x * ((float)((uint)((uint)(_99))))) + ((float)((uint)((uint)(_98))))) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(11))) & 1023)))));
        _191 = (uint)((uint)(_190)) >> 1;
        _192 = (uint)((uint)(_190)) >> 3;
        _193 = (float)((uint)((uint)(_190)));
        _196 = 0.33676624f / sqrt(_193 + -0.3f);
        _204 = ((((float)((uint)((uint)(((int)((uint)((uint)(_191)) * (uint)(-1029531031))) ^ _192)))) * 2.3283064e-10f) + -0.5f) * ((_193 * 0.7548776f) + _196);
        _214 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_191)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _192)))) * 2.3283064e-10f) + -0.5f) * ((_193 * 0.56984025f) + _196);
        _222 = ((-0.5f - floor(_214)) + _214);
        _223 = ((-0.5f - floor(_204)) + _204);
      }
      _225 = (_223 * _106) + TEXCOORD.x;
      _227 = (_222 * _108) + TEXCOORD.y;
      _229 = __3__36__0__0__g_texSkyInscatter.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_225, _227), 0.0f);  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod]
      _234 = __3__36__0__0__g_texSkyExtinction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_225, _227), 0.0f);  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod]
      _242 = _234.x;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _243 = _229.z;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _244 = _229.y;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _245 = _229.x;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
      _246 = _234.y;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _247 = _234.z;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
      _248 = ((int)(uint)((int)(_103 && (_159 == 0))));
      break;
    }
  } else {
    _242 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
    _243 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
    _244 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
    _245 = 0.0f;  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod_derived]
    _246 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
    _247 = 1.0f;  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod_derived]
    _248 = 0;
  }
  _249 = _71 / _95;
  _250 = _80 / _95;
  _251 = _89 / _95;
  _254 = _renderFlags.z * 0.017453292f;
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _271 = _sunDirection.z;
    _272 = _sunDirection.x;
    _273 = _sunDirection.y;
  } else {
    _271 = _moonDirection.z;
    _272 = _moonDirection.x;
    _273 = _moonDirection.y;
  }
  _274 = sin(_254);
  _275 = cos(_254);
  _280 = mad(_275, (_viewRelative[1].x), ((_viewRelative[0].x) * _274));
  _285 = mad(_275, (_viewRelative[1].y), ((_viewRelative[0].y) * _274));
  _290 = mad(_275, (_viewRelative[1].z), ((_viewRelative[0].z) * _274));
  _293 = (_273 * _251) - (_271 * _250);
  _296 = (_271 * _249) - (_272 * _251);
  _299 = (_272 * _250) - (_273 * _249);
  _301 = rsqrt(dot(float3(_293, _296, _299), float3(_293, _296, _299)));  // [sem: invLength]
  _302 = _301 * _293;
  _303 = _301 * _296;
  _304 = _301 * _299;
  _305 = dot(float3(_280, _285, _290), float3(_302, _303, _304));
  _308 = (_303 * _251) - (_304 * _250);
  _311 = (_304 * _249) - (_302 * _251);
  _314 = (_302 * _250) - (_303 * _249);
  _316 = rsqrt(dot(float3(_308, _311, _314), float3(_308, _311, _314)));  // [sem: invLength]
  _320 = dot(float3(_280, _285, _290), float3((_308 * _316), (_311 * _316), (_314 * _316)));
  _327 = ((((_320 * _320) + (_305 * _305)) * 0.5f) + -1.0f) * _renderFlags.y;
  _338 = (uint)(((_bufferSizeAndInvSize.x * SV_Position.y) + SV_Position.x) + ((float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(101))) & 1023)))));
  _339 = (uint)((uint)(_338)) >> 1;
  _340 = (uint)((uint)(_338)) >> 3;
  _341 = (float)((uint)((uint)(_338)));
  _344 = 0.33676624f / sqrt(_341 + -0.3f);
  _352 = ((((float)((uint)((uint)(((int)((uint)((uint)(_339)) * (uint)(-1029531031))) ^ _340)))) * 2.3283064e-10f) + -0.5f) * ((_341 * 0.7548776f) + _344);
  _362 = ((((float)((uint)((uint)(((int)((uint)((uint)(((int)((uint)((uint)(_339)) * (uint)(1103515245))) ^ 1)) * (uint)(1103515245))) ^ _340)))) * 2.3283064e-10f) + -0.5f) * ((_341 * 0.56984025f) + _344);
  _364 = (float)((uint)((uint)(_frameNumber.x & 1023)));
  _368 = max(0.0f, (_volumeSize.z + -48.0f));
  _369 = max(0.0f, _95);
  if (!(_369 <= 128.0f)) {
    if (!(_368 <= 0.0f)) {
      _390 = ((log2((((_369 + -128.0f) * 0.0078125f) * (exp2(_368 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
    } else {
      _390 = 48.0f;
    }
  } else {
    _390 = (log2((_369 * 0.04351966f) + 1.0f) * 17.673004f);
  }
  // [sem: _3__36__0__0__g_texFroxel_sampleLod]
  _432 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.x - (_volumeSize.x * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.x)), ((((_352 + -0.5f) - floor(_352)) / _volumeSize.x) + TEXCOORD.x)), min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.y - (_volumeSize.y * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.y)), ((((_362 + -0.5f) - floor(_362)) / _volumeSize.y) + TEXCOORD.y)), ((_390 - frac(frac(dot(float2(((_364 * 32.665f) + SV_Position.x), ((_364 * 11.815f) + SV_Position.y)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) / _volumeSize.z)), 0.0f);
  _437 = max(0.01f, _45);
  _449 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _437, mad((_projToPrevProj[3].y), _49, ((_projToPrevProj[3].x) * _47)));
  _459 = ((mad((_projToPrevProj[0].z), _437, mad((_projToPrevProj[0].y), _49, ((_projToPrevProj[0].x) * _47))) + (_projToPrevProj[0].w)) / _449) - _47;
  _469 = ((mad((_projToPrevProj[1].z), _437, mad((_projToPrevProj[1].y), _49, ((_projToPrevProj[1].x) * _47))) + (_projToPrevProj[1].w)) / _449) - _49;
  _471 = dot(float3(_242, _246, _247), float3(0.212671f, 0.71516f, 0.072169f)) * _432.w;
  _478 = saturate(1.0f - (sqrt((_469 * _469) + (_459 * _459)) * 20.0f));  // [sem: expr_sat]
  _483 = ((((_327 * _242) + 1.0f) * _245) * _432.w) + _432.x;
  _488 = ((((_327 * _246) + 1.0f) * _244) * _432.w) + _432.y;
  _493 = ((((_327 * _247) + 1.0f) * _243) * _432.w) + _432.z;
  _496 = _432.w * select((_248 != 0), 0.0f, 1.0f);
  _497 = _496 * _242;
  _498 = _496 * _246;
  _499 = _496 * _247;
  if (dot(float3(_483, _488, _493), float3(0.212671f, 0.71516f, 0.072169f)) < (_exposure2.x * 0.005f)) {
    if (dot(float3(_497, _498, _499), float3(0.212671f, 0.71516f, 0.072169f)) > 0.99f) {
      if (true) discard;
    }
  }
  SV_Target.x = _483;
  SV_Target.y = _488;
  SV_Target.z = _493;
  SV_Target.w = ((_478 + _471) - (_478 * _471));
  SV_Target_1.x = _497;
  SV_Target_1.y = _498;
  SV_Target_1.z = _499;
  SV_Target_1.w = 0.0f;
  OutputSignature output_signature = { SV_Target, SV_Target_1 };
  return output_signature;
}
