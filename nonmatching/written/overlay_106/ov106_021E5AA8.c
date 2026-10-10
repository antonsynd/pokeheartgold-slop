#include "global.h"
#include "gf_gfx_loader.h"
#include "gf_3d_render.h"
#include "heap.h"

typedef struct UnkStruct_ov106_021E5AA8_Obj {
    NNSG3dRenderObj renderObj;     /* 0x00 */
    NNSG3dResMdl *mdl;             /* 0x54 */
    NNSG3dResFileHeader *header;   /* 0x58 */
    void *anmRes[4];               /* 0x5C */
    NNSG3dAnmObj *anmObj[4];       /* 0x6C */
} UnkStruct_ov106_021E5AA8_Obj;    /* size 0x7C */

typedef struct UnkStruct_ov106_021E5AA8_Template {
    s32 fileId;    /* 0x0 */
    u8 anmIds[4];  /* 0x4 */
    int flag;      /* 0x8 */
} UnkStruct_ov106_021E5AA8_Template;

void ov106_021E5AA8(u8 *data, NarcId narcId, const UnkStruct_ov106_021E5AA8_Template *templates, u32 count) {
    u16 i, j;
    NNSFndAllocator *alloc = (NNSFndAllocator *)(data + 8);

    HeapExp_FndInitAllocator(alloc, (enum HeapID)0x99, 4);
    for (i = 0; i < count; i++) {
        UnkStruct_ov106_021E5AA8_Obj *obj = (UnkStruct_ov106_021E5AA8_Obj *)(data + 0x1C + i * 0x7C);
        const UnkStruct_ov106_021E5AA8_Template *tmpl = &templates[i];
        NNSG3dResTex *tex;

        obj->header = GfGfxLoader_LoadFromNarc(narcId, tmpl->fileId, TRUE, (enum HeapID)0x99, TRUE);
        GF3dRender_InitObjFromHeader(&obj->renderObj, &obj->mdl, &obj->header);
        tex = NNS_G3dGetTex(obj->header);
        if (tmpl->flag == 1) {
            NNSi_G3dModifyMatFlag(obj->mdl, FALSE, (NNSG3dMatFlag)0x40);
            NNSi_G3dModifyMatFlag(obj->mdl, FALSE, (NNSG3dMatFlag)0x80);
            NNSi_G3dModifyMatFlag(obj->mdl, FALSE, (NNSG3dMatFlag)0x200);
            NNSi_G3dModifyMatFlag(obj->mdl, FALSE, (NNSG3dMatFlag)0x400);
        }
        for (j = 0; j < 4; j++) {
            u8 anmId = tmpl->anmIds[j];
            if (anmId == 0xFF) {
                obj->anmRes[j] = NULL;
                obj->anmObj[j] = NULL;
            } else {
                void *anm;
                obj->anmRes[j] = GfGfxLoader_LoadFromNarc(narcId, anmId, TRUE, (enum HeapID)0x99, TRUE);
                anm = NNS_G3dGetAnmByIdx(obj->anmRes[j], 0);
                obj->anmObj[j] = NNS_G3dAllocAnmObj(alloc, anm, obj->mdl);
                NNS_G3dAnmObjInit(obj->anmObj[j], anm, obj->mdl, tex);
                NNS_G3dRenderObjAddAnmObj(&obj->renderObj, obj->anmObj[j]);
            }
        }
    }
    *(u32 *)(data + 0x3FC) = count;
}
