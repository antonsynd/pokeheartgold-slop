#include "global.h"

typedef struct {
    u32 words[4];
} UnkStruct_ov102_021E9198;

extern const UnkStruct_ov102_021E9198 ov102_021EC698;
extern void ObjCharTransfer_Init(UnkStruct_ov102_021E9198 *tmpl, u32 r1);
extern void ObjCharTransfer_ClearBuffers(void);

void ov102_021E9198(void) {
    UnkStruct_ov102_021E9198 tmpl = ov102_021EC698;
    ObjCharTransfer_Init(&tmpl, ov102_021EC698.words[3]);
    ObjCharTransfer_ClearBuffers();
}
