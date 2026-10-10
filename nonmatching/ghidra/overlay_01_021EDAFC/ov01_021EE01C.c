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
undefined4 DrawFrameAndWindow1(void *, int, unsigned short, unsigned char);
undefined4 LoadUserFrameGfx1(void *, int, unsigned short, unsigned char, unsigned char, int);
undefined4 AddWindowParameterized(void *, void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned short);
undefined4 ov01_021EE324();
void * ListMenuInit(void *, unsigned short, unsigned short, int);
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);
undefined4 ov01_021EE634();



void ov01_021EE01C(undefined *param_1,ushort param_2)

{
  undefined *puVar1;

  if ((byte)param_1[0x9b] < 9) {
    AddWindowParameterized
              (*(undefined **)(*(int *)param_1 + 8),param_1 + 8,3,param_1[0x98],param_1[0x99],
               (byte)param_2,param_1[0x9b] << 1,0xd,0x3d);
  }
  else {
    AddWindowParameterized
              (*(undefined **)(*(int *)param_1 + 8),param_1 + 8,3,param_1[0x98],param_1[0x99],
               (byte)param_2,0x10,0xd,0x3d);
  }
  LoadUserFrameGfx1(*(undefined **)(*(int *)param_1 + 8),3,0x3d9,0xb,0,4);
  DrawFrameAndWindow1(param_1 + 8,1,0x3d9,0xb);
  ov01_021EE324(param_1);
  puVar1 = ListMenuInit(param_1 + 0x19c,0,(ushort)(byte)param_1[0x96],4);
  *(undefined **)(param_1 + 0x1bc) = puVar1;
  ov01_021EE634(param_1);
  puVar1 = SysTask_CreateOnMainQueue((undefined *)0x21ee49d,param_1,0);
  *(undefined **)(param_1 + 4) = puVar1;
  return;
}

