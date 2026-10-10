#include "global.h"

typedef struct UnkStruct_BIGNUM {
    u32 *d;
    int top;
    int dmax;
    int neg;
    int flags;
} UnkStruct_BIGNUM;

typedef struct UnkStruct_BN_CTX {
    int tos;
    UnkStruct_BIGNUM bn[13];
    int flags;
    struct UnkStruct_BN_CB *cb;
} UnkStruct_BN_CTX;

typedef struct UnkStruct_BN_MONT_CTX {
    u8 filler_00[0x0c];
    u32 *RR_d;
    u8 filler_10[0x20 - 0x10];
    u32 *N_d;
    int N_top;
    u8 filler_28[0x48 - 0x28];
    u32 n0;
} UnkStruct_BN_MONT_CTX;

typedef struct UnkStruct_BN_CB UnkStruct_BN_CB;
typedef int (*UnkFunc_BN_CB)(UnkStruct_BN_CB *cb, int a, int count, void *self);

struct UnkStruct_BN_CB {
    UnkFunc_BN_CB fn;
};

extern int BN_set_word(UnkStruct_BIGNUM *a, u32 w);
extern UnkStruct_BIGNUM *BN_copy(UnkStruct_BIGNUM *a, const UnkStruct_BIGNUM *b);
extern UnkStruct_BN_MONT_CTX *BN_MONT_CTX_new(void);
extern int BN_MONT_CTX_set_word(UnkStruct_BN_MONT_CTX *mont, const UnkStruct_BIGNUM *m, UnkStruct_BN_CTX *ctx);
extern void BN_MONT_CTX_free(UnkStruct_BN_MONT_CTX *mont);
extern int BN_gen_exp_bits(const UnkStruct_BIGNUM *p, u8 **bits, int a);
extern int BN_mod(UnkStruct_BIGNUM *rem, const UnkStruct_BIGNUM *m, const UnkStruct_BIGNUM *d, UnkStruct_BN_CTX *ctx);
extern UnkStruct_BIGNUM *bn_expand2(UnkStruct_BIGNUM *b, int words);
extern UnkStruct_BIGNUM *bn_zexpand(UnkStruct_BIGNUM *b, int words);
extern void bn_fix_top(UnkStruct_BIGNUM *a);
extern void bn_mul_normal(u32 *r, u32 *a, int na, u32 *b, int nb);
extern void bn_sqr_normal(u32 *r, u32 *a, int n, u32 *tmp);
extern void bn_from_montgomery_words(u32 *ret, u32 *r, u32 *nd, int nl, u32 n0);
extern void MI_CpuCopy8(const void *src, void *dst, u32 size);

