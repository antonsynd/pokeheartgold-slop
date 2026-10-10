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
undefined4 ResetVisibleHardwareWindows();
undefined4 YesNoPrompt_Create();
undefined4 ov111_021E5F50();
undefined4 ov111_021E67EC();
undefined4 OverlayManager_CreateAndGetData();
undefined4 ov111_021E5CD4();
undefined4 GF_AssertFail();
undefined4 ov111_021E60D4();
undefined4 ov111_021E67C4();
undefined4 ov111_021E6000();
undefined4 OverlayManager_GetArgs();
undefined4 ov111_021E6180();
undefined4 Heap_Create();
undefined4 ov111_021E66DC();
undefined4 ov111_021E5C94();
undefined4 ov111_021E5CB4();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
extern ushort uRam04000304 __asm__("sub_04000304");
undefined4 Main_SetVBlankIntrCB();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 TextFlags_SetCanABSpeedUpPrint();

void ov111_021E5E34(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  iVar1 = OverlayManager_GetArgs();
  if (iVar1 == 0) {
    GF_AssertFail();
  }
  Heap_Create(3,0x94,0x30000);
  puVar2 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x34,0x94);
  func_0x020d4994(puVar2,0,0x34);
  *puVar2 = 0x94;
  puVar2[1] = iVar1;
  uVar3 = ov111_021E5C94(*(uint *)(iVar1 + 8) & 0xff);
  puVar2[0xb] = uVar3;
  ov111_021E5CD4();
  uRam04000304 = uRam04000304 & 0x7fff;
  ov111_021E5CB4();
  ov111_021E5F50(puVar2);
  ov111_021E6000(puVar2);
  ov111_021E60D4(puVar2);
  ov111_021E6180(puVar2);
  uVar3 = YesNoPrompt_Create(*puVar2);
  puVar2[6] = uVar3;
  uVar3 = ov111_021E67C4(*puVar2);
  puVar2[9] = uVar3;
  ov111_021E67EC(uVar3,puVar2[2],1,*(undefined4 *)(iVar1 + 0xc));
  uVar3 = ov111_021E66DC(*puVar2,puVar2[2],puVar2[9],puVar2[3],puVar2[4],(int)*(char *)(puVar2 + 10)
                        );
  puVar2[8] = uVar3;
  ResetVisibleHardwareWindows(0);
  ResetVisibleHardwareWindows(1);
  TextFlags_SetCanABSpeedUpPrint(1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  Main_SetVBlankIntrCB(0x21e5df1,puVar2);
  return;
}

