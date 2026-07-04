// Additional packaged variant of the photo-mode SDR capture tonemap. The
// 1.13.00 game build includes both 0x113C8377 and 0x0A8853B9 with identical
// logic and bindings. Some graphics settings select this hash, so both hashes
// must be replaced or saved photos fall back to the vanilla SDR look for those
// settings. The implementation lives in
// tonemap_sdr_photomode_0x113C8377.cs_6_6.hlsl.
#include "./tonemap_sdr_photomode_0x113C8377.cs_6_6.hlsl"
