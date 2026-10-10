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
undefined4 ov07_02222A44(undefined4, undefined4, undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 ov07_02231E08(undefined4, undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_02222AC4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C4E8(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov07_0221C514(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);

void ov07_0222DB14(undefined4 param_1)

{
  undefined2 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  
  puVar2 = (undefined4 *)ov07_022324D8(param_1,0x6c);
  *puVar2 = param_1;
  uVar3 = ov07_0221C514(param_1);
  puVar2[1] = uVar3;
  uVar3 = ov07_0221C468(*puVar2);
  iVar4 = ov07_02222004(*puVar2,uVar3);
  uVar3 = ov07_0221C468(param_1);
  uVar3 = ov07_0221FA48(*puVar2,uVar3);
  puVar2[4] = uVar3;
  uVar1 = Pokepic_GetAttr(uVar3,0);
  *(undefined2 *)(puVar2 + 6) = uVar1;
  uVar1 = Pokepic_GetAttr(puVar2[4],1);
  *(undefined2 *)((int)puVar2 + 0x1a) = uVar1;
  uVar1 = Pokepic_GetAttr(puVar2[4],0x29);
  *(undefined2 *)(puVar2 + 0x1a) = uVar1;
  *(short *)((int)puVar2 + 0x1a) = *(short *)((int)puVar2 + 0x1a) + 8;
  uVar3 = ov07_0221C4E8(*puVar2,0);
  puVar2[5] = uVar3;
  func_0x0200e0fc(uVar3,1);
  Pokepic_SetAttr(puVar2[4],6,1);
  ov07_02222A44(puVar2 + 7,2,0x10);
  ov07_02231E08(*puVar2,0x10,0);
  ov07_02222AC4(puVar2 + 0x10,0x10,0,0,0x10,0x20);
  puVar2[10] = iVar4 * puVar2[10];
  ov07_0221C410(*puVar2,0x222da61,puVar2);
  SpriteSystem_DrawSprites(puVar2[1]);
  return;
}

