#include "global.h"

typedef struct UnkStruct_BIGNUM {
    u32 *d;
    int top;
    int dmax;
    int neg;
    int flags;
} UnkStruct_BIGNUM;

typedef struct UnkStruct_BN_RECP_CTX {
    UnkStruct_BIGNUM N;
    UnkStruct_BIGNUM Nr;
    int num_bits;
    int shift;
    int flags;
} UnkStruct_BN_RECP_CTX;

typedef struct UnkStruct_BN_CTX {
    int tos;
    UnkStruct_BIGNUM bn[1];
} UnkStruct_BN_CTX;

extern int BN_num_bits(const UnkStruct_BIGNUM *a);
extern int BN_set_word(UnkStruct_BIGNUM *a, u32 w);
extern UnkStruct_BIGNUM *BN_copy(UnkStruct_BIGNUM *a, const UnkStruct_BIGNUM *b);
extern void BN_RECP_CTX_init(UnkStruct_BN_RECP_CTX *recp);
extern int BN_RECP_CTX_set(UnkStruct_BN_RECP_CTX *recp, const UnkStruct_BIGNUM *d, UnkStruct_BN_CTX *ctx);
extern void BN_RECP_CTX_free(UnkStruct_BN_RECP_CTX *recp);
extern void BN_init(UnkStruct_BIGNUM *a);
extern int BN_mod(UnkStruct_BIGNUM *rem, const UnkStruct_BIGNUM *m, const UnkStruct_BIGNUM *d, UnkStruct_BN_CTX *ctx);
extern int BN_mod_mul_reciprocal(UnkStruct_BIGNUM *r, UnkStruct_BIGNUM *x, UnkStruct_BIGNUM *y, UnkStruct_BN_RECP_CTX *recp, UnkStruct_BN_CTX *ctx);
extern int BN_is_bit_set(const UnkStruct_BIGNUM *a, int n);
extern void BN_clear_free(UnkStruct_BIGNUM *a);

int BN_mod_exp_recp(UnkStruct_BIGNUM *r, UnkStruct_BIGNUM *a, UnkStruct_BIGNUM *p, UnkStruct_BIGNUM *m, UnkStruct_BN_CTX *ctx) {
    int i, j, bits, ret = 0, wstart, wend, window, wvalue;
    int start, ts = 0;
    UnkStruct_BIGNUM *aa;
    UnkStruct_BIGNUM val[16];
    UnkStruct_BN_RECP_CTX recp;

    bits = BN_num_bits(p);

    if (a->top == 0 || (a->top == 1 && a->d[0] == 0)) {
        BN_set_word(r, 0);
        return 1;
    }
    if (p->top == 0 || (p->top == 1 && p->d[0] == 0)) {
        BN_set_word(r, 1);
        return 1;
    }
    if (p->top == 1 && p->d[0] == 1) {
        BN_copy(r, a);
        return 1;
    }

    BN_RECP_CTX_init(&recp);
    if (BN_RECP_CTX_set(&recp, m, ctx) <= 0) {
        goto err;
    }
    BN_init(&val[0]);
    aa = &ctx->bn[ctx->tos++];
    ts = 1;
    if (!BN_mod(&val[0], a, m, ctx)) {
        goto err;
    }
    if (!BN_mod_mul_reciprocal(aa, &val[0], &val[0], &recp, ctx)) {
        goto err;
    }

    if (bits <= 17) {
        window = 1;
    } else if (bits >= 256) {
        window = 5;
    } else if (bits >= 128) {
        window = 4;
    } else {
        window = 3;
    }

    j = 1 << (window - 1);
    for (i = 1; i < j; i++) {
        BN_init(&val[i]);
        if (!BN_mod_mul_reciprocal(&val[i], &val[i - 1], aa, &recp, ctx)) {
            goto err;
        }
    }
    ts = i;

    start = 1;
    wstart = bits - 1;
    if (!BN_set_word(r, 1)) {
        goto err;
    }

    for (;;) {
        if (BN_is_bit_set(p, wstart) == 0) {
            if (!start) {
                if (!BN_mod_mul_reciprocal(r, r, r, &recp, ctx)) {
                    goto err;
                }
            }
            if (wstart == 0) {
                break;
            }
            wstart--;
            continue;
        }
        wvalue = 1;
        wend = 0;
        for (i = 1; i < window; i++) {
            if (wstart - i < 0) {
                break;
            }
            if (BN_is_bit_set(p, wstart - i)) {
                wvalue <<= (i - wend);
                wvalue |= 1;
                wend = i;
            }
        }
        j = wend + 1;
        if (!start) {
            for (i = 0; i < j; i++) {
                if (!BN_mod_mul_reciprocal(r, r, r, &recp, ctx)) {
                    goto err;
                }
            }
        }
        if (!BN_mod_mul_reciprocal(r, r, &val[wvalue >> 1], &recp, ctx)) {
            goto err;
        }
        wstart -= wend + 1;
        start = 0;
        if (wstart < 0) {
            break;
        }
    }
    ret = 1;
err:
    ctx->tos--;
    for (i = 0; i < ts; i++) {
        BN_clear_free(&val[i]);
    }
    BN_RECP_CTX_free(&recp);
    return ret;
}
