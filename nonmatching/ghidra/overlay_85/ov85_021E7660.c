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
undefined4 sub_02069864();
undefined4 sub_020697DC();
undefined4 sub_02069884();
undefined4 sub_02069714();
undefined4 sub_020696C4();
extern undefined ov85_021EA580;
extern undefined ov85_021EA558;

void ov85_021E7660(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *puStack_20;
  undefined4 *puStack_1c;
  int iStack_18;
  
  sub_020696C4(param_1 + 400,0,*(undefined4 *)(param_1 + 0xd80),0,0x66,0);
  sub_02069714(param_1 + 400);
  sub_020696C4(param_1 + 0x1a4,0,*(undefined4 *)(param_1 + 0xd80),5,0x66,0);
  sub_02069714(param_1 + 0x1a4);
  iVar1 = param_1 + 0x1b8;
  puStack_1c = (undefined4 *)&ov85_021EA558;
  puStack_20 = (undefined4 *)&ov85_021EA580;
  iStack_18 = 0;
  iVar2 = param_1 + 0x21c;
  iVar3 = iVar1;
  do {
    sub_020696C4(iVar1,0,*(undefined4 *)(param_1 + 0xd80),*puStack_1c,0x66,0);
    sub_02069714(iVar1);
    sub_020697DC(iVar2,0,*(undefined4 *)(param_1 + 0xd80),*puStack_20,0x66,0);
    sub_02069864(iVar2,iVar3,0x66);
    sub_02069884(iVar2,iVar3);
    iVar1 = iVar1 + 0x14;
    iStack_18 = iStack_18 + 1;
    iVar2 = iVar2 + 0x24;
    puStack_1c = puStack_1c + 1;
    iVar3 = iVar3 + 0x14;
    puStack_20 = puStack_20 + 1;
  } while (iStack_18 < 5);
  return;
}

