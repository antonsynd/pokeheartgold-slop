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
undefined4 sub_0203769C();
undefined4 MapObject_SetPositionFromXYZAndDirection();
undefined4 PlayerAvatar_GetMapObject();
undefined4 MapObject_SetCurrentZ();
undefined4 MapObject_SetCurrentX();
extern int iRam021d41c4 __asm__("sub_021D41C4");

void CommPlayerManager_ForcePosition(void)

{
  undefined2 uVar1;
  undefined2 uVar2;
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;

  if (iRam021d41c4 != 0) {
    iVar8 = 0;
    iVar6 = 0;
    iVar7 = 0;
    do {
      if ((*(int *)(iRam021d41c4 + iVar6 + 4) != 0) && (iVar4 = sub_0203769C(), iVar8 != iVar4)) {
        uVar5 = PlayerAvatar_GetMapObject(*(undefined4 *)(iRam021d41c4 + iVar6 + 4));
        iVar4 = iRam021d41c4 + iVar7;
        uVar1 = *(undefined2 *)(iVar4 + 0x74);
        uVar2 = *(undefined2 *)(iVar4 + 0x76);
        cVar3 = *(char *)(iVar4 + 0x78);
        MapObject_SetCurrentX(uVar5,uVar1);
        MapObject_SetCurrentZ(uVar5,uVar2);
        MapObject_SetPositionFromXYZAndDirection(uVar5,uVar1,0,uVar2,(int)cVar3);
      }
      iVar8 = iVar8 + 1;
      iVar6 = iVar6 + 4;
      iVar7 = iVar7 + 8;
    } while (iVar8 < 8);
  }
  return;
}

