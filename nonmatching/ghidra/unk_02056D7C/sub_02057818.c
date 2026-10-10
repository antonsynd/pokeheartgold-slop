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
undefined4 PlayerAvatar_GetFacingDirection();
undefined4 PlayerAvatar_GetZCoord();
undefined4 sub_0203769C();
undefined4 PlayerAvatar_GetXCoord();
undefined4 sub_0205DFC8();
undefined4 sub_0205DE38();
undefined4 sub_0205DF0C();
undefined4 sub_0206234C();
undefined4 sub_0205DFD4();
undefined4 func_0x020e4a90() __asm__("sub_020E4A90");
extern int iRam021d41c4 __asm__("sub_021D41C4");
undefined4 sub_02057524();

void sub_02057818(int param_1)

{
  char cVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  ushort *puVar10;
  undefined4 uStack_28;
  
  puVar10 = (ushort *)(iRam021d41c4 + 0x74 + param_1 * 8);
  cVar1 = *(char *)(iRam021d41c4 + 0xdc + param_1);
  if (cVar1 == '\0') {
    if ((((*puVar10 != 0xffff) && (puVar10[1] != 0xffff)) &&
        (*(char *)(iRam021d41c4 + 0xee) == '\0')) &&
       (((iVar3 = sub_0203769C(), param_1 != iVar3 || (*(char *)(iRam021d41c4 + 0xf1) != '\0')) &&
        (iVar3 = *(int *)(iRam021d41c4 + param_1 * 4 + 4), iVar3 != 0)))) {
      iVar4 = PlayerAvatar_GetXCoord();
      iVar4 = iVar4 - (uint)*puVar10;
      iVar5 = PlayerAvatar_GetZCoord(iVar3);
      iVar5 = iVar5 - (uint)puVar10[1];
      iVar6 = PlayerAvatar_GetFacingDirection(iVar3);
      if ((iVar4 == 0) && (iVar5 == 0)) {
        uVar9 = 0;
      }
      else {
        iVar7 = func_0x020e4a90(iVar4);
        iVar8 = func_0x020e4a90(iVar5);
        if (iVar8 < iVar7) {
          if (iVar4 < 1) {
            uVar9 = 0x10;
          }
          else {
            uVar9 = 0x20;
          }
        }
        else if (iVar5 < 1) {
          uVar9 = 0x80;
        }
        else {
          uVar9 = 0x40;
        }
      }
      func_0x020e4a90(iVar5);
      func_0x020e4a90(iVar4);
      uVar2 = *(undefined1 *)((int)puVar10 + 5);
      iVar4 = 0xff;
      switch(uVar2) {
      case 0:
        uStack_28 = 5;
        break;
      case 1:
        uStack_28 = 4;
        uVar9 = uVar9 | 2;
        break;
      case 2:
        uStack_28 = 2;
        break;
      case 3:
        uStack_28 = 1;
      }
      if ((*(char *)(iRam021d41c4 + 0xf0) == '\0') || (iVar5 = sub_0203769C(), param_1 != iVar5)) {
        if (((uVar9 & 0xfffffffd) == 0) && (*(char *)((int)puVar10 + 7) != '\0')) {
          uVar2 = 3;
          switch((char)puVar10[2]) {
          case '\0':
            iVar4 = 0x1c;
            break;
          default:
            iVar4 = 0x1d;
            break;
          case '\x02':
            iVar4 = 0x1e;
            break;
          case '\x03':
            iVar4 = 0x1f;
          }
        }
        else if (((uVar9 & 0xfffffffd) == 0) && ((char)puVar10[2] != iVar6)) {
          iVar4 = sub_0206234C((int)(char)puVar10[2],0x24);
        }
        else {
          iVar4 = sub_0205DF0C(iVar3,uVar9,uVar9,uStack_28,1,0);
        }
      }
      else {
        *(char *)(iRam021d41c4 + 0xf0) = *(char *)(iRam021d41c4 + 0xf0) + -1;
      }
      iVar5 = sub_0205DFC8(iVar3);
      if ((((iVar5 != 0) || (iVar5 = sub_0205DE38(iVar3), iVar5 != 0)) && (iVar4 != 0xff)) &&
         (sub_0205DFD4(iVar3,iVar4), (uVar9 & 0xfffffffd) != 0)) {
        if (*(char *)(iRam021d41c4 + param_1 + 0xdc) == '\0') {
          uVar2 = sub_02057524(uVar2);
          *(undefined1 *)(iRam021d41c4 + param_1 + 0xdc) = uVar2;
        }
        cVar1 = *(char *)(iRam021d41c4 + 0xdc + param_1);
        if (cVar1 != '\0') {
          *(char *)(iRam021d41c4 + 0xdc + param_1) = cVar1 + -1;
        }
      }
    }
    return;
  }
  *(char *)(iRam021d41c4 + 0xdc + param_1) = cVar1 + -1;
  return;
}

