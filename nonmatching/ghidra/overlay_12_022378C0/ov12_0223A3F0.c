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
undefined4 GameStats_Inc();
undefined4 OverlayManager_GetArgs();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 sub_02039998();
undefined4 func_0x02028f68() __asm__("sub_02028F68");
undefined4 sub_0203769C();
undefined4 sub_020378AC();
undefined4 func_0x0221ba00() __asm__("sub_0221BA00");
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 Heap_Alloc();

undefined4 ov12_0223A3F0(void)

{
  uint *puVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  uint *puVar8;
  
  puVar1 = (uint *)OverlayManager_GetArgs();
  if ((((*puVar1 & 4) != 0) && ((puVar1[99] & 0x10) == 0)) && ((*puVar1 & 0x80) == 0)) {
    uVar2 = sub_0203769C();
    uVar2 = uVar2 & 0xff;
    func_0x02006ff8(5,2);
    piVar3 = (int *)Heap_Alloc(5,0x30);
    puVar1[0x66] = (uint)piVar3;
    func_0x020d4858(0,piVar3,0x30);
    *piVar3 = (int)puVar1;
    switch(puVar1[5]) {
    case 1:
      iVar7 = sub_02039998();
      if (iVar7 == 0) {
        GameStats_Inc(puVar1[0x51],0x16);
      }
      else {
        GameStats_Inc(puVar1[0x51],0x1b);
      }
      break;
    case 2:
      iVar7 = sub_02039998();
      if (iVar7 == 0) {
        GameStats_Inc(puVar1[0x51],0x17);
      }
      else {
        GameStats_Inc(puVar1[0x51],0x1c);
      }
      break;
    case 3:
    case 5:
      iVar7 = sub_02039998();
      if (iVar7 == 0) {
        GameStats_Inc(puVar1[0x51],0x18);
      }
      else {
        GameStats_Inc(puVar1[0x51],0x1d);
      }
    }
    if ((*puVar1 & 8) == 0) {
      iVar7 = sub_020378AC(uVar2);
      piVar3[iVar7 + 1] = puVar1[uVar2 + 1];
      uVar6 = uVar2 ^ 1;
      iVar7 = sub_020378AC();
      piVar3[iVar7 + 1] = puVar1[uVar6 + 1];
      iVar7 = sub_020378AC(uVar2);
      iVar4 = func_0x02028f68(puVar1[uVar2 + 0x3e],5);
      piVar3[iVar7 + 5] = iVar4;
      iVar7 = sub_020378AC(uVar6);
      iVar4 = func_0x02028f68(puVar1[uVar6 + 0x3e],5);
      piVar3[iVar7 + 5] = iVar4;
      piVar3[9] = 5;
      *(undefined1 *)(piVar3 + 10) = 2;
      *(undefined1 *)((int)piVar3 + 0x29) = 0;
      if (puVar1[5] == 5) {
        *(undefined1 *)((int)piVar3 + 0x2a) = 3;
      }
      else {
        *(char *)((int)piVar3 + 0x2a) = (char)puVar1[5];
      }
    }
    else {
      iVar7 = 0;
      puVar8 = puVar1;
      do {
        iVar4 = sub_020378AC(iVar7);
        piVar3[iVar4 + 1] = puVar8[1];
        iVar4 = sub_020378AC(iVar7);
        iVar5 = func_0x02028f68(puVar8[0x3e],5);
        iVar7 = iVar7 + 1;
        puVar8 = puVar8 + 1;
        piVar3[iVar4 + 5] = iVar5;
      } while (iVar7 < 4);
      piVar3[9] = 5;
      *(undefined1 *)(piVar3 + 10) = 2;
      *(undefined1 *)((int)piVar3 + 0x29) = 1;
      if (puVar1[5] == 5) {
        *(undefined1 *)((int)piVar3 + 0x2a) = 3;
      }
      else {
        *(char *)((int)piVar3 + 0x2a) = (char)puVar1[5];
      }
    }
    *(undefined1 *)(piVar3 + 0xb) = *(undefined1 *)((int)puVar1 + 0x1b2);
    func_0x0221ba00(piVar3);
    return 1;
  }
  return 0;
}

