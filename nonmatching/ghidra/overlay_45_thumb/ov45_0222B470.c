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
undefined4 ov45_0222C9A0();
undefined4 ov45_0222AFF8();
undefined4 ov45_0222EAD4();
undefined4 ov45_0222B020();
undefined4 ov45_0222D8D4();
undefined4 ov45_0222D8F0();
undefined4 ov45_0222C944();
undefined4 ov45_0222BDB0();
undefined4 ov45_0222CBD0();
undefined4 ov45_0222BA3C();
undefined4 ov45_0222BD5C();
undefined4 ov45_0222EC68();
undefined4 ov45_0222BDE8();
undefined4 ov45_0222E9E0();

void ov45_0222B470(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  
  iVar1 = ov45_0222E9E0();
  if (param_1 != iVar1) {
    iVar1 = ov45_0222EC68(param_1);
    iVar2 = ov45_0222AFF8(param_2);
    if ((iVar2 == 1) && (iVar2 = ov45_0222B020(param_2), iVar1 == iVar2)) {
      ov45_0222BD5C(param_2 + 0x1c0);
    }
    iVar2 = ov45_0222D8D4(*(undefined4 *)(param_2 + 4),iVar1);
    if (iVar2 != 0) {
      ov45_0222EAD4(param_1);
      uVar3 = ov45_0222EC68();
      ov45_0222D8F0(*(undefined4 *)(param_2 + 4),uVar3);
    }
    ov45_0222C944(param_2 + 0x3cc,iVar1,0);
    ov45_0222BDE8(param_2 + 0x1c0,iVar1);
    ov45_0222BDB0(param_2 + 0x1c0,iVar1);
    iVar2 = ov45_0222CBD0(param_2 + 0x4bc,param_1,0xffffffff);
    if (iVar2 != 0) {
      ov45_0222BA3C(param_2);
    }
    ov45_0222C9A0(param_2 + 0x3e4,iVar1,0,0);
    uVar4 = ov45_0222EC68(param_1);
    *(uint *)(param_2 + 0xfc) = *(uint *)(param_2 + 0xfc) | 1 << (uVar4 & 0xff);
  }
  return;
}

