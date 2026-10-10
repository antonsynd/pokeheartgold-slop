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
undefined4 ov112_021F1584();
undefined4 ov112_021F1488();
undefined4 ov112_021F13CC();
undefined4 ov112_021F13BC();
undefined4 ov112_021F1504();
undefined4 FontID_String_GetCenterAlignmentX();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 String_Delete();
undefined4 ov112_021F15CC();
undefined4 GetWindowWidth();

void ov112_021F1624(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  
  iVar5 = *(int *)(param_1 + (uint)*(byte *)(param_1 + 0x13d) * 4 + 0xc0);
  uVar2 = *(undefined4 *)(param_1 + 0x124);
  uVar3 = *(undefined4 *)(param_1 + 0x128);
  iVar4 = *(int *)(param_1 + 0x130);
  if (iVar4 < 0xc) {
    uVar6 = 0x57;
    if (iVar4 == 0) {
      iVar4 = 0xc;
    }
  }
  else {
    uVar6 = 0x58;
    iVar4 = iVar4 + -0xc;
    if (iVar4 == 0) {
      iVar4 = 0xc;
    }
  }
  ov112_021F1488(param_1,*(undefined4 *)(param_1 + 8),0,9);
  ov112_021F1584(param_1,iVar5 + 0x20,1,*(undefined2 *)(iVar5 + 10));
  ov112_021F1488(param_1,iVar5 + 0x10,2,9);
  ov112_021F1584(param_1,iVar5 + 0x36,3,*(undefined2 *)(iVar5 + 0xc));
  ov112_021F1504(param_1,*(undefined2 *)(iVar5 + 0xe));
  ov112_021F1584(param_1,iVar5 + 0x36,5,*(undefined2 *)(iVar5 + 0xc));
  ov112_021F15CC(param_1,6,iVar4,2,0);
  ov112_021F15CC(param_1,7,*(undefined2 *)(iVar5 + 0x78),5,0);
  ov112_021F1488(param_1,iVar5 + 0x4c,8,0x15);
  ov112_021F15CC(param_1,9,uVar2,2,0);
  ov112_021F15CC(param_1,10,uVar3,2,0);
  ov112_021F13CC(param_1,param_2,param_3);
  ov112_021F15CC(param_1,9,uVar2,2,1);
  ov112_021F15CC(param_1,10,uVar3,2,1);
  ov112_021F13BC(param_1,0,0x56,0);
  ov112_021F15CC(param_1,6,iVar4,2,1);
  uVar2 = ReadMsgData_ExpandPlaceholders
                    (*(undefined4 *)(param_1 + 0x58),*(undefined4 *)(param_1 + 0x5c),uVar6,
                     *(undefined4 *)(param_1 + 4));
  iVar4 = GetWindowWidth(param_1 + 0x28);
  uVar1 = FontID_String_GetCenterAlignmentX(1,uVar2,0,iVar4 << 3);
  String_Delete(uVar2);
  ov112_021F13BC(param_1,1,uVar6,uVar1);
  return;
}

