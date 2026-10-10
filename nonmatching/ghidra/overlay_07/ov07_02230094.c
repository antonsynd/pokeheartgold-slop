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
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_0222202C(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 ManagedSprite_SetAnim(undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 SpriteSystem_NewSprite(undefined4, undefined4, undefined4);

void ov07_02230094(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined1 auStack_4c [52];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar3 = (undefined4 *)ov07_022324D8(param_1,0x278);
  *puVar3 = param_1;
  puVar3[1] = param_2;
  puVar3[2] = param_3;
  uVar4 = ov07_0221C468(param_1);
  uVar4 = ov07_0221FA48(*puVar3,uVar4);
  sVar1 = Pokepic_GetAttr(uVar4,0);
  sVar2 = Pokepic_GetAttr(uVar4,1);
  ov07_0221F9E8(auStack_4c,param_1);
  iVar5 = 0;
  puVar6 = puVar3;
  do {
    if (iVar5 == 0) {
      puVar6[6] = param_4;
    }
    else {
      uVar4 = SpriteSystem_NewSprite(puVar3[1],puVar3[2],auStack_4c);
      puVar6[6] = uVar4;
    }
    func_0x0200dd68(puVar6[6],100);
    func_0x0200dd54(puVar6[6],1);
    func_0x0200df98(puVar6[6],2);
    ManagedSprite_SetDrawFlag(puVar6[6],0);
    ManagedSprite_SetPositionXY(puVar6[6],(int)sVar1,(int)sVar2);
    func_0x020f2998(iVar5,3);
    ManagedSprite_SetAnim(puVar6[6]);
    iVar5 = iVar5 + 1;
    puVar6 = puVar6 + 1;
  } while (iVar5 < 0xf);
  uVar4 = ov07_0221C468(*puVar3);
  uVar4 = ov07_02222004(*puVar3,uVar4);
  puVar3[4] = uVar4;
  uVar4 = ov07_0221C468(*puVar3);
  uVar4 = ov07_0222202C(*puVar3,uVar4);
  puVar3[5] = uVar4;
  ov07_0221C410(*puVar3,0x2230059,puVar3);
  return;
}

