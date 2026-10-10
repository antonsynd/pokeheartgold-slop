typedef unsigned char byte;
typedef unsigned int uint;

unsigned char *ov96_021E60D8(int, int, int);
uint _fflt(int);
unsigned long long _f2d(uint);
unsigned long long _ddiv(unsigned long long, unsigned long long);
uint _d2f(unsigned long long);

void ov96_021FEFE8(int param_1, int param_2, int param_3, int param_4, int param_5)
{
    byte *r4;
    uint r7;
    uint v;
    unsigned long long d;

    r4 = ov96_021E60D8(param_1, param_3, param_4);
    r7 = (uint)param_4 * 0x1c;

    v = _fflt(*(int *)(param_2 + (r4[0] << 2)));
    d = _f2d(v);
    d = _ddiv(d, 0x4024000000000000ULL);
    *(uint *)(param_5 + r7 + 0x20) = _d2f(d);

    v = _fflt(*(int *)(param_2 + (r4[3] << 2) + 0x14));
    *(uint *)(param_5 + r7 + 0x28) = v;

    v = _fflt(*(int *)(param_2 + (r4[3] << 2) + 0x14));
    *(uint *)(param_5 + r7 + 0x24) = v;

    *(byte *)(param_5 + r7 + 0x2e) = (byte)*(uint *)(param_2 + (r4[1] << 2) + 0x64);
    *(byte *)(param_5 + r7 + 0x2c) = (byte)*(uint *)(param_2 + (r4[1] << 2) + 0x8c);
    *(byte *)(param_5 + r7 + 0x2d) = (byte)*(uint *)(param_2 + (r4[1] << 2) + 0x78);

    v = _fflt(*(int *)(param_2 + (r4[4] << 2) + 0x28));
    d = _f2d(v);
    d = _ddiv(d, 0x4024000000000000ULL);
    *(uint *)(param_5 + r7 + 0x18) = _d2f(d);

    v = _fflt(*(int *)(param_2 + (r4[1] << 2) + 0x3c));
    d = _f2d(v);
    d = _ddiv(d, 0x4024000000000000ULL);
    *(uint *)(param_5 + r7 + 0x1c) = _d2f(d);

    *(byte *)(param_5 + r7 + 0x2f) = (byte)*(uint *)(param_2 + (r4[3] << 2) + 0x50);
}
