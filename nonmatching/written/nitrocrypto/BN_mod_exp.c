#include "global.h"

typedef struct UnkStruct_BN_mod_exp {
    u32 *d;
    int top;
    int dmax;
    int neg;
    int flags;
} UnkStruct_BN_mod_exp;

extern int BN_mod_exp_mont(UnkStruct_BN_mod_exp *r, UnkStruct_BN_mod_exp *a, UnkStruct_BN_mod_exp *p, UnkStruct_BN_mod_exp *m, void *ctx, void *mont);
extern int BN_mod_exp_recp(UnkStruct_BN_mod_exp *r, UnkStruct_BN_mod_exp *a, UnkStruct_BN_mod_exp *p, UnkStruct_BN_mod_exp *m, void *ctx);

int BN_mod_exp(UnkStruct_BN_mod_exp *r, UnkStruct_BN_mod_exp *a, UnkStruct_BN_mod_exp *p, UnkStruct_BN_mod_exp *m, void *ctx) {
    if (m->top > 0 && (m->d[0] & 1)) {
        return BN_mod_exp_mont(r, a, p, m, ctx, NULL);
    }
    return BN_mod_exp_recp(r, a, p, m, ctx);
}
