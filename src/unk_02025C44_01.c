#include "global.h"

void sub_02025C54(NNSG2dRenderSurface *surface, NNSG2dViewRect *rect, NNSG2dOamRegisterFunction registerOam, NNSG2dAffineRegisterFunction registerAffine, NNSG2dRndCellCullingFunction cull, NNSG2dSurfaceType type, NNSG2dRendererInstance *renderer) {
    NNS_G2dInitRenderSurface(surface);
    surface->viewRect = *rect;
    surface->pFuncOamRegister = registerOam;
    surface->pFuncOamAffineRegister = registerAffine;
    surface->pFuncVisibilityCulling = cull;
    surface->type = type;
    if (renderer != NULL) {
        NNS_G2dAddRendererTargetSurface(renderer, surface);
    }
}
