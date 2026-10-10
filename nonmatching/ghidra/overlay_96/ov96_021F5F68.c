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
undefined4 ov96_021E872C();
undefined4 ov96_021E6104();
undefined4 ov96_021EB0A4();
undefined4 GF_AssertFail();

uint ov96_021F5F68(int param_1,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  int iStack_28;
  char acStack_24 [4];
  int aiStack_20 [3];
  
  iVar2 = ov96_021E6104();
  iVar2 = iVar2 << 0xc;
  cVar1 = '\0';
  uVar7 = 0;
  do {
    puVar4 = (undefined4 *)(param_1 + 0x90 + uVar7 * 0x38);
    if (*(char *)((int)puVar4 + 0x26) == '\0') {
      iVar5 = *(int *)(param_1 + uVar7 * 0x1c + 0xfb4) * -0x40 + 0x60000;
      ov96_021EB0A4(*puVar4,(int)(puVar4[7] + ((uint)((int)puVar4[7] >> 0xb) >> 0x14)) >> 0xc,
                    (int)(iVar5 + ((uint)(iVar5 >> 0xb) >> 0x14)) >> 0xc,&uStack_2c,&uStack_30);
      uVar3 = ov96_021E6104();
      iVar5 = ov96_021E872C(uStack_2c,uStack_30,param_2,param_3,uVar3,&iStack_28);
      if (iVar5 == 0) {
        aiStack_20[uVar7] = 0;
        acStack_24[uVar7] = '\0';
      }
      else {
        aiStack_20[uVar7] = iStack_28;
        acStack_24[uVar7] = '\x01';
        cVar1 = cVar1 + '\x01';
      }
    }
    else {
      acStack_24[uVar7] = '\0';
      aiStack_20[uVar7] = 0;
    }
    uVar7 = uVar7 + 1 & 0xff;
  } while (uVar7 < 3);
  if (cVar1 == '\0') {
    return 3;
  }
  uVar7 = 3;
  uVar6 = 0;
  do {
    if ((acStack_24[uVar6] != '\0') && (aiStack_20[uVar6] < iVar2)) {
      uVar7 = uVar6;
      iVar2 = aiStack_20[uVar6];
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 3);
  if (uVar7 == 3) {
    GF_AssertFail();
    uVar7 = 3;
  }
  return uVar7;
}

