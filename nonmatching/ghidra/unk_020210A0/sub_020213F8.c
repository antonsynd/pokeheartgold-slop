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
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
extern uint uRam021d219c __asm__("sub_021D219C");
extern uint uRam021d21ec __asm__("sub_021D21EC");
extern uint uRam021d21a0 __asm__("sub_021D21A0");
extern int iRam021d2198 __asm__("sub_021D2198");

uint sub_020213F8(int param_1,int param_2,uint param_3)

{
  int iVar1;
  uint uVar2;
  uint extraout_r1;
  undefined2 *puVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;

  uVar5 = 0;
  if (uRam021d21a0 != 0) {
    do {
      iVar1 = (int)((uVar5 + (param_2 - uRam021d21a0) + 1) * 0x10000) >> 0x10;
      if (iVar1 < 0) {
        iVar1 = (iVar1 + 9) * 0x10000 >> 0x10;
      }
      iVar1 = iVar1 * 8;
      if ((*(short *)(iVar1 + 0x21d21a8) == 1) && (*(short *)(iVar1 + 0x21d21aa) == 0)) {
        puVar3 = (undefined2 *)(iRam021d2198 + uRam021d21ec * 8);
        uVar4 = (uint)*(ushort *)(iVar1 + 0x21d21a4);
        uVar2 = (uint)(ushort)puVar3[-4];
        if (uVar2 < uVar4) {
          uVar2 = uVar4 - uVar2;
        }
        else {
          uVar2 = uVar2 - uVar4;
        }
        uVar4 = (uint)*(ushort *)(iVar1 + 0x21d21a6);
        uVar6 = (uint)(ushort)puVar3[-3];
        if (uVar6 < uVar4) {
          uVar6 = uVar4 - uVar6;
        }
        else {
          uVar6 = uVar6 - uVar4;
        }
        if ((param_3 <= uVar2) || (param_3 <= uVar6)) {
          *puVar3 = *(undefined2 *)(iVar1 + 0x21d21a4);
          puVar3[1] = *(undefined2 *)(iVar1 + 0x21d21a6);
          puVar3[2] = *(undefined2 *)(iVar1 + 0x21d21a8);
          puVar3[3] = *(undefined2 *)(iVar1 + 0x21d21aa);
          uRam021d21ec = uRam021d21ec + 1;
          if (uRam021d219c <= uRam021d21ec) {
            if (param_1 != 1) {
              return 0xffffffff;
            }
            func_0x020f2ba4();
            uRam021d21ec = extraout_r1;
          }
        }
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 < uRam021d21a0);
  }
  return uRam021d21ec;
}