int BN_mod_exp_mont(UnkStruct_BIGNUM *rr, UnkStruct_BIGNUM *a, UnkStruct_BIGNUM *p, UnkStruct_BIGNUM *m, UnkStruct_BN_CTX *ctx, UnkStruct_BN_MONT_CTX *in_mont) {
    int ret = 0;
    UnkStruct_BN_MONT_CTX *mont = NULL;
    UnkStruct_BN_CB *cb = NULL;
    int cbCount = 0;
    u8 *wp = NULL;
    int savedTos;
    int n;
    int T;
    int Q;
    int w2;
    int i;
    int count;
    int b0;
    int sizeA;
    int t0, t1, t2, t3;
    int total;
    UnkStruct_BIGNUM *aa;
    UnkStruct_BIGNUM *bnA;
    UnkStruct_BIGNUM *bnB;
    UnkStruct_BIGNUM *bnC;
    UnkStruct_BIGNUM *bnD;
    UnkStruct_BIGNUM *expanded;
    u32 *fp;
    u32 *acc;
    u32 *prod;
    u32 *Nd;
    u32 n0;
    u32 *val[17];

    if ((m->d[0] & 1) == 0) {
        return 0;
    }

    savedTos = ctx->tos;

    if (a->top == 0 || (a->top == 1 && a->d[0] == 0)) {
        BN_set_word(rr, 0);
        return 1;
    }
    if (p->top == 0 || (p->top == 1 && p->d[0] == 0)) {
        BN_set_word(rr, 1);
        return 1;
    }
    if (p->top == 1 && p->d[0] == 1) {
        BN_copy(rr, a);
        return 1;
    }

    mont = in_mont;
    if (mont == NULL) {
        mont = BN_MONT_CTX_new();
        if (mont == NULL) {
            goto err;
        }
        if (BN_MONT_CTX_set_word(mont, m, ctx) == 0) {
            goto err;
        }
    }

    cb = ctx->cb;
    if (BN_gen_exp_bits(p, &wp, 0) == 0) {
        goto err;
    }

    ctx->tos = ctx->tos + 1;

    T = wp[3];
    w2 = wp[2];
    Q = (w2 + 0x3f) / w2;
    wp = wp + 4;

    n = mont->N_top;

    if (a->top == n && a->d[n - 1] < m->d[n - 1]) {
        aa = a;
    } else if (a->top < n) {
        t0 = ctx->tos;
        ctx->tos = t0 + 1;
        aa = &ctx->bn[t0];
        aa->top = a->top;
        bn_zexpand(aa, n);
        i = 0;
        if (a->top > 0) {
            do {
                aa->d[i] = a->d[i];
                i++;
            } while (i < a->top);
        }
    } else {
        t0 = ctx->tos;
        ctx->tos = t0 + 1;
        aa = &ctx->bn[t0];
        if (BN_mod(aa, a, m, ctx) == 0) {
            goto err;
        }
        bn_zexpand(aa, n);
    }

    t0 = ctx->tos;
    sizeA = p->top * Q;
    ctx->tos = t0 + 1;
    t1 = ctx->tos;
    sizeA = sizeA * 2 + 7;
    ctx->tos = t1 + 1;
    t2 = ctx->tos;
    total = T * n + sizeA / 4;
    bnB = &ctx->bn[t1];
    bnA = &ctx->bn[t0];
    bnC = &ctx->bn[t2];
    ctx->tos = t2 + 1;
    t3 = ctx->tos;
    bnD = &ctx->bn[t3];
    ctx->tos = t3 + 1;

    expanded = rr;
    if (n > rr->dmax) {
        expanded = bn_expand2(rr, n);
    }
    if (expanded == NULL) {
        goto err;
    }

    expanded = bnB;
    if (n * 4 > bnB->dmax) {
        expanded = bn_expand2(bnB, n * 4);
    }
    if (expanded == NULL) {
        goto err;
    }

    expanded = bnC;
    if (n * 2 > bnC->dmax) {
        expanded = bn_expand2(bnC, n * 2);
    }
    if (expanded == NULL) {
        goto err;
    }

    expanded = bnA;
    if (total > bnA->dmax) {
        expanded = bn_expand2(bnA, total);
    }
    if (expanded == NULL) {
        goto err;
    }

    expanded = bnD;
    if (n * 2 > bnD->dmax) {
        expanded = bn_expand2(bnD, n * 2);
    }
    if (expanded == NULL) {
        goto err;
    }

    fp = bnB->d;
    acc = bnC->d;
    prod = bnD->d;
    val[0] = bnA->d;
    n0 = mont->n0;
    Nd = mont->N_d;

    bn_mul_normal(prod, aa->d, n, mont->RR_d, n);
    bn_from_montgomery_words(val[0], prod, Nd, n, n0);

    if (T > 1) {
        bn_sqr_normal(prod, val[0], n, fp);
        bn_from_montgomery_words(fp, prod, Nd, n, n0);
        i = 1;
        if (T > 1) {
            do {
                val[i] = val[i - 1] + n;
                bn_mul_normal(prod, val[i - 1], n, fp, n);
                bn_from_montgomery_words(val[i], prod, Nd, n, n0);
                i++;
            } while (i < T);
        }
    }

    /* read the first (value, count) pair of the exponent stream */
    b0 = wp[0];
    count = wp[1];
    wp = wp + 2;
    if (count == 0xff && b0 == 0) {
        b0 = *wp;
        wp = wp + 1;
        while (*wp == 0xff && b0 == 0) {
            count += 0x100;
            b0 = wp[1];
            wp = wp + 2;
        }
        count += *wp + 1;
        wp = wp + 1;
    }

    MI_CpuCopy8(val[b0 >> 1], acc, n * 4);

    if (count != 0) {
        do {
            if (cb != NULL) {
                int r = cb->fn(cb, 0xff, cbCount, cb->fn);
                cbCount = cbCount + 1;
                if (r != 0) {
                    goto err;
                }
            }
            if ((ctx->flags & 0x4000) != 0) {
                goto err;
            }

            for (i = 0; i < count; i++) {
                bn_sqr_normal(prod, acc, n, fp);
                bn_from_montgomery_words(acc, prod, Nd, n, n0);
            }

            b0 = wp[0];
            count = wp[1];
            wp = wp + 2;
            if (count == 0xff && b0 == 0) {
                b0 = *wp;
                wp = wp + 1;
                while (*wp == 0xff && b0 == 0) {
                    count += 0x100;
                    b0 = wp[1];
                    wp = wp + 2;
                }
                count += *wp + 1;
                wp = wp + 1;
            }

            if (b0 == 0 && count == 0) {
                break;
            }

            if (count == 0 && b0 == 1) {
                bn_mul_normal(prod, acc, n, aa->d, n);
                bn_from_montgomery_words(rr->d, prod, Nd, n, n0);
                goto done;
            }

            bn_mul_normal(prod, acc, n, val[b0 >> 1], n);
            bn_from_montgomery_words(acc, prod, Nd, n, n0);
        } while (count != 0);
    }

    for (i = n; i < n * 2; i++) {
        acc[i] = 0;
    }
    bn_from_montgomery_words(rr->d, acc, Nd, n, n0);

done:
    if ((ctx->flags & 0x4000) == 0) {
        rr->top = n;
        bn_fix_top(rr);
        ret = 1;
    }

err:
    if (cb != NULL) {
        if (cb->fn(cb, 0xff, -1, cb->fn) != 0) {
            ret = 0;
        }
    }
    if (in_mont == NULL && mont != NULL) {
        BN_MONT_CTX_free(mont);
    }
    ctx->tos = savedTos;
    return ret;
}
