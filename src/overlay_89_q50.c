#include "global.h"

#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"

typedef struct Ov89Model {
    NNSG3dResFileHeader *data;
    NNSG3dResMdlSet *set;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
} Ov89Model;

void ov89_0225AA24(NNSG3dResTex *texture, NARC *narc, NARC *narc2, const void *a3, BOOL a4);
BOOL ov89_0225A9B4(NNSG3dResTex *texture);
BOOL ov89_0225A958(void *a0, NNSG3dResTex *texture);

#pragma optimization_level 2
#pragma opt_common_subs off

BOOL ov89_0225A878(void *a0, Ov89Model *model, NARC *narc, NARC *narc2, const void *a4, BOOL a5) {
    model->data = GfGfxLoader_LoadFromOpenNarc(narc, 29, FALSE, HEAP_ID_125, FALSE);
    {
        BOOL loaded;
        NNSG3dResTex *texture;

        GF_ASSERT(model->data);
        model->set = NNS_G3dGetMdlSet(model->data);
        model->model = NNS_G3dGetMdlByIdx(model->set, 0);
        texture = model->texture = NNS_G3dGetTex(model->data);
        if (texture) {
            ov89_0225AA24(texture, narc, narc2, a4, a5);
            loaded = ov89_0225A9B4(model->texture);
            if (loaded == FALSE || ov89_0225A958(a0, model->texture) == FALSE) {
                NNSG3dTexKey texKey;
                NNSG3dTexKey tex4x4Key;
                NNSG3dPlttKey plttKey;

                if (loaded == TRUE) {
                    NNS_G3dTexReleaseTexKey(model->texture, &texKey, &tex4x4Key);
                    NNS_GfdFreeTexVram(texKey);
                    NNS_GfdFreeTexVram(tex4x4Key);
                    plttKey = NNS_G3dPlttReleasePlttKey(model->texture);
                    NNS_GfdFreePlttVram(plttKey);
                }
                if (model->data) {
                    Heap_Free(model->data);
                }
                memset(model, 0, sizeof(Ov89Model));
                return FALSE;
            }
            GF3dRender_BindModelSet(model->data, model->texture);
        }
    }
    return TRUE;
}
