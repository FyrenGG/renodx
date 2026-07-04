// Additional packaged variant of the HDR tonemap compute shader. The 1.13.00
// game build includes both 0x1693B71C and 0x86D3FB4D with identical logic and
// bindings. Some graphics settings select this hash, so both hashes must be
// replaced or the game falls back to the vanilla HDR tonemap for those settings.
// The implementation lives in tonemap_0x1693B71C.cs_6_6.hlsl.
#include "./tonemap_0x1693B71C.cs_6_6.hlsl"
