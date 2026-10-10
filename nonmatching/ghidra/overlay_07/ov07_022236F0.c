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
undefined4 ov07_0221C448();
undefined4 Heap_Free();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 ToggleBgLayer();
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_022236F0(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  char cVar2;
  
  switch(*(char *)(param_2 + 0x1c)) {
  case '\0':
    func_0x020cf15c(0x4000050,4,0x39,*(undefined2 *)(param_2 + 0x16),*(undefined2 *)(param_2 + 0x18)
                   );
    ToggleBgLayer(2,1);
    *(char *)(param_2 + 0x1c) = *(char *)(param_2 + 0x1c) + '\x01';
  case '\x01':
    cVar2 = 0xf < *(ushort *)(param_2 + 0x16);
    if (!(bool)cVar2) {
      *(ushort *)(param_2 + 0x16) = *(ushort *)(param_2 + 0x16) + 2;
    }
    if (*(ushort *)(param_2 + 0x18) < 5) {
      cVar2 = cVar2 + '\x01';
    }
    else {
      *(ushort *)(param_2 + 0x18) = *(ushort *)(param_2 + 0x18) - 2;
    }
    if (cVar2 == '\x02') {
      *(undefined2 *)(param_2 + 0x16) = 0x10;
      *(undefined2 *)(param_2 + 0x18) = 4;
      *(char *)(param_2 + 0x1c) = *(char *)(param_2 + 0x1c) + '\x01';
    }
    uRam04000052 = *(ushort *)(param_2 + 0x16) | *(short *)(param_2 + 0x18) << 8;
    break;
  case '\x02':
    if (*(int *)(param_2 + 4) != 0) {
      *(char *)(param_2 + 0x1c) = *(char *)(param_2 + 0x1c) + '\x01';
    }
    break;
  case '\x03':
    cVar2 = *(ushort *)(param_2 + 0x16) < 3;
    if (!(bool)cVar2) {
      *(ushort *)(param_2 + 0x16) = *(ushort *)(param_2 + 0x16) - 2;
    }
    if (*(ushort *)(param_2 + 0x18) < 0x10) {
      *(ushort *)(param_2 + 0x18) = *(ushort *)(param_2 + 0x18) + 2;
    }
    else {
      cVar2 = cVar2 + '\x01';
    }
    if (cVar2 == '\x02') {
      *(undefined2 *)(param_2 + 0x16) = 0;
      *(undefined2 *)(param_2 + 0x18) = 0x1f;
      *(char *)(param_2 + 0x1c) = *(char *)(param_2 + 0x1c) + '\x01';
    }
    uRam04000052 = *(ushort *)(param_2 + 0x16) | *(short *)(param_2 + 0x18) << 8;
    break;
  default:
    ToggleBgLayer(2,0,param_3,param_4,param_4);
    ov07_0221C448(*(undefined4 *)(param_2 + 0x20),param_1);
    Heap_Free(param_2);
    return;
  }
  if (((0 < *(short *)(param_2 + 0x10)) && (0x1ff < *(short *)(param_2 + 0xc))) ||
     ((*(short *)(param_2 + 0x10) < 0 && (*(short *)(param_2 + 0xc) < -0x19b)))) {
    *(undefined4 *)(param_2 + 4) = 1;
  }
  *(short *)(param_2 + 10) = *(short *)(param_2 + 10) + *(short *)(param_2 + 0xe);
  *(short *)(param_2 + 0xc) = *(short *)(param_2 + 0xc) + *(short *)(param_2 + 0x10);
  if (*(ushort *)(param_2 + 0x12) < *(ushort *)(param_2 + 0x14)) {
    if (*(short *)(param_2 + 0x10) < 0) {
      sVar1 = *(short *)(param_2 + 0x10) + 1;
    }
    else {
      sVar1 = 0;
    }
    *(short *)(param_2 + 0x10) = sVar1;
    if (*(short *)(param_2 + 0xe) < 0) {
      sVar1 = *(short *)(param_2 + 0xe) + 1;
    }
    else {
      sVar1 = 0;
    }
    *(short *)(param_2 + 0xe) = sVar1;
    *(undefined2 *)(param_2 + 0x14) = 0;
  }
  else {
    *(ushort *)(param_2 + 0x14) = *(ushort *)(param_2 + 0x14) + 1;
  }
  func_0x0201bc8c(*(undefined4 *)(param_2 + 0x30),2,0,(int)*(short *)(param_2 + 10));
  func_0x0201bc8c(*(undefined4 *)(param_2 + 0x30),2,3,(int)*(short *)(param_2 + 0xc));
  return;
}

