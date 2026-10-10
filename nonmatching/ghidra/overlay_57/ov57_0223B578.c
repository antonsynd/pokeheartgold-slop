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
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 System_GetTouchNew();
undefined4 TouchscreenHitbox_TouchNewIsIn();
undefined4 func_0x0201f2cc() __asm__("sub_0201F2CC");
extern undefined ov57_0223BEB0;
extern undefined2 uRam021d116e __asm__("sub_021D116E");
extern undefined2 uRam021d116c __asm__("sub_021D116C");

int ov57_0223B578(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int iStack_24;
  undefined2 uStack_20;
  undefined1 uStack_1e;
  char cStack_1d;
  char cStack_1c;
  undefined1 uStack_1b;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar2 = System_GetTouchNew();
  if (iVar2 == 0) {
    return -1;
  }
  uStack_1e = 0xfe;
  cVar1 = '\x18';
  uStack_1b = 0x18;
  iStack_24 = 0;
  do {
    iVar2 = 0;
    cVar4 = '(';
    cStack_1c = cVar1;
    do {
      cStack_1d = cVar4;
      iVar3 = TouchscreenHitbox_TouchNewIsIn(&uStack_1e);
      if (iVar3 != 0) {
        return iVar2 + iStack_24 * 4;
      }
      iVar2 = iVar2 + 1;
      cVar4 = cVar4 + '8';
    } while (iVar2 < 4);
    cVar1 = cVar1 + '8';
    iStack_24 = iStack_24 + 1;
  } while (iStack_24 < 3);
  iVar2 = TouchscreenHitbox_FindRectAtTouchNew(&ov57_0223BEB0);
  iVar3 = -1;
  if (iVar2 != -1) {
    uStack_20 = 0x3ff;
    iVar3 = func_0x0201f2cc(*(undefined4 *)(param_1 + 0xe4),3,uRam021d116c,uRam021d116e,&uStack_20,
                            (undefined4 *)(param_1 + 0xe4));
    if (iVar3 == 0) {
      iVar3 = -1;
    }
    else {
      iVar3 = iVar2 + 0xc;
    }
  }
  return iVar3;
}

