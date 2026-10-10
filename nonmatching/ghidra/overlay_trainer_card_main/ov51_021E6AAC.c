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
undefined4 TouchscreenHitbox_TouchNewIsIn();
undefined4 PlaySE();
undefined4 System_GetTouchNew();
extern undefined ov51_021E7DBC;
extern undefined2 uRam021d116e __asm__("sub_021D116E");
extern undefined ov51_021E7DC0;
extern undefined UNK_021e7db8 __asm__("sub_021E7DB8");
extern undefined2 uRam021d116c __asm__("sub_021D116C");

undefined4 ov51_021E6AAC(int param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = System_GetTouchNew();
  if (iVar1 == 0) {
    return 0;
  }
  iVar1 = TouchscreenHitbox_TouchNewIsIn(&UNK_021e7db8);
  if (iVar1 != 0) {
    *param_2 = 1;
    PlaySE(0x940);
    return 5;
  }
  if (((*(int *)(param_1 + 0x30f4) != 0) && (-1 < (int)((uint)*(byte *)(param_1 + 0x343a) << 0x1e)))
     && (iVar1 = TouchscreenHitbox_TouchNewIsIn(&ov51_021E7DBC), iVar1 != 0)) {
    *param_2 = 1;
    PlaySE(0x5dc);
    return 4;
  }
  iVar1 = TouchscreenHitbox_TouchNewIsIn(&ov51_021E7DC0);
  if (iVar1 != 0) {
    *(char *)(param_1 + 0x3440) = (char)uRam021d116c;
    *(char *)(param_1 + 0x3441) = (char)uRam021d116e;
    *param_2 = 1;
    return 3;
  }
  return 0;
}

