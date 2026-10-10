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
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 Heap_Alloc();
undefined4 Sprite_SetPriority();
undefined4 Sprite_CreateAffine();
undefined4 sub_0209428C();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 sub_02094150();
undefined4 sub_0209417C();
undefined4 Sprite_SetAnimCtrlSeq();

void sub_02093B84(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iStack_54;
  int iStack_50;
  undefined1 auStack_48 [8];
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  sub_02094150(auStack_48,param_1,1);
  uVar2 = Heap_Alloc(*(undefined4 *)(param_1 + 4),(uint)*(byte *)(param_1 + 0xd) << 3);
  iVar7 = 0;
  *(undefined4 *)(param_1 + 0x46a4) = uVar2;
  if (*(char *)(param_1 + 0xd) != '\0') {
    cVar1 = ' ';
    iVar5 = 0;
    iStack_50 = 0;
    iStack_54 = 0x2c;
    iVar4 = param_1;
    do {
      *(char *)(*(int *)(param_1 + 0x46a4) + iVar5) = cVar1;
      *(char *)(*(int *)(param_1 + 0x46a4) + iVar5 + 2) =
           *(char *)(*(int *)(param_1 + 0x46a4) + iVar5) + '\x18';
      *(undefined1 *)(*(int *)(param_1 + 0x46a4) + iVar5 + 1) = 0xc0;
      iVar3 = *(int *)(param_1 + 0x46a4) + iVar5;
      *(char *)(iVar3 + 3) = *(char *)(iVar3 + 1) + ' ';
      *(undefined4 *)(*(int *)(param_1 + 0x46a4) + iVar5 + 4) = 0;
      uStack_40 = 0xd4000;
      iStack_3c = (iStack_50 + 0x28) * 0x1000;
      if (*(int *)(iVar4 + 0x7e8) == 0) {
        uVar2 = Sprite_CreateAffine(auStack_48);
        *(undefined4 *)(iVar4 + 0x7e8) = uVar2;
      }
      Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar4 + 0x7e8),1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar4 + 0x7e8),iVar7 + 0x27);
      Sprite_SetPriority(*(undefined4 *)(iVar4 + 0x7e8),1);
      Sprite_SetDrawFlag(*(undefined4 *)(iVar4 + 0x7e8),0);
      Sprite_SetDrawPriority(*(undefined4 *)(iVar4 + 0x7e8),6);
      sub_0209428C(*(int *)(param_1 + 0x7e4) + (iVar7 + 0x21) * 4,0xd4,iStack_54,0x18,0x18);
      iVar7 = iVar7 + 1;
      cVar1 = cVar1 + '(';
      iVar5 = iVar5 + 8;
      iStack_50 = iStack_50 + 0x28;
      iVar4 = iVar4 + 0x34;
      iStack_54 = iStack_54 + 0x28;
    } while (iVar7 < (int)(uint)*(byte *)(param_1 + 0xd));
  }
  uVar6 = 0;
  if (iVar7 < 3) {
    iVar4 = iVar7 * 0x28 + 0x2c;
    do {
      uVar2 = sub_0209417C(param_1,0xd4,iVar4,0x2f,1);
      iVar5 = uVar6 * 4;
      uVar6 = uVar6 + 1 & 0xff;
      iVar7 = iVar7 + 1;
      iVar4 = iVar4 + 0x28;
      *(undefined4 *)(param_1 + iVar5 + 0x8c8) = uVar2;
    } while (iVar7 < 3);
  }
  *(undefined1 *)(param_1 + 0x46a8) = 0x20;
  *(undefined1 *)(param_1 + 0x46aa) = 0x97;
  *(undefined1 *)(param_1 + 0x46a9) = 8;
  *(undefined1 *)(param_1 + 0x46ab) = 0x97;
  *(undefined4 *)(param_1 + 0x46ac) = 0;
  return;
}

