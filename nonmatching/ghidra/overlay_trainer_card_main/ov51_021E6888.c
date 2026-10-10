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
undefined4 ov51_021E66C0();
undefined4 ov51_021E6C6C();
undefined4 ov51_021E71D0();
undefined4 ov51_021E6D44();
undefined4 ov51_021E76EC();
undefined4 PlaySE();
extern undefined UNK_021e68a4 __asm__("sub_021E68A4");

undefined4
ov51_021E6888(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined4 uVar2;

  bVar1 = *(byte *)((int)param_1 + 0x3436);
  uVar2 = 0;
  if (bVar1 < 6) {
    switch(bVar1) {
    case 0:
      param_1[0xce5] = 8;
      param_1[0xc3f] = 0x1000;
      param_1[0xc40] = 0x1000;
      param_1[0xc3f] = param_1[0xc3f] + 0x80;
      param_1[0xc40] = param_1[0xc40] + 0x80;
      PlaySE(0x695);
      *(char *)((int)param_1 + 0x3436) = *(char *)((int)param_1 + 0x3436) + '\x01';
      break;
    case 1:
      param_1[0xc3f] = param_1[0xc3f] - (2 << (0xc - param_1[0xce5] & 0xff));
      if ((int)param_1[0xc3f] < 1) {
        param_1[0xc3f] = 0x24;
        *(char *)((int)param_1 + 0x3436) = *(char *)((int)param_1 + 0x3436) + '\x01';
      }
      param_1[0xce5] = param_1[0xce5] + -1;
      if ((int)param_1[0xce5] < 2) {
        param_1[0xce5] = 1;
      }
      break;
    case 2:
      param_1[0xc3d] = param_1[0xc3d] ^ 1;
      ov51_021E66C0();
      *(char *)((int)param_1 + 0x3436) = *(char *)((int)param_1 + 0x3436) + '\x01';
      break;
    case 3:
      if (param_1[0xc3d] == 0) {
        ov51_021E6C6C();
        ov51_021E76EC(param_1,1);
      }
      else {
        ov51_021E6D44(*param_1,7,param_1 + 0x3b);
        if (-1 < (int)((uint)*(byte *)((int)param_1 + 0x343a) << 0x1e)) {
          ov51_021E76EC(param_1,0);
        }
      }
      *(char *)((int)param_1 + 0x3436) = *(char *)((int)param_1 + 0x3436) + '\x01';
      break;
    case 4:
      ov51_021E71D0(param_1,param_1 + 1,(int)*(short *)(&UNK_021e68a4 + (uint)bVar1 * 2),param_4,
                    param_4);
      *(char *)((int)param_1 + 0x3436) = *(char *)((int)param_1 + 0x3436) + '\x01';
      break;
    case 5:
      param_1[0xce5] = param_1[0xce5] + 1;
      if (8 < (int)param_1[0xce5]) {
        param_1[0xce5] = 8;
      }
      param_1[0xc3f] = param_1[0xc3f] + (2 << (0xc - param_1[0xce5] & 0xff));
      if (0xfff < (int)param_1[0xc3f]) {
        param_1[0xc3f] = 0x1000;
        param_1[0xc3f] = 0x1000;
        param_1[0xc40] = 0x1000;
        uVar2 = 1;
      }
    }
  }
  *(byte *)((int)param_1 + 0x343a) = *(byte *)((int)param_1 + 0x343a) | 4;
  return uVar2;
}

