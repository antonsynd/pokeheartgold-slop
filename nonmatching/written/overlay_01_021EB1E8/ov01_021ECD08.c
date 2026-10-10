typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

void ov01_021ECF4C(char *a, int b);
void ov01_021ED070(char *a, int b);
void ov01_021EC504(char *a, char *b, int c, int d, int e, int f, int g, int h, int i, void (*fn)(char *, int));
void ov01_021EC5FC(char *a, char *b, void *fog, int c, int d, int e, int f, u16 g);
s32 ov01_021EC538(char *a);
s32 ov01_021EC650(char *a, char *b, u16 c);
void ov01_021EC678(void *fog, int a, int b, int c);
void ov01_021EC7C8(char *a);
void ov01_021EC85C(char *a, void (*fn)(char *, int), int b, int c, int d, void (*fn2)(char *, int));
void ov01_021EC52C(char *a, int b, int c, int d, int e);
void ov01_021EC790(char *a, int b, int c);
s32 ov01_021EC7AC(char *a);
void ov01_021EA864(void *fog, int a, int b, int c, int d, int e);
void ov01_021EBCA4(void *a);
void ov01_021EC2E4(char *a, void (*fn)(char *, int));
void ov01_021EC470(char *a, void *b, void *c);
void ov01_021EC300(char *a);

#define STATE(p) (*(u16 *)((p) + 0xF62))
#define FLAG(p) (*(u16 *)((p) + 0xF64))
#define FOGMAN(p) (*(void **)(*(char **)(*(char **)(p) + 0x104) + 0x4c))

void ov01_021ECD08(void *task, char *p)
{
    char *w = *(char **)(p + 0xF58);
    s32 r3v, r;
    s16 old;

    switch (STATE(p)) {
    case 0:
        ov01_021EC504(w, p, 1, 0x1e, 6, 3, -5, 2, 1, ov01_021ECF4C);
        ov01_021EC5FC(w + 0x4c, w + 0x1c, FOGMAN(p), 3, 0x726f, 0x6318, 2, FLAG(p));
        *(s32 *)(w + 0xb4) = 8;
        *(s32 *)(w + 0xb8) = 0;
        STATE(p) = 1;
        break;
    case 1:
        r3v = ov01_021EC538(w);
        if (*(s32 *)(w + 0xb4) > 0) {
            *(s32 *)(w + 0xb4) = *(s32 *)(w + 0xb4) - 1;
        } else {
            r = ov01_021EC650(w + 0x4c, w + 0x1c, FLAG(p));
            if (r == 1 && r3v == 3) {
                STATE(p) = 3;
            }
        }
        break;
    case 2:
        ov01_021EC504(w, p, 6, 3, 6, 3, -5, 2, 1, ov01_021ECF4C);
        if (FLAG(p) != 0) {
            void *fog = FOGMAN(p);
            *(void **)(w + 0x1c) = fog;
            ov01_021EC678(fog, 3, 0x726f, 0x6318);
            ov01_021EC7C8(w + 0x1c);
        }
        *(s32 *)(w + 0xb8) = 0;
        ov01_021EC85C(p, ov01_021ECF4C, 0x14, 2, 3, ov01_021ED070);
        STATE(p) = 3;
        break;
    case 3:
        old = *(s16 *)(w + 6);
        *(s16 *)(w + 6) = old - 1;
        if (old <= 0) {
            ov01_021ECF4C(p, *(s16 *)(w + 4));
            *(s16 *)(w + 6) = *(s16 *)(w + 8);
        }
        if (*(u16 *)(p + 0xF66) == 5) {
            ov01_021EC52C(w, 0, 0x1e, 5, -3);
            if (FLAG(p) != 0) {
                ov01_021EC790(w + 0x1c, 1, 0);
            }
            *(s32 *)(w + 0xb4) = 0;
            STATE(p) = 4;
        }
        break;
    case 4:
        r3v = ov01_021EC538(w);
        if (*(s32 *)(w + 0xb4) > 0) {
            *(s32 *)(w + 0xb4) = *(s32 *)(w + 0xb4) - 1;
        } else {
            if (FLAG(p) != 0) {
                r = ov01_021EC7AC(w + 0x1c);
            } else {
                r = 1;
            }
            if (r == 1 && r3v == 3 && *(char **)(p + 0x40) == p + 0xc) {
                STATE(p) = 5;
            }
        }
        break;
    case 5:
        if (FLAG(p) != 0) {
            ov01_021EA864(*(void **)(w + 0x1c), 1, 0, 0, 0, 0);
        }
        ov01_021EBCA4(*(void **)(p + 4));
        break;
    }

    if (STATE(p) != 5 && STATE(p) != 0) {
        ov01_021EC2E4(p + 0xc, ov01_021ED070);
        ov01_021EC470(p, 0, 0);
        ov01_021EC300(p);
    }
}
