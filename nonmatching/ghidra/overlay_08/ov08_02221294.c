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
undefined4 GetMoveAttr(unsigned short, int);
undefined4 ov08_02220A8C(int, short, short, ...);
undefined4 ov08_02220AEC();
extern undefined4 DAT_02225510 __asm__("sub_02225510");
extern undefined4 ov08_0222550C;

void ov08_02221294(int *param_1)

{
  byte bVar1;
  uint uVar2;

  bVar1 = *(byte *)(*param_1 + 0x11);
  uVar2 = 0;
  do {
    if ((short)param_1[(uint)bVar1 * 0x14 + uVar2 * 2 + 0xd] != 0) {
      ov08_02220AEC(param_1,(undefined *)param_1[uVar2 + 0x803],uVar2 + 0xb010,
                    (uint)*(byte *)(param_1 + (uint)bVar1 * 0x14 + uVar2 * 2 + 0xe));
      ov08_02220A8C((undefined *)param_1[uVar2 + 0x803],(short)(&ov08_0222550C)[uVar2 * 2],
                    (short)(&DAT_02225510)[uVar2 * 2]);
    }
    uVar2 = uVar2 + 1 & 0xffff;
  } while (uVar2 < 4);
  if (*(ushort *)(*param_1 + 0x24) != 0) {
    uVar2 = GetMoveAttr(*(ushort *)(*param_1 + 0x24),3);
    ov08_02220AEC(param_1,(undefined *)param_1[0x807],0xb014,uVar2 & 0xff);
    ov08_02220A8C((undefined *)param_1[0x807],0x58,0xb0);
  }
  return;
}

