typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 GF_AssertFail(void);
undefined4 String_Delete(void *);
undefined4 sub_02013794(void *, void *, void *);
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 ov93_02261EB8(void *, void *, int, void *, void *, int, int, int, int, int, int, int, int, int, unsigned char, ...);
void * NewString_ReadMsgData(void *, int);

void ov93_02262250(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int extraout_r1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uStack_2c;
  int iStack_28;
  undefined auStack_20 [4];
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_2c = *(uint *)(param_1 + 0x3848);
  iStack_28 = 5;
  iVar4 = param_1 + 100;
  iVar2 = param_1 + 200;
  iVar3 = param_1 + 0x1714;
  uStack_18 = param_4;
  do {
    if (*(int *)(iVar4 + 0x16b0) != 0) {
      GF_AssertFail();
    }
    { uint nug_a = (uint)(uStack_2c), nug_b = (uint)(10); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    puVar1 = NewString_ReadMsgData(*(undefined **)(param_1 + 0x80),extraout_r1 + 4);
    uStack_2c = _u32_div_f(uStack_2c,10);
    sub_02013794(*(undefined **)(iVar2 + 0x15ac),(undefined *)&uStack_1c,auStack_20);
    ov93_02261EB8(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x28),
                  *(undefined4 *)(param_1 + 0x90),iVar3,puVar1,0,0xe0f00,0,0x2713,uStack_1c,0xa8,0,1
                  ,0xc,2);
    String_Delete(puVar1);
    iVar4 = iVar4 + -0x14;
    iVar2 = iVar2 + -0x28;
    iVar3 = iVar3 + -0x14;
    iStack_28 = iStack_28 + -1;
  } while (-1 < iStack_28);
  return;
}

