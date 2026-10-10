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
unsigned char func_0x022055dc(void *) __asm__("sub_022055DC");
undefined4 func_0x022056c4() __asm__("sub_022056C4");
undefined4 MetatileBehavior_HasReflectiveSurface(unsigned char);
undefined4 sub_02060FA8();
undefined4 MapObject_CheckFlag24(void *);
undefined4 MapObject_SetFlag24(void *, int);
undefined4 MapObject_GetID(void *);

void sub_020609D4(undefined *param_1,undefined4 param_2,undefined4 param_3,ushort *param_4)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  int iVar7;
  uint uVar8;
  
  if (((*param_4 & 0x1fff) >> 0xb != 0) && (iVar7 = MapObject_CheckFlag24(param_1), iVar7 != 0)) {
    uVar8 = MapObject_GetID(param_1);
    if ((uVar8 == 0xfd) && (iVar7 = func_0x022055dc(param_1), iVar7 != 0)) {
      bVar2 = sub_02060FA8(param_1,1);
      bVar3 = sub_02060FA8(param_1,3);
      bVar4 = sub_02060FA8(param_1,2);
      bVar5 = func_0x022056c4(param_1,4);
      bVar6 = func_0x022056c4(param_1,5);
      bVar1 = false;
      iVar7 = MetatileBehavior_HasReflectiveSurface(bVar2);
      if (iVar7 == 1) {
        bVar1 = true;
      }
      else {
        iVar7 = MetatileBehavior_HasReflectiveSurface(bVar3);
        if (iVar7 == 1) {
          bVar1 = true;
        }
        else {
          iVar7 = MetatileBehavior_HasReflectiveSurface(bVar4);
          if (iVar7 == 1) {
            bVar1 = true;
          }
          else {
            iVar7 = MetatileBehavior_HasReflectiveSurface(bVar5);
            if (iVar7 == 1) {
              bVar1 = true;
            }
            else {
              iVar7 = MetatileBehavior_HasReflectiveSurface(bVar6);
              if (iVar7 == 1) {
                bVar1 = true;
              }
            }
          }
        }
      }
      if (!bVar1) {
        MapObject_SetFlag24(param_1,0);
        return;
      }
    }
    else {
      bVar2 = sub_02060FA8(param_1,1);
      iVar7 = MetatileBehavior_HasReflectiveSurface(bVar2);
      if (iVar7 == 0) {
        MapObject_SetFlag24(param_1,0);
      }
    }
  }
  return;
}

