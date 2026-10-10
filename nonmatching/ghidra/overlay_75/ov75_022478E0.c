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
undefined4 ClearFrameAndWindow2();
undefined4 CopyWindowToVram();
undefined4 func_0x02001338() __asm__("sub_02001338");
undefined4 sub_02031744();
undefined4 func_0x020011dc() __asm__("sub_020011DC");
undefined4 func_0x02014950() __asm__("sub_02014950");
undefined4 func_0x02014918() __asm__("sub_02014918");
undefined4 DrawFrameAndWindow1();
undefined4 PlaySE();
undefined4 func_0x02014960() __asm__("sub_02014960");
undefined4 AddWindowParameterized();
undefined4 ov75_02246BCC();
extern undefined ov75_0224998C;
extern undefined ov75_02249978;
extern undefined ov75_022499BC;
extern undefined ov75_0224999C;
extern undefined ov75_02249974;
extern undefined ov75_022499DC;
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 func_0x02001434() __asm__("sub_02001434");
undefined4 sub_0200E5D4();
undefined4 RemoveWindow();

undefined4 ov75_022478E0(int *param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int *piStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  if (param_1[0x25] == 0) {
    iVar2 = sub_02031744(*(undefined4 *)(*param_1 + 4));
    if (iVar2 == 1) {
      puVar4 = &ov75_02249974;
      puVar5 = (undefined4 *)&ov75_022499BC;
      iVar2 = 4;
      piVar3 = (int *)&ov75_022499DC;
    }
    else {
      puVar4 = &ov75_02249978;
      puVar5 = (undefined4 *)&ov75_0224998C;
      piVar3 = (int *)&ov75_0224999C;
      iVar2 = 2;
    }
    iStack_34 = *piVar3;
    iStack_30 = piVar3[1];
    iStack_2c = piVar3[2];
    piStack_28 = (int *)piVar3[3];
    iStack_24 = piVar3[4];
    iStack_20 = piVar3[5];
    iStack_1c = piVar3[6];
    iStack_18 = piVar3[7];
    AddWindowParameterized
              (param_1[1],param_1 + 0x1e,0,*puVar4,puVar4[1],puVar4[2],puVar4[3],0xd,0x94);
    iVar1 = func_0x02014918(iVar2,0x74);
    iVar6 = 0;
    param_1[0x28] = iVar1;
    if (iVar2 != 0) {
      do {
        func_0x02014960(param_1[0x28],param_1[0xd],*puVar5,puVar5[1]);
        iVar6 = iVar6 + 1;
        puVar5 = puVar5 + 2;
      } while (iVar6 < iVar2);
    }
    piStack_28 = param_1 + 0x1e;
    iStack_34 = param_1[0x28];
    iVar2 = func_0x020011dc(&iStack_34,0,0,0x74);
    param_1[0x29] = iVar2;
    DrawFrameAndWindow1(param_1 + 0x1e,1,0x1f,0xb);
    ClearFrameAndWindow2(param_1 + 0x12,1);
    CopyWindowToVram(param_1 + 0x1e);
    param_1[0x25] = param_1[0x25] + 1;
  }
  else if (param_1[0x25] == 1) {
    iVar2 = func_0x02001338(param_1[0x29]);
    if (iVar2 == -2) {
      PlaySE(0x5dc);
      ov75_02246BCC(*param_1,6,0);
      param_1[0x27] = 0x1d;
      param_1[0x25] = param_1[0x25] + 1;
    }
    else if (iVar2 != -1) {
      PlaySE(0x5dc);
      param_1[0x27] = iVar2;
      param_1[0x25] = param_1[0x25] + 1;
    }
  }
  else {
    func_0x02014950(param_1[0x28]);
    func_0x02001434(param_1[0x29],0,0);
    sub_0200E5D4(param_1 + 0x1e,1);
    ClearWindowTilemapAndCopyToVram(param_1 + 0x1e);
    RemoveWindow(param_1 + 0x1e);
    param_1[2] = param_1[0x27];
  }
  return 0;
}

