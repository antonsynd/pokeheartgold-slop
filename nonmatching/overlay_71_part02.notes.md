# overlay_71, part 2

ov71_022473BC .. ov71_022478C8. All thirty came from Platinum twins (the trade sequence: main.c, 3d_scene.c, send_phase.c) and passed.

- Local structs, named by offset: `UnkOv71Sequence` (+0x00 pointer to the animation template, +0x150 receiving species u16, +0x152 receiving form u16), `UnkOv71Template` (+0x10 trade type, +0x14 Options pointer), `UnkOv71Model` (0x8C bytes: +0x00 model data, +0x04 NNSG3dRenderObj, +0x58 model set, +0x5C model, +0x60 texture, +0x64 enabled, +0x68 position, +0x74 scale, +0x80 three u16 rotation angles, +0x88 alpha), `UnkOv71Scene` (0x20 bytes: +0x00 Camera, +0x04 target, +0x10 CameraAngle, +0x18 models, +0x1C model count), `UnkOv71SendPhase` (0x84 bytes, only the fields ov71_022478C8 writes are named).
- The deferred-free queue is `_0224C040` (count) and `ov71_0224C044[32]` (pointers); both are bss, defined static here.
- Rotation angles are u16 (the asm uses ldrh), so FX_SinIdx / FX_CosIdx take them unsigned.
- fork headers have no NNS_G3dMdlUseGlbAlpha / NNS_G3dMdlUseMdlAlpha; ov71_02247708 calls NNSi_G3dModifyPolygonAttrMask directly with REG_G3_POLYGON_ATTR_ALPHA_MASK (FALSE when alpha != 31, TRUE otherwise).
- ov71_02247610 first failed because the C reloaded the freshly stored texture pointer from the model, while the asm passes the call result straight on; the gate's random model pointer was unaligned and the reload rotated it. Local variables for the model set and texture fix it.
- ov71_02247384 (returns the BgConfig of the sequence) is in part 1 and is declared extern.
- NARC id 180 is NARC_a_1_8_0 in the fork; it is Platinum's poke_edit/pl_poke_data.
