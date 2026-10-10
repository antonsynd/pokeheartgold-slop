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
undefined4 Sprite_SetPriority();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_CreateAffine();
undefined4 ov74_02231DDC();
undefined4 ov74_02231D48();

void ov74_02232154(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  undefined1 auStack_44 [8];
  int iStack_3c;
  int iStack_38;
  
  ov74_02231D48(auStack_44,param_1,param_1 + 0x184,1);
  iStack_50 = 0x28;
  iVar3 = 0;
  iStack_4c = 0;
  iVar5 = param_1 + 0x310;
  do {
    iStack_48 = 0;
    iVar4 = 0x1c;
    iVar1 = iStack_50 << 0xc;
    do {
      ov74_02231DDC(iVar5,iVar4,iStack_50,0x1c,0x1c,iVar1);
      iStack_3c = iVar4 << 0xc;
      iStack_38 = iVar1;
      if (*(int *)(param_1 + 0x1a8) == 0) {
        uVar2 = Sprite_CreateAffine(auStack_44);
        *(undefined4 *)(param_1 + 0x1a8) = uVar2;
      }
      Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x1a8),1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x1a8),iVar3 + 10);
      Sprite_SetPriority(*(undefined4 *)(param_1 + 0x1a8),1);
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1a8),1);
      Sprite_SetDrawPriority(*(undefined4 *)(param_1 + 0x1a8),iVar3 + 100);
      iStack_3c = iStack_3c + 0x6000;
      iStack_38 = iStack_38 + 0xc000;
      if (*(int *)(param_1 + 0x1ac) == 0) {
        uVar2 = Sprite_CreateAffine(auStack_44);
        *(undefined4 *)(param_1 + 0x1ac) = uVar2;
      }
      Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x1ac),1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x1ac),0x28);
      Sprite_SetPriority(*(undefined4 *)(param_1 + 0x1ac),1);
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1ac),0);
      Sprite_SetDrawPriority(*(undefined4 *)(param_1 + 0x1ac),iVar3);
      iVar3 = iVar3 + 1;
      iVar5 = iVar5 + 4;
      param_1 = param_1 + 0xc;
      if (iVar3 == 0x1e) {
        return;
      }
      iVar4 = iVar4 + 0x28;
      iStack_48 = iStack_48 + 1;
    } while (iStack_48 < 6);
    iStack_50 = iStack_50 + 0x18;
    iStack_4c = iStack_4c + 1;
    if (4 < iStack_4c) {
      return;
    }
  } while( true );
}

