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
undefined4 String_New();
undefined4 ReadMsgDataIntoString();
undefined4 TaskManager_GetFieldSystem();
undefined4 sub_020588DC();
undefined4 DestroyMsgData();
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 BufferPlayersName();
undefined4 String_Delete();
undefined4 TaskManager_GetEnvironment();
undefined4 DialogBox_LoadFrame();
undefined4 MessageFormat_Delete();
undefined4 sub_02034818();
undefined4 DialogBox_AddWindowToLayer3();
undefined4 MessageFormat_New();
undefined4 DialogBox_PrintMessage();
undefined4 DialogBox_IsPrintFinished();
undefined4 NewMsgDataFromNarc();
undefined4 StringExpandPlaceholders();
extern int uRam021d1154 __asm__("sub_021D1154");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 func_0x021e636c() __asm__("sub_021E636C");
undefined4 ClearFrameAndWindow2();
undefined4 FieldSystem_ApplicationIsRunning();
undefined4 sub_02056E60();
undefined4 Heap_Free();
undefined4 IsPaletteFadeFinished();
undefined4 FieldSystem_LoadFieldOverlay();
undefined4 RemoveWindow();
undefined4 TrainerCard_LaunchApp();
undefined4 sub_020505C8();
undefined4 sub_02057F70();

undefined4 sub_02059B64(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined1 *puVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar1 = TaskManager_GetFieldSystem();
  puVar2 = (undefined4 *)TaskManager_GetEnvironment(param_1);
  puVar3 = (undefined1 *)sub_020588DC(puVar2[9],0,0);
  switch(puVar2[10]) {
  case 0:
    uVar4 = MessageFormat_New(4);
    puVar2[6] = uVar4;
    uVar4 = NewMsgDataFromNarc(0,0x1b,0xe,4);
    puVar2[7] = uVar4;
    uVar4 = String_New(200,4);
    *puVar2 = uVar4;
    uVar4 = String_New(200,4);
    puVar2[1] = uVar4;
    switch(*puVar3) {
    default:
      iVar5 = 2;
      break;
    case 7:
    case 8:
      iVar5 = (byte)puVar3[3] + 2;
      break;
    case 10:
      iVar5 = 0x19;
      break;
    case 0xb:
      iVar5 = 0x1a;
      break;
    case 0xc:
      iVar5 = 0x1b;
    }
    ReadMsgDataIntoString(puVar2[7],iVar5,*puVar2);
    uVar4 = sub_02034818(puVar2[9]);
    BufferPlayersName(puVar2[6],0,uVar4);
    StringExpandPlaceholders(puVar2[6],puVar2[1],*puVar2);
    DialogBox_AddWindowToLayer3(*(undefined4 *)(iVar1 + 8),puVar2 + 2,3);
    uVar4 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(iVar1 + 0xc));
    DialogBox_LoadFrame(puVar2 + 2,uVar4);
    uVar4 = Save_PlayerData_GetOptionsAddr(*(undefined4 *)(iVar1 + 0xc));
    uVar4 = DialogBox_PrintMessage(puVar2 + 2,puVar2[1],uVar4,1);
    puVar2[8] = uVar4;
    puVar2[10] = puVar2[10] + 1;
    break;
  case 1:
    iVar1 = DialogBox_IsPrintFinished(puVar2[8] & 0xff);
    if ((iVar1 != 0) && ((uRam021d1154 & 1) != 0)) {
      DestroyMsgData(puVar2[7]);
      MessageFormat_Delete(puVar2[6]);
      String_Delete(*puVar2);
      String_Delete(puVar2[1]);
      ClearFrameAndWindow2(puVar2 + 2,0);
      RemoveWindow(puVar2 + 2);
      func_0x021e636c(0);
      puVar2[10] = puVar2[10] + 1;
    }
    break;
  case 2:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      puVar2[10] = puVar2[10] + 1;
    }
    break;
  case 3:
    func_0x020d4a50(puVar3,puVar2 + 0xb,0x66c);
    TrainerCard_LaunchApp(iVar1,puVar2 + 0xb);
    puVar2[10] = puVar2[10] + 1;
    break;
  case 4:
    iVar1 = FieldSystem_ApplicationIsRunning(iVar1);
    if (iVar1 == 0) {
      puVar2[10] = puVar2[10] + 1;
    }
    break;
  case 5:
    FieldSystem_LoadFieldOverlay(iVar1);
    puVar2[10] = puVar2[10] + 1;
    break;
  case 6:
    iVar1 = sub_020505C8(iVar1);
    if (iVar1 == 0) {
      func_0x021e636c(1);
      sub_02056E60();
      puVar2[10] = puVar2[10] + 1;
    }
    break;
  case 7:
    sub_02057F70();
    Heap_Free(puVar2);
    return 1;
  default:
    return 1;
  }
  return 0;
}

