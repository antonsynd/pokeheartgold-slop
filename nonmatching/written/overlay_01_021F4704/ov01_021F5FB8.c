#include "global.h"

typedef struct UnkStruct_ov01_021F5FB8_Pos {
    s32 x;
    s32 y;
    s32 z;
} UnkStruct_ov01_021F5FB8_Pos;

extern u8 MapMatrix_GetWidth(void *mapMatrix);
extern u8 MapMatrix_GetMatrixId(void *mapMatrix);
extern u8 MapMatrix_GetMapAltitude(void *mapMatrix, u8 matrixId, u16 x, u16 y, int matrixWidth);

void ov01_021F5FB8(int mapMatrixIndex, int mapMatrixWidth, void *mapMatrix, UnkStruct_ov01_021F5FB8_Pos *position) {
    position->x = 0x100000;
    position->z = 0x100000;

    if (mapMatrixIndex == -1) {
        return;
    }

    u16 mapMatrixX = mapMatrixIndex % mapMatrixWidth;
    u16 mapMatrixZ = mapMatrixIndex / mapMatrixWidth;

    int mapMatrixWidth2 = MapMatrix_GetWidth(mapMatrix);
    u8 mapMatrixID = MapMatrix_GetMatrixId(mapMatrix);
    int altitude = MapMatrix_GetMapAltitude(mapMatrix, mapMatrixID, mapMatrixX, mapMatrixZ, mapMatrixWidth2);
    position->y = altitude << 15;

    position->x += (u32)mapMatrixX << 21;
    position->z += (u32)mapMatrixZ << 21;
}
