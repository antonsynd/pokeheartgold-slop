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
undefined4 ManagedSprite_SetAnimateFlag(void *, int);
void * SpriteSystem_NewSpriteWithYOffset(void *, void *, void *, int);
undefined4 GF_AssertFail(void);

undefined *
ov96_02219E00(undefined *param_1,undefined *param_2,undefined2 param_3,undefined4 param_4,
             undefined2 param_5,ushort param_6)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  uint auStack_44 [11];
  undefined4 uStack_18;
  
  puVar6 = (undefined4 *)0x221d944;
  puVar5 = &uStack_4c;
  iVar4 = 6;
  uStack_18 = param_4;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar5 = uVar1;
    puVar5[1] = uVar3;
    puVar5 = puVar5 + 2;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  *puVar5 = *puVar6;
  if (param_1 == (undefined *)0x0) {
    GF_AssertFail();
  }
  if (param_2 == (undefined *)0x0) {
    GF_AssertFail();
  }
  (*(ushort *)((char *)&uStack_4c + 2)) = (undefined2)param_4;
  (*(ushort *)((char *)&uStack_48 + 2)) = param_5;
  auStack_44[0] = (uint)param_6;
  (*(ushort *)((char *)&uStack_4c + 0)) = param_3;
  puVar2 = SpriteSystem_NewSpriteWithYOffset(param_1,param_2,(undefined *)&uStack_4c,0x1e0000);
  ManagedSprite_SetAnimateFlag(puVar2,1);
  return puVar2;
}

