struct anon {
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
};


Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t161, space36);

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
  bool _125;
  float _132;
  int _133;
  float _149;
  float _150;
  float _151;
  float _152;
  float _153;
  float _154;
  int _155;
  int _199;
  float _285;
  float _366;
  float _368;
  float _369;
  int _370;
  float _414;
  float _419;
  float _474;
  bool _653;
  float _659;
  int _660;
  float _676;
  float _677;
  float _678;
  float _679;
  int _680;
  float _711;
  int _712;
  float _732;
  float _733;
  float _734;
  float _735;
  int _736;
  float _769;
  int _770;
  float _790;
  float _791;
  float _792;
  float _793;
  int _794;
  float _927;
  float _928;
  float _940;
  float _966;
  float _967;
  float _968;
  float _969;
  int _993;
  float _994;
  float _995;
  int _1017;
  float _1018;
  float _1019;
  float _1042;
  float _1043;
  int _1044;
  uint _20;
  int _23;
  int _26;
  int _27;
  int _29;
  int _31;
  int _32;
  int _34;
  int _36;
  int _37;
  int _39;
  int _41;
  int _45;
  int _54;
  int _67;
  int _80;
  int _93;
  int _106;
  float _128;
  float _130;
  int _136;
  float _139;
  int _140;
  int _158;
  float _160;
  float _161;
  float _162;
  float _164;
  float _173;
  float _174;
  float _175;
  float _176;
  float _178;
  int _179;
  float _182;
  float _183;
  float _185;
  float _191;
  float _196;
  float _197;
  float4 _201;
  float4 _207;
  int _216;
  int _221;
  int _226;
  int _251;
  float _259;
  float _263;
  float _286;
  float _296;
  float _298;
  float _299;
  float _302;
  float _305;
  float _307;
  float _310;
  float _313;
  float _314;
  float _316;
  float _318;
  float _330;
  float _331;
  float _332;
  float _339;
  float _345;
  int _373;
  float _375;
  float _385;
  float _386;
  int _387;
  float _391;
  float _392;
  float _395;
  bool _398;
  float _400;
  float _403;
  float _441;
  float _467;
  uint _483;
  int _486;
  int _489;
  int _492;
  int _493;
  int _495;
  int _497;
  int _499;
  int _500;
  int _502;
  int _504;
  int _506;
  int _507;
  int _509;
  int _511;
  int _513;
  uint _517;
  uint _555;
  uint _577;
  uint _599;
  uint _621;
  float _657;
  int _663;
  float _666;
  int _667;
  int _683;
  float _685;
  float _686;
  float _687;
  float _689;
  float _699;
  float _700;
  int _701;
  float _704;
  float _705;
  float _709;
  int _715;
  float _718;
  int _719;
  int _739;
  float _741;
  float _742;
  float _743;
  float _745;
  float _755;
  float _756;
  int _757;
  float _760;
  float _761;
  float _764;
  float _767;
  int _773;
  float _776;
  int _777;
  int _797;
  float _799;
  float _800;
  float _801;
  float _803;
  float _813;
  float _814;
  int _815;
  float _818;
  float _819;
  float _822;
  float _826;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _838;
  float _839;
  float _841;
  float _842;
  float _844;
  float _852;
  float _861;
  float _869;
  float _874;
  float _879;
  float _884;
  float _889;
  float _901;
  float _907;
  float _910;
  float _914;
  float _929;
  float _973;
  float _976;
  float _977;
  float _978;
  float _979;
  int _998;
  float _1000;
  float _1010;
  float _1011;
  int _1012;
  int _1022;
  float _1024;
  float _1034;
  float _1035;
  int _1036;
  float _1039;
  int _1047;
  float _1049;
  float _1059;
  float _1060;
  int _1061;
  float _1064;
  float _1066;
  float _1068;
  float _1070;
  float _1072;
  float _1074;
  int __loop_jump_target = -1;
  if ((int)(SV_GroupID.x) == 0) {
    _20 = (uint)(SV_GroupIndex) << 2;
    _23 = __3__37__0__0__g_histogram[_20];
    _26 = __3__37__0__0__g_histogram2[_20];
    _27 = (int)(_20) | (int)(1);
    _29 = __3__37__0__0__g_histogram[_27];
    _31 = __3__37__0__0__g_histogram2[_27];
    _32 = (int)(_20) | (int)(2);
    _34 = __3__37__0__0__g_histogram[_32];
    _36 = __3__37__0__0__g_histogram2[_32];
    _37 = (int)(_20) | (int)(3);
    _39 = __3__37__0__0__g_histogram[_37];
    _41 = __3__37__0__0__g_histogram2[_37];
    _45 = (int)min((uint)((int)(SV_GroupIndex)), (uint)(255));
    _global_0[_45] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_23), (uint)(_29)))), (uint)(_34)))), (uint)(_39)));
    _global_1[_45] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_26), (uint)(_31)))), (uint)(_36)))), (uint)(_41)));
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)32) {
      _54 = (int)min((uint)(((int)((uint)(SV_GroupIndex) + (uint)(32)))), (uint)(255));
      _global_0[_45] = ((int)max((uint)((_global_0[_45])), (uint)((_global_0[_54]))));
      _global_1[_45] = ((int)max((uint)((_global_1[_45])), (uint)((_global_1[_54]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)16) {
      _67 = (int)min((uint)(((int)((uint)(SV_GroupIndex) + (uint)(16)))), (uint)(255));
      _global_0[_45] = ((int)max((uint)((_global_0[_45])), (uint)((_global_0[_67]))));
      _global_1[_45] = ((int)max((uint)((_global_1[_45])), (uint)((_global_1[_67]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)8) {
      _80 = (int)min((uint)(((int)((uint)(SV_GroupIndex) + (uint)(8)))), (uint)(255));
      _global_0[_45] = ((int)max((uint)((_global_0[_45])), (uint)((_global_0[_80]))));
      _global_1[_45] = ((int)max((uint)((_global_1[_45])), (uint)((_global_1[_80]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)4) {
      _93 = (int)min((uint)(((int)((uint)(SV_GroupIndex) + (uint)(4)))), (uint)(255));
      _global_0[_45] = ((int)max((uint)((_global_0[_45])), (uint)((_global_0[_93]))));
      _global_1[_45] = ((int)max((uint)((_global_1[_45])), (uint)((_global_1[_93]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((uint)(int)(SV_GroupIndex) < (uint)2) {
      _106 = (int)min((uint)(((int)((uint)(SV_GroupIndex) + (uint)(2)))), (uint)(255));
      _global_0[_45] = ((int)max((uint)((_global_0[_45])), (uint)((_global_0[_106]))));
      _global_1[_45] = ((int)max((uint)((_global_1[_45])), (uint)((_global_1[_106]))));
    }
    GroupMemoryBarrierWithGroupSync();
    if ((int)(SV_GroupIndex) == 0) {
      _global_0[0] = ((int)max((uint)((_global_0[0])), (uint)((_global_0[1]))));
      _global_1[0] = ((int)max((uint)((_global_1[0])), (uint)((_global_1[1]))));
      _125 = true;
    } else {
      _125 = false;
    }
    GroupMemoryBarrierWithGroupSync();
    if (_125) {
      _128 = (float)((uint)((uint)(_global_0[0])));
      _130 = 1.0f / max(1e-06f, _128);
      _132 = 0.0f;
      _133 = 0;
      while(true) {
        _136 = __3__37__0__0__g_histogram[_133];
        _139 = (((float)((uint)((uint)(_136)))) * _130) + _132;
        _140 = (int)(_133) + (int)(1);
        if (!(_140 == 256)) {
          _132 = _139;
          _133 = _140;
          continue;
        }
        _149 = 0.0f;
        _150 = 0.0f;
        _151 = (_param1.y * _139);
        _152 = (_param1.x * _139);
        _153 = 0.0f;
        _154 = 0.0f;
        _155 = 0;
        while(true) {
          _158 = __3__37__0__0__g_histogram[_155];
          _160 = ((float)((uint)((uint)(_158)))) * _130;
          _161 = min(_152, _160);
          _162 = _151 - _161;
          _164 = min(_162, (_160 - _161));
          _173 = exp2(((((float)((uint)((uint)(_155)))) * 0.00390625f) - _param0.y) / _param0.x) * _164;
          _174 = _173 + _154;
          _175 = _164 + _153;
          _176 = _173 + _150;
          _178 = (_173 * _173) + _149;
          _179 = (int)(_155) + (int)(1);
          if (!(_179 == 256)) {
            _182 = _152 - _161;
            _183 = _162 - _164;
            _149 = _178;
            _150 = _176;
            _151 = _183;
            _152 = _182;
            _153 = _175;
            _154 = _174;
            _155 = _179;
            continue;
          }
          _185 = _176 * 0.00390625f;
          _191 = min(max((_174 / max(_175, 0.0001f)), _param1.z), _param1.w);
          _196 = sqrt(max(1e-09f, ((_178 * 0.00390625f) - (_185 * _185))));
          _197 = max(1e-06f, _191);
          _199 = 1;
          while(true) {
            _201 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_199) + (int)(20)))];
            _207 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_199) + (int)(36)))];
            _216 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x * _201.w) + _207.x));
            _221 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y * _201.w) + _207.y));
            _226 = (int)(floor((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z * _201.w) + _207.z));
            if (((int)_216 < (int)((int)(_201.x + -63.0f))) || ((!((int)_216 < (int)((int)(_201.x + -63.0f)))) && (!((int)_216 < (int)((int)(_201.x + 63.0f))))) || (((!((int)_216 < (int)((int)(_201.x + -63.0f)))) && ((int)_216 < (int)((int)(_201.x + 63.0f)))) && ((int)_221 < (int)((int)(_201.y + -31.0f)))) || ((((!((int)_216 < (int)((int)(_201.x + -63.0f)))) && ((int)_216 < (int)((int)(_201.x + 63.0f)))) && (!((int)_221 < (int)((int)(_201.y + -31.0f))))) && (!((int)_221 < (int)((int)(_201.y + 31.0f))))) || (((((!((int)_216 < (int)((int)(_201.x + -63.0f)))) && ((int)_216 < (int)((int)(_201.x + 63.0f)))) && (!((int)_221 < (int)((int)(_201.y + -31.0f))))) && ((int)_221 < (int)((int)(_201.y + 31.0f)))) && ((int)_226 < (int)((int)(_201.z + -63.0f)))) || ((((((!((int)_216 < (int)((int)(_201.x + -63.0f)))) && ((int)_216 < (int)((int)(_201.x + 63.0f)))) && (!((int)_221 < (int)((int)(_201.y + -31.0f))))) && ((int)_221 < (int)((int)(_201.y + 31.0f)))) && (!((int)_226 < (int)((int)(_201.z + -63.0f))))) && (!((int)_226 < (int)((int)(_201.z + 63.0f)))))) {
              _251 = (int)(_199) + (int)(1);
              if ((uint)_251 < (uint)8) {
                _199 = _251;
                continue;
              } else {
                _285 = 1.0f;  // [sem: expr_sat]
              }
            } else {
              if (!((uint)_199 > (uint)3)) {
                _259 = 1.0f / ((float)((uint)((uint)(1) << (_199 & 31))));
                _263 = frac(__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z * _259);
                // [sem: expr_sat]
                _285 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x * _259), (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y * _259), (((((float)((uint)((uint)((uint)(_199)) * (uint)(66)))) + 1.0f) + ((select((_263 < 0.0f), 1.0f, 0.0f) + _263) * 64.0f)) * 0.003787879f)), 0.0f)).x));
              } else {
                _285 = 1.0f;  // [sem: expr_sat]
              }
            }
            _286 = sqrt(_285);
            _296 = (saturate((2.0f / (exp2(_197 * -144.2695f) + 1.0f)) + -1.0f) * (_286 + 2.0f)) + (-1.5f - _286);
            _298 = log2(saturate(_197));
            _299 = _286 * 2.5f;
            _302 = (_196 * 10.0f) / max(1e-09f, _191);
            _305 = __3__39__0__1__g_autoWhiteBalanceColorUAV[1].w;
            _307 = min(max(_197, 0.0001f), 7.0f);
            _310 = saturate((_307 + -0.01f) * 0.14306152f);  // [sem: expr_sat]
            _313 = saturate((_307 + -0.0001f) * 101.0101f);  // [sem: expr_sat]
            _314 = _313 * 2.0f;
            _316 = (_313 * 3.0f) + -3.0f;
            _318 = _316 - (_316 * _310);
            _330 = (log2(_197 * 8.0f) - _318) - ((((_314 + -3.5f) + ((3.0f - _314) * _310)) - _318) * sqrt(saturate(_286)));
            _331 = exp2(_330);
            _332 = 0.8333333f / _331;
            if (!(_temporalReprojectionParams.w > 0.5f)) {
              _339 = __3__39__0__1__g_exposureUAV[1];
              if (_332 > _339) {
                _345 = 1.0f / _339;
                _366 = (1.0f / (((1.0f - exp2(-0.0f - (_param2.x * _timeNoScale.z))) * ((_331 * 1.2f) - _345)) + _345));
              } else {
                _366 = (((1.0f - exp2(-0.0f - (_param2.y * _timeNoScale.z))) * (_332 - _339)) + _339);
              }
            } else {
              _366 = _332;
            }
            _368 = 0.0f;
            _369 = 0.0f;
            _370 = 0;
            while(true) {
              _373 = __3__37__0__0__g_histogram[_370];
              _375 = ((float)((uint)((uint)(_373)))) * _130;
              _385 = (exp2(((((float)((uint)((uint)(_370)))) * 0.00390625f) - _param0.y) / _param0.x) * _375) + _369;
              _386 = _375 + _368;
              _387 = (int)(_370) + (int)(1);
              if (!(_387 == 256)) {
                _368 = _386;
                _369 = _385;
                _370 = _387;
                continue;
              }
              _391 = _385 / max(_386, 0.0001f);
              _392 = max(_391, _197);
              _395 = __3__39__0__1__g_exposureUAV[11];
              _398 = !(_param3.x == 1.0f);
              _400 = __3__39__0__1__g_exposureUAV[0];
              if (_398) {
                _419 = _param3.y;
              } else {
                _403 = __3__39__0__1__g_exposureUAV[4];
                if (_403 > 0.001f) {
                  _414 = exp2(_param2.z + (saturate(_305) * _param3.z));
                } else {
                  _414 = 1.0f;
                }
                _419 = (_414 * _366);
              }
              __3__39__0__1__g_exposureUAV[0] = _419;
              __3__39__0__1__g_exposureUAV[1] = select(_398, _param3.y, _366);
              __3__39__0__1__g_exposureUAV[2] = _param0.x;
              __3__39__0__1__g_exposureUAV[3] = _param0.y;
              __3__39__0__1__g_exposureUAV[4] = _128;
              __3__39__0__1__g_exposureUAV[5] = _330;
              __3__39__0__1__g_exposureUAV[8] = _197;
              __3__39__0__1__g_exposureUAV[9] = _400;
              __3__39__0__1__g_exposureUAV[10] = _392;
              __3__39__0__1__g_exposureUAV[11] = (lerp(_395, _392, 0.125f));
              _441 = __3__39__0__1__g_exposureUAV[12];
              __3__39__0__1__g_exposureUAV[12] = (((((saturate(_391 * 100000.0f) * saturate(_302 * _302)) * (((((-2.0f - _299) - _296) + (exp2(_298 * 0.25f) * (_299 + 2.5f))) * exp2(_298 * 0.1f)) + _296)) - _441) * 0.1f) + _441);
              __3__39__0__1__g_exposureUAV[13] = 1.0f;
              __3__39__0__1__g_exposureUAV[14] = _196;
              __3__39__0__1__g_exposureUAV[15] = _197;
              _467 = __3__39__0__1__g_exposureUAV[16];
              if (_terrainNormalParams.w > 0.0f) {
                _474 = max(1e-09f, _419);
              } else {
                _474 = 1.0f;
              }
              __3__39__0__1__g_exposureUAV[16] = _474;
              __3__39__0__1__g_exposureUAV[17] = (_474 / max(1e-09f, _467));
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
      _483 = (uint)(SV_GroupIndex) << 2;
      _486 = __3__37__0__0__g_histogramR[_483];
      _489 = __3__37__0__0__g_histogramG[_483];
      _492 = __3__37__0__0__g_histogramB[_483];
      _493 = (int)(_483) | (int)(1);
      _495 = __3__37__0__0__g_histogramR[_493];
      _497 = __3__37__0__0__g_histogramG[_493];
      _499 = __3__37__0__0__g_histogramB[_493];
      _500 = (int)(_483) | (int)(2);
      _502 = __3__37__0__0__g_histogramR[_500];
      _504 = __3__37__0__0__g_histogramG[_500];
      _506 = __3__37__0__0__g_histogramB[_500];
      _507 = (int)(_483) | (int)(3);
      _509 = __3__37__0__0__g_histogramR[_507];
      _511 = __3__37__0__0__g_histogramG[_507];
      _513 = __3__37__0__0__g_histogramB[_507];
      _517 = (uint)(SV_GroupIndex) * (uint)(3);
      _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_486), (uint)(_495)))), (uint)(_502)))), (uint)(_509)));
      _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_489), (uint)(_497)))), (uint)(_504)))), (uint)(_511)));
      _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)(((int)max((uint)(((int)max((uint)(_492), (uint)(_499)))), (uint)(_506)))), (uint)(_513)));
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)32) {
        _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(_517), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(96)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(97)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(98)))), (uint)(767)))]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)16) {
        _555 = (uint)(SV_GroupIndex) * (uint)(3);
        _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(_517), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_555)) + (uint)(48)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_555)) + (uint)(49)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_555)) + (uint)(50)))), (uint)(767)))]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)8) {
        _577 = (uint)(SV_GroupIndex) * (uint)(3);
        _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(_517), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_577)) + (uint)(24)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_577)) + (uint)(25)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_577)) + (uint)(26)))), (uint)(767)))]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)4) {
        _599 = (uint)(SV_GroupIndex) * (uint)(3);
        _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(_517), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_599)) + (uint)(12)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_599)) + (uint)(13)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_599)) + (uint)(14)))), (uint)(767)))]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((uint)(int)(SV_GroupIndex) < (uint)2) {
        _621 = (uint)(SV_GroupIndex) * (uint)(3);
        _global_2[((int)min((uint)(_517), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(_517), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_621)) + (uint)(6)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(1)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_621)) + (uint)(7)))), (uint)(767)))]))));
        _global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))] = ((int)max((uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_517)) + (uint)(2)))), (uint)(767)))])), (uint)((_global_2[((int)min((uint)(((int)((uint)((uint)(_621)) + (uint)(8)))), (uint)(767)))]))));
      }
      GroupMemoryBarrierWithGroupSync();
      if ((int)(SV_GroupIndex) == 0) {
        _global_2[0] = ((int)max((uint)((_global_2[0])), (uint)((_global_2[3]))));
        _global_2[1] = ((int)max((uint)((_global_2[1])), (uint)((_global_2[4]))));
        _global_2[2] = ((int)max((uint)((_global_2[2])), (uint)((_global_2[5]))));
        _653 = false;
      } else {
        _653 = true;
      }
      GroupMemoryBarrierWithGroupSync();
      if (!_653) {
        _657 = 1.0f / ((float)((uint)((uint)(_global_2[0]))));
        _659 = 0.0f;
        _660 = 0;
        while(true) {
          _663 = __3__37__0__0__g_histogramR[_660];
          _666 = (((float)((uint)((uint)(_663)))) * _657) + _659;
          _667 = (int)(_660) + (int)(1);
          if (!(_667 == 256)) {
            _659 = _666;
            _660 = _667;
            continue;
          }
          _676 = (_param1.y * _666);
          _677 = (_param1.x * _666);
          _678 = 0.0f;
          _679 = 0.0f;
          _680 = 0;
          while(true) {
            _683 = __3__37__0__0__g_histogramR[_680];
            _685 = ((float)((uint)((uint)(_683)))) * _657;
            _686 = min(_677, _685);
            _687 = _676 - _686;
            _689 = min(_687, (_685 - _686));
            _699 = (exp2(((((float)((uint)((uint)(_680)))) * 0.00390625f) - _param0.y) / _param0.x) * _689) + _679;
            _700 = _689 + _678;
            _701 = (int)(_680) + (int)(1);
            if (!(_701 == 256)) {
              _704 = _677 - _686;
              _705 = _687 - _689;
              _676 = _705;
              _677 = _704;
              _678 = _700;
              _679 = _699;
              _680 = _701;
              continue;
            }
            _709 = 1.0f / ((float)((uint)((uint)(_global_2[1]))));
            _711 = 0.0f;
            _712 = 0;
            while(true) {
              _715 = __3__37__0__0__g_histogramG[_712];
              _718 = (((float)((uint)((uint)(_715)))) * _709) + _711;
              _719 = (int)(_712) + (int)(1);
              if (!(_719 == 256)) {
                _711 = _718;
                _712 = _719;
                continue;
              }
              _732 = (_param1.y * _718);
              _733 = (_param1.x * _718);
              _734 = 0.0f;
              _735 = 0.0f;
              _736 = 0;
              while(true) {
                _739 = __3__37__0__0__g_histogramG[_736];
                _741 = ((float)((uint)((uint)(_739)))) * _709;
                _742 = min(_733, _741);
                _743 = _732 - _742;
                _745 = min(_743, (_741 - _742));
                _755 = (exp2(((((float)((uint)((uint)(_736)))) * 0.00390625f) - _param0.y) / _param0.x) * _745) + _735;
                _756 = _745 + _734;
                _757 = (int)(_736) + (int)(1);
                if (!(_757 == 256)) {
                  _760 = _733 - _742;
                  _761 = _743 - _745;
                  _732 = _761;
                  _733 = _760;
                  _734 = _756;
                  _735 = _755;
                  _736 = _757;
                  continue;
                }
                _764 = min(max((_699 / max(_700, 0.0001f)), _param1.z), _param1.w);
                _767 = 1.0f / ((float)((uint)((uint)(_global_2[2]))));
                _769 = 0.0f;
                _770 = 0;
                while(true) {
                  _773 = __3__37__0__0__g_histogramB[_770];
                  _776 = (((float)((uint)((uint)(_773)))) * _767) + _769;
                  _777 = (int)(_770) + (int)(1);
                  if (!(_777 == 256)) {
                    _769 = _776;
                    _770 = _777;
                    continue;
                  }
                  _790 = (_param1.y * _776);
                  _791 = (_param1.x * _776);
                  _792 = 0.0f;
                  _793 = 0.0f;
                  _794 = 0;
                  while(true) {
                    _797 = __3__37__0__0__g_histogramB[_794];
                    _799 = ((float)((uint)((uint)(_797)))) * _767;
                    _800 = min(_791, _799);
                    _801 = _790 - _800;
                    _803 = min(_801, (_799 - _800));
                    _813 = (exp2(((((float)((uint)((uint)(_794)))) * 0.00390625f) - _param0.y) / _param0.x) * _803) + _793;
                    _814 = _803 + _792;
                    _815 = (int)(_794) + (int)(1);
                    if (!(_815 == 256)) {
                      _818 = _791 - _800;
                      _819 = _801 - _803;
                      _790 = _819;
                      _791 = _818;
                      _792 = _814;
                      _793 = _813;
                      _794 = _815;
                      continue;
                    }
                    _822 = min(max((_755 / max(_756, 0.0001f)), _param1.z), _param1.w);
                    _826 = min(max((_813 / max(_814, 0.0001f)), _param1.z), _param1.w);
                    _832 = max(0.001f, max(max(abs(_764), abs(_822)), abs(_826)));
                    _833 = _764 / _832;
                    _834 = _822 / _832;
                    _835 = _826 / _832;
                    _836 = dot(float3(_833, _834, _835), float3(-1.0f, 2.0f, -1.0f));
                    _838 = dot(float3(_833, _834, _835), float3(2.0f, 0.0f, -2.0f)) * 0.25f;
                    _839 = _836 * 0.25f;
                    _841 = (1.0f - _839) + _838;
                    _842 = _839 + 1.0f;
                    _844 = (1.0f - _838) - _839;
                    _852 = select((_841 <= 0.0031308f), (_841 * 12.92f), (((pow(_841, 0.41666666f)) * 1.055f) + -0.055f));
                    _861 = select((_842 <= 0.0031308f), ((_836 * 3.23f) + 12.92f), (((pow(_842, 0.41666666f)) * 1.055f) + -0.055f));
                    _869 = select((_844 <= 0.0031308f), (_844 * 12.92f), (((pow(_844, 0.41666666f)) * 1.055f) + -0.055f));
                    _874 = ((_861 * 0.103455f) + (_852 * 0.649926f)) + (_869 * 0.197109f);
                    _879 = ((_861 * 0.743075f) + (_852 * 0.234327f)) + (_869 * 0.022598f);
                    _884 = (((_869 * 1.035763f) + (_861 * 0.053077f)) + _879) + _874;
                    _889 = ((_874 / _884) + -0.3366f) / ((_879 / _884) + -0.1735f);
                    _901 = (((exp2(_889 * -1.5654413f) * 6253.803f) + -949.86316f) + (exp2(_889 * -7.1994367f) * 28.70599f)) + (exp2(_889 * -20.24835f) * 4e-05f);
                    if ((_901 < 5000.0f) || (_901 > 6500.0f)) {
                      _907 = min(max(_901, 5000.0f), 6500.0f);
                      _910 = min(max(_907, 1000.0f), 40000.0f) * 0.01f;
                      if (!(_910 <= 66.0f)) {
                        _914 = log2(_910 + -60.0f);
                        _927 = saturate(exp2(_914 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
                        _928 = (exp2(_914 * -0.075514846f) * 1.1298909f);
                      } else {
                        _927 = 1.0f;  // [sem: expr_sat]
                        _928 = ((log2(_910) * 0.27038395f) + -0.6318414f);
                      }
                      _929 = saturate(_928);  // [sem: _928_sat]
                      if (!(_910 >= 66.0f)) {
                        if (!(_910 <= 19.0f)) {
                          _940 = saturate((log2(_910 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
                        } else {
                          _940 = 0.0f;  // [sem: expr_sat]
                        }
                      } else {
                        _940 = 1.0f;  // [sem: expr_sat]
                      }
                      _966 = _907;
                      _967 = select((_940 < 0.04045f), (_940 * 0.07739938f), exp2(log2((_940 + 0.055f) * 0.94786733f) * 2.4f));
                      _968 = select((_929 < 0.04045f), (_929 * 0.07739938f), exp2(log2((_929 + 0.055f) * 0.94786733f) * 2.4f));
                      _969 = select((_927 < 0.04045f), (_927 * 0.07739938f), exp2(log2((_927 + 0.055f) * 0.94786733f) * 2.4f));
                    } else {
                      _966 = _901;
                      _967 = _844;
                      _968 = _842;
                      _969 = _841;
                    }
                    _973 = saturate(_temporalReprojectionParams.w + 0.1f);  // [sem: expr_sat]
                    _976 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].x;
                    _977 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].y;
                    _978 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].z;
                    _979 = __3__39__0__1__g_autoWhiteBalanceColorUAV[0].w;
                    __3__39__0__1__g_autoWhiteBalanceColorUAV[0] = float4((lerp(_976, _969, _973)), (lerp(_977, _968, _973)), (lerp(_978, _967, _973)), (lerp(_979, 1.0f, _973)));
                    _993 = 0;
                    _994 = 0.0f;
                    _995 = 0.0f;
                    while(true) {
                      _998 = __3__37__0__0__g_histogramR[_993];
                      _1000 = ((float)((uint)((uint)(_998)))) * _657;
                      _1010 = (exp2(((((float)((uint)((uint)(_993)))) * 0.00390625f) - _param0.y) / _param0.x) * _1000) + _995;
                      _1011 = _1000 + _994;
                      _1012 = (int)(_993) + (int)(1);
                      if (!(_1012 == 256)) {
                        _993 = _1012;
                        _994 = _1011;
                        _995 = _1010;
                        continue;
                      }
                      _1017 = 0;
                      _1018 = 0.0f;
                      _1019 = 0.0f;
                      while(true) {
                        _1022 = __3__37__0__0__g_histogramG[_1017];
                        _1024 = ((float)((uint)((uint)(_1022)))) * _709;
                        _1034 = (exp2(((((float)((uint)((uint)(_1017)))) * 0.00390625f) - _param0.y) / _param0.x) * _1024) + _1019;
                        _1035 = _1024 + _1018;
                        _1036 = (int)(_1017) + (int)(1);
                        if (!(_1036 == 256)) {
                          _1017 = _1036;
                          _1018 = _1035;
                          _1019 = _1034;
                          continue;
                        }
                        _1039 = _1010 / max(_1011, 0.0001f);
                        _1042 = 0.0f;
                        _1043 = 0.0f;
                        _1044 = 0;
                        while(true) {
                          _1047 = __3__37__0__0__g_histogramB[_1044];
                          _1049 = ((float)((uint)((uint)(_1047)))) * _767;
                          _1059 = (exp2(((((float)((uint)((uint)(_1044)))) * 0.00390625f) - _param0.y) / _param0.x) * _1049) + _1042;
                          _1060 = _1049 + _1043;
                          _1061 = (int)(_1044) + (int)(1);
                          if (!(_1061 == 256)) {
                            _1042 = _1059;
                            _1043 = _1060;
                            _1044 = _1061;
                            continue;
                          }
                          _1064 = _1034 / max(_1035, 0.0001f);
                          _1066 = _1059 / max(_1060, 0.0001f);
                          _1068 = max(max(_1039, _1064), _1066);
                          _1070 = saturate(_1039 / _1068);  // [sem: expr_sat]
                          _1072 = saturate(_1064 / _1068);  // [sem: expr_sat]
                          _1074 = saturate(_1066 / _1068);  // [sem: expr_sat]
                          __3__39__0__1__g_exposureUAV[6] = asfloat(((int)((int)((int)((int)((uint)((uint)(saturate(select((_1070 <= 0.0031308f), (_1070 * 12.92f), (((pow(_1070, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 16)) | (int)(((int)((uint)((uint)(saturate(select((_1072 <= 0.0031308f), (_1072 * 12.92f), (((pow(_1072, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(select((_1074 <= 0.0031308f), (_1074 * 12.92f), (((pow(_1074, 0.41666666f)) * 1.055f) + -0.055f))) * 255.0f))) & 255)) | (int)(-16777216)));
                          __3__39__0__1__g_exposureUAV[7] = _966;
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
