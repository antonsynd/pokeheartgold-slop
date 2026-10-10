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
typedef void code(void);
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
undefined4 ov01_021F4AAC(undefined4, undefined4);
undefined4 ov01_021F4A50(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021F4BE8(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapPropManager_LoadFromNARC(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021F4AE4(undefined4, undefined4, undefined4);

void ov01_021F4D10(int param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
                  int param_6,int param_7)

{
  int iVar1;
  undefined4 auStack_28 [3];
  undefined4 uStack_1c;
  int iStack_18;
  
  param_1 = param_1 * 4;
  iStack_18 = param_4;
  iVar1 = ov01_021F4A50(auStack_28,param_6,param_3,*(undefined4 *)(param_7 + param_1),
                        *(undefined4 *)(param_7 + param_1 + 0x18),param_4 * param_5,1);
  if (iVar1 != 0xffff) {
    ov01_021F4AAC(param_6,*(undefined4 *)(param_7 + param_1));
    ov01_021F4AE4(param_6,*(undefined4 *)(param_7 + param_1),auStack_28[0]);
    MapPropManager_LoadFromNARC
              (*(undefined4 *)(param_6 + 0x100),uStack_1c,
               *(undefined4 *)(*(int *)(param_7 + param_1) + 0x868),*(undefined4 *)(param_6 + 0xf4))
    ;
    ov01_021F4BE8(param_6,*(undefined4 *)(param_7 + param_1),auStack_28,param_2,param_7,iVar1,1);
  }
  return;
}

