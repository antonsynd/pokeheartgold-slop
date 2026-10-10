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
undefined4 ov07_0221C4C0(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C528(undefined4);
undefined4 Sprite_DeleteAndFreeResources(void);
undefined4 ov07_0222202C(undefined4, undefined4);
undefined4 ov07_02221F80(undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0223192C(undefined4, undefined4);

void ov07_02230994(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  puVar1 = (undefined4 *)ov07_022324D8(param_1,0x30);
  *puVar1 = param_1;
  uVar2 = ov07_0221C528(param_1);
  puVar1[1] = uVar2;
  uVar2 = ov07_0221C468(param_1);
  iVar3 = ov07_0223192C(param_1,uVar2);
  if (iVar3 == 3) {
    uVar4 = ov07_0221C4C0(param_1,0);
    puVar1[0xb] = uVar4;
    ov07_0221C4C0(param_1,1);
    Sprite_DeleteAndFreeResources();
  }
  else {
    uVar4 = ov07_0221C4C0(param_1,1);
    puVar1[0xb] = uVar4;
    ov07_0221C4C0(param_1,0);
    Sprite_DeleteAndFreeResources();
  }
  iVar3 = ov07_02222004(param_1,uVar2);
  iVar5 = ov07_0222202C(param_1,uVar2);
  iVar6 = ov07_02221F80(param_1,uVar2,0);
  iVar7 = ov07_02221F80(param_1,uVar2,1);
  iVar6 = iVar6 + iVar3 * 0x40;
  iVar7 = iVar7 + iVar5 * -0x10;
  ManagedSprite_SetPositionXY(puVar1[0xb],iVar6 * 0x10000 >> 0x10,iVar7 * 0x10000 >> 0x10);
  ov07_02222268(puVar1 + 2,iVar6 * 0x10000 >> 0x10,(iVar6 + iVar3 * 0x30) * 0x10000 >> 0x10,
                iVar7 * 0x10000 >> 0x10,(iVar7 + iVar5 * -0x10) * 0x10000 >> 0x10,6);
  ov07_0221C410(*puVar1,0x2230961,puVar1);
  return;
}

