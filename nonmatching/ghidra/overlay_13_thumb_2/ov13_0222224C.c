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
undefined4 ov13_02222968();
undefined4 ov13_02222474();
undefined4 ov13_022224CC();
undefined4 ov13_022214AC();
undefined4 ov13_02222A1C();
undefined4 ov13_02222420();
undefined4 ov13_022227A0();
undefined4 ov13_02222A44();
extern undefined ov13_02245A20;
extern undefined4 iRam0224cfac __asm__("sub_0224CFAC");
extern undefined4 uRam0224cf98 __asm__("sub_0224CF98");
extern undefined4 uRam0224cfc4 __asm__("sub_0224CFC4");

undefined4 ov13_0222224C(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  char acStack_2c [2];
  short sStack_2a;
  short asStack_28 [2];
  undefined1 uStack_24;
  undefined1 uStack_23;
  undefined2 uStack_22;
  undefined4 uStack_20;
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  
  iVar1 = iRam0224cfac;
  acStack_2c[0] = '\0';
  asStack_28[0] = 0;
  sStack_2a = 0;
  uStack_14 = param_4;
  ov13_02222978(&uStack_24,0,8);
  ov13_02222978(iVar1,0,0x5dc);
  uStack_24 = 2;
  uStack_23 = 0;
  uStack_22 = ov13_02222A44(4);
  uStack_20 = uRam0224cfc4;
  uStack_20 = ov13_02222A1C();
  asStack_28[0] = 8;
  ov13_02222420(uRam0224cf98,iVar1 + 0x18,&uStack_24,asStack_28,&sStack_2a,acStack_2c);
  ov13_02222968(auStack_1c,param_2 + 8,8);
  iVar2 = ov13_022227A0(auStack_1c,8,&ov13_02245A20,6);
  if (iVar2 != 0) {
    ov13_022214AC(2);
    return 0xffffffff;
  }
  ov13_02222474(iVar1,0x2000,(int)asStack_28[0],(int)sStack_2a,(int)acStack_2c[0],0x11,auStack_1c);
  asStack_28[0] = asStack_28[0] + 0x18;
  ov13_022224CC(iVar1,(int)asStack_28[0],0,param_3);
  return 0;
}

