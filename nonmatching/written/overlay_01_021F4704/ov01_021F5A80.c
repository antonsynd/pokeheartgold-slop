#include "global.h"

u32 ov01_021F5A80(u8 direction, int mapMatrixHeight, int mapMatrixWidth, int tileIndex) {
    u32 nextTileIndex;
    int nextTileIndexCandidate;

    switch (direction) {
    case 1:
        nextTileIndexCandidate = (tileIndex % mapMatrixWidth) + 1;

        if (nextTileIndexCandidate >= mapMatrixWidth) {
            return tileIndex;
        }

        nextTileIndex = tileIndex + 1;
        break;

    case 2:
        nextTileIndexCandidate = tileIndex + mapMatrixWidth;

        if (nextTileIndexCandidate >= mapMatrixHeight * 32 * mapMatrixWidth) {
            return tileIndex;
        }

        nextTileIndex = tileIndex + mapMatrixWidth;
        break;

    case 3:
        nextTileIndexCandidate = (tileIndex % mapMatrixWidth) - 1;

        if (nextTileIndexCandidate < 0) {
            return tileIndex;
        }

        nextTileIndex = tileIndex - 1;
        break;

    case 4:
        nextTileIndexCandidate = tileIndex - mapMatrixWidth;

        if (nextTileIndexCandidate < 0) {
            return tileIndex;
        }

        nextTileIndex = tileIndex - mapMatrixWidth;
        break;

    default:
        GF_ASSERT(FALSE);
        return 0;
    }

    return nextTileIndex;
}
