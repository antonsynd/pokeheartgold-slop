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
undefined4 func_0x020708d8() __asm__("sub_020708D8");
undefined4 ov12_02261284();
undefined4 func_0x0206fe2c() __asm__("sub_0206FE2C");
undefined4 GetMonSpriteCharAndPlttNarcIdsEx();
undefined4 SysTask_CreateOnMainQueue();
undefined4 sub_02072A20();
undefined4 func_0x020729d8() __asm__("sub_020729D8");
undefined4 ov12_0223C140();
undefined4 BattleSystem_GetBattleType();
undefined4 sub_020729FC();
undefined4 Heap_Alloc();

void ov12_02259D48(undefined4 param_1,int param_2,undefined1 *param_3)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  undefined4 *puVar8;

  BattleSystem_GetBattleType();
  puVar2 = (undefined4 *)Heap_Alloc(5,0x9c);
  *(undefined1 *)((int)puVar2 + 0x83) = 0;
  if ((*(byte *)(param_2 + 0x195) & 1) == 0) {
    *(undefined1 *)(puVar2 + 0x21) = 0;
  }
  else {
    *(undefined1 *)(puVar2 + 0x21) = 2;
  }
  GetMonSpriteCharAndPlttNarcIdsEx
            (puVar2 + 5,*(undefined2 *)(param_3 + 2),param_3[1] & 3,*(undefined1 *)(puVar2 + 0x21),
             (int)((uint)(byte)param_3[1] << 0x1d) < 0,(byte)param_3[1] >> 3,
             *(undefined4 *)(param_3 + 4));
  uVar1 = func_0x020708d8(*(undefined2 *)(param_3 + 2),param_3[1] & 3,*(undefined1 *)(puVar2 + 0x21)
                          ,(byte)param_3[1] >> 3,*(undefined4 *)(param_3 + 4));
  *(undefined1 *)((int)puVar2 + 0x85) = uVar1;
  func_0x020729d8(*(undefined4 *)(param_2 + 0x1a4),puVar2 + 0x24,*(undefined2 *)(param_3 + 2));
  sub_020729FC(*(undefined4 *)(param_2 + 0x1a4),(int)puVar2 + 0x91,*(undefined2 *)(param_3 + 2));
  sub_02072A20(*(undefined4 *)(param_2 + 0x1a4),(int)puVar2 + 0x93,*(undefined2 *)(param_3 + 2));
  ov12_02261284(param_2);
  *puVar2 = param_1;
  puVar2[1] = param_2;
  *(undefined1 *)(puVar2 + 0x20) = *param_3;
  *(undefined1 *)((int)puVar2 + 0x81) = *(undefined1 *)(param_2 + 0x194);
  *(undefined2 *)((int)puVar2 + 0x86) = *(undefined2 *)(param_3 + 2);
  *(byte *)((int)puVar2 + 0x97) = (byte)param_3[1] >> 3;
  *(undefined1 *)((int)puVar2 + 0x82) = *(undefined1 *)(param_2 + 0x195);
  puVar2[0x22] = *(undefined4 *)(param_3 + 8);
  *(char *)(puVar2 + 0x23) = (char)*(undefined4 *)(param_3 + 0xc);
  uVar1 = func_0x0206fe2c(*(undefined4 *)(param_3 + 4));
  *(undefined1 *)((int)puVar2 + 0x8d) = uVar1;
  *(short *)((int)puVar2 + 0x8e) = (short)*(undefined4 *)(param_3 + 0x10);
  *(char *)((int)puVar2 + 0x92) = (char)(((byte)param_3[1] & 7) >> 2);
  *(short *)(puVar2 + 0x25) = (short)*(undefined4 *)(param_3 + 0x14);
  iVar3 = 0;
  *(undefined1 *)((int)puVar2 + 0x96) = 0;
  puVar2[0x26] = *(undefined4 *)(param_3 + 0x4c);
  puVar5 = puVar2;
  puVar7 = param_3;
  puVar8 = puVar2;
  puVar6 = param_3;
  do {
    *(undefined2 *)(puVar8 + 0x10) = *(undefined2 *)(puVar6 + 0x50);
    *(undefined1 *)((int)puVar2 + iVar3 + 0x48) = param_3[iVar3 + 0x58];
    *(undefined1 *)((int)puVar2 + iVar3 + 0x4c) = param_3[iVar3 + 0x5c];
    *(undefined1 *)((int)puVar2 + iVar3 + 0x50) = param_3[iVar3 + 0x60];
    iVar3 = iVar3 + 1;
    puVar5[0x15] = *(undefined4 *)(puVar7 + 100);
    puVar6 = puVar6 + 2;
    puVar8 = (undefined4 *)((int)puVar8 + 2);
    puVar7 = puVar7 + 4;
    puVar5 = puVar5 + 1;
  } while (iVar3 < 4);
  uVar4 = ov12_0223C140(param_1,*(undefined1 *)(param_2 + 0x194));
  if ((uVar4 != 0xff) && (uVar4 == *(byte *)(puVar2 + 0x23))) {
    SysTask_CreateOnMainQueue(0x225c6c9,puVar2,0);
    return;
  }
  SysTask_CreateOnMainQueue(0x225c18d,puVar2,0);
  return;
}

