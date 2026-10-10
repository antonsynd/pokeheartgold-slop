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
undefined4 ManagedSprite_SetAnim();
undefined4 ov89_0225A260();
undefined4 func_0x0200dc0c() __asm__("sub_0200DC0C");
undefined4 NewString_ReadMsgData();
undefined4 SpriteSystem_NewSprite();
undefined4 String_Delete();
undefined4 func_0x020137c0() __asm__("sub_020137C0");
extern undefined ov89_0225CB08;
extern undefined ov89_0225CB3C;
extern undefined ov89_0225CB70;

void ov89_02259588(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  short *psVar4;
  short sVar5;
  undefined4 *puVar6;
  int iVar7;
  short asStack_48 [2];
  int aiStack_44 [12];

  puVar6 = (undefined4 *)&ov89_0225CB08;
  psVar4 = asStack_48;
  iVar3 = 6;
  do {
    uVar1 = *puVar6;
    uVar2 = puVar6[1];
    puVar6 = puVar6 + 2;
    *(undefined4 *)psVar4 = uVar1;
    *(undefined4 *)(psVar4 + 2) = uVar2;
    psVar4 = psVar4 + 4;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  iVar7 = 0;
  *(undefined4 *)psVar4 = *puVar6;
  sVar5 = 0x10;
  iVar3 = param_1;
  do {
    asStack_48[1] = 0xb0;
    asStack_48[0] = sVar5;
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20),asStack_48);
    *(undefined4 *)(iVar3 + 0x924) = uVar1;
    ManagedSprite_SetAnim(*(undefined4 *)(iVar3 + 0x924),iVar7);
    func_0x0200dc0c(**(undefined4 **)(iVar3 + 0x924));
    iVar7 = iVar7 + 1;
    sVar5 = sVar5 + 0x20;
    iVar3 = iVar3 + 4;
  } while (iVar7 < 6);
  puVar6 = (undefined4 *)&ov89_0225CB3C;
  psVar4 = asStack_48;
  iVar3 = 6;
  do {
    uVar1 = *puVar6;
    uVar2 = puVar6[1];
    puVar6 = puVar6 + 2;
    *(undefined4 *)psVar4 = uVar1;
    *(undefined4 *)(psVar4 + 2) = uVar2;
    psVar4 = psVar4 + 4;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  iVar7 = 0;
  *(undefined4 *)psVar4 = *puVar6;
  sVar5 = 0x10;
  iVar3 = param_1;
  do {
    asStack_48[1] = 0xb0;
    asStack_48[0] = sVar5;
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20),asStack_48);
    *(undefined4 *)(iVar3 + 0x93c) = uVar1;
    ManagedSprite_SetAnim(*(undefined4 *)(iVar3 + 0x93c),iVar7);
    func_0x0200dc0c(**(undefined4 **)(iVar3 + 0x93c));
    iVar7 = iVar7 + 1;
    sVar5 = sVar5 + 0x20;
    iVar3 = iVar3 + 4;
  } while (iVar7 < 6);
  puVar6 = (undefined4 *)&ov89_0225CB70;
  psVar4 = asStack_48;
  iVar3 = 6;
  do {
    uVar1 = *puVar6;
    uVar2 = puVar6[1];
    puVar6 = puVar6 + 2;
    *(undefined4 *)psVar4 = uVar1;
    *(undefined4 *)(psVar4 + 2) = uVar2;
    psVar4 = psVar4 + 4;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  iVar7 = 0;
  *(undefined4 *)psVar4 = *puVar6;
  sVar5 = 0x10;
  iVar3 = param_1;
  do {
    asStack_48[1] = 0xb0;
    aiStack_44[4] = iVar7 + 0x2711;
    asStack_48[0] = sVar5;
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20),asStack_48);
    *(undefined4 *)(iVar3 + 0x954) = uVar1;
    func_0x0200dc0c(**(undefined4 **)(iVar3 + 0x954));
    iVar7 = iVar7 + 1;
    sVar5 = sVar5 + 0x20;
    iVar3 = iVar3 + 4;
  } while (iVar7 < 6);
  uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x30),1);
  ov89_0225A260(param_1,param_1 + 0x19c0,uVar1,2,0x10203,0,0x2713,0xe0,0xb0,1);
  func_0x020137c0(*(undefined4 *)(param_1 + 0x19c0),1);
  String_Delete(uVar1);
  return;
}

