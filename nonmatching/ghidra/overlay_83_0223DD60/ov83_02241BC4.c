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
undefined4 ov83_02240C6C();
undefined4 sub_0203769C();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 sub_02031108();
undefined4 sub_0205C174();
undefined4 ov83_0224776C();
undefined4 Save_Frontier_GetStatic();
undefined4 func_0x02237fa4() __asm__("sub_02237FA4");
undefined4 ov83_0224777C();
undefined4 ov83_022477C4();
undefined4 sub_0205C268();
undefined4 func_0x02237b24() __asm__("sub_02237B24");
extern undefined ov83_02247D48;
undefined4 ov83_02241730();
undefined4 ov83_02247944();
undefined4 ov83_02241770();
undefined4 Options_GetFrame();
undefined4 ov83_0223FD14();
extern undefined ov83_02247D5A;

void ov83_02241BC4(int param_1,uint param_2,int param_3)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint uVar7;
  
  func_0x02237b24(*(undefined1 *)(param_1 + 9),0);
  uVar2 = (uint)(param_3 != 4);
  uVar7 = (uint)*(byte *)(param_1 + 0x15);
  ov83_0224776C(uVar7,param_2);
  iVar3 = sub_0203769C();
  if (iVar3 == 0) {
    if (param_2 < uVar7) {
      ov83_02240C6C(param_1,5);
      iVar3 = ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),uVar2);
      func_0x02237fa4(*(undefined4 *)(param_1 + 4),*(undefined1 *)(param_1 + 9),
                      *(undefined2 *)(&ov83_02247D48 + iVar3 * 2 + uVar2 * 6));
      uVar7 = ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),uVar2);
      uVar4 = Save_Frontier_GetStatic(*(undefined4 *)(param_1 + 0x50c));
      uVar5 = sub_0205C174(*(undefined1 *)(param_1 + 9),uVar2);
      sub_0205C174(*(undefined1 *)(param_1 + 9),uVar2);
      uVar6 = sub_0205C268();
      sub_02031108(uVar4,uVar5,uVar6,uVar7 + 1 & 0xffff);
      iVar3 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
      if (iVar3 == 1) {
        if (param_3 == 4) {
          *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0x9f | 0x20;
        }
        else {
          *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0x9f | 0x40;
        }
      }
    }
    else {
      ov83_022477C4(*(undefined4 *)(param_1 + 0x24),5);
      iVar3 = param_1 + 0x7ff;
      uVar7 = (uint)*(byte *)(iVar3 + uVar2);
      *(short *)(param_1 + 0x802) =
           *(short *)(param_1 + 0x802) - *(short *)(&ov83_02247D48 + uVar7 * 2 + uVar2 * 6);
      *(char *)(iVar3 + uVar2) = *(char *)(iVar3 + uVar2) + '\x01';
    }
  }
  else if (param_2 < uVar7) {
    ov83_022477C4(*(undefined4 *)(param_1 + 0x24),5);
    iVar3 = param_1 + 0x7ff;
    uVar7 = (uint)*(byte *)(iVar3 + uVar2);
    *(short *)(param_1 + 0x802) =
         *(short *)(param_1 + 0x802) - *(short *)(&ov83_02247D48 + uVar7 * 2 + uVar2 * 6);
    *(char *)(iVar3 + uVar2) = *(char *)(iVar3 + uVar2) + '\x01';
  }
  else {
    ov83_02240C6C(param_1,5);
    iVar3 = ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),uVar2);
    func_0x02237fa4(*(undefined4 *)(param_1 + 4),*(undefined1 *)(param_1 + 9),
                    *(undefined2 *)(&ov83_02247D48 + iVar3 * 2 + uVar2 * 6));
    uVar7 = ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),uVar2);
    uVar4 = Save_Frontier_GetStatic(*(undefined4 *)(param_1 + 0x50c));
    uVar5 = sub_0205C174(*(undefined1 *)(param_1 + 9),uVar2);
    sub_0205C174(*(undefined1 *)(param_1 + 9),uVar2);
    uVar6 = sub_0205C268();
    sub_02031108(uVar4,uVar5,uVar6,uVar7 + 1 & 0xffff);
    iVar3 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
    if (iVar3 == 1) {
      if (param_3 == 4) {
        *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0x9f | 0x20;
      }
      else {
        *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0x9f | 0x40;
      }
    }
  }
  ov83_02241730(param_1);
  ov83_02241770(param_1,param_1 + 0x50);
  uVar4 = Options_GetFrame(*(undefined4 *)(param_1 + 0x508));
  ov83_02247944(param_1 + 0xb0,uVar4);
  uVar1 = ov83_0223FD14(param_1,*(undefined2 *)(&ov83_02247D5A + uVar7 * 2 + uVar2 * 6),1);
  *(undefined1 *)(param_1 + 10) = uVar1;
  return;
}

