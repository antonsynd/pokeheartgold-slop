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
undefined4 GF_AssertFail();
undefined4 Heap_Alloc();
undefined4 sub_020154E4();
undefined4 func_0x020988f4() __asm__("sub_020988F4");
undefined4 Camera_Init_FromTargetAndPos();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Camera_New();
undefined4 Camera_SetStaticPtr();
extern undefined UNK_020f6090 __asm__("sub_020F6090");
extern undefined UNK_020f6084 __asm__("sub_020F6084");
extern undefined UNK_020f609c __asm__("sub_020F609C");
extern undefined UNK_020f6078 __asm__("sub_020F6078");

undefined4 *
sub_02014DB4(undefined4 param_1,undefined4 param_2,int param_3,int param_4,int param_5,
            undefined4 param_6)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  
  piVar3 = (int *)0x21d10a8;
  iVar4 = 0;
  do {
    if (*piVar3 == 0) break;
    iVar4 = iVar4 + 1;
    piVar3 = piVar3 + 1;
  } while (iVar4 < 0x10);
  if (0xf < iVar4) {
    return (undefined4 *)0x0;
  }
  puVar1 = (undefined4 *)Heap_Alloc(param_6,0xdc);
  if (puVar1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  func_0x020e5b44(puVar1,0,0xdc);
  puVar1[6] = param_1;
  puVar1[7] = param_2;
  puVar1[0xd] = 0;
  puVar1[0xe] = 0;
  puVar1[0xf] = 0x4000;
  puVar1[0x10] = 0;
  puVar1[0x11] = 0x1000;
  puVar1[0x12] = 0;
  puVar1[0x13] = 0;
  puVar1[0x14] = 0;
  puVar1[0x15] = 0;
  func_0x020e5b44(param_3,0,param_4);
  puVar1[3] = param_3;
  puVar1[4] = param_3;
  puVar1[5] = param_3 + param_4;
  *(char *)((int)puVar1 + 0xda) = (char)iVar4;
  *(undefined4 **)(iVar4 * 4 + 0x21d10a8) = puVar1;
  if (param_5 == 1) {
    uVar2 = Camera_New(param_6);
    puVar1[8] = uVar2;
    puVar1[9] = 0;
    puVar1[10] = 0;
    puVar1[0xb] = 0;
    *(undefined2 *)(puVar1 + 0xc) = 0x2000;
    Camera_Init_FromTargetAndPos
              (&UNK_020f6084,&UNK_020f6090,*(undefined2 *)(puVar1 + 0xc),0,0,puVar1[8]);
    *(undefined1 *)((int)puVar1 + 0xdb) = 0;
    Camera_SetStaticPtr(puVar1[8]);
  }
  uVar2 = func_0x020988f4(*(undefined4 *)(&UNK_020f609c + iVar4 * 4),0x14,200,5,6,0x3f);
  *puVar1 = uVar2;
  sub_020154E4(puVar1,&UNK_020f6078);
  return puVar1;
}

