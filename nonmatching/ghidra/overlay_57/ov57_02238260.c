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
undefined4 SpriteSystem_NewSprite();
undefined4 GF_AssertFail();
undefined4 sub_02091054();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 ov57_0223809C();

undefined4 ov57_02238260(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  ushort uStack_48;
  ushort uStack_46;
  undefined2 uStack_44;
  undefined2 uStack_42;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uVar3 = *(undefined4 *)(param_1 + 0xdc);
  uVar2 = *(undefined4 *)(param_1 + 0xe0);
  iVar1 = param_1 + 0x34c + param_2 * 0x10;
  if (*(int *)(param_1 + 0x34c + param_2 * 0x10) == 1) {
    GF_AssertFail();
    return 0;
  }
  ov57_0223809C(param_1,*(undefined1 *)(iVar1 + 4),param_2);
  uStack_48 = (ushort)*(byte *)(iVar1 + 5);
  uStack_46 = (ushort)*(byte *)(iVar1 + 6);
  uStack_44 = 0;
  uStack_42 = 0;
  uStack_38 = 2;
  uStack_1c = 1;
  uStack_3c = 0;
  uStack_18 = 0;
  uStack_40 = 0;
  uStack_24 = 0xffffffff;
  uStack_20 = 0xffffffff;
  sub_02091054(*(undefined1 *)(iVar1 + 4));
  iStack_34 = param_2 + 20000;
  uStack_30 = 0x520e;
  uStack_2c = 0x5616;
  uStack_28 = 0x59fc;
  uVar2 = SpriteSystem_NewSprite(uVar3,uVar2,&uStack_48);
  *(undefined4 *)(iVar1 + 8) = uVar2;
  func_0x0200dc18();
  return 1;
}

