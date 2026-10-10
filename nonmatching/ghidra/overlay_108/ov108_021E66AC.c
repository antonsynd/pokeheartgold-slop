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
undefined4 ov108_021E7EB0();
undefined4 PlaySE();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 ov108_021E78F4();
undefined4 func_0x02024964() __asm__("sub_02024964");
undefined4 func_0x0201f2cc() __asm__("sub_0201F2CC");
undefined4 ov108_021E6450();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov108_021E78C0();
extern undefined2 uRam021d116e __asm__("sub_021D116E");
extern undefined ov108_021EA7D0;
extern undefined2 uRam021d116c __asm__("sub_021D116C");

undefined4 ov108_021E66AC(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined2 auStack_c [2];
  
  iVar1 = TouchscreenHitbox_FindRectAtTouchNew(&ov108_021EA7D0);
  if (iVar1 == -1) {
    return 0;
  }
  if (iVar1 == 6) {
    auStack_c[0] = 0xfffe;
    iVar1 = func_0x0201f2cc(*(undefined4 *)(param_1 + 0x340),3,uRam021d116c,uRam021d116e,auStack_c);
    if (iVar1 == 0) {
      return 0;
    }
    *(undefined1 *)(param_1 + 0x184e0) = 6;
    PlaySE(0x5dc);
    return 2;
  }
  if (iVar1 == 7) {
    if (*(char *)(param_1 + 0x184de) == '\0') {
      return 0;
    }
    *(byte *)(param_1 + 0x184e2) = *(byte *)(param_1 + 0x184e2) | 2;
    *(undefined1 *)(param_1 + 0x184e0) = 5;
    ov108_021E78C0(param_1,1,0,0);
    Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x364),1);
    func_0x02024964(*(undefined4 *)(param_1 + 0x364));
    PlaySE(0x5e1);
    return 3;
  }
  if (iVar1 != 8) {
    *(char *)(param_1 + 0x184e0) = (char)iVar1;
    ov108_021E78F4(param_1,1,*(undefined1 *)(param_1 + 0x184e0));
    ov108_021E7EB0(param_1);
    if ((uint)*(byte *)(param_1 + 0x184e0) + (uint)*(byte *)(param_1 + 0x184de) * 6 ==
        (uint)*(byte *)(param_1 + (uint)*(byte *)(param_1 + 0x184df) * 0x7a + 0x1c)) {
      return 0;
    }
    uVar2 = ov108_021E6450(param_1);
    return uVar2;
  }
  if (*(char *)(param_1 + 0x184de) == '\x01') {
    return 0;
  }
  *(byte *)(param_1 + 0x184e2) = *(byte *)(param_1 + 0x184e2) & 0xfd;
  *(undefined1 *)(param_1 + 0x184e0) = 0;
  ov108_021E78C0(param_1,1,0,0);
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x368),1);
  func_0x02024964(*(undefined4 *)(param_1 + 0x368));
  PlaySE(0x5e1);
  return 3;
}

