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
undefined4 func_0x0223a880(undefined4, undefined4, undefined4) __asm__("sub_0223A880");
undefined4 ov08_02220224(undefined4);
undefined4 PlaySE(undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 ov08_02220064(undefined4, undefined4, undefined4);

undefined4 ov08_0221CC38(int *param_1)

{
  char cVar1;
  undefined2 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int iStack_20;
  
  iVar3 = *param_1;
  cVar1 = (char)param_1[0x81f];
  if (cVar1 == '\0') {
    iVar6 = func_0x0223a880(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0x28),
                            *(undefined1 *)(iVar3 + (uint)*(byte *)(iVar3 + 0x11) + 0x2c));
    uVar4 = 0;
    iVar5 = 0;
    param_1[(uint)*(byte *)(iVar3 + 0x11) * 0x14 + 1] = iVar6;
    piVar7 = param_1;
    do {
      if (*(short *)((int)param_1 + iVar5 + (uint)*(byte *)(iVar3 + 0x11) * 0x50 + 0x34) != 0) {
        uVar2 = GetMonData(param_1[(uint)*(byte *)(iVar3 + 0x11) * 0x14 + 1],uVar4 + 0x3a,0);
        *(undefined2 *)(piVar7 + 0x820) = uVar2;
      }
      uVar4 = uVar4 + 1;
      iVar5 = iVar5 + 8;
      piVar7 = (int *)((int)piVar7 + 2);
    } while (uVar4 < 4);
    ov08_02220224(param_1);
    PlaySE(0x5ec);
    *(undefined1 *)(param_1 + 0x81f) = 1;
  }
  else if (cVar1 == '\x01') {
    iVar6 = 0;
    uVar4 = 0;
    iStack_20 = 0;
    piVar7 = param_1;
    do {
      iVar5 = iStack_20 + (uint)*(byte *)(iVar3 + 0x11) * 0x50;
      if (*(short *)((int)param_1 + iVar5 + 0x34) == 0) {
        iVar6 = iVar6 + 1;
      }
      else if (*(ushort *)(piVar7 + 0x820) == (ushort)*(byte *)((int)param_1 + iVar5 + 0x36)) {
        iVar6 = iVar6 + 1;
      }
      else {
        *(char *)((int)param_1 + iVar5 + 0x36) = *(char *)((int)param_1 + iVar5 + 0x36) + '\x01';
        ov08_02220064(param_1,uVar4 + 1 & 0xffff,uVar4 & 0xffff);
      }
      uVar4 = uVar4 + 1;
      iStack_20 = iStack_20 + 8;
      piVar7 = (int *)((int)piVar7 + 2);
    } while (uVar4 < 4);
    if (iVar6 == 4) {
      *(undefined1 *)(param_1 + 0x81f) = 2;
    }
  }
  else if (cVar1 == '\x02') {
    ov08_0221DBCC(*(undefined4 *)(iVar3 + 8),*(undefined2 *)(iVar3 + 0x22),
                  *(undefined1 *)(iVar3 + 0x33),*(undefined4 *)(iVar3 + 0xc));
    ov08_022201C0(param_1);
    *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
    return 0x11;
  }
  return 0x18;
}

