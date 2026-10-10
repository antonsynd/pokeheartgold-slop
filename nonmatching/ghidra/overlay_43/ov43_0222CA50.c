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
undefined4 func_0x022272bc() __asm__("sub_022272BC");
undefined4 String_Delete();
undefined4 func_0x0202c254() __asm__("sub_0202C254");
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 sub_0202C090();
undefined4 ov43_0222CB34();
undefined4 CopyU16ArrayToString();
undefined4 String_New();
extern undefined ov43_0222EFA0;
extern undefined ov43_0222EFA2;

void ov43_0222CA50(short *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  int param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  short sStack_20;
  short sStack_1e;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar1 = sub_0202C090(param_6,param_7,7);
  iVar2 = sub_0202C090(param_6,param_7,8);
  if (iVar2 == 2) {
    ov43_0222CB34(param_1,param_3,param_4,param_5);
  }
  else {
    sStack_20 = (*param_1 + *(short *)(&ov43_0222EFA0 + param_5 * 10)) * 8 + 8;
    sStack_1e = (param_1[1] + *(short *)(&ov43_0222EFA2 + param_5 * 10)) * 8 + 0x106;
    uStack_1c = 8;
    uStack_1a = 1;
    uVar1 = func_0x022272bc(param_2,&sStack_20,uVar1,param_8);
    *(undefined4 *)(param_1 + param_5 * 2 + 0xc) = uVar1;
  }
  uVar1 = String_New(0x80,param_8);
  uVar3 = func_0x0202c254(param_6,param_7);
  CopyU16ArrayToString(uVar1,uVar3);
  AddTextPrinterParameterizedWithColor
            (param_1 + 4,4,uVar1,(int)*(short *)(&ov43_0222EFA0 + param_5 * 10) << 3,
             *(short *)(&ov43_0222EFA2 + param_5 * 10) * 8 + -0x18,0xff,
             *(undefined4 *)(iVar2 * 4 + 0x222ed94),0);
  String_Delete(uVar1);
  return;
}

