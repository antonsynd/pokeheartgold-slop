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
undefined4 ov13_02226D0C();
undefined4 ov13_02224694();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
extern undefined4 uRam0224e38c __asm__("sub_0224E38C");
extern undefined4 uRam0224e29c __asm__("sub_0224E29C");
extern undefined4 uRam0224e388 __asm__("sub_0224E388");
extern undefined4 uRam0224e380 __asm__("sub_0224E380");
extern undefined4 uRam0224e2b0 __asm__("sub_0224E2B0");
extern undefined4 uRam0224e288 __asm__("sub_0224E288");
extern int uRam0224e2b4 __asm__("sub_0224E2B4");
extern int iRam0224e2e0 __asm__("sub_0224E2E0");
extern undefined4 uRam0224e294 __asm__("sub_0224E294");
extern undefined4 uRam0224e290 __asm__("sub_0224E290");
extern undefined4 uRam0224e28c __asm__("sub_0224E28C");
extern undefined4 uRam0224e2a0 __asm__("sub_0224E2A0");
extern undefined4 uRam0224e298 __asm__("sub_0224E298");
extern undefined4 uRam0224e384 __asm__("sub_0224E384");
extern char uRam0224e284 __asm__("sub_0224E284");
extern undefined4 uRam0224e3c0 __asm__("sub_0224E3C0");
extern undefined4 uRam0224e3b0 __asm__("sub_0224E3B0");
extern undefined4 uRam0224e3b4 __asm__("sub_0224E3B4");
extern undefined4 uRam0224e394 __asm__("sub_0224E394");
extern undefined4 uRam0224e398 __asm__("sub_0224E398");
extern undefined4 uRam0224e3a4 __asm__("sub_0224E3A4");
extern undefined4 uRam0224e3a8 __asm__("sub_0224E3A8");
extern undefined4 uRam0224e3a0 __asm__("sub_0224E3A0");
extern undefined4 uRam0224e3ac __asm__("sub_0224E3AC");
extern undefined4 uRam0224e39c __asm__("sub_0224E39C");
extern undefined4 uRam0224e390 __asm__("sub_0224E390");
extern undefined4 uRam0224e3c4 __asm__("sub_0224E3C4");
extern undefined4 uRam0224e3b8 __asm__("sub_0224E3B8");
extern undefined4 uRam0224e3bc __asm__("sub_0224E3BC");

undefined4 ov13_02224B2C(ushort *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  uint uVar2;
  ushort *puVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  int iVar7;
  undefined4 uStack_30;
  int iStack_24;
  int iStack_20;
  ushort *puStack_1c;
  undefined4 uStack_18;
  
  puVar5 = param_1 + 4;
  uStack_30 = 0;
  uVar2 = (*param_1 & 0xff) << 8 | (int)(uint)*param_1 >> 8;
  puStack_1c = puVar5;
  uStack_18 = param_4;
  puVar3 = (ushort *)ov13_02224694(&puStack_1c,(int)puVar5 + uVar2,&iStack_20,&iStack_24);
  while (puVar3 != (ushort *)0x0) {
    switch(iStack_20) {
    case 0x201:
      uRam0224e284 = 0;
      uRam0224e288 = 0;
      uRam0224e28c = 0;
      uRam0224e290 = 0;
      uRam0224e294 = 0;
      uRam0224e298 = 0;
      uRam0224e29c = 0;
      uRam0224e2a0 = 0;
      func_0x020e5ad8(0x224e284,puVar3,iStack_24);
      uStack_30 = 1;
      break;
    case 0x202:
      uRam0224e2b0 = (*puVar3 & 0xff) << 8 | (int)(uint)*puVar3 >> 8;
      break;
    case 0x203:
      uVar1 = *puVar3;
      iVar7 = 0x224e184;
      iVar6 = 0;
      do {
        iVar6 = iVar6 + 1;
        *(uint *)(iVar7 + 0x15c) = (uVar1 & 0xff) << 8 | (int)(uint)uVar1 >> 8;
        iVar7 = iVar7 + 0x28;
      } while (iVar6 < 4);
      break;
    case 0x204:
      uVar1 = *puVar3;
      iVar6 = 0x224e184;
      iVar7 = 0;
      do {
        iVar7 = iVar7 + 1;
        *(uint *)(iVar6 + 0x160) = (uVar1 & 0xff) << 8 | (int)(uint)uVar1 >> 8;
        iVar6 = iVar6 + 0x28;
      } while (iVar7 < 4);
      break;
    case 0x205:
      uRam0224e2b4 = (*puVar3 & 0xff) << 8 | (int)(uint)*puVar3 >> 8;
      break;
    case 0x206:
    case 0x207:
    case 0x208:
    case 0x209:
      func_0x020e5b44((iStack_20 + -0x206) * 0x28 + 0x224e2e8,0,0x20);
      if (iRam0224e2e0 == 1) {
        iVar6 = (iStack_20 + -0x206) * 0x28 + 0x224e2e8;
        iVar7 = 0;
        if (0 < iStack_24) {
          do {
            uVar1 = *puVar3;
            puVar3 = (ushort *)((int)puVar3 + 1);
            iVar4 = ov13_02226D0C(iVar6,(int)(char)uVar1);
            iVar6 = iVar6 + iVar4;
            iVar7 = iVar7 + 1;
          } while (iVar7 < iStack_24);
        }
      }
      else {
        func_0x020e5ad8((iStack_20 + -0x206) * 0x28 + 0x224e2e8,puVar3,iStack_24);
      }
      break;
    case 0x20a:
      uRam0224e380 = 0;
      uRam0224e384 = 0;
      uRam0224e388 = 0;
      uRam0224e38c = 0;
      uRam0224e390 = 0;
      uRam0224e394 = 0;
      uRam0224e398 = 0;
      uRam0224e39c = 0;
      uRam0224e3a0 = 0;
      uRam0224e3a4 = 0;
      uRam0224e3a8 = 0;
      uRam0224e3ac = 0;
      uRam0224e3b0 = 0;
      uRam0224e3b4 = 0;
      uRam0224e3b8 = 0;
      uRam0224e3bc = 0;
      uRam0224e3c0 = 0;
      uRam0224e3c4 = 0;
      func_0x020e5ad8(0x224e380,puVar3,iStack_24);
    }
    puVar3 = (ushort *)ov13_02224694(&puStack_1c,(int)puVar5 + uVar2,&iStack_20,&iStack_24);
  }
  return uStack_30;
}

