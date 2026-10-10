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
undefined4 GF_AssertFail(void);
undefined4 sub_020878B8(void *, short, short);
undefined4 ov40_022307FC();
undefined4 sub_020879E0(void *, int);
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);
undefined4 sub_02087948(void *, short, short);
undefined4 SysTask_Destroy(void *);
undefined4 sub_02087A30(void *);
undefined4 sub_020878B0(void *, int);
undefined4 System_GetTouchNewCoords(void *, void *);
extern char  cRam021d1175 __asm__("sub_021D1175");

void ov40_02230864(undefined *param_1)

{
  int iVar1;
  undefined *puVar2;
  short asStack_10 [2];
  short asStack_c [2];
  
  if (*(int *)(param_1 + 0x415c) == 1) {
    if (*(undefined **)(param_1 + 0x4168) != (undefined *)0x0) {
      SysTask_Destroy(*(undefined **)(param_1 + 0x4168));
    }
    *(undefined4 *)(param_1 + 0x4168) = 0;
  }
  if (cRam021d1175 == '\0') {
    iVar1 = 0x6f4;
  }
  else {
    iVar1 = 0x6f0;
  }
  *(undefined4 *)(param_1 + 0x4164) = *(undefined4 *)(param_1 + iVar1);
  *(undefined4 *)(param_1 + 0x415c) = 1;
  *(undefined4 *)(param_1 + 0x4160) = 0;
  System_GetTouchNewCoords((undefined *)asStack_c,(undefined *)asStack_10);
  sub_02087A30(*(undefined **)(param_1 + 0x4164));
  sub_020878B0(*(undefined **)(param_1 + 0x4164),1);
  sub_020879E0(*(undefined **)(param_1 + 0x4164),1);
  sub_020878B8(*(undefined **)(param_1 + 0x4164),asStack_c[0],asStack_10[0]);
  sub_02087948(*(undefined **)(param_1 + 0x4164),asStack_c[0],asStack_10[0]);
  puVar2 = SysTask_CreateOnMainQueue((undefined *)0x22307fd,param_1,0x1000);
  *(undefined **)(param_1 + 0x4168) = puVar2;
  if (*(int *)(param_1 + 0x4168) != 0) {
    ov40_022307FC(*(int *)(param_1 + 0x4168),param_1);
    return;
  }
  *(undefined4 *)(param_1 + 0x415c) = 0;
  sub_020879E0(*(undefined **)(param_1 + 0x4164),0);
  GF_AssertFail();
  return;
}

