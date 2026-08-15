struct PostProcessVHSNoiseStruct {
  float _VHSNoiseProgress;
  float _timeSpeed;
  float _largeNoiseThreshold;
  float _largeNoiseDarkness;
  float _smallNoiseAmplitude;
  float _randomJitterThreshold;
  float _scanlineDarkness;
  float _vignetteRatio;
  float _vignetteWidth;
  float3 _slopeRGB;
  float _saturationRatio;
  float _chromaticAberrationRatio;
  uint _noiseTexture;
};


Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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

struct BindlessParameters_PostProcessVHSNoise {
  PostProcessVHSNoiseStruct BindlessParameters_PostProcessVHSNoise;
};

typedef BindlessParameters_PostProcessVHSNoise BindlessParameters_PostProcessVHSNoise_t;
ConstantBuffer<BindlessParameters_PostProcessVHSNoise_t> BindlessParameters_PostProcessVHSNoise[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  float _554;
  float _555;
  float _556;
  float _557;
  float _571;
  float _776;
  float _777;
  float _778;
  float _871;
  float _872;
  float _873;
  float _927;
  float _928;
  float _929;
  float _948;
  float _949;
  float _950;
  float _980;
  float _981;
  float _982;
  float _996;
  float _997;
  float _998;
  int _31;
  float _39;
  float _40;
  int _44;
  float _52;
  float _54;
  float _61;
  float _62;
  float _63;
  float _66;
  float _67;
  float _70;
  float _71;
  float _72;
  bool _73;
  float _74;
  float _75;
  float _78;
  float _79;
  float _80;
  float _81;
  float _88;
  float _89;
  float _90;
  float _91;
  float _98;
  float _99;
  float _100;
  float _111;
  float _114;
  float _117;
  float _124;
  float _125;
  float _126;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _150;
  float _160;
  float _161;
  float _162;
  float _163;
  float _164;
  float _165;
  float _169;
  float _170;
  float _171;
  float _178;
  float _179;
  float _180;
  float _216;
  float _217;
  float _219;
  float _227;
  float _237;
  float _238;
  float _240;
  float _248;
  float _258;
  float _260;
  float _262;
  float _264;
  float _279;
  float _282;
  float _285;
  float _305;
  float _306;
  float _307;
  float _310;
  float _311;
  float _314;
  float _315;
  float _316;
  bool _317;
  float _318;
  float _319;
  float _322;
  float _323;
  float _324;
  float _325;
  float _332;
  float _333;
  float _334;
  float _335;
  float _342;
  float _343;
  float _344;
  float _355;
  float _358;
  float _361;
  float _368;
  float _369;
  float _370;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _413;
  float _414;
  float _415;
  float _422;
  float _423;
  float _424;
  int _455;
  float _463;
  int _466;
  float _474;
  float _477;
  float _479;
  float _488;
  int _524;
  float _532;
  float _546;
  uint _558;
  bool _574;
  float _580;
  float _629;
  float _630;
  float _631;
  float _633;
  float _640;
  float _641;
  float _642;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _715;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _721;
  float _738;
  float _739;
  float _740;
  float _741;
  float _747;
  float _750;
  float _757;
  float _758;
  float _759;
  float _788;
  float _813;
  float _814;
  float _815;
  float _834;
  float _835;
  float _836;
  float _842;
  float _846;
  float _847;
  float _848;
  float _849;
  float _854;
  float _879;
  float _883;
  float _884;
  float _885;
  float _886;
  float _916;
  float _938;
  float _939;
  float _943;
  float _987;
  float _1008;
  float _1009;
  float _1010;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._VHSNoiseProgress);
  [branch]
  if (!(_26 < 0.001f)) {
    _31 = WaveReadLaneFirst(_materialIndex);
    _39 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._timeSpeed);
    _40 = _39 * _time.x;
    _44 = WaveReadLaneFirst(_materialIndex);
    _52 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._largeNoiseThreshold);
    _54 = _40 * 0.1f;
    _61 = (_40 * 0.5f) - (((sin(_54 + 7.13f) * 0.5f) + 1.0f) * sin(_54));
    _62 = TEXCOORD.y * 4.8f;
    _63 = dot(float2(_61, _62), float2(0.36602542f, 0.36602542f));
    _66 = floor(_61 + _63);
    _67 = floor(_63 + _62);
    _70 = dot(float2(_66, _67), float2(0.21132487f, 0.21132487f));
    _71 = (_61 - _66) + _70;
    _72 = (_62 - _67) + _70;
    _73 = (_71 > _72);
    _74 = select(_73, 1.0f, 0.0f);
    _75 = select(_73, 0.0f, 1.0f);
    _78 = _71 + -0.57735026f;
    _79 = _72 + -0.57735026f;
    _80 = (_71 + 0.21132487f) - _74;
    _81 = (_72 + 0.21132487f) - _75;
    _88 = _66 - (floor(_66 * 0.0034602077f) * 289.0f);
    _89 = _67 - (floor(_67 * 0.0034602077f) * 289.0f);
    _90 = _89 + _75;
    _91 = _89 + 1.0f;
    _98 = ((_89 * 34.0f) + 1.0f) * _89;
    _99 = ((_90 * 34.0f) + 1.0f) * _90;
    _100 = ((_91 * 34.0f) + 1.0f) * _91;
    _111 = (_98 - (floor(_98 * 0.0034602077f) * 289.0f)) + _88;
    _114 = ((_74 + _88) - (floor(_99 * 0.0034602077f) * 289.0f)) + _99;
    _117 = ((_88 + 1.0f) - (floor(_100 * 0.0034602077f) * 289.0f)) + _100;
    _124 = ((_111 * 34.0f) + 1.0f) * _111;
    _125 = ((_114 * 34.0f) + 1.0f) * _114;
    _126 = ((_117 * 34.0f) + 1.0f) * _117;
    _145 = max((0.5f - dot(float2(_71, _72), float2(_71, _72))), 0.0f);
    _146 = max((0.5f - dot(float2(_80, _81), float2(_80, _81))), 0.0f);
    _147 = max((0.5f - dot(float2(_78, _79), float2(_78, _79))), 0.0f);
    _148 = _145 * _145;
    _149 = _146 * _146;
    _150 = _147 * _147;
    _160 = frac((_124 - (floor(_124 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _161 = frac((_125 - (floor(_125 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _162 = frac((_126 - (floor(_126 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _163 = _160 + -1.0f;
    _164 = _161 + -1.0f;
    _165 = _162 + -1.0f;
    _169 = abs(_163) + -0.5f;
    _170 = abs(_164) + -0.5f;
    _171 = abs(_165) + -0.5f;
    _178 = _163 - floor(_160 + -0.5f);
    _179 = _164 - floor(_161 + -0.5f);
    _180 = _165 - floor(_162 + -0.5f);
    _216 = _40 * 1.7f;
    _217 = floor(_216);
    _219 = frac(_216);
    _227 = frac(sin(dot(float2(13.0f, _217), float2(127.1f, 311.7f))) * 437.545f);
    _237 = ((((((_219 * _219) * (3.0f - (_219 * 2.0f))) * (frac(sin(dot(float2(13.0f, (_217 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _227)) + _227) * 0.37f) + _40) * 0.9f;
    _238 = floor(_237);
    _240 = frac(_237);
    _248 = frac(sin(dot(float2(31.0f, _238), float2(127.1f, 311.7f))) * 437.545f);
    _258 = _bufferSizeAndInvSize.y * TEXCOORD.y;
    _260 = floor(_258 * 0.5f);
    _262 = floor(_40 * 0.3f);
    _264 = floor(_40 * -0.7f);
    // [sem: expr_sat]
    _279 = saturate((frac(sin(dot(float2((_260 * 1.73f), (_262 + 71.0f)), float2(127.1f, 311.7f))) * 437.545f) + -0.9f) * 9.999998f);
    // [sem: expr_sat]
    _282 = saturate((frac(sin(dot(float2((_260 * 2.41f), (_264 + 137.0f)), float2(127.1f, 311.7f))) * 437.545f) + -0.87f) * 9.999998f);
    _285 = _279 * _282;
    _305 = _40 * 20.0f;
    _306 = _258 * 2.0f;
    _307 = dot(float2(_305, _306), float2(0.36602542f, 0.36602542f));
    _310 = floor(_307 + _305);
    _311 = floor(_307 + _306);
    _314 = dot(float2(_310, _311), float2(0.21132487f, 0.21132487f));
    _315 = _314 + (_305 - _310);
    _316 = (_306 - _311) + _314;
    _317 = (_315 > _316);
    _318 = select(_317, 1.0f, 0.0f);
    _319 = select(_317, 0.0f, 1.0f);
    _322 = _315 + -0.57735026f;
    _323 = _316 + -0.57735026f;
    _324 = (_315 + 0.21132487f) - _318;
    _325 = (_316 + 0.21132487f) - _319;
    _332 = _310 - (floor(_310 * 0.0034602077f) * 289.0f);
    _333 = _311 - (floor(_311 * 0.0034602077f) * 289.0f);
    _334 = _333 + _319;
    _335 = _333 + 1.0f;
    _342 = ((_333 * 34.0f) + 1.0f) * _333;
    _343 = ((_334 * 34.0f) + 1.0f) * _334;
    _344 = ((_335 * 34.0f) + 1.0f) * _335;
    _355 = (_342 - (floor(_342 * 0.0034602077f) * 289.0f)) + _332;
    _358 = ((_318 + _332) - (floor(_343 * 0.0034602077f) * 289.0f)) + _343;
    _361 = ((_332 + 1.0f) - (floor(_344 * 0.0034602077f) * 289.0f)) + _344;
    _368 = ((_355 * 34.0f) + 1.0f) * _355;
    _369 = ((_358 * 34.0f) + 1.0f) * _358;
    _370 = ((_361 * 34.0f) + 1.0f) * _361;
    _389 = max((0.5f - dot(float2(_315, _316), float2(_315, _316))), 0.0f);
    _390 = max((0.5f - dot(float2(_324, _325), float2(_324, _325))), 0.0f);
    _391 = max((0.5f - dot(float2(_322, _323), float2(_322, _323))), 0.0f);
    _392 = _389 * _389;
    _393 = _390 * _390;
    _394 = _391 * _391;
    _404 = frac((_368 - (floor(_368 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _405 = frac((_369 - (floor(_369 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _406 = frac((_370 - (floor(_370 * 0.0034602077f) * 289.0f)) * 0.024390243f) * 2.0f;
    _407 = _404 + -1.0f;
    _408 = _405 + -1.0f;
    _409 = _406 + -1.0f;
    _413 = abs(_407) + -0.5f;
    _414 = abs(_408) + -0.5f;
    _415 = abs(_409) + -0.5f;
    _422 = _407 - floor(_404 + -0.5f);
    _423 = _408 - floor(_405 + -0.5f);
    _424 = _409 - floor(_406 + -0.5f);
    _455 = WaveReadLaneFirst(_materialIndex);
    _463 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_455 < (uint)170000), _455, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._smallNoiseAmplitude);
    _466 = WaveReadLaneFirst(_materialIndex);
    _474 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_466 < (uint)170000), _466, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._smallNoiseAmplitude);
    _477 = _bufferSizeAndInvSize.y * 0.018f;
    _479 = floor(_477 * TEXCOORD.y);
    _488 = floor((_40 * 0.7f) * ((frac(sin(dot(float2(_479, 11.0f), float2(127.1f, 311.7f))) * 437.545f) * 3.9f) + 0.1f));
    _524 = WaveReadLaneFirst(_materialIndex);
    _532 = WaveReadLaneFirst(BindlessParameters_PostProcessVHSNoise[((int)((uint)((uint)(select(((uint)_524 < (uint)170000), _524, 0))) + (uint)(0)))].BindlessParameters_PostProcessVHSNoise._randomJitterThreshold);
    _546 = floor(frac(_time.x) * 30.0f) * 0.24423668f;
    _554 = ((1.0f / max(0.0001f, (1.0f - _52))) * max(0.0f, ((dot(float3(((_148 * _148) * (1.7928429f - (((_178 * _178) + (_169 * _169)) * 0.85373473f))), ((_149 * _149) * (1.7928429f - (((_179 * _179) + (_170 * _170)) * 0.85373473f))), ((_150 * _150) * (1.7928429f - (((_180 * _180) + (_171 * _171)) * 0.85373473f)))), float3(((_178 * _71) + (_169 * _72)), ((_179 * _80) + (_170 * _81)), ((_180 * _78) + (_171 * _79)))) * 130.0f) - _52)));
    _555 = select((_474 < 0.001f), 0.0f, (((((((frac(sin(dot(float2((_260 * 3.17f), ((_262 + 211.0f) + (_264 * 0.5f))), float2(127.1f, 311.7f))) * 437.545f) * 5.0f) + 0.5f) * saturate(((3.0f - (_282 * 2.0f)) * (12.0f - (_279 * 8.0f))) * (_285 * _285))) + 1.0f) * ((((((_240 * _240) * (3.0f - (_240 * 2.0f))) * (frac(sin(dot(float2(31.0f, (_238 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _248)) + _248) * 0.9f) + 0.35f)) * ((dot(float3(((_392 * _392) * (1.7928429f - (((_422 * _422) + (_413 * _413)) * 0.85373473f))), ((_393 * _393) * (1.7928429f - (((_423 * _423) + (_414 * _414)) * 0.85373473f))), ((_394 * _394) * (1.7928429f - (((_424 * _424) + (_415 * _415)) * 0.85373473f)))), float3(((_422 * _315) + (_413 * _316)), ((_423 * _324) + (_414 * _325)), ((_424 * _322) + (_415 * _323)))) * 130.0f) + -0.5f)) * _463));
    _556 = select((frac(sin(dot(float2(_479, (_488 + 17.0f)), float2(127.1f, 311.7f))) * 437.545f) < _532), 0.0f, ((((frac(sin(dot(float2(_479, (_488 + 59.0f)), float2(127.1f, 311.7f))) * 437.545f) * 2.0f) + -1.0f) * ((frac(sin(dot(float2(_479, (_488 + 43.0f)), float2(127.1f, 311.7f))) * 437.545f) * 0.75f) + 0.25f)) * select((((frac(sin(dot(float2(_479, (_488 + 29.0f)), float2(127.1f, 311.7f))) * 437.545f) * 0.8f) + 0.2f) < frac(((_time.x * 0.01f) + TEXCOORD.y) * _477)), 0.0f, 1.0f)));
    _557 = frac(sin(dot(float2((_546 + (floor(_bufferSizeAndInvSize.x * TEXCOORD.x) / _bufferSizeAndInvSize.x)), (_546 + (floor(_258) / _bufferSizeAndInvSize.y))), float2(127.1f, 311.7f))) * 437.545f);
  } else {
    _554 = 0.0f;
    _555 = 0.0f;
    _556 = 0.0f;
    _557 = 1.0f;
  }
  _558 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _571 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _558, 0)))).x) & 127)))) + 0.5f);
  } else {
    _571 = _557;
  }
  _574 = (_localToneMappingParams.w > 0.0f);
  if (_574) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_554, _555, _556));
    _834 = _rndx_tonemapped_color.x;
    _835 = _rndx_tonemapped_color.y;
    _836 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _842 = 1.0f - abs(_etcParams.w);
      _846 = saturate(_etcParams.w);  // [sem: expr_sat]
      _847 = (_842 * _834) + _846;
      _848 = (_842 * _835) + _846;
      _849 = (_842 * _836) + _846;
      if (_colorGradingParams.w > 0.0f) {
        _854 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _871 = (((max(0.0f, (1.0f - _847)) - _847) * _854) + _847);
        _872 = (((max(0.0f, (1.0f - _848)) - _848) * _854) + _848);
        _873 = (((max(0.0f, (1.0f - _849)) - _849) * _854) + _849);
      } else {
        _871 = _847;
        _872 = _848;
        _873 = _849;
      }
      _879 = _userImageAdjust.y + 1.0f;
      _883 = _userImageAdjust.x + 0.5f;
      _884 = ((_871 + -0.5f) * _879) + _883;
      _885 = ((_872 + -0.5f) * _879) + _883;
      _886 = ((_873 + -0.5f) * _879) + _883;
      _916 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _927 = exp2(log2(saturate(mad(_colorBlind0.z, _886, mad(_colorBlind0.y, _885, (_colorBlind0.x * _884))))) * _916);
      _928 = exp2(log2(saturate(mad(_colorBlind1.z, _886, mad(_colorBlind1.y, _885, (_colorBlind1.x * _884))))) * _916);
      _929 = exp2(log2(saturate(mad(_colorBlind2.z, _886, mad(_colorBlind2.y, _885, (_colorBlind2.x * _884))))) * _916);
    } else {
      _927 = _834;
      _928 = _835;
      _929 = _836;
    }
  } else {
    _927 = _554;
    _928 = _555;
    _929 = _556;
  }
  if (_etcParams.y > 1.0f) {
    _938 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _939 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _943 = saturate(1.0f - (dot(float2(_938, _939), float2(_938, _939)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _948 = (_943 * _927);
    _949 = (_943 * _928);
    _950 = (_943 * _929);
  } else {
    _948 = _927;
    _949 = _928;
    _950 = _929;
  }
  if (_574 && (_etcParams.z > 0.0f)) {
    _980 = select((_948 <= 0.0031308f), (_948 * 12.92f), (((pow(_948, 0.41666666f)) * 1.055f) + -0.055f));
    _981 = select((_949 <= 0.0031308f), (_949 * 12.92f), (((pow(_949, 0.41666666f)) * 1.055f) + -0.055f));
    _982 = select((_950 <= 0.0031308f), (_950 * 12.92f), (((pow(_950, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _980 = _948;
    _981 = _949;
    _982 = _950;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _987 = (float)((uint)((uint)(_558)));
    if (!(_987 < _viewDir.w)) {
      if (!(_987 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _996 = _980;
        _997 = _981;
        _998 = _982;
      } else {
        _996 = 0.0f;
        _997 = 0.0f;
        _998 = 0.0f;
      }
    } else {
      _996 = 0.0f;
      _997 = 0.0f;
      _998 = 0.0f;
    }
  } else {
    _996 = _980;
    _997 = _981;
    _998 = _982;
  }
  _1008 = exp2(log2(_996 * 0.0001f) * 0.15930176f);
  _1009 = exp2(log2(_997 * 0.0001f) * 0.15930176f);
  _1010 = exp2(log2(_998 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1008 * 18.6875f) + 1.0f)) * ((_1008 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1009 * 18.6875f) + 1.0f)) * ((_1009 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1010 * 18.6875f) + 1.0f)) * ((_1010 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _571;
  return SV_Target;
}
