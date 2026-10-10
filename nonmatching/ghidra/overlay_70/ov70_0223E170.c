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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawFlag();
undefined4 func_0x0206ddd8() __asm__("sub_0206DDD8");
undefined4 ItemIdIsMail();
undefined4 GetBoxMonData();
undefined4 ov70_0223E0BC();
undefined4 func_0x0206de00() __asm__("sub_0206DE00");

void ov70_0223E170(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined2 *param_4,
                  undefined4 param_5,undefined4 param_6,undefined2 *param_7,int param_8)

{
  char cVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  
  func_0x0206ddd8();
  iVar3 = GetBoxMonData(param_1,0xac,0);
  uVar2 = GetBoxMonData(param_1,5,0);
  *param_4 = uVar2;
  uVar4 = GetBoxMonData(param_1,0x70,0);
  iVar5 = GetBoxMonData(param_1,0x4c,0);
  uVar6 = GetBoxMonData(param_1,6,0);
  *param_7 = *param_4;
  cVar1 = GetBoxMonData(param_1,0x6f,0);
  *(char *)(param_7 + 1) = cVar1 + '\x01';
  if (iVar5 != 0) {
    *(undefined1 *)((int)param_7 + 3) = 0;
  }
  func_0x0206de00(param_1,1);
  if (iVar3 == 0) {
    Sprite_SetDrawFlag(param_2,0);
    Sprite_SetDrawFlag(param_3,0);
    *(undefined4 *)(param_8 + 8) = 0;
    return;
  }
  ov70_0223E0BC(*param_4,uVar4,iVar5,param_5,param_2,param_6,param_8);
  Sprite_SetDrawFlag(param_2,1);
  if (uVar6 == 0) {
    Sprite_SetDrawFlag(param_3,0);
    return;
  }
  Sprite_SetDrawFlag(param_3,1);
  iVar3 = ItemIdIsMail(uVar6 & 0xffff);
  if (iVar3 != 0) {
    Sprite_SetAnimCtrlSeq(param_3,0x29);
    return;
  }
  Sprite_SetAnimCtrlSeq(param_3,0x28);
  return;
}

