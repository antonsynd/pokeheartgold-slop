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
undefined4 Heap_Destroy(int);
void * OverlayManager_GetData(void *);
undefined4 sub_020347A0(void);
undefined4 ov92_0225D8E4();
undefined4 OverlayManager_FreeData(void *);
undefined4 sub_02037AC0(unsigned char);
undefined4 sub_02037454(void);
undefined4 sub_02037B38(unsigned char);
undefined4 sub_020398D4(signed char, signed char);



int ov92_0225D36C(undefined *param_1,undefined *param_2)

{
  int iVar1;
  int iVar2;
  
  if (*(int *)param_2 == 0) {
    OverlayManager_GetData(param_1);
    iVar1 = ov92_0225D8E4();
    OverlayManager_FreeData(param_1);
    Heap_Destroy(0x71);
    sub_020398D4(0,1);
    if (iVar1 == 0) {
      sub_02037AC0(0xe7);
      *(int *)param_2 = *(int *)param_2 + 1;
      return 0;
    }
    return 1;
  }
  iVar1 = sub_02037B38(0xe7);
  if (iVar1 != 1) {
    iVar1 = sub_02037454();
    iVar2 = sub_020347A0();
    if (iVar2 <= iVar1) {
      return 0;
    }
  }
  return 1;
}

