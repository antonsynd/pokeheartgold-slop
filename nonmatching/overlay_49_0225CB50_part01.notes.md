# overlay_49_0225CB50 part 01

- This is the Wi-Fi lobby's camera and 3D object helper block (Platinum's ov70_02260A70 and ov70_02260B44). The twin tool's pairing is off for the first two: ov49_0225CB50 is the touch button state callback (`a2->unk3 = a1`, then 0 becomes 2 and 3 becomes 1) and ov49_0225CB70 only reads the word at +0x30C of its argument.
- ov49_0225CB78 builds the 0x14 byte camera holder: camera at +0, the lobby object pointer at +4, the camera target (VecFx32) at +8. The camera data ov49_02269A6C is a CameraAngle in the ROM and is only declared here.
- ov49_0225CC4C allocates the 0x4A4 byte lobby 3D work structure: the Easy3D objects at +4 (2 of 0x78 bytes), animation start flags at +0xF4, the object array (0xB4 bytes each) at +0x11C and its count byte at +0x124, a second array (0xE4 bytes each) at +0x120 with its count at +0x125, the NARC loaded flag at +0x128, the model, animation and allocator sub blocks at +0x12C, +0x1C4, +0x29C and +0x494. The 0xB4 byte object: active byte, two index bytes, the Easy3D object at +4, four flag words at +0x7C, a position at +0x9C and an offset at +0xA8.
- ov49_0225CDEC loads NARC 0xCB.
