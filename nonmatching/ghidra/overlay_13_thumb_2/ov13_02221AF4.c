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
undefined4 ov13_022208E8();
undefined4 ov13_022214B8();
undefined4 ov13_02222968();
undefined4 ov13_02222A44();
undefined4 ov13_02222A84();
undefined4 ov13_02222A9C();
undefined4 ov13_022227A0();
undefined4 ov13_022214AC();
undefined4 ov13_02221BE8();
undefined4 ov13_022208F8();
undefined4 ov13_022225B0();
extern undefined ov13_02245A20;

int ov13_02221AF4(int param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  undefined1 auStack_1c [8];
  
  ov13_02222968(auStack_1c,param_1 + 0x10,8);
  uVar2 = ov13_02222A9C(&ov13_02245A20);
  iVar3 = ov13_022227A0(auStack_1c,8,&ov13_02245A20,uVar2);
  if (iVar3 == -1) {
    ov13_022214AC(2);
    return -100;
  }
  uVar2 = ov13_02222A84(*(undefined2 *)(param_1 + 6));
  iVar3 = ov13_02221BE8(uVar2,auStack_1c);
  if (iVar3 == 0) {
    iVar3 = ov13_02222A84(*(undefined2 *)(param_1 + 6));
    if (iVar3 == 0x1000) {
      ov13_02222968(0x224dcf8,auStack_1c,8);
    }
    uVar4 = ov13_02222A84(*(undefined2 *)(param_1 + 0xc));
    if ((uVar4 & 0xf) == 0) {
      return 0;
    }
    uVar4 = ov13_02222A84(*(undefined2 *)(param_1 + 0x18));
    iVar3 = ov13_022208E8();
    if (iVar3 == 0) {
      ov13_022214AC(2);
      return 100;
    }
    iVar5 = ov13_022225B0(param_1 + 0x1c,iVar3,uVar4,*(undefined1 *)(param_1 + 0xe),param_1 + 0x1a,
                          0x224dcf8,8);
    if (iVar5 < 0) {
      ov13_022208F8(iVar3);
      iVar3 = ov13_022214B8();
      if (iVar3 == 2) {
        return 100;
      }
      return 200;
    }
    ov13_02222968((undefined2 *)(param_1 + 0x18),iVar3,uVar4);
    uVar1 = ov13_02222A44(uVar4 & 0xffff);
    *(undefined2 *)(param_1 + 10) = uVar1;
    ov13_022208F8(iVar3);
    iVar3 = 0;
  }
  return iVar3;
}

