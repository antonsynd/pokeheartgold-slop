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
void * AllocWindows(int, int);
undefined4 AddWindow(void *, void *, void *);
extern undefined ov08_0222502C;
extern undefined ov08_0222500C;
extern undefined ov08_022250EC;
extern undefined ov08_0222522C;
extern undefined ov08_02225084;
extern undefined ov08_02225144;
extern undefined ov08_022251A4;
extern undefined ov08_022250B4;
extern undefined ov08_02225054;

void ov08_0221DC3C(int *param_1,undefined4 param_2)

{
  undefined *puVar1;
  uint uVar2;
  undefined *unaff_r6;
  __asm__ volatile("movs %0, r6" : "=l"(unaff_r6) : : "cc");

  
  switch(param_2) {
  case 0:
    unaff_r6 = &ov08_02225084;
    *(undefined1 *)(param_1 + 0x81d) = 6;
    break;
  case 1:
    unaff_r6 = &ov08_0222500C;
    *(undefined1 *)(param_1 + 0x81d) = 4;
    break;
  case 2:
    unaff_r6 = &ov08_0222522C;
    *(undefined1 *)(param_1 + 0x81d) = 0x23;
    break;
  case 3:
    unaff_r6 = &ov08_022250EC;
    *(undefined1 *)(param_1 + 0x81d) = 0xb;
    break;
  case 4:
    unaff_r6 = &ov08_022251A4;
    *(undefined1 *)(param_1 + 0x81d) = 0x11;
    break;
  case 5:
    unaff_r6 = &ov08_0222502C;
    *(undefined1 *)(param_1 + 0x81d) = 5;
    break;
  case 6:
  case 8:
    unaff_r6 = &ov08_02225054;
    *(undefined1 *)(param_1 + 0x81d) = 6;
    break;
  case 7:
    unaff_r6 = &ov08_02225144;
    *(undefined1 *)(param_1 + 0x81d) = 0xc;
    break;
  case 9:
    unaff_r6 = &ov08_022250B4;
    *(undefined1 *)(param_1 + 0x81d) = 7;
  }
  puVar1 = AllocWindows(*(int *)(*param_1 + 0xc),(uint)*(byte *)(param_1 + 0x81d));
  uVar2 = 0;
  param_1[0x81c] = (int)puVar1;
  if ((char)param_1[0x81d] != '\0') {
    do {
      AddWindow((undefined *)param_1[0x79],(undefined *)(param_1[0x81c] + uVar2 * 0x10),
                unaff_r6 + uVar2 * 8);
      uVar2 = uVar2 + 1 & 0xff;
    } while (uVar2 < *(byte *)(param_1 + 0x81d));
  }
  return;
}

