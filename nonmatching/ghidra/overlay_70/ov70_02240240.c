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
undefined4 sub_0202DB64();
undefined4 ov70_022404D4();
undefined4 ov70_02237F38();
undefined4 AllocMonZeroed();
undefined4 sub_0202DB54();
undefined4 ov70_02244FA4();
undefined4 ov70_02238D84();
undefined4 ov70_02238F80();
undefined4 ov70_02237F58();
undefined4 sub_0202DB5C();
undefined4 ov70_02240D00();
undefined4 func_0x020399ec() __asm__("sub_020399EC");
undefined4 BufferBoxMonNickname();
undefined4 Mon_GetBoxMon();
undefined4 Heap_Free();
undefined4 ShowCommunicationError();
undefined4 ov70_02240A7C();
undefined4 sub_0202DBA0();

undefined4 ov70_02240240(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;

  iVar1 = ov70_02237F38();
  if (iVar1 == 0) {
    param_1[0x581] = param_1[0x581] + 1;
    if (param_1[0x581] == 0xe10) {
      func_0x020399ec();
    }
  }
  else {
    uVar2 = ov70_02237F58();
    param_1[0x581] = 0;
    switch(uVar2) {
    case 0:
      param_1[0xb] = 0x1a;
      break;
    case 1:
      *(undefined2 *)((int)param_1 + 0x36) = 1;
      iVar1 = ov70_02240D00(param_1,param_1 + 0x4f);
      if (iVar1 == 0) {
        param_1[0xb] = 0x12;
        param_1[0x47f] = 1;
      }
      else if (iVar1 == 1) {
        ov70_02238F80(param_1);
        ov70_02244FA4(param_1,param_1[0x2e8],0x1d,1,0xf0f);
        ov70_02238D84(param_1,0x25,0x1c);
      }
      else if (iVar1 == 2) {
        ov70_02238F80(param_1);
        ov70_02244FA4(param_1,param_1[0x2e8],0x23,1,0xf0f);
        ov70_02238D84(param_1,0x25,0x1c);
      }
      break;
    case 0xfffffff1:
    case 0xfffffff2:
    case 0xfffffff4:
    case 0xfffffffe:
      param_1[0xf] = uVar2;
      param_1[0xb] = 0x26;
      break;
    case 0xfffffff3:
      ShowCommunicationError(3,1);
      do {

      } while( true );
    case 0xfffffffc:
      *(undefined2 *)((int)param_1 + 0x36) = 0;
      iVar1 = sub_0202DB54(*(undefined4 *)*param_1);
      if (iVar1 != 0) {
        uVar2 = AllocMonZeroed(0x3d);
        sub_0202DB64(*(undefined4 *)*param_1,uVar2);
        uVar3 = Mon_GetBoxMon(uVar2);
        BufferBoxMonNickname(param_1[0x2e7],0,uVar3);
        param_1[10] = 3;
        param_1[0xb] = 0x22;
        sub_0202DB5C(*(undefined4 *)*param_1,0);
        Heap_Free(uVar2);
      }
      break;
    case 0xfffffffd:
      *(undefined2 *)((int)param_1 + 0x36) = 0;
      iVar1 = sub_0202DB54(*(undefined4 *)*param_1);
      if (iVar1 == 0) {
        ov70_022404D4(param_1);
      }
      else {
        uVar2 = AllocMonZeroed(0x3d);
        sub_0202DB64(*(undefined4 *)*param_1,uVar2);
        uVar3 = Mon_GetBoxMon(uVar2);
        BufferBoxMonNickname(param_1[0x2e7],0,uVar3);
        param_1[10] = 2;
        param_1[0xb] = 0x22;
        uVar3 = sub_0202DBA0(*(undefined4 *)*param_1);
        ov70_02240A7C(param_1,uVar2,uVar3,0);
        sub_0202DB5C(*(undefined4 *)*param_1,0);
        Heap_Free(uVar2);
      }
    }
  }
  return 3;
}

