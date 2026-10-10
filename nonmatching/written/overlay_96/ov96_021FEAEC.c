typedef unsigned char byte;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long long ulonglong;

unsigned long long _dflt(int);
unsigned long long _dadd(unsigned long long, unsigned long long);
unsigned long long _dsub(unsigned long long, unsigned long long);
int _dfix(unsigned long long);
void ov96_021EB588(uint, uint *);
void ov96_021EB52C(uint, int, int);

/* Double compare: the helper leaves its result in the CPSR. "BR" is the branch the asm uses to skip the
 * true block, so RES is 1 exactly when the true block runs. */
#define FB_DCMP(RES, HELPER, BR, A, B) do { \
    register uint r0_ __asm__("r0") = (uint)(A); \
    register uint r1_ __asm__("r1") = (uint)((A) >> 32); \
    register uint r2_ __asm__("r2") = (uint)(B); \
    register uint r3_ __asm__("r3") = (uint)((B) >> 32); \
    __asm__ volatile("bl " HELPER "\n\t" \
                     BR " 1f\n\t" \
                     "movs %0, #1\n\t" \
                     "b 2f\n" \
                     "1:\n\t" \
                     "movs %0, #0\n" \
                     "2:" \
                     : "=&l"(RES), "+r"(r0_), "+r"(r1_), "+r"(r2_), "+r"(r3_) \
                     : \
                     : "r12", "lr", "cc", "memory"); \
} while (0)

void ov96_021FEAEC(int param_1, int param_2)
{
    unsigned char *node;
    unsigned char bVar1;
    int r5;
    uint k;
    uint res;
    unsigned long long d;
    uint S[3];

    k = 0;
    do {
        node = (unsigned char *)(param_1 + k * 12);
        if (*(uint *)(node + 0x4d4) == 0) {
            return;
        }
        bVar1 = node[0x4de];
        r5 = param_2 - *(ushort *)(node + 0x4dc);
        d = _dflt(r5);
        FB_DCMP(res, "_dgeq", "blo", d, 0x4088000000000000ULL);
        if (res != 0) {
            d = _dflt(r5);
            d = _dsub(0x4090000000000000ULL, d);
            d = _dadd(0x4054000000000000ULL, d);
            r5 = _dfix(d);
        } else {
            d = _dflt(r5);
            FB_DCMP(res, "_dleq", "bhi", d, 0xC088000000000000ULL);
            if (res != 0) {
                d = _dflt(r5);
                d = _dadd(0x4090000000000000ULL, d);
                d = _dsub(0x4054000000000000ULL, d);
                r5 = _dfix(d);
            } else {
                r5 = 0x50 - r5;
            }
        }
        S[2] = 0;
        S[0] = (uint)r5 << 12;
        S[1] = (uint)(bVar1 + 0x20) << 12;
        ov96_021EB588(*(uint *)(node + 0x4d8), S);
        if (r5 < -0x20 || r5 > 0x120) {
            ov96_021EB52C(*(uint *)(node + 0x4d8), 1, 0);
        } else {
            ov96_021EB52C(*(uint *)(node + 0x4d8), 1, 1);
        }
        k = (k + 1) & 0xff;
    } while (k < 0x1e);
}
