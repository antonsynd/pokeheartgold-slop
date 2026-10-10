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
undefined4 sub_02075A7C();
undefined4 GetMonEvolution();
undefined4 OverlayManager_Run();
undefined4 sub_02075D3C();
undefined4 ov70_02238E50();
undefined4 OverlayManager_Delete();
undefined4 AllocMonZeroed();
undefined4 GetMonData();
undefined4 ov70_022418A4();
undefined4 sub_02075D4C();
undefined4 ov70_02241868();
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 Heap_Free();

undefined4 ov70_02241648(int *param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uVar6 = 3;
  if (param_1[0xb] != 0) {
    if (param_1[0xb] != 1) {
      return 3;
    }
    iVar4 = sub_02075D3C(param_1[0x44]);
    if (iVar4 == 0) {
      return 3;
    }
    sub_02075D4C(param_1[0x44]);
    ov70_022418A4(param_1);
    uRam04000000 = uRam04000000 & 0xffff1fff;
    ov70_02238E50(param_1,7,0xc);
    return 4;
  }
  iVar4 = OverlayManager_Run(param_1[0x2e]);
  if (iVar4 == 0) {
    return 3;
  }
  OverlayManager_Delete(param_1[0x2e]);
  iVar4 = param_1[9];
  if (iVar4 == 9) {
    uVar6 = ov70_02241868(param_1);
    uVar1 = GetMonData(uVar6,6,0);
    iVar4 = GetMonEvolution(0,uVar6,1,uVar1,&uStack_18);
    if (iVar4 != 0) {
      iVar5 = *param_1;
      iVar4 = sub_02075A7C(0,uVar6,iVar4,*(undefined4 *)(iVar5 + 0x24),*(undefined4 *)(iVar5 + 0x38)
                           ,*(undefined4 *)(iVar5 + 0x10),*(undefined4 *)(iVar5 + 0x2c),
                           *(undefined4 *)(iVar5 + 0x28),uStack_18,4,0x3d);
      param_1[0x44] = iVar4;
      param_1[0xb] = 1;
      return 3;
    }
    ov70_02238E50(param_1,1,0);
    return 4;
  }
  if ((iVar4 != 8) && (iVar4 != 10)) {
    ov70_02238E50(param_1,1,0);
    return 4;
  }
  uVar2 = ov70_02241868(param_1);
  uVar3 = AllocMonZeroed(0x3d);
  sub_0202DB64(*(undefined4 *)*param_1,uVar3);
  iVar4 = GetMonData(uVar2,5,0);
  iVar5 = GetMonData(uVar3,5,0);
  if (iVar4 == iVar5) {
    iVar4 = GetMonData(uVar2,0,0);
    iVar5 = GetMonData(uVar3,0,0);
    if (iVar4 == iVar5) {
      ov70_02238E50(param_1,1,0);
      uVar6 = 4;
      goto LAB_022417b2;
    }
  }
  uVar1 = GetMonData(uVar2,6,0);
  iVar4 = GetMonEvolution(0,uVar2,1,uVar1,&uStack_1c);
  if (iVar4 == 0) {
    ov70_02238E50(param_1,1,0);
    uVar6 = 4;
  }
  else {
    iVar5 = *param_1;
    iVar4 = sub_02075A7C(0,uVar2,iVar4,*(undefined4 *)(iVar5 + 0x24),*(undefined4 *)(iVar5 + 0x38),
                         *(undefined4 *)(iVar5 + 0x10),*(undefined4 *)(iVar5 + 0x2c),
                         *(undefined4 *)(iVar5 + 0x28),uStack_1c,4,0x3d);
    param_1[0x44] = iVar4;
    param_1[0xb] = 1;
  }
LAB_022417b2:
  Heap_Free(uVar3);
  return uVar6;
}

