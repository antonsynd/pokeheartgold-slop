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
undefined4 ov31_0225DD14();
undefined4 ov31_0225D60C();
undefined4 ov31_0225D684();
undefined4 Save_PlayerData_GetProfile();
undefined4 CreateSysTaskAndEnvironment();
undefined4 func_0x02031968() __asm__("sub_02031968");
undefined4 TextFlags_SetFastForwardTouchButtonHitbox();
undefined4 ov31_0225DAC4();
undefined4 SysTask_GetData();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 Heap_Create();
undefined4 ov31_0225DE84();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 ov31_0225DF98();
undefined4 ov31_0225DB38();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 func_0x022581bc() __asm__("sub_022581BC");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined UNK_0225ee40 __asm__("sub_0225EE40");

undefined4
ov31_0225D520(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;

  uVar1 = param_4;
  Heap_Create(3,8,0x18000);
  uVar1 = CreateSysTaskAndEnvironment(0x225d7a1,400,10,8,param_3,param_4,uVar1);
  puVar2 = (undefined4 *)SysTask_GetData();
  puVar2[2] = uVar1;
  *puVar2 = 0;
  puVar2[1] = param_1;
  puVar2[6] = param_2;
  puVar2[7] = param_3;
  puVar2[0xc] = 0;
  uVar3 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(puVar2[7] + 0xc));
  puVar2[0x59] = uVar3;
  uVar3 = Save_PlayerData_GetProfile(*(undefined4 *)(puVar2[7] + 0xc));
  puVar2[0x5a] = uVar3;
  uVar3 = func_0x02031968(*(undefined4 *)(puVar2[7] + 0xc));
  puVar2[0x5b] = uVar3;
  puVar2[3] = 0;
  puVar2[5] = param_4;
  ov31_0225DAC4(puVar2);
  ov31_0225DB38(puVar2);
  ov31_0225D60C(puVar2);
  ov31_0225D684(puVar2,0);
  ov31_0225DE84(puVar2);
  ov31_0225DF98(puVar2);
  ov31_0225DD14(puVar2);
  func_0x022581bc(puVar2[5]);
  uRam04001000 = uRam04001000 & 0xffff1fff;
  GfGfx_EngineBTogglePlanes(1,1);
  GfGfx_EngineBTogglePlanes(2,1);
  GfGfx_EngineBTogglePlanes(4,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  TextFlags_SetCanTouchSpeedUpPrint(1);
  TextFlags_SetFastForwardTouchButtonHitbox(&UNK_0225ee40);
  return uVar1;
}

