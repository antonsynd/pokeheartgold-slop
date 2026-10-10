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
extern undefined spl_calc_scfield;
extern undefined spl_calc_magnet;
extern undefined spl_calc_spin;
extern undefined spl_calc_convergence;
extern undefined spl_calc_random;
extern undefined spl_calc_gravity;

undefined4 sub_02015550(int param_1,undefined4 param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 *puVar3;
  
  uVar2 = (uint)*(ushort *)(*(int *)(param_1 + 0x20) + 0x1c);
  if (uVar2 == 0) {
    return 0;
  }
  iVar1 = 0;
  if (uVar2 != 0) {
    puVar3 = *(undefined4 **)(*(int *)(param_1 + 0x20) + 0x18);
    do {
      if (puVar3 != (undefined4 *)0x0) {
        switch(param_2) {
        case 0:
          if ((undefined *)*puVar3 == &spl_calc_gravity) {
            return puVar3[1];
          }
          break;
        case 1:
          if ((undefined *)*puVar3 == &spl_calc_random) {
            return puVar3[1];
          }
          break;
        case 2:
          if ((undefined *)*puVar3 == &spl_calc_magnet) {
            return puVar3[1];
          }
          break;
        case 3:
          if ((undefined *)*puVar3 == &spl_calc_spin) {
            return puVar3[1];
          }
          break;
        case 4:
          if ((undefined *)*puVar3 == &spl_calc_scfield) {
            return puVar3[1];
          }
          break;
        case 5:
          if ((undefined *)*puVar3 == &spl_calc_convergence) {
            return puVar3[1];
          }
          break;
        default:
          return 0;
        }
      }
      iVar1 = iVar1 + 1;
      puVar3 = puVar3 + 2;
    } while (iVar1 < (int)uVar2);
  }
  return 0;
}

