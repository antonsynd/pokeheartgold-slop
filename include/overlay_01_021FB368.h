#ifndef POKEHEARTGOLD_OVERLAY_01_021FB368_H
#define POKEHEARTGOLD_OVERLAY_01_021FB368_H

typedef struct UnkStruct_Ov01_021FB368 UnkStruct_Ov01_021FB368;
typedef struct UnkStruct_Ov01_021FB368_sub UnkStruct_Ov01_021FB368_sub;

UnkStruct_Ov01_021FB368 *ov01_021FB3A4(u32 count, enum HeapID heapId);
void ov01_021FB3E4(int index, int x, int y, int width, int height, int value, UnkStruct_Ov01_021FB368 *manager);
void ov01_021FB418(UnkStruct_Ov01_021FB368 *manager);
BOOL ov01_021FB42C(int px, int py, UnkStruct_Ov01_021FB368 *manager, u8 *outIndex);
int ov01_021FB474(int index, UnkStruct_Ov01_021FB368 *manager);
void ov01_021FB4A0(int index, int value, UnkStruct_Ov01_021FB368 *manager);

#endif // POKEHEARTGOLD_OVERLAY_01_021FB368_H
