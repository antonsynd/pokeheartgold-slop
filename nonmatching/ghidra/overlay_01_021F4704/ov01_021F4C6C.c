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
undefined4 ov01_021FB270();
undefined4 ov01_02204698();
undefined4 ov01_021F67B4();
undefined4 AreaDataManager_GetMapTexture();
undefined4 sub_02054E20();
undefined4 ov01_021EA3B0();
undefined4 ov01_02204678();

void ov01_021F4C6C(int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
                  undefined4 param_6,int param_7,int param_8)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = AreaDataManager_GetMapTexture(param_4);
  ov01_021F67B4(*(undefined4 *)(param_1 + 0x100),*(undefined4 *)(param_3 + 4),param_2 + 0x800,
                param_2 + 0x854,uVar1,param_4);
  if (param_7 != 0) {
    ov01_021EA3B0();
  }
  *(undefined4 *)(param_2 + 0x864) = 1;
  *(undefined4 *)(param_2 + 0x860) = param_6;
  if (param_8 != 0) {
    ov01_021FB270(*(undefined4 *)(param_1 + 0x100),*(undefined4 *)(param_3 + 8),
                  *(undefined4 *)(param_2 + 0x85c),*(undefined4 *)(param_2 + 0x858));
    if (*(code **)(param_1 + 0x108) != (code *)0x0) {
      (**(code **)(param_1 + 0x108))
                (*(undefined4 *)(param_1 + 0x10c),param_6,*(undefined4 *)(param_2 + 0x868));
    }
    iVar2 = ov01_02204698(*(undefined4 *)(param_1 + 0xf8));
    if ((iVar2 != 0) && (iVar2 = sub_02054E20(param_5), iVar2 == 0)) {
      ov01_02204678(*(undefined4 *)(param_1 + 0xf8),param_2 + 0x800);
    }
  }
  return;
}

