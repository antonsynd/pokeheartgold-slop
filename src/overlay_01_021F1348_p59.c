#include "global.h"

void *ov01_021F14B4(void *manager, u32 memberId, BOOL atEnd);
void ov01_021F1A48(void *manager, NNSG3dRenderObj *obj, NNSG3dResMdl **mdl, NNSG3dResFileHeader **header);

void ov01_021F1AB8(void *manager, u32 memberId, BOOL atEnd, NNSG3dRenderObj *obj, NNSG3dResMdl **mdl, NNSG3dResFileHeader **header) {
    *header = ov01_021F14B4(manager, memberId, atEnd);
    ov01_021F1A48(manager, obj, mdl, header);
}
