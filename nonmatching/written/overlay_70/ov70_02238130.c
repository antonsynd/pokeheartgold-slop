#include "global.h"

typedef struct UnkStruct_ov70_02246800 {
    /* 0x00 */ s32 status;
    /* 0x04 */ s32 result;
    /* 0x08 */ u8 filler_08[0x12];
    /* 0x1A */ u8 maxResults;
} UnkStruct_ov70_02246800;

extern UnkStruct_ov70_02246800 _02246800;
extern u8 ov70_02246814[];
extern u8 ov70_02246900[];
extern const char ov70_02246268[];

void ov38_0221BE84(void);
void ov38_0221BFEC(void);
int ov70_02238360(const char *url, u8 *request, u32 requestSize, void *response, int responseSize);

void ov70_02238130(const u8 *requirements, s32 maxResults, void *listing) {
    *(void **)(ov70_02246900 + 0x40) = listing;
    ov38_0221BE84();
    ov70_02246814[0] = requirements[0];
    ov70_02246814[1] = requirements[1];
    ov70_02246814[2] = requirements[2];
    ov70_02246814[3] = requirements[3];
    ov70_02246814[4] = requirements[4];
    ov70_02246814[5] = requirements[5];
    _02246800.maxResults = maxResults;
    if (ov70_02238360(ov70_02246268, ov70_02246814, 7, listing, 0x124 * maxResults)) {
        _02246800.status = 0xE;
    } else {
        _02246800.status = 0x18;
        _02246800.result = -13;
        ov38_0221BFEC();
    }
}
