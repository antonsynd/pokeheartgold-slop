#include "global.h"
#include "heap.h"

extern u16 MATH_CalcCRC16(void *table, const void *data, u32 dataLength);
extern u8 *sub_02035754(int netId);
extern void CRYPTO_RC4Init(void *context, const void *key, u32 keyLength);
extern void CRYPTO_RC4Encrypt(void *context, const void *in, u32 length, void *out);

void ov74_02235F58(u8 *eventData, void *wonderCard, enum HeapID heapID) {
    u16 key[4];
    u8 *keyBytes = (u8 *)key;
    void *crcTable;
    void *cryptoCtx;
    u16 headerCRC;
    u16 magic;
    const u8 *bssDesc;
    int i;

    crcTable = Heap_Alloc(heapID, 0x200);
    MATHi_CRC16InitTableRev(crcTable, 0xA001);
    headerCRC = MATH_CalcCRC16(crcTable, eventData, 0x50);
    Heap_Free(crcTable);

    bssDesc = sub_02035754(0);
    keyBytes[0] = bssDesc[4];
    keyBytes[1] = bssDesc[5];
    keyBytes[2] = bssDesc[6];
    keyBytes[3] = bssDesc[7];
    keyBytes[4] = bssDesc[8];
    keyBytes[5] = bssDesc[9];

    key[3] = key[1];
    key[1] = headerCRC;
    magic = 0xD679;
    for (i = 0; i < 4; i++) {
        key[i] = key[i] ^ magic;
        magic = key[i];
    }

    cryptoCtx = Heap_Alloc(heapID, 0x104);
    CRYPTO_RC4Init(cryptoCtx, key, 8);
    CRYPTO_RC4Encrypt(cryptoCtx, eventData + 0x50, 0x358, wonderCard);
    Heap_Free(cryptoCtx);
}
