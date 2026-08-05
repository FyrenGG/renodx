Texture2D<float3> __3__36__0__0__g_glareSource : register(t23, space36);

Texture2D<float3> __3__36__0__0__g_colorAdatationSource : register(t85, space36);

RWTexture2D<float3> __3__38__0__1__g_bloom1UAV : register(u17, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom2UAV : register(u18, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom3UAV : register(u19, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom4UAV : register(u20, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom5UAV : register(u21, space38);

RWTexture2D<float3> __3__38__0__1__g_bloom6UAV : register(u22, space38);

RWTexture2D<float3> __3__38__0__1__g_colorAdatationSourceUAV : register(u24, space38);

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _textureSizeAndInvSize : packoffset(c000.x);
  float4 _blurParam : packoffset(c001.x);
  float4 _glareParam : packoffset(c002.x);
  float4 _renderParam : packoffset(c003.x);
  float4 _exposureParam : packoffset(c004.x);
  float4 _histogramParam : packoffset(c005.x);
  float4 _whiteBalance : packoffset(c006.x);
  float4 _glareBlurParam : packoffset(c007.x);
  float4 _preFrameViewPosition : packoffset(c008.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared float _global_0[3072];
groupshared float _global_1[3072];

[numthreads(32, 32, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _16;
  float _22;
  float _27;
  float3 _30;
  float3 _35;
  uint _39;
  int _40;
  int _43;
  int _46;
  float _139;
  float _140;
  float _141;
  float _142;
  float _143;
  float _144;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _327;
  float _328;
  float _329;
  float _330;
  float _331;
  float _332;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  int _56;
  uint _60;
  int _62;
  uint _66;
  int _68;
  float _72;
  int _74;
  int _79;
  int _84;
  float _88;
  int _90;
  int _95;
  int _100;
  float _104;
  float _117;
  float _127;
  float _137;
  uint _148;
  int _150;
  uint _154;
  int _156;
  uint _160;
  int _162;
  float _166;
  int _168;
  int _173;
  int _178;
  float _182;
  int _184;
  int _189;
  int _194;
  float _198;
  float _211;
  float _221;
  float _231;
  uint _242;
  int _244;
  uint _248;
  int _250;
  uint _254;
  int _256;
  float _260;
  int _262;
  int _267;
  int _272;
  float _276;
  int _278;
  int _283;
  int _288;
  float _292;
  float _305;
  float _315;
  float _325;
  uint _336;
  int _338;
  uint _342;
  int _344;
  uint _348;
  int _350;
  float _354;
  int _356;
  int _361;
  int _366;
  float _370;
  int _372;
  int _377;
  int _382;
  float _386;
  float _399;
  float _409;
  float _419;
  int _430;
  int _431;
  uint _432;
  int _434;
  uint _438;
  int _440;
  uint _444;
  int _446;
  int _452;
  int _457;
  int _462;
  int _468;
  int _473;
  int _478;
  _16 = (int)((int)(SV_DispatchThreadID.y)) | (int)((int)(SV_DispatchThreadID.x));
  _22 = _textureSizeAndInvSize.z * ((((float)((uint)(SV_DispatchThreadID.x))) * 2.0f) + 1.0f);
  _27 = _textureSizeAndInvSize.w * ((((float)((uint)(SV_DispatchThreadID.y))) * 2.0f) + 1.0f);
  _30 = __3__36__0__0__g_glareSource.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_22, _27), 0.0f);  // [sem: _3__36__0__0__g_glareSource_sampleLod]
  _35 = __3__36__0__0__g_colorAdatationSource.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_22, _27), 0.0f);  // [sem: _3__36__0__0__g_colorAdatationSource_sampleLod]
  _39 = (uint)(SV_GroupIndex) * (uint)(3);
  _40 = (int)min((uint)(_39), (uint)(3071));
  _global_0[_40] = _30.x;
  _43 = (int)min((uint)(((int)((uint)((uint)(_39)) + (uint)(1)))), (uint)(3071));
  _global_0[_43] = _30.y;
  _46 = (int)min((uint)(((int)((uint)((uint)(_39)) + (uint)(2)))), (uint)(3071));
  _global_0[_46] = _30.z;
  __3__38__0__1__g_bloom1UAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float3(_30.x, _30.y, _30.z);
  _global_1[_40] = _35.x;
  _global_1[_43] = _35.y;
  _global_1[_46] = _35.z;
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 1) == 0) {
    _56 = (int)min((uint)(((int)((uint)((uint)(_39)) + (uint)(3)))), (uint)(3071));
    _60 = (uint)(SV_GroupIndex) * (uint)(3);
    _62 = (int)min((uint)(((int)((uint)((uint)(_60)) + (uint)(96)))), (uint)(3071));
    _66 = (uint)(SV_GroupIndex) * (uint)(3);
    _68 = (int)min((uint)(((int)((uint)((uint)(_66)) + (uint)(99)))), (uint)(3071));
    _72 = ((((_global_0[_56]) + _30.x) + (_global_0[_62])) + (_global_0[_68])) * 0.25f;
    _74 = (int)min((uint)(((int)((uint)((uint)(_39)) + (uint)(4)))), (uint)(3071));
    _79 = (int)min((uint)(((int)((uint)((uint)(_60)) + (uint)(97)))), (uint)(3071));
    _84 = (int)min((uint)(((int)((uint)((uint)(_66)) + (uint)(100)))), (uint)(3071));
    _88 = ((((_global_0[_74]) + _30.y) + (_global_0[_79])) + (_global_0[_84])) * 0.25f;
    _90 = (int)min((uint)(((int)((uint)((uint)(_39)) + (uint)(5)))), (uint)(3071));
    _95 = (int)min((uint)(((int)((uint)((uint)(_60)) + (uint)(98)))), (uint)(3071));
    _100 = (int)min((uint)(((int)((uint)((uint)(_66)) + (uint)(101)))), (uint)(3071));
    _104 = ((((_global_0[_90]) + _30.z) + (_global_0[_95])) + (_global_0[_100])) * 0.25f;
    _global_0[_40] = _72;
    _global_0[_43] = _88;
    _global_0[_46] = _104;
    __3__38__0__1__g_bloom2UAV[int2(((uint)(SV_DispatchThreadID.x) >> 1), ((uint)(SV_DispatchThreadID.y) >> 1))] = float3(_72, _88, _104);
    _117 = ((((_global_1[_56]) + _35.x) + (_global_1[_62])) + (_global_1[_68])) * 0.25f;
    _127 = ((((_global_1[_74]) + _35.y) + (_global_1[_79])) + (_global_1[_84])) * 0.25f;
    _137 = ((((_global_1[_90]) + _35.z) + (_global_1[_95])) + (_global_1[_100])) * 0.25f;
    _global_1[_40] = _117;
    _global_1[_43] = _127;
    _global_1[_46] = _137;
    _139 = _137;
    _140 = _127;
    _141 = _117;
    _142 = _104;
    _143 = _88;
    _144 = _72;
  } else {
    _139 = _35.z;
    _140 = _35.y;
    _141 = _35.x;
    _142 = _30.z;
    _143 = _30.y;
    _144 = _30.x;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 3) == 0) {
    _148 = (uint)(SV_GroupIndex) * (uint)(3);
    _150 = (int)min((uint)(((int)((uint)((uint)(_148)) + (uint)(6)))), (uint)(3071));
    _154 = (uint)(SV_GroupIndex) * (uint)(3);
    _156 = (int)min((uint)(((int)((uint)((uint)(_154)) + (uint)(192)))), (uint)(3071));
    _160 = (uint)(SV_GroupIndex) * (uint)(3);
    _162 = (int)min((uint)(((int)((uint)((uint)(_160)) + (uint)(198)))), (uint)(3071));
    _166 = ((((_global_0[_150]) + _144) + (_global_0[_156])) + (_global_0[_162])) * 0.25f;
    _168 = (int)min((uint)(((int)((uint)((uint)(_148)) + (uint)(7)))), (uint)(3071));
    _173 = (int)min((uint)(((int)((uint)((uint)(_154)) + (uint)(193)))), (uint)(3071));
    _178 = (int)min((uint)(((int)((uint)((uint)(_160)) + (uint)(199)))), (uint)(3071));
    _182 = ((((_global_0[_168]) + _143) + (_global_0[_173])) + (_global_0[_178])) * 0.25f;
    _184 = (int)min((uint)(((int)((uint)((uint)(_148)) + (uint)(8)))), (uint)(3071));
    _189 = (int)min((uint)(((int)((uint)((uint)(_154)) + (uint)(194)))), (uint)(3071));
    _194 = (int)min((uint)(((int)((uint)((uint)(_160)) + (uint)(200)))), (uint)(3071));
    _198 = ((((_global_0[_184]) + _142) + (_global_0[_189])) + (_global_0[_194])) * 0.25f;
    _global_0[_40] = _166;
    _global_0[_43] = _182;
    _global_0[_46] = _198;
    __3__38__0__1__g_bloom3UAV[int2(((uint)(SV_DispatchThreadID.x) >> 2), ((uint)(SV_DispatchThreadID.y) >> 2))] = float3(_166, _182, _198);
    _211 = ((((_global_1[_150]) + _141) + (_global_1[_156])) + (_global_1[_162])) * 0.25f;
    _221 = ((((_global_1[_168]) + _140) + (_global_1[_173])) + (_global_1[_178])) * 0.25f;
    _231 = ((((_global_1[_184]) + _139) + (_global_1[_189])) + (_global_1[_194])) * 0.25f;
    _global_1[_40] = _211;
    _global_1[_43] = _221;
    _global_1[_46] = _231;
    _233 = _231;
    _234 = _221;
    _235 = _211;
    _236 = _198;
    _237 = _182;
    _238 = _166;
  } else {
    _233 = _139;
    _234 = _140;
    _235 = _141;
    _236 = _142;
    _237 = _143;
    _238 = _144;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 7) == 0) {
    _242 = (uint)(SV_GroupIndex) * (uint)(3);
    _244 = (int)min((uint)(((int)((uint)((uint)(_242)) + (uint)(12)))), (uint)(3071));
    _248 = (uint)(SV_GroupIndex) * (uint)(3);
    _250 = (int)min((uint)(((int)((uint)((uint)(_248)) + (uint)(384)))), (uint)(3071));
    _254 = (uint)(SV_GroupIndex) * (uint)(3);
    _256 = (int)min((uint)(((int)((uint)((uint)(_254)) + (uint)(396)))), (uint)(3071));
    _260 = ((((_global_0[_244]) + _238) + (_global_0[_250])) + (_global_0[_256])) * 0.25f;
    _262 = (int)min((uint)(((int)((uint)((uint)(_242)) + (uint)(13)))), (uint)(3071));
    _267 = (int)min((uint)(((int)((uint)((uint)(_248)) + (uint)(385)))), (uint)(3071));
    _272 = (int)min((uint)(((int)((uint)((uint)(_254)) + (uint)(397)))), (uint)(3071));
    _276 = ((((_global_0[_262]) + _237) + (_global_0[_267])) + (_global_0[_272])) * 0.25f;
    _278 = (int)min((uint)(((int)((uint)((uint)(_242)) + (uint)(14)))), (uint)(3071));
    _283 = (int)min((uint)(((int)((uint)((uint)(_248)) + (uint)(386)))), (uint)(3071));
    _288 = (int)min((uint)(((int)((uint)((uint)(_254)) + (uint)(398)))), (uint)(3071));
    _292 = ((((_global_0[_278]) + _236) + (_global_0[_283])) + (_global_0[_288])) * 0.25f;
    _global_0[_40] = _260;
    _global_0[_43] = _276;
    _global_0[_46] = _292;
    __3__38__0__1__g_bloom4UAV[int2(((uint)(SV_DispatchThreadID.x) >> 3), ((uint)(SV_DispatchThreadID.y) >> 3))] = float3(_260, _276, _292);
    _305 = ((((_global_1[_244]) + _235) + (_global_1[_250])) + (_global_1[_256])) * 0.25f;
    _315 = ((((_global_1[_262]) + _234) + (_global_1[_267])) + (_global_1[_272])) * 0.25f;
    _325 = ((((_global_1[_278]) + _233) + (_global_1[_283])) + (_global_1[_288])) * 0.25f;
    _global_1[_40] = _305;
    _global_1[_43] = _315;
    _global_1[_46] = _325;
    _327 = _315;
    _328 = _305;
    _329 = _292;
    _330 = _276;
    _331 = _260;
    _332 = _325;
  } else {
    _327 = _234;
    _328 = _235;
    _329 = _236;
    _330 = _237;
    _331 = _238;
    _332 = _233;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 15) == 0) {
    _336 = (uint)(SV_GroupIndex) * (uint)(3);
    _338 = (int)min((uint)(((int)((uint)((uint)(_336)) + (uint)(24)))), (uint)(3071));
    _342 = (uint)(SV_GroupIndex) * (uint)(3);
    _344 = (int)min((uint)(((int)((uint)((uint)(_342)) + (uint)(768)))), (uint)(3071));
    _348 = (uint)(SV_GroupIndex) * (uint)(3);
    _350 = (int)min((uint)(((int)((uint)((uint)(_348)) + (uint)(792)))), (uint)(3071));
    _354 = ((((_global_0[_338]) + _331) + (_global_0[_344])) + (_global_0[_350])) * 0.25f;
    _356 = (int)min((uint)(((int)((uint)((uint)(_336)) + (uint)(25)))), (uint)(3071));
    _361 = (int)min((uint)(((int)((uint)((uint)(_342)) + (uint)(769)))), (uint)(3071));
    _366 = (int)min((uint)(((int)((uint)((uint)(_348)) + (uint)(793)))), (uint)(3071));
    _370 = ((((_global_0[_356]) + _330) + (_global_0[_361])) + (_global_0[_366])) * 0.25f;
    _372 = (int)min((uint)(((int)((uint)((uint)(_336)) + (uint)(26)))), (uint)(3071));
    _377 = (int)min((uint)(((int)((uint)((uint)(_342)) + (uint)(770)))), (uint)(3071));
    _382 = (int)min((uint)(((int)((uint)((uint)(_348)) + (uint)(794)))), (uint)(3071));
    _386 = ((((_global_0[_372]) + _329) + (_global_0[_377])) + (_global_0[_382])) * 0.25f;
    _global_0[_40] = _354;
    _global_0[_43] = _370;
    _global_0[_46] = _386;
    __3__38__0__1__g_bloom5UAV[int2(((uint)(SV_DispatchThreadID.x) >> 4), ((uint)(SV_DispatchThreadID.y) >> 4))] = float3(_354, _370, _386);
    _399 = ((((_global_1[_338]) + _328) + (_global_1[_344])) + (_global_1[_350])) * 0.25f;
    _409 = ((((_global_1[_356]) + _327) + (_global_1[_361])) + (_global_1[_366])) * 0.25f;
    _419 = ((((_global_1[_372]) + _332) + (_global_1[_377])) + (_global_1[_382])) * 0.25f;
    _global_1[_40] = _399;
    _global_1[_43] = _409;
    _global_1[_46] = _419;
    _421 = _354;
    _422 = _370;
    _423 = _386;
    _424 = _399;
    _425 = _409;
    _426 = _419;
  } else {
    _421 = _331;
    _422 = _330;
    _423 = _329;
    _424 = _328;
    _425 = _327;
    _426 = _332;
  }
  GroupMemoryBarrierWithGroupSync();
  if ((_16 & 31) == 0) {
    _430 = (uint)(SV_DispatchThreadID.x) >> 5;
    _431 = (uint)(SV_DispatchThreadID.y) >> 5;
    _432 = (uint)(SV_GroupIndex) * (uint)(3);
    _434 = (int)min((uint)(((int)((uint)((uint)(_432)) + (uint)(48)))), (uint)(3071));
    _438 = (uint)(SV_GroupIndex) * (uint)(3);
    _440 = (int)min((uint)(((int)((uint)((uint)(_438)) + (uint)(1536)))), (uint)(3071));
    _444 = (uint)(SV_GroupIndex) * (uint)(3);
    _446 = (int)min((uint)(((int)((uint)((uint)(_444)) + (uint)(1584)))), (uint)(3071));
    _452 = (int)min((uint)(((int)((uint)((uint)(_432)) + (uint)(49)))), (uint)(3071));
    _457 = (int)min((uint)(((int)((uint)((uint)(_438)) + (uint)(1537)))), (uint)(3071));
    _462 = (int)min((uint)(((int)((uint)((uint)(_444)) + (uint)(1585)))), (uint)(3071));
    _468 = (int)min((uint)(((int)((uint)((uint)(_432)) + (uint)(50)))), (uint)(3071));
    _473 = (int)min((uint)(((int)((uint)((uint)(_438)) + (uint)(1538)))), (uint)(3071));
    _478 = (int)min((uint)(((int)((uint)((uint)(_444)) + (uint)(1586)))), (uint)(3071));
    __3__38__0__1__g_bloom6UAV[int2(_430, _431)] = float3((((((_global_0[_434]) + _421) + (_global_0[_440])) + (_global_0[_446])) * 0.25f), (((((_global_0[_452]) + _422) + (_global_0[_457])) + (_global_0[_462])) * 0.25f), (((((_global_0[_468]) + _423) + (_global_0[_473])) + (_global_0[_478])) * 0.25f));
    __3__38__0__1__g_colorAdatationSourceUAV[int2(_430, _431)] = float3((((((_global_1[_434]) + _424) + (_global_1[_440])) + (_global_1[_446])) * 0.25f), (((((_global_1[_452]) + _425) + (_global_1[_457])) + (_global_1[_462])) * 0.25f), (((((_global_1[_468]) + _426) + (_global_1[_473])) + (_global_1[_478])) * 0.25f));
  }
}
