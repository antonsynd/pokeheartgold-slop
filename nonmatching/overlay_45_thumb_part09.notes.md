# overlay_45_thumb part 09 (ov45_0222CDC0 .. ov45_0222D20C)

- All 30 functions pass; all 30 came from Platinum twins (overlay066 ov66_02230C44.c, the Wi-Fi plaza app manager). Their HeartGold
  shape differs only in names, overlay ids and the tail of the plaza functions.
- Overlay ids are written as plain numbers (`HandleLoadOverlay(90, OVY_LOAD_ASYNC)`, `UnloadOverlayByID(90)`, and 91, 46, 88, 48, 49 as
  the last member of the templates): `FS_OVERLAY_ID(OVY_n)` expands to the address of the linker symbol `SDK_OVERLAY_OVY_n_ID`, which
  check.py cannot resolve ("no address for ..."). The ROM literals are 90 for the Load/Unload calls and the numbers above for the
  templates, and the gate confirms both (the call arguments agree and the template bytes match the ROM).
- Tables defined here under their asm names, and checked byte for byte against the ROM by the gate: the OverlayManagerTemplates
  ov45_02254B54, B64, B74, B84, B94 and the four 13-entry function tables _02254E20 (destroy), ov45_02254E54 (enter), ov45_02254E88
  (create), ov45_02254EBC (update). Functions of other parts that they point at (ov45_0222D23C ... ov45_0222D4DC) are only declared.
- ov45_0222CE2C and ov45_0222CE54 call through a table with two arguments and the original leaves `index * 4` in r3 at the `blx`; the
  gate compares four registers at an indirect call. They pass only when the C keeps the table and the slot array in locals
  (`table[index](manager, slots + index)`), which makes clang keep `index * 4` in r3 as well.
- Layout facts: manager (UnkStruct_ov45_Manager) +0 OverlayManager *, +4 slots[13] (one pointer to the app's work each), +0x38 u8 index of
  the current app, +0x39 u8, +0x3A u16 heap id, +0x3C pointer to the plaza data, +0x40 SaveData *, +0x44 word. The apps' work structs
  have sizes 0x20 (slot 0), 0x10 (1), 0xC (2), 0x14 (5), 0x3C (6) and 0x40 (7); slots 6 and 7 start with the 0x34-byte block that
  ov45_0222CE78/CE94/CEB0 fill (four PlayerProfiles at +0x20).
