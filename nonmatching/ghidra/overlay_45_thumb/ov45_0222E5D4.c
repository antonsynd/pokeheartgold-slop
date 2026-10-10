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
void * sub_0202C6F4(void *);
undefined4 ov45_0222F848();
void * Heap_Alloc(int, unsigned int);
void * Save_WiFiHistory_Get(void *);
undefined4 GF_AssertFail(void);
undefined4 ov45_0222F9B8();
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 ov45_02230144();
extern uint * puRam022577c0 __asm__("sub_022577C0");
undefined4 ov45_022303E4();

void ov45_0222E5D4(undefined4 param_1,undefined4 param_2,uint param_3,undefined4 *param_4,
                  undefined4 param_5)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  if (puRam022577c0 != (undefined4 *)0x0) {
    GF_AssertFail();
  }
  if (299 < param_3) {
    GF_AssertFail();
  }
  puRam022577c0 = (undefined4 *)Heap_Alloc(param_1,0x988);
  func_0x020e5b44(puRam022577c0,0,0x988);
  *puRam022577c0 = param_2;
  uVar2 = sub_0202C6F4(param_2);
  puRam022577c0[1] = uVar2;
  uVar2 = Save_WiFiHistory_Get(param_2);
  puRam022577c0[2] = uVar2;
  puVar1 = puRam022577c0;
  uVar2 = param_4[1];
  puRam022577c0[3] = *param_4;
  puVar1[4] = uVar2;
  uVar2 = param_4[3];
  puVar1[5] = param_4[2];
  puVar1[6] = uVar2;
  puVar1[7] = param_4[4];
  puVar1[8] = param_5;
  ov45_0222F848(puRam022577c0,param_3,param_1);
  ov45_0222F9B8(puRam022577c0,0x14,8,param_1);
  ov45_02230144(puRam022577c0);
  ov45_022303E4(puRam022577c0 + 0x1a8,0x80,param_1);
  puRam022577c0[0x261] = 0;
  return;
}

