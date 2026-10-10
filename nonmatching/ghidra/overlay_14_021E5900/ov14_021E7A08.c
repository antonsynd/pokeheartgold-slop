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
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 ov14_021F2F88();

void ov14_021E7A08(int param_1,undefined2 param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  int iVar4;
  undefined2 *puVar5;
  short sStack_20;
  short sStack_1e;
  short sStack_1c;
  short sStack_1a;
  undefined4 uStack_18;

  puVar5 = *(undefined2 **)(*(int *)(param_1 + 0x34) + 0xc);
  uStack_18 = param_4;
  func_0x0200de44(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x328),&sStack_1a,&sStack_1c);
  ov14_021F2F88(param_3,&sStack_1e,&sStack_20,param_4);
  if (param_5 == 1) {
    sStack_1e = sStack_1e + 8;
    sStack_20 = sStack_20 + 8;
  }
  else {
    sStack_20 = sStack_20 + 4;
  }
  *puVar5 = (short)param_3;
  puVar5[1] = param_2;
  *(uint *)(puVar5 + 0xc) = *(uint *)(puVar5 + 0xc) & 3;
  *(undefined4 *)(puVar5 + 2) = param_4;
  iVar1 = (int)sStack_1e;
  iVar4 = (int)sStack_1a;
  puVar2 = (uint *)(puVar5 + 0xc);
  if (iVar1 < iVar4) {
    *puVar2 = *puVar2 & 0xfffffffe | 1;
    iVar1 = iVar4 - iVar1;
  }
  else {
    *puVar2 = *puVar2 & 0xfffffffe;
    iVar1 = iVar1 - iVar4;
  }
  *(int *)(puVar5 + 8) = (int)(iVar1 * 0x100 + ((uint)(iVar1 * 0x100 >> 2) >> 0x1d)) >> 3;
  iVar1 = (int)sStack_20;
  iVar3 = (int)sStack_1c;
  if (iVar1 < iVar3) {
    *(uint *)(puVar5 + 0xc) = *(uint *)(puVar5 + 0xc) | 2;
    iVar1 = iVar3 - iVar1;
  }
  else {
    *(uint *)(puVar5 + 0xc) = *(uint *)(puVar5 + 0xc) & 0xfffffffd;
    iVar1 = iVar1 - iVar3;
  }
  *(int *)(puVar5 + 10) = (int)(iVar1 * 0x100 + ((uint)(iVar1 * 0x100 >> 2) >> 0x1d)) >> 3;
  *(int *)(puVar5 + 4) = iVar4 << 8;
  *(int *)(puVar5 + 6) = iVar3 << 8;
  return;
}

