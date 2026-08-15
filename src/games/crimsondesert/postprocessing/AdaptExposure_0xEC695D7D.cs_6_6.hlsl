Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t162, space36);

StructuredBuffer<uint> __3__37__0__0__g_histogram : register(t4, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogram2 : register(t5, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramR : register(t6, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramG : register(t7, space37);

StructuredBuffer<uint> __3__37__0__0__g_histogramB : register(t8, space37);

RWStructuredBuffer<float> __3__39__0__1__g_exposureUAV : register(u8, space39);

RWStructuredBuffer<float4> __3__39__0__1__g_autoWhiteBalanceColorUAV : register(u14, space39);

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

cbuffer __3__35__0__0__VoxelGlobalIlluminationConstantBuffer : register(b1, space35) {
  struct {
    float4 _voxelParams;
    float4 _invClipmapExtent;
    float4 _wrappedViewPosForInject;
    float4 _clipmapOffsetsForInject[8];
    float4 _clipmapRelativeIndexOffsetsForInject[8];
    float4 _wrappedViewPos;
    float4 _clipmapOffsets[8];
    float4 _clipmapOffsetsPrev[8];
    float4 _clipmapRelativeIndexOffsets[8];
    float4 _clipmapUVParams[2];
    float4 _clipmapUVRelativeOffset;
    uint4 _surfelTimestamps;
  } __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[48] : packoffset(c0);
  uint4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw_uint[48] : packoffset(c0);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _param0 : packoffset(c000.x);
  float4 _param1 : packoffset(c001.x);
  float4 _param2 : packoffset(c002.x);
  float4 _param3 : packoffset(c003.x);
};

SamplerState __0__4__0__0__g_staticVoxelSampler : register(s12, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared uint _global_0[256];
groupshared uint _global_1[256];
groupshared uint _global_2[768];

[numthreads(256, 1, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  bool _135;
  int _142;
  float _143;
  int _156;
  float _157;
  float _158;
  float _159;
  float _160;
  float _161;
  float _162;
  int _200;
  int _255;
  float _286;
  float _381;
  int _383;
  float _384;
  float _385;
  float _424;
  float _427;
  float _456;
  bool _635;
  int _643;
  float _644;
  int _657;
  float _658;
  float _659;
  float _660;
  float _661;
  int _690;
  float _691;
  int _705;
  float _706;
  float _707;
  float _708;
  float _709;
  int _738;
  float _739;
  int _753;
  float _754;
  float _755;
  float _756;
  float _757;
  float _884;
  float _885;
  float _897;
  float _923;
  float _924;
  float _925;
  float _926;
  float _950;
  float _951;
  int _952;
  float _972;
  float _973;
  int _974;
  float _994;
  float _995;
  int _996;
  uint _36;
  int _39;
  int _42;
  int _43;
  int _45;
  int _48;
  int _50;
  int _52;
  int _55;
  int _57;
  int _59;
  int _62;
  uint _68;
  uint _80;
  uint _92;
  uint _104;
  uint _116;
  bool _126;
  float _138;
  float _140;
  int _146;
  float _149;
  int _150;
  int _170;
  float _172;
  float _173;
  float _176;
  float _177;
  float _179;
  float _180;
  float _181;
  float _183;
  float _184;
  int _185;
  float _188;
  float _196;
  float _197;
  float _198;
  float4 _202;
  float4 _227;
  int _237;
  int _238;
  int _239;
  int _252;
  float _265;
  float _269;
  float _287;
  float _297;
  float _299;
  float _302;
  float _314;
  float _320;
  float _325;
  float _328;
  float _331;
  float _332;
  float _335;
  float _340;
  float _348;
  float _349;
  float _350;
  float _357;
  float _363;
  int _388;
  float _390;
  float _397;
  float _398;
  int _399;
  float _403;
  float _407;
  float _410;
  bool _414;
  float _416;
  float _419;
  float _440;
  float _452;
  uint _464;
  int _467;
  int _470;
  int _473;
  int _474;
  int _476;
  int _478;
  int _480;
  int _484;
  int _486;
  int _488;
  int _490;
  int _494;
  int _496;
  int _498;
  int _500;
  uint _515;
  uint _537;
  uint _559;
  uint _581;
  uint _603;
  bool _623;
  float _641;
  int _647;
  float _650;
  int _651;
  int _669;
  float _671;
  float _672;
  float _675;
  float _676;
  float _679;
  float _680;
  int _681;
  float _688;
  int _694;
  float _697;
  int _698;
  float _701;
  int _717;
  float _719;
  float _720;
  float _723;
  float _724;
  float _727;
  float _728;
  int _729;
  float _736;
  int _742;
  float _745;
  int _746;
  float _749;
  int _765;
  float _767;
  float _768;
  float _771;
  float _772;
  float _775;
  float _776;
  int _777;
  float _783;
  float _789;
  float _790;
  float _791;
  float _792;
  float _794;
  float _795;
  float _796;
  float _798;
  float _799;
  float _801;
  float _824;
  float _825;
  float _826;
  float _831;
  float _836;
  float _841;
  float _846;
  float _858;
  float _864;
  float _867;
  float _875;
  float _886;
  float _930;
  float _933;
  float _934;
  float _935;
  float _936;
  int _955;
  float _957;
  float _964;
  float _965;
  int _966;
  float _970;
  int _977;
  float _979;
  float _986;
  float _987;
  int _988;
  float _992;
  int _999;
  float _1001;
  float _1008;
  float _1009;
  int _1010;
  float _1014;
  float _1016;
  float _1020;
  float _1021;
  float _1022;
  int __loop_jump_target = -1;
  if ((int)(SV_GroupID.x) == 0) {
    _36 = (uint)(SV_GroupIndex) << 2;
    _39 = __3__37__0__0__g_histogram[_36];
    _42 = __3__37__0__0__g_histogram2[_36];
    _43 = (int)(_36) | (int)(1);
    _45 = __3__37__0__0__g_histogram[_43];
    _48 = __3__37__0__0__g_histogram2[_43];
    _50 = (int)(_36) | (int)(2);
    _52 = __3__37__0__0__g_histogram[_50];
    _55 = __3__37__0__0__g_histogram2[_50];
    _57 = (int)(_36) | (int)(3);
    _59 = __3__37__0__0__g_histogram[_57];
    _62 = __3__37__0__0__g_histogram2[_57];
    _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_39), (uint)(_45)))), (uint)(_52)))), (uint)(_59)));
    _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_42), (uint)(_48)))), (uint)(_55)))), (uint)(_62)));
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)32) {
      _68 = (uint)(SV_GroupIndex) + (uint)(32);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_68), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_68), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)16) {
      _80 = (uint)(SV_GroupIndex) + (uint)(16);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_80), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_80), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)8) {
      _92 = (uint)(SV_GroupIndex) + (uint)(8);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_92), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_92), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)4) {
      _104 = (uint)(SV_GroupIndex) + (uint)(4);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_104), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_104), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)2) {
      _116 = (uint)(SV_GroupIndex) + (uint)(2);
      _global_0[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_0[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_0[min((uint)(_116), 255u)]))));
      _global_1[min((uint)((int)(SV_GroupIndex)), 255u)] = ((int)max((uint)((_global_1[min((uint)((int)(SV_GroupIndex)), 255u)])), (uint)((_global_1[min((uint)(_116), 255u)]))));
    }
    GroupMemoryBarrierWithGroupSync();
    _126 = ((int)(SV_GroupIndex) == 0);
    if (_126) {
      _global_0[0] = ((int)max((uint)((_global_0[0])), (uint)((_global_0[1]))));
      _global_1[0] = ((int)max((uint)((_global_1[0])), (uint)((_global_1[1]))));
      _135 = _126;
    } else {
      _135 = false;
    }
    GroupMemoryBarrierWithGroupSync();
    if (_135) {
      _138 = (float)((uint)((uint)(_global_0[0])));
      _140 = 1.0f / max(1e-06f, _138);
      _142 = 0;
      _143 = 0.0f;
      while(true) {
        _146 = __3__37__0__0__g_histogram[_142];
        _149 = (((float)((uint)((uint)(_146)))) * _140) + _143;
        _150 = (int)(_142) + (int)(1);
        if (!(_150 == 256)) {
          _142 = _150;
          _143 = _149;
          continue;
        }
        _156 = 0;
        _157 = 0.0f;
        _158 = 0.0f;
        _159 = (_149 * _param1.x);
        _160 = (_149 * _param1.y);
        _161 = 0.0f;
        _162 = 0.0f;
        while(true) {
          _170 = __3__37__0__0__g_histogram[_156];
          _172 = ((float)((uint)((uint)(_170)))) * _140;
          _173 = min(_159, _172);
          _176 = _160 - _173;
          _177 = min(_176, (_172 - _173));
          _179 = exp2(((((float)((uint)((uint)(_156)))) * 0.00390625f) - _param0.y) / _param0.x) * _177;
          _180 = _179 + _157;
          _181 = _177 + _158;
          _183 = _179 + _161;
          _184 = (_179 * _179) + _162;
          _185 = (int)(_156) + (int)(1);
          if (!(_185 == 256)) {
            _156 = _185;
            _157 = _180;
            _158 = _181;
            _159 = (_159 - _173);
            _160 = (_176 - _177);
            _161 = _183;
            _162 = _184;
            continue;
          }
          _188 = _183 * 0.00390625f;
          _196 = min(max((_180 / max(_181, 0.0001f)), _param1.z), _param1.w);
          _197 = sqrt(max(1e-09f, ((_184 * 0.00390625f) - (_188 * _188))));
          _198 = max(1e-06f, _196);
          _200 = 1;
          while(true) {
            _202 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_200) + (int)(20)))];
            _227 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_200) + (int)(36)))];
            _237 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x * _202.w) + _227.x));
            _238 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y * _202.w) + _227.y));
            _239 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z * _202.w) + _227.z));
            if (!(((((int)_237 >= (int)((int)(_202.x + -63.0f))) && ((int)_237 < (int)((int)(_202.x + 63.0f)))) && (((int)_238 >= (int)((int)(_202.y + -31.0f))) && ((int)_238 < (int)((int)(_202.y + 31.0f))))) && (((int)_239 >= (int)((int)(_202.z + -63.0f))) && ((int)_239 < (int)((int)(_202.z + 63.0f)))))) {
              _252 = (int)(_200) + (int)(1);
              if ((uint)_252 < (uint)8) {
                _200 = _252;
                continue;
              } else {
                _255 = -10000;
              }
            } else {
              _255 = _200;
            }
            if (!((uint)_255 > (uint)3)) {
              _265 = 1.0f / ((float)((uint)((uint)(1) << (_255 & 31))));
              _269 = frac(__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z * _265);
              // [sem: expr_sat]
              _286 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x * _265), (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y * _265), (((((float)((uint)((uint)((uint)(_255)) * (uint)(66)))) + 1.0f) + ((select((_269 < 0.0f), 1.0f, 0.0f) + _269) * 64.0f)) * 0.003787879f)), 0.0f)).x));
            } else {
              _286 = 1.0f;  // [sem: expr_sat]
            }
            _287 = sqrt(_286);
            _297 = (saturate((2.0f / (exp2(_198 * -144.2695f) + 1.0f)) + -1.0f) * (_287 + 2.0f)) + (-1.5f - _287);
            _299 = log2(saturate(_198));
            _302 = _287 * 2.5f;
            _314 = (_197 * 10.0f) / max(1e-09f, _196);
            _320 = __3__39__0__1__g_autoWhiteBalanceColorUAV[1].w;
            _325 = min(max(_198, 0.0001f), 7.0f);
            _328 = saturate((_325 + -0.01f) * 0.14306152f);  // [sem: expr_sat]
            _331 = saturate((_325 + -0.0001f) * 101.0101f);  // [sem: expr_sat]
            _332 = _331 * 2.0f;
            _335 = (_331 * 3.0f) + -3.0f;
            _340 = _335 - (_335 * _328);
            _348 = (log2(_198 * 8.0f) - _340) - ((((_332 + -3.5f) + ((3.0f - _332) * _328)) - _340) * sqrt(saturate(_287)));
            _349 = exp2(_348);
            _350 = 0.8333333f / _349;
            if (!(_temporalReprojectionParams.w > 0.5f)) {
              _357 = __3__39__0__1__g_exposureUAV[1];
              if (_350 > _357) {
                _363 = 1.0f / _357;
                _381 = (1.0f / (((1.0f - exp2(-0.0f - (_param2.x * _timeNoScale.z))) * ((_349 * 1.2f) - _363)) + _363));
              } else {
                _381 = (((1.0f - exp2(-0.0f - (_param2.y * _timeNoScale.z))) * (_350 - _357)) + _357);
              }
            } else {
              _381 = _350;
            }
            _383 = 0;
            _384 = 0.0f;
            _385 = 0.0f;
            while(true) {
              _388 = __3__37__0__0__g_histogram[_383];
              _390 = ((float)((uint)((uint)(_388)))) * _140;
              _397 = (_390 * exp2(((((float)((uint)((uint)(_383)))) * 0.00390625f) - _param0.y) / _param0.x)) + _384;
              _398 = _390 + _385;
              _399 = (int)(_383) + (int)(1);
              if (!(_399 == 256)) {
                _383 = _399;
                _384 = _397;
                _385 = _398;
                continue;
              }
              _403 = _397 / max(_398, 0.0001f);
              _407 = max(_403, _198);
              _410 = __3__39__0__1__g_exposureUAV[11];
              _414 = !(_param3.x == 1.0f);
              _416 = __3__39__0__1__g_exposureUAV[0];
              if (!_414) {
                _419 = __3__39__0__1__g_exposureUAV[4];
                if (_419 > 0.001f) {
                  _424 = exp2((saturate(_320) * _param3.z) + _param2.z);
                } else {
                  _424 = 1.0f;
                }
                _427 = (_424 * _381);
              } else {
                _427 = _param3.y;
              }
              __3__39__0__1__g_exposureUAV[0] = _427;
              __3__39__0__1__g_exposureUAV[1] = select(_414, _param3.y, _381);
              __3__39__0__1__g_exposureUAV[2] = _param0.x;
              __3__39__0__1__g_exposureUAV[3] = _param0.y;
              __3__39__0__1__g_exposureUAV[4] = _138;
              __3__39__0__1__g_exposureUAV[5] = _348;
              __3__39__0__1__g_exposureUAV[8] = _198;
              __3__39__0__1__g_exposureUAV[9] = _416;
              __3__39__0__1__g_exposureUAV[10] = _407;
              __3__39__0__1__g_exposureUAV[11] = (lerp(_410, _407, 0.125f));
              _440 = __3__39__0__1__g_exposureUAV[12];
              __3__39__0__1__g_exposureUAV[12] = (((((saturate(_314 * _314) * (((((-2.0f - _302) - _297) + (exp2(_299 * 0.25f) * (_302 + 2.5f))) * exp2(_299 * 0.1f)) + _297)) * saturate(_403 * 100000.0f)) - _440) * 0.1f) + _440);
              __3__39__0__1__g_exposureUAV[13] = 1.0f;
              __3__39__0__1__g_exposureUAV[14] = _197;
              __3__39__0__1__g_exposureUAV[15] = _198;
              _452 = __3__39__0__1__g_exposureUAV[16];
              if (_terrainNormalParams.w > 0.0f) {
                _456 = max(1e-09f, _427);
              } else {
                _456 = 1.0f;
              }
              __3__39__0__1__g_exposureUAV[16] = _456;
              __3__39__0__1__g_exposureUAV[17] = (_456 / max(1e-09f, _452));
              break;
            }
            break;
          }
          break;
        }
        break;
      }
    }
  } else {
    if (_param2.w > 0.001f) {
      _464 = (uint)(SV_GroupIndex) << 2;
      _467 = __3__37__0__0__g_histogramR[_464];
      _470 = __3__37__0__0__g_histogramG[_464];
      _473 = __3__37__0__0__g_histogramB[_464];
      _474 = (int)(_464) | (int)(1);
      _476 = __3__37__0__0__g_histogramR[_474];
      _478 = __3__37__0__0__g_histogramG[_474];
      _480 = __3__37__0__0__g_histogramB[_474];
      _484 = (int)(_464) | (int)(2);
      _486 = __3__37__0__0__g_histogramR[_484];
      _488 = __3__37__0__0__g_histogramG[_484];
      _490 = __3__37__0__0__g_histogramB[_484];
      _494 = (int)(_464) | (int)(3);
      _496 = __3__37__0__0__g_histogramR[_494];
      _498 = __3__37__0__0__g_histogramG[_494];
      _500 = __3__37__0__0__g_histogramB[_494];
      _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_467), (uint)(_476)))), (uint)(_486)))), (uint)(_496)));
      _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_470), (uint)(_478)))), (uint)(_488)))), (uint)(_498)));
      _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_473), (uint)(_480)))), (uint)(_490)))), (uint)(_500)));
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)32) {
        _515 = (uint)(SV_GroupIndex) + (uint)(32);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_515)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)16) {
        _537 = (uint)(SV_GroupIndex) + (uint)(16);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_537)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)8) {
        _559 = (uint)(SV_GroupIndex) + (uint)(8);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_559)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)4) {
        _581 = (uint)(SV_GroupIndex) + (uint)(4);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_581)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)2) {
        _603 = (uint)(SV_GroupIndex) + (uint)(2);
        _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
        _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)] = ((int)max((uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)(SV_GroupIndex) * (uint)(3))))), 767u)])), (uint)((_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_603)) * (uint)(3))))), 767u)]))));
      }
      GroupMemoryBarrierWithGroupSync();
      _623 = ((int)(SV_GroupIndex) == 0);
      if (_623) {
        _global_2[0] = ((int)max((uint)((_global_2[0])), (uint)((_global_2[3]))));
        _global_2[1] = ((int)max((uint)((_global_2[1])), (uint)((_global_2[4]))));
        _global_2[2] = ((int)max((uint)((_global_2[2])), (uint)((_global_2[5]))));
        _635 = _623;
      } else {
        _635 = false;
      }
      GroupMemoryBarrierWithGroupSync();
      if (_635) {
        _641 = 1.0f / ((float)((uint)((uint)(_global_2[0]))));
        _643 = 0;
        _644 = 0.0f;
        while(true) {
          _647 = __3__37__0__0__g_histogramR[_643];
          _650 = (((float)((uint)((uint)(_647)))) * _641) + _644;
          _651 = (int)(_643) + (int)(1);
          if (!(_651 == 256)) {
            _643 = _651;
            _644 = _650;
            continue;
          }
          _657 = 0;
          _658 = 0.0f;
          _659 = 0.0f;
          _660 = (_650 * _param1.x);
          _661 = (_650 * _param1.y);
          while(true) {
            _669 = __3__37__0__0__g_histogramR[_657];
            _671 = ((float)((uint)((uint)(_669)))) * _641;
            _672 = min(_660, _671);
            _675 = _661 - _672;
            _676 = min(_675, (_671 - _672));
            _679 = (_676 * exp2(((((float)((uint)((uint)(_657)))) * 0.00390625f) - _param0.y) / _param0.x)) + _658;
            _680 = _676 + _659;
            _681 = (int)(_657) + (int)(1);
            if (!(_681 == 256)) {
              _657 = _681;
              _658 = _679;
              _659 = _680;
              _660 = (_660 - _672);
              _661 = (_675 - _676);
              continue;
            }
            _688 = 1.0f / ((float)((uint)((uint)(_global_2[1]))));
            _690 = 0;
            _691 = 0.0f;
            while(true) {
              _694 = __3__37__0__0__g_histogramG[_690];
              _697 = (((float)((uint)((uint)(_694)))) * _688) + _691;
              _698 = (int)(_690) + (int)(1);
              if (!(_698 == 256)) {
                _690 = _698;
                _691 = _697;
                continue;
              }
              _701 = min(max((_679 / max(_680, 0.0001f)), _param1.z), _param1.w);
              _705 = 0;
              _706 = 0.0f;
              _707 = 0.0f;
              _708 = (_697 * _param1.x);
              _709 = (_697 * _param1.y);
              while(true) {
                _717 = __3__37__0__0__g_histogramG[_705];
                _719 = ((float)((uint)((uint)(_717)))) * _688;
                _720 = min(_708, _719);
                _723 = _709 - _720;
                _724 = min(_723, (_719 - _720));
                _727 = (_724 * exp2(((((float)((uint)((uint)(_705)))) * 0.00390625f) - _param0.y) / _param0.x)) + _706;
                _728 = _724 + _707;
                _729 = (int)(_705) + (int)(1);
                if (!(_729 == 256)) {
                  _705 = _729;
                  _706 = _727;
                  _707 = _728;
                  _708 = (_708 - _720);
                  _709 = (_723 - _724);
                  continue;
                }
                _736 = 1.0f / ((float)((uint)((uint)(_global_2[2]))));
                _738 = 0;
                _739 = 0.0f;
                while(true) {
                  _742 = __3__37__0__0__g_histogramB[_738];
                  _745 = (((float)((uint)((uint)(_742)))) * _736) + _739;
                  _746 = (int)(_738) + (int)(1);
                  if (!(_746 == 256)) {
                    _738 = _746;
                    _739 = _745;
                    continue;
                  }
                  _749 = min(max((_727 / max(_728, 0.0001f)), _param1.z), _param1.w);
                  _753 = 0;
                  _754 = 0.0f;
                  _755 = 0.0f;
                  _756 = (_745 * _param1.x);
                  _757 = (_745 * _param1.y);
                  while(true) {
                    _765 = __3__37__0__0__g_histogramB[_753];
                    _767 = ((float)((uint)((uint)(_765)))) * _736;
                    _768 = min(_756, _767);
                    _771 = _757 - _768;
                    _772 = min(_771, (_767 - _768));
                    _775 = (_772 * exp2(((((float)((uint)((uint)(_753)))) * 0.00390625f) - _param0.y) / _param0.x)) + _754;
                    _776 = _772 + _755;
                    _777 = (int)(_753) + (int)(1);
                    if (!(_777 == 256)) {
                      _753 = _777;
                      _754 = _775;
                      _755 = _776;
                      _756 = (_756 - _768);
                      _757 = (_771 - _772);
                      continue;
                    }
                    _783 = min(max((_775 / max(_776, 0.0001f)), _param1.z), _param1.w);
                    _789 = max(0.001f, max(max(abs(_701), abs(_749)), abs(_783)));
                    _790 = _701 / _789;
                    _791 = _749 / _789;
                    _792 = _783 / _789;
                    _794 = dot(float3(_790, _791, _792), float3(-1.0f, 2.0f, -1.0f));
                    _795 = dot(float3(_790, _791, _792), float3(2.0f, 0.0f, -2.0f)) * 0.25f;
                    _796 = _794 * 0.25f;
                    _798 = (_795 + 1.0f) - _796;
                    _799 = _796 + 1.0f;
                    _801 = (1.0f - _795) - _796;
                    _824 = select((_798 <= 0.0031308f), (_798 * 12.92f), (((pow(_798, 0.41666666f)) * 1.055f) + -0.055f));
                    _825 = select((_799 <= 0.0031308f), ((_794 * 3.23f) + 12.92f), (((pow(_799, 0.41666666f)) * 1.055f) + -0.055f));
                    _826 = select((_801 <= 0.0031308f), (_801 * 12.92f), (((pow(_801, 0.41666666f)) * 1.055f) + -0.055f));
                    _831 = ((_825 * 0.103455f) + (_824 * 0.649926f)) + (_826 * 0.197109f);
                    _836 = ((_825 * 0.743075f) + (_824 * 0.234327f)) + (_826 * 0.022598f);
                    _841 = (((_826 * 1.035763f) + (_825 * 0.053077f)) + _836) + _831;
                    _846 = ((_831 / _841) + -0.3366f) / ((_836 / _841) + -0.1735f);
                    _858 = (((exp2(_846 * -1.5654413f) * 6253.803f) + -949.86316f) + (exp2(_846 * -7.1994367f) * 28.70599f)) + (exp2(_846 * -20.24835f) * 4e-05f);
                    if ((_858 < 5000.0f) || (_858 > 6500.0f)) {
                      _864 = min(max(_858, 5000.0f), 6500.0f);
                      _867 = min(max(_864, 1000.0f), 40000.0f) * 0.01f;
                      if (!(_867 <= 66.0f)) {
                        _875 = log2(_867 + -60.0f);
                        _884 = (exp2(_875 * -0.075514846f) * 1.1298909f);
                        _885 = saturate(exp2(_875 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
                      } else {
                        _884 = ((log2(_867) * 0.27038395f) + -0.6318414f);
                        _885 = 1.0f;  // [sem: expr_sat]
                      }
                      _886 = saturate(_884);  // [sem: _884_sat]
                      if (!(_867 >= 66.0f)) {
                        if (!(_867 <= 19.0f)) {
                          _897 = saturate((log2(_867 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
                        } else {
                          _897 = 0.0f;  // [sem: expr_sat]
                        }
                      } else {
                        _897 = 1.0f;  // [sem: expr_sat]
                      }
                      _923 = select((_885 < 0.04045f), (_885 * 0.07739938f), exp2(log2((_885 + 0.055f) * 0.94786733f) * 2.4f));
                      _924 = select((_886 < 0.04045f), (_886 * 0.07739938f), exp2(log2((_886 + 0.055f) * 0.94786733f) * 2.4f));
                      _925 = select((_897 < 0.04045f), (_897 * 0.07739938f), exp2(log2((_897 + 0.055f) * 0.94786733f) * 2.4f));
                      _926 = _864;
                    } else {
                      _923 = _798;
                      _924 = _799;
                      _925 = _801;
                      _926 = _858;
                    }
                    _930 = saturate(_temporalReprojectionParams.w + 0.1f);  // [sem: expr_sat]
                    _933 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].x;
                    _934 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].y;
                    _935 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].z;
                    _936 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].w;
                    __3__39__0__1__g_autoWhiteBalanceColorUAV[0] = float4((lerp(_933, _923, _930)), (lerp(_934, _924, _930)), (lerp(_935, _925, _930)), (lerp(_936, 1.0f, _930)));
                    _950 = 0.0f;
                    _951 = 0.0f;
                    _952 = 0;
                    while(true) {
                      _955 = __3__37__0__0__g_histogramR[_952];
                      _957 = ((float)((uint)((uint)(_955)))) * _641;
                      _964 = (_957 * exp2(((((float)((uint)((uint)(_952)))) * 0.00390625f) - _param0.y) / _param0.x)) + _950;
                      _965 = _957 + _951;
                      _966 = (int)(_952) + (int)(1);
                      if (!(_966 == 256)) {
                        _950 = _964;
                        _951 = _965;
                        _952 = _966;
                        continue;
                      }
                      _970 = _964 / max(_965, 0.0001f);
                      _972 = 0.0f;
                      _973 = 0.0f;
                      _974 = 0;
                      while(true) {
                        _977 = __3__37__0__0__g_histogramG[_974];
                        _979 = ((float)((uint)((uint)(_977)))) * _688;
                        _986 = (_979 * exp2(((((float)((uint)((uint)(_974)))) * 0.00390625f) - _param0.y) / _param0.x)) + _972;
                        _987 = _979 + _973;
                        _988 = (int)(_974) + (int)(1);
                        if (!(_988 == 256)) {
                          _972 = _986;
                          _973 = _987;
                          _974 = _988;
                          continue;
                        }
                        _992 = _986 / max(_987, 0.0001f);
                        _994 = 0.0f;
                        _995 = 0.0f;
                        _996 = 0;
                        while(true) {
                          _999 = __3__37__0__0__g_histogramB[_996];
                          _1001 = ((float)((uint)((uint)(_999)))) * _736;
                          _1008 = (_1001 * exp2(((((float)((uint)((uint)(_996)))) * 0.00390625f) - _param0.y) / _param0.x)) + _994;
                          _1009 = _1001 + _995;
                          _1010 = (int)(_996) + (int)(1);
                          if (!(_1010 == 256)) {
                            _994 = _1008;
                            _995 = _1009;
                            _996 = _1010;
                            continue;
                          }
                          _1014 = _1008 / max(_1009, 0.0001f);
                          _1016 = max(max(_970, _992), _1014);
                          _1020 = saturate(_970 / _1016);  // [sem: expr_sat]
                          _1021 = saturate(_992 / _1016);  // [sem: expr_sat]
                          _1022 = saturate(_1014 / _1016);  // [sem: expr_sat]
                          __3__39__0__1__g_exposureUAV[6] = asfloat(((int)((int)((int)((int)((uint)((uint)(saturate(select((_1020 <= 0.0031308f), (_1020 * 12.92f), (((pow(_1020, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 16)) | (int)(((int)((uint)((uint)(saturate(select((_1021 <= 0.0031308f), (_1021 * 12.92f), (((pow(_1021, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(select((_1022 <= 0.0031308f), (_1022 * 12.92f), (((pow(_1022, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f))) & 255)) | (int)(-16777216)));
                          __3__39__0__1__g_exposureUAV[7] = _926;
                          break;
                        }
                        break;
                      }
                      break;
                    }
                    break;
                  }
                  break;
                }
                break;
              }
              break;
            }
            break;
          }
          break;
        }
      }
    }
  }
}
