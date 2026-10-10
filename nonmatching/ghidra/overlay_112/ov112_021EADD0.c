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
undefined4 CopyWindowToVram();
undefined4 BufferBoxMonNickname();
undefined4 FillWindowPixelBuffer();
undefined4 Mon_GetBoxMon();
undefined4 ov112_021E9610();
undefined4 ov112_021EA670();
undefined4 AllocMonZeroed();
undefined4 ov112_021EA64C();
undefined4 ov112_021EA044();
undefined4 ov112_021EA688();
undefined4 ov112_021EA010();
undefined4 BufferIntegerAsString();
undefined4 ov112_021E98E8();
undefined4 ov112_021E9290();
undefined4 Heap_Free();
undefined4 Pokewalker_TryGetBoxMon();
undefined4 sub_02032674();
undefined4 ov112_021E7CA4();

void ov112_021EADD0(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  sub_02032674(*(undefined4 *)(param_1 + 0x1e440),&uStack_14,&uStack_18);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x1e448),7,uStack_18,7,0,1);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x1e448),6,uStack_14,7,0,1);
  iVar1 = ov112_021E9610(param_1,uStack_18);
  BufferIntegerAsString(*(undefined4 *)(param_1 + 0x1e448),0xc,iVar1,7,0,1);
  ov112_021E7CA4(param_1,5,0x10);
  ov112_021E98E8(param_1,1);
  *(undefined2 *)(param_1 + 0x1f2e0) = 0;
  ov112_021EA010(param_1,1,*(undefined4 *)(param_1 + 0x1e50c),0,0x10200);
  ov112_021EA044(param_1,2,0x53,0x10200);
  ov112_021EA010(param_1,3,*(undefined4 *)(param_1 + 0x1e510),0,0x10200);
  ov112_021EA044(param_1,4,0x54,0x10200);
  if (iVar1 < 0) {
    ov112_021EA044(param_1,0,0x58,0x10200);
  }
  else if (iVar1 == 0) {
    ov112_021EA044(param_1,0,0x57,0x10200);
  }
  else {
    ov112_021EA044(param_1,0,0x56,0x10200);
  }
  if (param_2 == 0) {
    ov112_021EA688(param_1,7);
    FillWindowPixelBuffer(param_1 + 0x1ebf8,0);
    CopyWindowToVram(param_1 + 0x1ebf8);
  }
  else {
    uVar2 = AllocMonZeroed(0x9a);
    uVar3 = Mon_GetBoxMon();
    Pokewalker_TryGetBoxMon(*(undefined4 *)(param_1 + 0x1e440),uVar3);
    BufferBoxMonNickname(*(undefined4 *)(param_1 + 0x1e448),0xd,uVar3);
    ov112_021EA044(param_1,5,0x59,0x30400);
    ov112_021E9290(uVar3,param_1 + 0x1d7ac,param_1 + 0x1d79c,1);
    ov112_021EA670(param_1,7);
    Heap_Free(uVar2);
  }
  ov112_021EA64C(param_1);
  return;
}

