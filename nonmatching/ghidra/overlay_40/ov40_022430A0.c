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
undefined4 ov40_0224301C();

void ov40_022430A0(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int iStack_34;
  undefined4 auStack_30 [7];
  
  *(undefined4 *)(param_1 + 0x298) = 1;
  *(undefined2 *)(param_1 + 0x1e4) = 0;
  *(short *)(param_1 + 0x1e6) = (short)*(undefined4 *)(param_1 + 0x2ac);
  *(short *)(param_1 + 0x1e8) = (short)*(undefined4 *)(param_1 + 0x2ac);
  *(short *)(param_1 + 0x1ea) =
       (short)*(undefined4 *)(param_1 + 0x2ac) + (short)*(undefined4 *)(param_1 + 0x2b0);
  *(short *)(param_1 + 0x1ec) =
       (short)*(undefined4 *)(param_1 + 0x2ac) + (short)*(undefined4 *)(param_1 + 0x2b0);
  *(short *)(param_1 + 0x1ee) =
       (short)*(undefined4 *)(param_1 + 0x2b4) +
       (short)*(undefined4 *)(param_1 + 0x2ac) + (short)*(undefined4 *)(param_1 + 0x2b0);
  auStack_30[6] = param_4;
  ov40_0224301C();
  iVar2 = 0;
  iVar4 = param_1;
  do {
    iVar2 = iVar2 + 1;
    piVar1 = (int *)(iVar4 + 0x2ac);
    iVar4 = iVar4 + 4;
    *(int *)(param_1 + 0x204) = *(int *)(param_1 + 0x204) + *piVar1;
  } while (iVar2 < 3);
  auStack_30[0] = 0x38;
  auStack_30[1] = 0x14;
  auStack_30[2] = 8;
  auStack_30[3] = 0x38;
  auStack_30[4] = 0xc;
  auStack_30[5] = 0;
  iVar3 = *(int *)(param_1 + 0x2ac);
  iVar4 = 0;
  puVar7 = auStack_30 + (uint)(iVar3 != 4) * 3;
  iVar2 = param_1;
  do {
    iVar6 = iVar4;
    iVar4 = iVar6 + 1;
    *(short *)(iVar2 + 0x1dc) = (short)*puVar7;
    puVar7 = puVar7 + 1;
    iVar2 = iVar2 + 2;
  } while (iVar4 < 3);
  *(short *)(param_1 + iVar4 * 2 + 0x1dc) = (short)(auStack_30 + (uint)(iVar3 != 4) * 3)[iVar6];
  iVar3 = 0;
  iVar6 = 0;
  iVar4 = param_1;
  iVar2 = param_1;
  do {
    iVar6 = iVar6 + 1;
    iVar3 = iVar3 + *(int *)(iVar4 + 0x2ac);
    *(int *)(iVar2 + 0x150) = iVar3 + -1;
    iVar4 = iVar4 + 4;
    iVar2 = iVar2 + 0x1c;
  } while (iVar6 < 2);
  iVar3 = 0;
  iVar2 = 0;
  iVar4 = param_1;
  iStack_34 = param_1;
  do {
    iVar5 = 0;
    iVar6 = iVar4;
    if (0 < *(int *)(iStack_34 + 0x2ac)) {
      do {
        *(int *)(iVar4 + 4) = iVar2 + 1;
        iVar5 = iVar5 + 1;
        iVar4 = iVar4 + 0x1c;
        iVar6 = iVar6 + 0x1c;
        iVar3 = iVar3 + 1;
      } while (iVar5 < *(int *)(param_1 + iVar2 * 4 + 0x2ac));
    }
    iStack_34 = iStack_34 + 4;
    iVar2 = iVar2 + 1;
    iVar4 = iVar6;
  } while (iVar3 < *(int *)(param_1 + 0x204));
  return;
}

