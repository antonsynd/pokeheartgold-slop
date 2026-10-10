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
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 ov89_0225C8BC();
undefined4 sub_020182B0();
undefined4 GF_AssertFail();
undefined4 sub_020182CC();
undefined4 func_0x020f2750() __asm__("sub_020F2750");
extern undefined ov89_0225CD48;
extern undefined ov89_0225CD40;
extern undefined ov89_0225CD3C;
extern undefined ov89_0225CD44;

void ov89_0225ADA4(undefined4 param_1,int param_2,int *param_3,int param_4)

{
  uint uVar1;
  int iVar2;
  undefined8 uVar3;
  longlong lVar4;
  undefined1 auStack_30 [4];
  int iStack_2c;
  int iStack_28;
  undefined1 auStack_24 [4];
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  iStack_18 = param_4;
  uVar1 = ov89_0225C8BC(*(undefined2 *)(param_2 + 2),*(undefined1 *)(param_2 + 8));
  if (2 < uVar1) {
    GF_AssertFail();
  }
  sub_020182B0(param_1,&iStack_1c,&iStack_20,auStack_24);
  iVar2 = uVar1 * 0x10;
  *param_3 = iStack_1c + *(int *)(&ov89_0225CD3C + iVar2);
  param_3[1] = iStack_1c + *(int *)(&ov89_0225CD40 + iVar2);
  param_3[2] = iStack_20 + *(int *)(&ov89_0225CD44 + iVar2);
  param_3[3] = iStack_20 + *(int *)(&ov89_0225CD48 + iVar2);
  if (param_4 == 1) {
    sub_020182CC(param_1,&iStack_28,&iStack_2c,auStack_30);
    iVar2 = param_3[1] - *param_3;
    uVar3 = func_0x020f2948(iStack_28,iStack_28 >> 0x1f,100,0);
    uVar3 = func_0x020f2750((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),0x1000,0);
    uVar3 = func_0x020f2948((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),iVar2,iVar2 >> 0x1f);
    lVar4 = func_0x020f2750((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),100,0);
    iVar2 = func_0x020f2750((int)(lVar4 - iVar2),(int)((ulonglong)(lVar4 - iVar2) >> 0x20),2,0);
    param_3[1] = param_3[1] + iVar2;
    *param_3 = *param_3 - iVar2;
    iVar2 = param_3[2] - param_3[3];
    uVar3 = func_0x020f2948(iStack_2c,iStack_2c >> 0x1f,100,0);
    uVar3 = func_0x020f2750((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),0x1000,0);
    uVar3 = func_0x020f2948((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),iVar2,iVar2 >> 0x1f);
    lVar4 = func_0x020f2750((int)uVar3,(int)((ulonglong)uVar3 >> 0x20),100,0);
    iVar2 = func_0x020f2750((int)(lVar4 - iVar2),(int)((ulonglong)(lVar4 - iVar2) >> 0x20),2,0);
    param_3[2] = param_3[2] + iVar2;
    param_3[3] = param_3[3] - iVar2;
  }
  return;
}

