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
undefined4 ov74_02233C08();
undefined4 ov74_02233AB8();
undefined4 ov74_02233A88();
undefined4 ov74_02233ACC();
undefined4 ov74_02233B04();
undefined4 MIi_CpuCopy32(void *, void *, unsigned int);
extern uint  uRam0223d33c __asm__("sub_0223D33C");
extern uint * puRam0223d344 __asm__("sub_0223D344");
extern uint  uRam0223d34c __asm__("sub_0223D34C");
extern int  iRam0223d348 __asm__("sub_0223D348");

undefined4 ov74_02233CE4(void)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined *puVar5;
  undefined4 in_r3;
  uint uVar6;
  __asm__ volatile("movs %0, r3" : "=l"(in_r3) : : "cc");


  iVar2 = ov74_02233C08(puRam0223d344,0x223d33c,0x223d34c,in_r3,in_r3);
  puVar1 = puRam0223d344;
  if (iVar2 != 1) {
    if (iVar2 == 0) {
      return 7;
    }
    if (iVar2 == 2) {
      return 6;
    }
    if (iVar2 == 0xff) {
      return 5;
    }
  }
  if (1 < uRam0223d33c) {
    return 6;
  }
  uVar6 = 0;
  iVar2 = 0;
  do {
    ov74_02233AB8(iVar2 + uRam0223d33c * 0xe,puVar1);
    if (*(int *)(puVar1 + 0xff8) == 0x8012025) {
      uVar3 = ov74_02233ACC(*(undefined2 *)(puVar1 + 0xff4));
      uVar4 = ov74_02233A88(puVar1,uVar3);
      if (*(ushort *)(puVar1 + 0xff6) == uVar4) {
        uRam0223d34c = *(undefined4 *)(puVar1 + 0xffc);
        uVar6 = uVar6 | 1 << (*(ushort *)(puVar1 + 0xff4) & 0xff);
        uVar4 = ov74_02233ACC();
        puVar5 = (undefined *)ov74_02233B04(*(undefined2 *)(puVar1 + 0xff4));
        MIi_CpuCopy32(puVar1,puVar5,uVar4);
        if (*(short *)(puVar1 + 0xff4) == 0) {
          iRam0223d348 = iVar2;
        }
      }
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 < 0xe);
  if (uVar6 == 0x3fff) {
    return 0;
  }
  return 4;
}

