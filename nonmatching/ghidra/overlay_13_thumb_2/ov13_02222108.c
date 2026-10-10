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
undefined4 ov13_02222978();
undefined4 ov13_022208E8();
undefined4 ov13_02222968();
undefined4 ov13_02222A44();
undefined4 ov13_02222474();
undefined4 ov13_022224CC();
undefined4 ov13_022227A0();
undefined4 ov13_02222420();
undefined4 ov13_02222394();
undefined4 ov13_022214AC();
undefined4 ov13_022208F8();
extern undefined ov13_02245A20;
extern undefined4 iRam0224cfac __asm__("sub_0224CFAC");

undefined4
ov13_02222108(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined2 uVar2;
  undefined1 *puVar3;
  int iVar4;
  char acStack_28 [2];
  ushort uStack_26;
  short sStack_24;
  undefined1 auStack_22 [10];
  undefined4 uStack_18;
  
  iVar1 = iRam0224cfac;
  acStack_28[0] = '\0';
  sStack_24 = 0;
  uStack_26 = 0;
  uStack_18 = param_4;
  ov13_02222978(iRam0224cfac,0,0x5dc);
  puVar3 = (undefined1 *)ov13_022208E8(0x210);
  if (puVar3 == (undefined1 *)0x0) {
    ov13_022214AC(2);
    return 0xffffffff;
  }
  ov13_02222978(puVar3,0,0x210);
  ov13_02222968(0x224dcf8,param_2,8);
  ov13_02222968(auStack_22,0x224dcf8,8);
  sStack_24 = ov13_02222394(puVar3 + 4);
  if (sStack_24 < 0) {
    ov13_022214AC(3);
    if (puVar3 != (undefined1 *)0x0) {
      ov13_022208F8(puVar3);
    }
    return 0xffffffff;
  }
  *puVar3 = 0;
  uVar2 = ov13_02222A44(sStack_24);
  *(undefined2 *)(puVar3 + 2) = uVar2;
  sStack_24 = sStack_24 + 4;
  ov13_02222420(0,iVar1 + 0x18,puVar3,&sStack_24,&uStack_26,acStack_28);
  uStack_26 = uStack_26 | 0x10;
  iVar4 = ov13_022227A0(auStack_22,8,&ov13_02245A20,6);
  if (iVar4 != 0) {
    ov13_022214AC(2);
    if (puVar3 != (undefined1 *)0x0) {
      ov13_022208F8(puVar3);
    }
    return 0xffffffff;
  }
  ov13_02222474(iVar1,0x1000,(int)sStack_24,(int)(short)uStack_26,(int)acStack_28[0],0x11,auStack_22
               );
  sStack_24 = sStack_24 + 0x18;
  ov13_022224CC(iVar1,(int)sStack_24,0xff,param_3);
  if (puVar3 != (undefined1 *)0x0) {
    ov13_022208F8(puVar3);
  }
  return 0;
}

