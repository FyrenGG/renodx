// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.18.00]
// Description: Imports the shared RenoDX option macros required by the Microshadow Flicker Fix; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t15, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t24, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t27, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t32, space36);

Texture2D<uint2> __3__36__0__0__g_materialId : register(t33, space36);

Texture2D<float> __3__36__0__0__g_ssdmPuddleRate : register(t39, space36);

RWTexture2D<float> __3__38__0__1__g_behindReconstructMaskUAV : register(u13, space38);

RWTexture2D<uint> __3__38__0__1__g_behindReconstructTileMaskUAV : register(u14, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b13, space35) {
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

cbuffer __3__1__0__0__DeformedPushConstants : register(b0, space1) {
  float4 _deformedLocationAndScale : packoffset(c000.x);
  float4 _deformedTextureSize : packoffset(c001.x);
  float4 _textureSizeAndInvSize : packoffset(c002.x);
  float4 _deformBlurParam : packoffset(c003.x);
  int4 _interactionParams : packoffset(c004.x);
  float2 _invTextureResolution : packoffset(c005.x);
  float4 _seaBaseLineParam : packoffset(c006.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

struct OutputSignature {
  uint4 SV_Target : SV_Target;
  float4 SV_Target_1 : SV_Target1;
  uint2 SV_Target_2 : SV_Target2;
  float SV_DepthGreaterEqual : SV_DepthGreaterEqual;
};

OutputSignature main(
  precise noperspective centroid float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) {
  uint4 SV_Target;
  float4 SV_Target_1;
  uint2 SV_Target_2;
  float SV_DepthGreaterEqual;
  uint _16;
  uint _17;
  float _19;
  float _214;
  float _223;
  float _231;
  float _240;
  float _270;
  float _296;
  float _317;
  float _346;
  float _34;
  float _35;
  uint2 _37;
  int _39;
  bool _41;
  bool _42;
  bool _50;
  uint4 _52;
  float4 _58;
  float _79;
  float _80;
  float _81;
  float _83;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _92;
  float _93;
  float _95;
  float _97;
  float _133;
  float _134;
  float _135;
  float _136;
  float _138;
  float _140;
  float _142;
  float _144;
  float _147;
  float _181;
  float _185;
  float _186;
  float _187;
  float _199;
  float _200;
  float _201;
  float _204;
  float _205;
  float _206;
  float _207;
  float _242;
  float _284;
  float _297;
  int _318;
  int _319;
  int _337;
  int _338;
  int _340;
  int _342;
  _16 = (uint)(SV_Position.x);
  _17 = (uint)(SV_Position.y);
  _19 = __3__36__0__0__g_depth.Load(int3(_16, _17, 0));  // [sem: _3__36__0__0__g_depth_load]
  if ((_19.x < 1e-07f) || (_19.x == 1.0f)) {
    if (true) discard;
  }
  if ((((uint2)(__3__36__0__0__g_stencil.Load(int3(_16, _17, 0)))).x) == 101) {
    if (true) discard;
  }
  _34 = max(1e-07f, _19.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _35 = _nearFarProj.x / _34;
  _37 = __3__36__0__0__g_materialId.Load(int3(_16, _17, 0));  // [sem: _3__36__0__0__g_materialId_load]
  _39 = _37.x & 127;  // [sem: _3__36__0__0__g_materialId_load_derived]
  _41 = ((uint)((int)(_39) + (int)(-11)) < (uint)9);
  _42 = (_39 == 107);
  _50 = WaveActiveAnyTrue((_35 < _terrainNormalParams.x) && (!(_42 || _41)));
  _52 = __3__36__0__0__g_baseColor.Load(int3(_16, _17, 0));  // [sem: _3__36__0__0__g_baseColor_load]
  _58 = __3__36__0__0__g_normal.Load(int3(_16, _17, 0));  // [sem: _3__36__0__0__g_normal_load]
  if (_50) {
    _79 = (saturate(_58.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _80 = (saturate(_58.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _81 = (saturate(_58.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _83 = rsqrt(dot(float3(_79, _80, _81), float3(_79, _80, _81)));  // [sem: invLength]
    _84 = _83 * _79;
    _85 = _83 * _80;
    _86 = _81 * _83;
    // RenoDX: >>> [Patch: SsdmJitterStableFillHoles] [Version: 1.18.00]
    // Description: The displacement inputs (the surface normal that sets the displacement direction
    //              and grazing divisor, the base-colour displacement-rate byte, and the linear depth
    //              behind the distance fade) are read at this pixel's raw index from a G-buffer that
    //              is rasterised with a different sub-pixel temporal-AA jitter every frame, so a
    //              pixel on a surface boundary alternates between the two adjacent surfaces and the
    //              displaced depth it writes alternates with it; nothing downstream integrates that.
    //              With the Microshadow Flicker Fix enabled these inputs are read at the
    //              jitter-compensated texel, the raster sample nearest the pixel's stable centre, so
    //              the same world feature feeds the displacement every frame. The discard tests,
    //              material classification, position reconstruction, passthrough outputs, and the
    //              depth-write reference keep the raw pixel so the raster convention is untouched.
    //              Zero jitter or Off reduces to the raw texel exactly.
    int _rndxStableX = (int)(_16);
    int _rndxStableY = (int)(_17);
    float _rndxRateByte = (float)((uint)((uint)(_52.z & 255)));
    float _rndxFadeLinearZ = _35;
    if (MICRO_SHADOW_FLICKER_FIX != 0.f) {
      _rndxStableX = clamp((int)((((float)((uint)((uint)(_16)))) - _temporalAAJitter.x) + 0.5f), 0, (int)(_bufferSizeAndInvSize.x) - 1);
      _rndxStableY = clamp((int)((((float)((uint)((uint)(_17)))) - _temporalAAJitter.y) + 0.5f), 0, (int)(_bufferSizeAndInvSize.y) - 1);
      float4 _rndxNormalIn = __3__36__0__0__g_normal.Load(int3(_rndxStableX, _rndxStableY, 0));
      _79 = (saturate(_rndxNormalIn.x * 1.0009785f) * 2.0f) + -1.0f;
      _80 = (saturate(_rndxNormalIn.y * 1.0009785f) * 2.0f) + -1.0f;
      _81 = (saturate(_rndxNormalIn.z * 1.0009785f) * 2.0f) + -1.0f;
      _83 = rsqrt(dot(float3(_79, _80, _81), float3(_79, _80, _81)));
      _84 = _83 * _79;
      _85 = _83 * _80;
      _86 = _81 * _83;
      _rndxRateByte = (float)((uint)(((__3__36__0__0__g_baseColor.Load(int3(_rndxStableX, _rndxStableY, 0))).z) & 255));
      _rndxFadeLinearZ = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Load(int3(_rndxStableX, _rndxStableY, 0))).x));
    }
    // RenoDX: <<< [Patch: SsdmJitterStableFillHoles]
    _87 = (float)((uint)((uint)(_16)));
    _88 = (float)((uint)((uint)(_17)));
    _92 = _bufferSizeAndInvSize.z * _87;
    _93 = _bufferSizeAndInvSize.w * _88;
    _95 = (_92 * 2.0f) + -1.0f;
    _97 = 1.0f - (_93 * 2.0f);
    _133 = mad((_invViewProjRelative[3].z), _34, mad((_invViewProjRelative[3].y), _97, (_95 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
    _134 = (mad((_invViewProjRelative[0].z), _34, mad((_invViewProjRelative[0].y), _97, (_95 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _133;
    _135 = (mad((_invViewProjRelative[1].z), _34, mad((_invViewProjRelative[1].y), _97, (_95 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _133;
    _136 = (mad((_invViewProjRelative[2].z), _34, mad((_invViewProjRelative[2].y), _97, (_95 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _133;
    _138 = rsqrt(dot(float3(_134, _135, _136), float3(_134, _135, _136)));  // [sem: invLength]
    _140 = -0.0f - (_134 * _138);
    _142 = -0.0f - (_135 * _138);
    _144 = -0.0f - (_136 * _138);
    _147 = _deformBlurParam.y * 0.2f;
    if (!(((uint)((int)(_39) + (int)(-1)) > (uint)1) && (_deformBlurParam.x > 0.0f))) {
      _181 = mad((_viewProjRelative[3].z), _136, mad((_viewProjRelative[3].y), _135, ((_viewProjRelative[3].x) * _134))) + (_viewProjRelative[3].w);
      _185 = (_147 * _84) + _134;
      _186 = (_147 * _85) + _135;
      _187 = (_147 * _86) + _136;
      _199 = mad((_viewProjRelative[3].z), _187, mad((_viewProjRelative[3].y), _186, ((_viewProjRelative[3].x) * _185))) + (_viewProjRelative[3].w);
      _200 = (mad((_viewProjRelative[0].z), _136, mad((_viewProjRelative[0].y), _135, ((_viewProjRelative[0].x) * _134))) + (_viewProjRelative[0].w)) / _181;
      _201 = (mad((_viewProjRelative[1].z), _136, mad((_viewProjRelative[1].y), _135, ((_viewProjRelative[1].x) * _134))) + (_viewProjRelative[1].w)) / _181;
      _204 = ((mad((_viewProjRelative[0].z), _187, mad((_viewProjRelative[0].y), _186, ((_viewProjRelative[0].x) * _185))) + (_viewProjRelative[0].w)) / _199) - _200;
      _205 = ((mad((_viewProjRelative[1].z), _187, mad((_viewProjRelative[1].y), _186, ((_viewProjRelative[1].x) * _185))) + (_viewProjRelative[1].w)) / _199) - _201;
      _206 = _200 - _204;
      _207 = _201 - _205;
      if (_206 < -1.0f) {
        _214 = ((-1.0f - _206) / max(1e-06f, _204));
      } else {
        _214 = 0.0f;
      }
      if (_206 > 1.0f) {
        _223 = max(_214, ((_206 + -1.0f) / max(1e-06f, (-0.0f - _204))));
      } else {
        _223 = _214;
      }
      if (_207 < -1.0f) {
        _231 = max(_223, ((-1.0f - _207) / max(1e-06f, _205)));
      } else {
        _231 = _223;
      }
      if (_207 > 1.0f) {
        _240 = max(_231, ((_207 + -1.0f) / max(1e-06f, (-0.0f - _205))));
      } else {
        _240 = _231;
      }
      _242 = saturate(1.0f - _240);  // [sem: expr_sat]
      if (!(((int)((uint)((_58.w * 3.0f) + 0.5f))) == 2)) {
        _270 = (min(min(min(min(((__3__36__0__0__g_ssdmPuddleRate.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_92, _93), 0.0f)).x), ((__3__36__0__0__g_ssdmPuddleRate.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_92, (_bufferSizeAndInvSize.w * (_88 + -4.0f))), 0.0f)).x)), ((__3__36__0__0__g_ssdmPuddleRate.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * (_87 + -4.0f)), _93), 0.0f)).x)), ((__3__36__0__0__g_ssdmPuddleRate.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * (_87 + 4.0f)), _93), 0.0f)).x)), ((__3__36__0__0__g_ssdmPuddleRate.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_92, (_bufferSizeAndInvSize.w * (_88 + 4.0f))), 0.0f)).x)) * _242);
      } else {
        _270 = _242;
      }
    } else {
      _270 = 1.0f;
    }
    // [sem: expr_sat]
    _284 = saturate((_terrainNormalParams.x - _35) * 0.125f) * (((_270 * _147) * saturate(((float)((uint)((uint)(_52.z & 255)))) * 0.0050980393f)) / max(0.125f, saturate(dot(float3(_140, _142, _144), float3(_84, _85, _86)))));
    // RenoDX: >>> [Patch: SsdmJitterStableFillHoles] [Version: 1.18.00]
    // Description: The grazing amplifier divides by N dot V from a single texel, so on silhouette
    //              texels the jitter-driven surface alternation is amplified up to 8x into the
    //              displaced depth. The displacement field is a low-frequency material deform rate,
    //              so with the Microshadow Flicker Fix enabled the divisor direction comes from the
    //              mean of the five decoded unit normals in a one-texel cross around the stable
    //              texel, and the amplifier's excess over 1 is scaled by that mean vector's length:
    //              unit normals that agree keep length 1 (smooth surface, full amplifier), while
    //              normals from different surfaces cancel toward 0 (surface boundary, amplifier
    //              withdrawn). The bound is structural - a mean of unit vectors cannot exceed
    //              length 1 - so smooth surfaces reproduce the native value and no new threshold is
    //              introduced. The fade and rate factors use the jitter-stable inputs prepared
    //              above. Off keeps the native single-texel division directly above this block.
    if (MICRO_SHADOW_FLICKER_FIX != 0.f) {
      const int2 _rndxTapOffsets[4] = { int2(1, 0), int2(-1, 0), int2(0, 1), int2(0, -1) };
      float3 _rndxNormalSum = float3(_84, _85, _86);
      [unroll]
      for (int _rndxTap = 0; _rndxTap < 4; _rndxTap++) {
        int _rndxTapX = clamp((int)(_rndxStableX) + (int)(_rndxTapOffsets[_rndxTap].x), 0, (int)(_bufferSizeAndInvSize.x) - 1);
        int _rndxTapY = clamp((int)(_rndxStableY) + (int)(_rndxTapOffsets[_rndxTap].y), 0, (int)(_bufferSizeAndInvSize.y) - 1);
        float4 _rndxTapTexel = __3__36__0__0__g_normal.Load(int3(_rndxTapX, _rndxTapY, 0));
        float3 _rndxTapN = float3(
            (saturate(_rndxTapTexel.x * 1.0009785f) * 2.0f) + -1.0f,
            (saturate(_rndxTapTexel.y * 1.0009785f) * 2.0f) + -1.0f,
            (saturate(_rndxTapTexel.z * 1.0009785f) * 2.0f) + -1.0f);
        _rndxNormalSum += _rndxTapN * rsqrt(max(1e-12f, dot(_rndxTapN, _rndxTapN)));
      }
      float3 _rndxNormalMean = _rndxNormalSum * 0.2f;
      float _rndxMeanLenSq = dot(_rndxNormalMean, _rndxNormalMean);
      float _rndxCoherence = min(1.0f, sqrt(_rndxMeanLenSq));
      float3 _rndxMeanDir = _rndxNormalMean * rsqrt(max(1e-12f, _rndxMeanLenSq));
      float _rndxGrazing = 1.0f / max(0.125f, saturate(dot(float3(_140, _142, _144), _rndxMeanDir)));
      float _rndxAmp = ((_rndxGrazing - 1.0f) * _rndxCoherence) + 1.0f;
      _284 = saturate((_terrainNormalParams.x - _rndxFadeLinearZ) * 0.125f) * (((_270 * _147) * saturate(_rndxRateByte * 0.0050980393f)) * _rndxAmp);
    }
    // RenoDX: <<< [Patch: SsdmJitterStableFillHoles]
    if (((uint)((int)(_39) + (int)(-97)) < (uint)2) || (((_37.x & 126) == 2) || (_39 == 20))) {
      _296 = min(0.3f, (_284 * 1.5f));
    } else {
      _296 = _284;
    }
    _297 = select((_42 || _41), 0.0f, _296);
    if (_297 > 0.0f) {
      _317 = max(_19.x, (_nearFarProj.x / (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(((_297 * _140) + _134), ((_297 * _142) + _135), ((_297 * _144) + _136))) * 0.999999f)));
    } else {
      _317 = _19.x;
    }
    _318 = (uint)((uint)(_16)) >> 1;
    _319 = (uint)((uint)(_17)) >> 1;
    if ((_39 != 3) && ((_39 != 20) && ((_39 != 2) && ((_35 < 16.0f) && (_297 > (_35 * 0.02f)))))) {
      __3__38__0__1__g_behindReconstructMaskUAV[int2(_318, _319)] = saturate((16.0f - _35) * 0.25f);
      _337 = (int)((int)(_318) + (int)(-3)) >> 3;
      _338 = (int)((int)(_319) + (int)(-3)) >> 3;
      __3__38__0__1__g_behindReconstructTileMaskUAV[int2(_337, _338)] = 1;
      _340 = (int)(_337) + (int)(1);
      __3__38__0__1__g_behindReconstructTileMaskUAV[int2(_340, _338)] = 1;
      _342 = (int)(_338) + (int)(1);
      __3__38__0__1__g_behindReconstructTileMaskUAV[int2(_337, _342)] = 1;
      __3__38__0__1__g_behindReconstructTileMaskUAV[int2(_340, _342)] = 1;
      _346 = _317;
    } else {
      _346 = _317;
    }
  } else {
    _346 = _19.x;
  }
  SV_Target.x = (uint)(_52.x);
  SV_Target.y = (uint)(_52.y);
  SV_Target.z = (uint)(_52.z);
  SV_Target.w = (uint)(_52.w);
  SV_Target_1.x = _58.x;
  SV_Target_1.y = _58.y;
  SV_Target_1.z = _58.z;
  SV_Target_1.w = _58.w;
  SV_Target_2.x = (uint)(_37.x);
  SV_Target_2.y = 101u;
  SV_DepthGreaterEqual = _346;
  OutputSignature output_signature = { SV_Target, SV_Target_1, SV_Target_2, SV_DepthGreaterEqual };
  return output_signature;
}
