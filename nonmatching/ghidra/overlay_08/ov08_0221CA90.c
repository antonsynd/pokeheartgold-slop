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
typedef void code(void);
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
undefined4 ov08_0221DBCC(undefined4, undefined4, undefined4, undefined4);
undefined4 ov08_022201C0(undefined4);
undefined4 Pokemon_GetStatusIconId(undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 ov08_02220224(undefined4);
undefined4 PlaySE(undefined4);
undefined4 ov08_022225A4(undefined4);
undefined4 ov08_0221F550(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0223a880(undefined4, undefined4, undefined4) __asm__("sub_0223A880");
undefined4 ov08_0221F5B0(undefined4, undefined4);
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 ov08_02220064(undefined4, undefined4);

undefined4 ov08_0221CA90(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  byte bVar2;
  undefined2 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  int iVar8;

  iVar8 = *param_1;
  switch((char)param_1[0x81f]) {
  case '\0':
    iVar4 = func_0x0223a880(*(undefined4 *)(iVar8 + 8),*(undefined4 *)(iVar8 + 0x28),
                            *(undefined1 *)(iVar8 + (uint)*(byte *)(iVar8 + 0x11) + 0x2c));
    param_1[(uint)*(byte *)(iVar8 + 0x11) * 0x14 + 1] = iVar4;
    ov08_02220224(param_1);
    if (*(char *)((int)param_1 + 0x207a) == '\x05') {
      uVar3 = GetMonData(param_1[(uint)*(byte *)(iVar8 + 0x11) * 0x14 + 1],
                         *(byte *)(iVar8 + 0x34) + 0x3a,0);
      *(undefined2 *)(param_1 + 0x820) = uVar3;
      *(undefined1 *)(param_1 + 0x81f) = 2;
    }
    else {
      bVar2 = Pokemon_GetStatusIconId(param_1[(uint)*(byte *)(iVar8 + 0x11) * 0x14 + 1]);
      iVar4 = (uint)*(byte *)(iVar8 + 0x11) * 0x50;
      *(byte *)((int)param_1 + iVar4 + 0x1b) =
           (bVar2 & 0xf) << 3 | *(byte *)((int)param_1 + iVar4 + 0x1b) & 0x87;
      if ((*(byte *)((int)param_1 + (uint)*(byte *)(iVar8 + 0x11) * 0x50 + 0x1b) & 0x7f) >> 3 == 7)
      {
        ManagedSprite_SetDrawFlag(param_1[*(byte *)(iVar8 + 0x11) + 0x7fb],0);
        ov08_0221F5B0(param_1,*(undefined1 *)(iVar8 + 0x11));
      }
      uVar3 = GetMonData(param_1[(uint)*(byte *)(iVar8 + 0x11) * 0x14 + 1],0xa3,0);
      *(undefined2 *)((int)param_1 + 0x207e) = uVar3;
      *(undefined1 *)(param_1 + 0x81f) = 4;
    }
    PlaySE(0x5ec);
    break;
  case '\x01':
    uVar5 = (uint)*(byte *)(iVar8 + 0x11);
    sVar1 = *(short *)((int)param_1 + 0x207e);
    if (sVar1 == (short)param_1[uVar5 * 0x14 + 5]) {
      *(undefined1 *)(param_1 + 0x81f) = 3;
    }
    else {
      *(short *)(param_1 + uVar5 * 0x14 + 5) = (short)param_1[uVar5 * 0x14 + 5] + 1;
      ov08_0221F550(param_1,*(undefined1 *)(iVar8 + 0x11),sVar1,uVar5 * 0x50,param_4);
    }
    break;
  case '\x02':
    iVar4 = (uint)*(byte *)(iVar8 + 0x11) * 0x50 + 0x36;
    iVar6 = (uint)*(byte *)(iVar8 + 0x34) * 8;
    bVar2 = *(byte *)((int)param_1 + iVar6 + iVar4);
    if (*(ushort *)(param_1 + 0x820) == (ushort)bVar2) {
      *(undefined1 *)(param_1 + 0x81f) = 3;
    }
    else {
      *(byte *)((int)param_1 + iVar6 + iVar4) = bVar2 + 1;
      ov08_02220064(param_1,*(byte *)(iVar8 + 0x34) + 1);
    }
    break;
  case '\x03':
    ov08_0221DBCC(*(undefined4 *)(iVar8 + 8),*(undefined2 *)(iVar8 + 0x22),
                  *(undefined1 *)(iVar8 + 0x33),*(undefined4 *)(iVar8 + 0xc));
    ov08_022201C0(param_1);
    *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
    return 0x11;
  case '\x04':
    uVar5 = (uint)*(byte *)(iVar8 + 0x11);
    piVar7 = param_1 + 5;
    if (*(short *)((int)param_1 + 0x207e) != (short)piVar7[uVar5 * 0x14]) {
      *(short *)(piVar7 + uVar5 * 0x14) = (short)piVar7[uVar5 * 0x14] + 1;
      ov08_0221F550(param_1,*(undefined1 *)(iVar8 + 0x11),uVar5 * 0x50,piVar7,param_4);
      ov08_022225A4(param_1);
    }
    *(undefined1 *)(param_1 + 0x81f) = 1;
  }
  return 0x17;
}

