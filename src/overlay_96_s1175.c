#include "global.h"

typedef struct Ov96Point {
    int x;
    int y;
} Ov96Point;

BOOL sub_02020EB0(const Ov96Point *a, const Ov96Point *b, const Ov96Point *c, const Ov96Point *d);

BOOL ov96_02213D2C(const VecFx32 *a, const VecFx32 *b, const VecFx32 *c, const VecFx32 *d, VecFx32 *out) {
    VecFx32 base = { 0, 0, 0 };
    VecFx32 dir;
    Ov96Point pa, pb, pc, pd;
    fx32 distC, distD;

    pa.x = a->x / FX32_ONE;
    pa.y = a->y / FX32_ONE;
    pb.x = b->x / FX32_ONE;
    pb.y = b->y / FX32_ONE;
    pc.x = c->x / FX32_ONE;
    pc.y = c->y / FX32_ONE;
    pd.x = d->x / FX32_ONE;
    pd.y = d->y / FX32_ONE;
    if (!sub_02020EB0(&pa, &pb, &pc, &pd)) {
        return FALSE;
    }

    VEC_Subtract(b, a, &dir);
    VEC_Normalize(&dir, &dir);

    if (a->y == b->y) {
        distC = a->y - c->y;
        if (distC < 0) {
            distC *= -1;
        }
        distD = a->y - d->y;
        if (distD < 0) {
            distD *= -1;
        }
        if (distD == 0) {
            return FALSE;
        }
        {
            fx32 x = c->x;

            base.y = a->y;
            base.x = x;
        }
        VEC_MultAdd(FX_Div(distC, distC + distD), &dir, &base, out);
        return TRUE;
    } else if (a->x == b->x) {
        distC = a->x - c->x;
        if (distC < 0) {
            distC *= -1;
        }
        distD = a->x - d->x;
        if (distD < 0) {
            distD *= -1;
        }
        if (distD == 0) {
            return FALSE;
        }
        base.x = a->x;
        base.y = c->y;
        VEC_MultAdd(FX_Div(distC, distC + distD), &dir, &base, out);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return FALSE;
}
