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
undefined4 ov40_0222BF80();
undefined4 ov40_0223077C();
undefined4 ov40_0223D540();
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 ov40_0223D5CC();
undefined4 ov40_02230CDC();
undefined4 ov40_0222DE40();
undefined4 sub_020879E0();
undefined4 PlaySE();
undefined4 sub_02087A08();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 func_0x02227720() __asm__("sub_02227720");
undefined4 ov40_0222FB90();
undefined4 ov40_0222DD9C();
extern undefined2 uRam04000050 __asm__("sub_04000050");

undefined4 ov40_022406C8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iStack_18;
  undefined4 uStack_14;
  
  iVar3 = *(int *)(param_1 + 0x860);
  uStack_14 = param_4;
  switch(*(int *)(param_1 + 8)) {
  case 0:
    ov40_0222DD9C(param_1,0x75);
    ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f4),0x80,0x60);
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),1);
    sub_02087A08(*(undefined4 *)(param_1 + 0x6f4),0x18,0x18);
    *(undefined4 *)(iVar3 + 0x4b8) = 0;
    PlaySE(0x57d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    iVar1 = ov40_0223D5CC();
    if (iVar1 == 0) {
      return 0;
    }
    uVar2 = ov40_0223D540(param_1);
    iVar3 = func_0x02227720(uVar2,*(undefined4 *)(iVar3 + 0x4a0),*(undefined4 *)(iVar3 + 0x4a4));
    if (iVar3 == 1) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 2:
    iVar1 = ov40_0223D5CC();
    if (iVar1 == 0) {
      return 0;
    }
    ov40_0222DE40(param_1);
    uVar2 = ov40_0223D540(param_1);
    iVar1 = func_0x02227d44(uVar2,&iStack_18);
    if (iVar1 == 1) {
      func_0x02006154(0x57d,0);
      uRam04000050 = 0;
      ov40_02230CDC(param_1,8,*(undefined4 *)(iStack_18 + 0xc),*(undefined4 *)(iStack_18 + 4));
      ov40_0222FB90(param_1,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      *(undefined4 *)(iVar3 + 0x4b8) = 0;
    }
    else {
      func_0x02006154(0x57d,0);
      *(undefined4 *)(param_1 + 8) = 0xff;
      *(undefined4 *)(iVar3 + 0x4b8) = 1;
      PlaySE(0x577);
      *(int *)(param_1 + 0x878) = param_1 + 0x2604;
      *(undefined4 *)(iVar3 + 0x4bc) = *(undefined4 *)(param_1 + 0x8b4);
      func_0x020d4a50(*(undefined4 *)(iVar3 + 0x4bc),param_1 + 0x8b8,0x1d4c);
    }
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
    sub_02087A08(*(undefined4 *)(param_1 + 0x6f4),0,0);
    break;
  case 3:
    ov40_0222FB90(param_1,1);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 4:
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  default:
    if (*(int *)(iVar3 + 0x4b8) == 0) {
      ov40_0222BF80(param_1,5);
    }
    else {
      ov40_0222BF80(param_1,7);
    }
  }
  return 0;
}

