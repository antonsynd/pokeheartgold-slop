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
undefined4 MapObject_GetXCoord(void *);
undefined4 MapObject_GetZCoord(void *);
undefined4 MetatileBehavior_IsVeryTallGrass(unsigned char);
undefined4 MapObject_GetFacingDirection(void *);
undefined4 func_0x021ff964(void *, int, int, int, int) __asm__("sub_021FF964");
void * func_0x021ff8f0(void *, int) __asm__("sub_021FF8F0");
undefined4 func_0x021ff0e4(void *, int, int, int, int) __asm__("sub_021FF0E4");
unsigned char GetMetatileBehavior(void *, int, int);
void * MapObject_GetFieldSystem(void *);
undefined4 MetatileBehavior_IsTallGrass(unsigned char);
unsigned char func_0x022055dc(void *) __asm__("sub_022055DC");
undefined4 func_0x021ff070() __asm__("sub_021FF070");
undefined4 func_0x02205604(void *, void *, void *) __asm__("sub_02205604");

void sub_020664D8(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  uint uStack_1c;
  uint uStack_18;
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  puVar2 = MapObject_GetFieldSystem(param_1);
  uStack_18 = MapObject_GetXCoord(param_1);
  uStack_1c = MapObject_GetZCoord(param_1);
  bVar1 = GetMetatileBehavior(puVar2,uStack_18,uStack_1c);
  iVar3 = MetatileBehavior_IsTallGrass(bVar1);
  if (iVar3 == 1) {
    func_0x021ff070(param_1,0);
  }
  else {
    iVar3 = MetatileBehavior_IsVeryTallGrass(bVar1);
    if (iVar3 == 1) {
      func_0x021ff8f0(param_1,0);
    }
  }
  iVar3 = func_0x022055dc(param_1);
  if ((iVar3 != 0) &&
     (uVar4 = MapObject_GetFacingDirection(param_1), ((uVar4 & 0xff) + 0xfe & 0xff) < 2)) {
    func_0x02205604(param_1,&uStack_18,&uStack_1c);
    bVar1 = GetMetatileBehavior(puVar2,uStack_18,uStack_1c);
    iVar3 = MetatileBehavior_IsTallGrass(bVar1);
    if (iVar3 == 1) {
      func_0x021ff0e4(param_1,1,uStack_18,uStack_1c,1);
      return;
    }
    iVar3 = MetatileBehavior_IsVeryTallGrass(bVar1);
    if (iVar3 == 1) {
      func_0x021ff964(param_1,1,uStack_18,uStack_1c,1);
    }
  }
  return;
}

