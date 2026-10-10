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
undefined4 ov08_022201C0(undefined4);
undefined4 ov08_02224C94(undefined4);
undefined4 func_0x0223ac20(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0223AC20");
undefined4 ov08_022217C8(undefined4);
undefined4 PlaySE(undefined4);
undefined4 ReadMsgDataIntoString(undefined4, undefined4, undefined4);
undefined4 ov08_0221D5D0(undefined4, undefined4);
undefined4 ov08_022220AC(undefined4, undefined4);
extern undefined ov08_02224E94;

undefined4 ov08_0221C814(int *param_1)

{
  int iVar1;
  int iVar2;

  iVar2 = *param_1;
  iVar1 = ov08_0221D5D0(param_1,&ov08_02224E94);
  if (iVar1 == -1) {
    iVar1 = ov08_02224C94(param_1[0x822]);
    if (iVar1 == -2) {
      iVar1 = 4;
    }
  }
  else {
    ov08_022217C8(param_1);
  }
  switch(iVar1) {
  case 0:
  case 1:
  case 2:
  case 3:
    if ((short)param_1[(uint)*(byte *)(iVar2 + 0x11) * 0x14 + iVar1 * 2 + 0xd] != 0) {
      *(char *)(*param_1 + 0x34) = (char)iVar1;
      PlaySE(0x5dd);
      ov08_022220AC(param_1,iVar1 + 0x13U & 0xff);
      iVar1 = func_0x0223ac20(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0x28),
                              *(undefined1 *)(iVar2 + (uint)*(byte *)(iVar2 + 0x11) + 0x2c),iVar1,
                              *(undefined2 *)(iVar2 + 0x22));
      if (iVar1 != 1) {
        ReadMsgDataIntoString(param_1[0x7ea],0x51,param_1[0x7ec]);
        ov08_022201C0(param_1);
        *(undefined1 *)(*param_1 + 0x11) = 6;
        *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
        return 0x11;
      }
      *(undefined1 *)(param_1 + 0x81f) = 0;
      *(undefined1 *)((int)param_1 + 0x2079) = 0x17;
      return 0x16;
    }
    break;
  case 4:
    PlaySE(0x5dd);
    ov08_022220AC(param_1,6);
    *(undefined1 *)((int)param_1 + 0x2079) = 6;
    return 0x16;
  }
  return 0x15;
}

