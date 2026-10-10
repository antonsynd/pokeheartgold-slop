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
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
void * AllocAtEndAndReadWholeNarcMemberByIdPair(int, int, int);
undefined4 GF_AssertFail(void);
undefined4 Pokepic_GetAttr(void *, int);
void * SysTask_CreateOnMainQueue(void *, void *, unsigned int);

void sub_02016F40(int *param_1,undefined *param_2,ushort *param_3,uint param_4)

{
  undefined *puVar1;
  int iVar2;
  undefined1 uVar3;
  int iVar4;
  uint uVar5;
  uint local_18;

  uVar5 = (uint)*param_3;
  local_18 = (uint)param_3[1];
  if (*(byte *)((int)param_1 + 9) <= param_4) {
    GF_AssertFail();
  }
  iVar4 = param_4 * 0x1d0;
  if (*(int *)(*param_1 + iVar4 + 0x10) != 0) {
    GF_AssertFail();
  }
  MI_CpuFill8((undefined *)(*param_1 + iVar4),0,0x1d0);
  *(undefined4 *)(*param_1 + iVar4 + 0x10) = 1;
  *(undefined **)(*param_1 + iVar4) = param_2;
  if (0x8e < uVar5) {
    uVar5 = 0;
    local_18 = 0;
  }
  *(uint *)(*param_1 + iVar4 + 0x14) = uVar5;
  if ((char)param_1[2] == '\0') {
    uVar3 = 0;
  }
  else {
    uVar3 = (undefined1)param_3[2];
  }
  *(undefined1 *)(*param_1 + iVar4 + 0x1cc) = uVar3;
  puVar1 = AllocAtEndAndReadWholeNarcMemberByIdPair
                     (0x5a,*(int *)(*param_1 + iVar4 + 0x14),param_1[1]);
  *(undefined **)(*param_1 + iVar4 + 8) = puVar1;
  *(undefined4 *)(*param_1 + iVar4 + 0xc) = *(undefined4 *)(*param_1 + iVar4 + 8);
  *(undefined4 *)(*param_1 + iVar4 + 0x1c) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x20) = 0;
  *(undefined1 *)(*param_1 + iVar4 + 0x1cd) = 0;
  *(undefined1 *)(*param_1 + iVar4 + 0x1ce) = 0x1c;
  *(undefined1 *)(*param_1 + iVar4 + 0x1cf) = 0;
  puVar1 = SysTask_CreateOnMainQueue((undefined *)0x20170c5,(undefined *)(*param_1 + iVar4),0);
  *(undefined **)(*param_1 + iVar4 + 4) = puVar1;
  *(uint *)(*param_1 + iVar4 + 0x54) = local_18;
  iVar2 = Pokepic_GetAttr(param_2,0);
  *(int *)(*param_1 + iVar4 + 0x58) = iVar2;
  iVar2 = Pokepic_GetAttr(param_2,1);
  *(int *)(*param_1 + iVar4 + 0x5c) = iVar2;
  *(undefined4 *)(*param_1 + iVar4 + 0x60) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 100) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x68) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x6c) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x70) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x74) = 0;
  *(undefined4 *)(*param_1 + iVar4 + 0x78) = 0;
  return;
}

