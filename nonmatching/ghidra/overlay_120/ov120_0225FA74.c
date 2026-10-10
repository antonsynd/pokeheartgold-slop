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
undefined4 RemoveWindow();
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov120_0225F2B8();
undefined4 ov120_0225F318();
undefined4 ov120_0225F294();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 AllocWindows();
undefined4 FillWindowPixelBuffer();
undefined4 ScheduleWindowCopyToVram();
undefined4 BG_LoadPlttData();
undefined4 sub_0200FC20();
undefined4 AddWindowParameterized();
undefined4 WindowArray_Delete();
undefined4 ov120_0225F268();
undefined4 Heap_Alloc();

void ov120_0225FA74(undefined4 param_1,undefined4 *param_2,int param_3)

{
  undefined1 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined2 auStack_14 [2];

  puVar4 = (undefined4 *)param_2[3];
  switch(*param_2) {
  case 0:
    puVar1 = (undefined1 *)Heap_Alloc(4,8);
    param_2[3] = puVar1;
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar4 = (undefined4 *)param_2[3];
    uVar3 = AllocWindows(4,1);
    *puVar4 = uVar3;
    AddWindowParameterized(*(undefined4 *)(param_2[4] + 8),*puVar4,3,0,0,0x20,0x20,0,0);
    auStack_14[0] = 0;
    BG_LoadPlttData(3,auStack_14,2,0x1e);
    FillWindowPixelBuffer(*puVar4,0);
    ScheduleWindowCopyToVram(*puVar4);
    uVar3 = ov120_0225F268(4);
    puVar4[1] = uVar3;
    *param_2 = 1;
    return;
  case 1:
    if (param_3 == 0) {
      uVar3 = 0xfffffff0;
    }
    else {
      uVar3 = 0x10;
    }
    func_0x021efcf8(1,uVar3,uVar3,param_2 + 1,2);
    *param_2 = 2;
    return;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = 3;
      return;
    }
    break;
  case 3:
    ov120_0225F2B8(puVar4[1],0,4,*puVar4,0xf,param_3);
    *param_2 = 4;
    return;
  case 4:
    iVar2 = ov120_0225F318(puVar4[1]);
    ScheduleWindowCopyToVram(*puVar4);
    if (iVar2 != 0) {
      *param_2 = 5;
      return;
    }
    break;
  case 5:
    sub_0200FC20(0);
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    ov120_0225F294(puVar4[1]);
    ClearWindowTilemapAndCopyToVram(*puVar4);
    RemoveWindow(*puVar4);
    WindowArray_Delete(*puVar4,1);
    func_0x021efcdc(param_2,param_1);
  }
  return;
}

