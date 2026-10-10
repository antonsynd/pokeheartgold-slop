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
undefined4 func_0x020185fc() __asm__("sub_020185FC");
undefined4 DestroyMsgData();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x02014980() __asm__("sub_02014980");
undefined4 NewMsgDataFromNarc();
undefined4 ov57_0223A0A8();
undefined4 String_Delete();
undefined4 func_0x02014918() __asm__("sub_02014918");
undefined4 NewString_ReadMsgData();
extern undefined UNK_0223bed0 __asm__("sub_0223BED0");
extern undefined ov57_0223BECC;

void ov57_02238C30(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,
                  undefined4 param_5)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int unaff_r4;
  int *piVar4;
  int iVar5;
  int aiStack_40 [4];
  undefined2 uStack_30;
  undefined2 uStack_2e;
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  undefined2 uStack_28;
  undefined2 uStack_26;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined1 uStack_1c;
  int iStack_18;

  iStack_18 = param_4;
  uVar1 = ov57_0223A0A8(param_4,param_5);
  switch(uVar1) {
  case 0:
    aiStack_40[0] = 0;
    aiStack_40[1] = 4;
    unaff_r4 = 6;
    aiStack_40[2] = 1;
    break;
  case 1:
    aiStack_40[0] = 2;
    aiStack_40[1] = 0;
    aiStack_40[2] = 4;
    unaff_r4 = 8;
    aiStack_40[3] = 1;
    break;
  case 2:
    aiStack_40[0] = 3;
    aiStack_40[1] = 0;
    aiStack_40[2] = 4;
    unaff_r4 = 8;
    aiStack_40[3] = 1;
    break;
  case 3:
    aiStack_40[0] = 2;
    aiStack_40[1] = 0;
    aiStack_40[2] = 4;
    unaff_r4 = 8;
    aiStack_40[3] = 1;
  }
  iVar2 = unaff_r4 / 2;
  uVar1 = func_0x02014918(iVar2,0x34);
  *(undefined4 *)(param_4 + 0x1bc) = uVar1;
  uVar1 = NewMsgDataFromNarc(0,0x1b,0xb,0x34);
  iVar5 = 0;
  if (0 < iVar2) {
    piVar4 = aiStack_40;
    do {
      uVar3 = NewString_ReadMsgData(uVar1,*(undefined4 *)(&ov57_0223BECC + *piVar4 * 8));
      func_0x02014980(*(undefined4 *)(param_4 + 0x1bc),uVar3,
                      *(undefined4 *)(&UNK_0223bed0 + *piVar4 * 8));
      String_Delete(uVar3);
      iVar5 = iVar5 + 1;
      piVar4 = piVar4 + 1;
    } while (iVar5 < iVar2);
  }
  DestroyMsgData(uVar1);
  func_0x020d4994(&uStack_30,0,0x18);
  uStack_30 = 3;
  uStack_2e = 0xb01;
  uStack_2c = 0;
  uStack_2a = 0x86;
  uStack_28 = 0x1f;
  uStack_26 = 0x5a;
  uStack_24 = *(undefined4 *)(param_4 + 0x1bc);
  uStack_1c = (undefined1)iVar2;
  uStack_20 = param_1;
  uVar1 = func_0x020185fc(*(undefined4 *)(param_4 + 0x248),&uStack_30,
                          *(uint *)(param_4 + 0x40c) & 0xff,0x16,iVar2 * -3 + 0x17U & 0xff,8,0);
  *(undefined4 *)(param_4 + 0x24c) = uVar1;
  return;
}

