typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u8 gSystem[];
extern u8 ov15_02200640[];
extern u8 ov15_02200641[];
extern u8 ov15_02200642[];
extern u8 ov15_02200643[];

void PlaySE(u16 sndseq);
void ov15_021FFECC(void *app, int idx);
int ov15_021FA73C(void *app, int a, u8 *out, int c, int d, int e);
int ov15_021FA6C0(void *app, int a, int b);
int ov15_021FA104(void *app, int a);
void ov15_021FD774(void *app, int a);
int ov15_021FD810(void *app, int a, int b, int c);
void ov15_021FA170(void *app);
int ov15_021FAC2C(void *app, int a);
int ov15_021FA68C(void *app, int a);
void ov15_021FA0E4(void *app, int a);

#define CUR(app) (*(s32 *)((u8 *)(app) + 0x644))
#define PCTX(app) (*(u8 **)((u8 *)(app) + 0x234))

int ov15_021FA1BC(void *app)
{
    u8 out[8];
    s32 changed = 0;
    s32 cur;
    s32 hit;
    s32 r;
    u32 keysRepeat = *(u32 *)(gSystem + 0x4c);
    u32 keys;

    if (keysRepeat & 0x40) {
        changed++;
        CUR(app) = ov15_02200640[CUR(app) * 4];
    } else if (keysRepeat & 0x80) {
        changed++;
        CUR(app) = ov15_02200641[CUR(app) * 4];
    } else if (keysRepeat & 0x20) {
        u32 v;
        cur = CUR(app);
        v = ov15_02200642[cur * 4];
        if (v == 0xe) {
            return ov15_021FA73C(app, 0xe, out + 4, 1, 2, changed);
        }
        if (cur != 0x10) {
            if (cur >= 0 && cur < 8) {
                r = ov15_021FA6C0(app, cur, -1);
                if (CUR(app) != r) {
                    CUR(app) = r;
                    changed++;
                }
            } else {
                changed++;
                CUR(app) = v;
            }
        }
    } else if (keysRepeat & 0x10) {
        u32 v;
        cur = CUR(app);
        v = ov15_02200643[cur * 4];
        if (v == 0xf) {
            return ov15_021FA73C(app, 0xf, out + 3, 1, 2, changed);
        }
        if (cur != 0x10) {
            if (cur >= 0 && cur < 8) {
                r = ov15_021FA6C0(app, cur, 1);
                if (CUR(app) != r) {
                    CUR(app) = r;
                    changed++;
                }
            } else {
                changed++;
                CUR(app) = v;
            }
        }
    } else {
        keys = *(u32 *)(gSystem + 0x48);
        if (keys & 0x200) {
            cur = CUR(app);
            if (cur >= 0 && cur < 8) {
                r = ov15_021FA6C0(app, *(u8 *)(PCTX(app) + 0x64), -1);
                CUR(app) = r;
                ov15_021FFECC(app, CUR(app));
                return ov15_021FA73C(app, CUR(app), out + 2, 1, 2, changed);
            }
            r = ov15_021FA6C0(app, *(u8 *)(PCTX(app) + 0x64), -1);
            return ov15_021FA73C(app, r, out + 2, 1, 2, 0);
        }
        if (keys & 0x100) {
            cur = CUR(app);
            if (cur >= 0 && cur < 8) {
                r = ov15_021FA6C0(app, *(u8 *)(PCTX(app) + 0x64), 1);
                CUR(app) = r;
                ov15_021FFECC(app, CUR(app));
                return ov15_021FA73C(app, CUR(app), out + 1, 1, 2, changed);
            }
            r = ov15_021FA6C0(app, *(u8 *)(PCTX(app) + 0x64), 1);
            return ov15_021FA73C(app, r, out + 1, 1, 2, 0);
        }
    }

    if (CUR(app) == 0x11) {
        CUR(app) = *(u8 *)(PCTX(app) + 0x64);
    }
    if (changed != 0) {
        PlaySE(0x5dc);
        ov15_021FFECC(app, CUR(app));
        ov15_021FA0E4(app, CUR(app));
        ov15_021FA170(app);
    }
    out[0] = 0;
    hit = ov15_021FAC2C(app, 0);
    if (hit != -1) {
        if (ov15_021FA104(app, hit) != 0) {
            if ((u32)hit < 8) {
                if (ov15_021FA68C(app, hit) != -1) {
                    CUR(app) = hit;
                    ov15_021FFECC(app, CUR(app));
                }
            } else {
                CUR(app) = hit;
                ov15_021FFECC(app, CUR(app));
                cur = CUR(app);
                if (cur >= 8 && cur <= 0xd) {
                    ov15_021FA0E4(app, cur);
                }
            }
        }
        r = ov15_021FA73C(app, hit, out, 1, 2, 1);
        if (r != 1) {
            return r;
        }
    } else {
        keys = *(u32 *)(gSystem + 0x48);
        if (keys & 1) {
            r = ov15_021FA73C(app, CUR(app), out, 1, 2, 0);
            cur = CUR(app);
            if (cur >= 8 && cur <= 0xd) {
                ov15_021FA0E4(app, cur);
            }
            if (r != 1) {
                return r;
            }
        } else if (keys & 2) {
            r = ov15_021FA73C(app, 0x10, out, 1, 2, 0);
            ov15_021FD774(app, 0);
            cur = CUR(app);
            if (cur >= 8 && cur <= 0xd) {
                ov15_021FA0E4(app, cur);
            }
            if (r != 1) {
                return r;
            }
        }
    }
    if (out[0] == 1) {
        return ov15_021FD810(app, 0x14, 0x29, 0x1b);
    }
    return 1;
}
