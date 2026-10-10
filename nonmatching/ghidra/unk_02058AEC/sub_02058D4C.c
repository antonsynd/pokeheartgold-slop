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
undefined4 ReadMsgDataIntoString(void *, int, void *);
undefined4 sub_02057F70();
unsigned char DialogBox_IsPrintFinished(unsigned char);
undefined4 sub_02037AC0(unsigned char);
void * PlayerAvatar_GetMapObject(void *);
undefined4 Heap_Free(void *);
undefined4 sub_02037B38(unsigned char);
undefined4 sub_02059650();
undefined4 func_0x021e636c(unsigned char) __asm__("sub_021E636C");
void * TaskManager_GetEnvironment(void *);
undefined4 sub_0205F55C(void *);
undefined4 MapObject_IsMovementPaused(void *);
void * TaskManager_GetFieldSystem(void *);
undefined4 sub_02059478();
undefined4 sub_02057E08();
extern uint  uRam021d1154 __asm__("sub_021D1154");
undefined4 sub_02058D24();
undefined4 BufferPlayersName(void *, unsigned int, void *);
undefined4 sub_02059738();
undefined4 sub_02059820();
undefined4 sub_02058D04();
undefined4 StringExpandPlaceholders(void *, void *, void *);
void * SaveArray_Party_Get(void *);
undefined4 sub_020596F0();
undefined4 sub_020594C8();
undefined4 sub_02058B84();
undefined4 sub_02058AEC();
undefined4 sub_02058CD8();
undefined4 sub_020596A8();
undefined4 sub_02058C80();
undefined4 sub_02059748();
undefined4 FieldSystem_LoadFieldOverlay(void *);
undefined4 sub_020597A8();
undefined4 sub_0203996C(void *);
undefined4 sub_02059798();
undefined4 sub_020597D4();
void * Party_GetMonByIndex(void *, int);
undefined4 sub_0205993C();
undefined4 IsPaletteFadeFinished(void);
undefined4 sub_02059AD8();
undefined4 sub_0205975C();
undefined4 BufferBoxMonSpeciesName(void *, unsigned int, void *);
void * Mon_GetBoxMon(void *);
undefined4 sub_02059A08();
undefined4 ClearFrameAndWindow2(void *, int);

undefined4 sub_02058D4C(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  byte bVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined4 uVar5;
  int iVar6;

  puVar3 = TaskManager_GetEnvironment(param_1);
  puVar4 = TaskManager_GetFieldSystem(param_1);
  switch(*(undefined4 *)(puVar3 + 0x34)) {
  case 0:
    puVar3[0x43] = puVar3[0x43] + -1;
    if (puVar3[0x43] == '\0') {
      *(undefined4 *)(puVar3 + 0x34) = 1;
      sub_02057E08();
    }
    break;
  case 1:
    ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),1,*(undefined **)(puVar3 + 0xc));
    uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
    *(undefined4 *)(puVar3 + 0x30) = uVar5;
    *(undefined4 *)(puVar3 + 0x34) = 2;
    break;
  case 2:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      sub_02037AC0(0x5d);
      *(undefined4 *)(puVar3 + 0x34) = 3;
    }
    break;
  case 3:
    iVar6 = sub_02037B38(0x5d);
    if (iVar6 == 0) {
      if ((uRam021d1154 & 2) != 0) {
        *(undefined4 *)(puVar3 + 0x34) = 4;
        sub_02037AC0(0x5c);
        puVar3[0x43] = 5;
      }
    }
    else {
      *(undefined4 *)(puVar3 + 0x34) = 7;
      sub_0205F55C(*(undefined **)(*(int *)(puVar3 + 0x24) + 0x3c));
      (**(code **)(puVar3 + 8))(1,*(undefined4 *)(puVar3 + 0x50));
    }
    break;
  case 4:
    iVar6 = sub_02037B38(0x5d);
    if (iVar6 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 7;
      sub_0205F55C(*(undefined **)(*(int *)(puVar3 + 0x24) + 0x3c));
      (**(code **)(puVar3 + 8))(1,*(undefined4 *)(puVar3 + 0x50));
    }
    puVar3[0x43] = puVar3[0x43] + -1;
    if (puVar3[0x43] == '\0') {
      *(undefined4 *)(puVar3 + 0x34) = 8;
    }
    break;
  case 5:
    sub_02059650(puVar3);
    Heap_Free(puVar3);
    sub_02057F70();
    return 1;
  case 7:
    sub_02059650(puVar3);
    Heap_Free(puVar3);
    return 1;
  case 8:
    iVar6 = sub_02037B38(0x5d);
    if (iVar6 == 0) {
      (**(code **)(puVar3 + 8))(0,*(undefined4 *)(puVar3 + 0x50));
      *(undefined4 *)(puVar3 + 0x34) = 5;
    }
    else {
      *(undefined4 *)(puVar3 + 0x34) = 5;
      (**(code **)(puVar3 + 8))(1,*(undefined4 *)(puVar3 + 0x50));
    }
    break;
  case 9:
    *(undefined4 *)(puVar3 + 0x34) = 10;
    puVar3[0x44] = 5;
    break;
  case 10:
    if (puVar3[0x44] == '\0') {
      puVar4 = PlayerAvatar_GetMapObject(*(undefined **)(puVar4 + 0x40));
      iVar6 = MapObject_IsMovementPaused(puVar4);
      if (iVar6 != 0) {
        *(undefined4 *)(puVar3 + 0x34) = 0xb;
      }
    }
    else {
      puVar3[0x44] = puVar3[0x44] + -1;
    }
    break;
  case 0xb:
    sub_02057E08();
    ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0xd,*(undefined **)(puVar3 + 0xc));
    uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
    *(undefined4 *)(puVar3 + 0x30) = uVar5;
    *(undefined4 *)(puVar3 + 0x34) = 0xc;
    break;
  case 0xc:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 0xd;
    }
    break;
  case 0xd:
    func_0x021e636c(0);
    *(undefined4 *)(puVar3 + 0x34) = 0xe;
    break;
  case 0xe:
    puVar3[0x43] = puVar3[0x43] + -1;
    if (puVar3[0x43] == '\0') {
      sub_02057E08();
      *(undefined4 *)(puVar3 + 0x34) = 0xf;
    }
    break;
  case 0xf:
    sub_020594C8(puVar3,0);
    sub_02058B84(puVar3,0xb);
    *(undefined4 *)(puVar3 + 0x34) = 0x10;
    break;
  case 0x10:
    iVar6 = sub_02058C80(puVar3,*(undefined4 *)(puVar3 + 0x24));
    if (iVar6 != 0) {
      iVar6 = *(int *)(puVar3 + 0x38);
      if (iVar6 == 0) {
        *(undefined4 *)(puVar3 + 0x34) = 0x14;
      }
      else if (iVar6 == 1) {
        *(undefined4 *)(puVar3 + 0x34) = 0x13;
      }
      else if (iVar6 == 2) {
        *(undefined4 *)(puVar3 + 0x34) = 0x11;
      }
    }
    break;
  case 0x11:
    puVar4 = SaveArray_Party_Get(*(undefined **)(*(int *)(puVar3 + 0x24) + 0xc));
    sub_02058AEC(puVar3,*(undefined4 *)(puVar3 + 0x24),puVar4,puVar3[0x3c],0,0xb,param_4);
    *(undefined4 *)(puVar3 + 0x34) = 0x12;
    break;
  case 0x12:
    iVar6 = sub_02058CD8(puVar3,*(undefined4 *)(puVar3 + 0x24));
    if (iVar6 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 0xf;
    }
    break;
  case 0x13:
    FieldSystem_LoadFieldOverlay(*(undefined **)(puVar3 + 0x24));
    if (puVar3[0x88] == '\x03') {
      *(undefined4 *)(puVar3 + 0x34) = 0x1a;
    }
    else {
      puVar3[0x43] = 5;
      *(undefined4 *)(puVar3 + 0x34) = 0x15;
    }
    break;
  case 0x14:
    FieldSystem_LoadFieldOverlay(*(undefined **)(puVar3 + 0x24));
    if (puVar3[0x88] == '\x03') {
      *(undefined4 *)(puVar3 + 0x34) = 0x1a;
    }
    else {
      *(undefined4 *)(puVar3 + 0x34) = 0x16;
    }
    break;
  case 0x15:
    sub_0203996C(puVar3 + 0x3d);
    iVar6 = sub_02058D04(puVar3);
    if (iVar6 != 0) {
      puVar3[0x43] = 5;
      *(undefined4 *)(puVar3 + 0x34) = 0;
    }
    break;
  case 0x16:
    iVar6 = sub_02058D04(puVar3);
    if (iVar6 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 8;
    }
    break;
  case 0x17:
    puVar3[0x44] = puVar3[0x44] + -1;
    if (puVar3[0x44] == '\0') {
      *(undefined4 *)(puVar3 + 0x34) = 0x18;
    }
    break;
  case 0x18:
    sub_02057E08();
    ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0x13,*(undefined **)(puVar3 + 0xc));
    uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
    *(undefined4 *)(puVar3 + 0x30) = uVar5;
    *(undefined4 *)(puVar3 + 0x34) = 0x19;
    break;
  case 0x19:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 0xd;
    }
    break;
  case 0x1a:
    iVar6 = sub_02058D04(puVar3);
    if (iVar6 != 0) {
      iVar6 = sub_02058D24();
      if (iVar6 == 0) {
        puVar3[0x82] = *(int *)(puVar3 + 0x38) != 0;
        sub_020596A8(puVar3,puVar3[0x82]);
        sub_02037AC0(0);
        BufferPlayersName(*(undefined **)(puVar3 + 0x28),0,*(undefined **)(puVar3 + 0x74));
        ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0xe,*(undefined **)(puVar3 + 0xc));
        StringExpandPlaceholders
                  (*(undefined **)(puVar3 + 0x28),*(undefined **)(puVar3 + 0x10),
                   *(undefined **)(puVar3 + 0xc));
        uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0x10));
        *(undefined4 *)(puVar3 + 0x30) = uVar5;
        *(undefined4 *)(puVar3 + 0x34) = 0x1b;
      }
      else {
        *(undefined4 *)(puVar3 + 0x34) = 5;
      }
    }
    break;
  case 0x1b:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      iVar6 = sub_02058D24();
      if (iVar6 == 0) {
        iVar6 = sub_02037B38(0);
        if (iVar6 != 0) {
          sub_020596F0(puVar3);
          *(undefined4 *)(puVar3 + 0x34) = 0x1c;
        }
      }
      else {
        *(undefined4 *)(puVar3 + 0x34) = 5;
      }
    }
    break;
  case 0x1c:
    iVar6 = sub_02059738(puVar3);
    if (iVar6 != 0) {
      sub_02037AC0(1);
      *(undefined4 *)(puVar3 + 0x34) = 0x1d;
    }
    break;
  case 0x1d:
    iVar6 = sub_02037B38(1);
    if (iVar6 != 0) {
      uVar1 = sub_02059748(puVar3);
      puVar3[0x83] = uVar1;
      if ((puVar3[0x82] == '\0') || (puVar3[0x83] == '\0')) {
        *(undefined4 *)(puVar3 + 0x34) = 0x2a;
      }
      else {
        ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0x14,*(undefined **)(puVar3 + 0xc));
        uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
        *(undefined4 *)(puVar3 + 0x30) = uVar5;
        *(undefined4 *)(puVar3 + 0x34) = 0x1e;
      }
    }
    break;
  case 0x1e:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      puVar3[0x89] = 0;
      ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0x11,*(undefined **)(puVar3 + 0xc));
      uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
      *(undefined4 *)(puVar3 + 0x30) = uVar5;
      puVar3[0x84] = 0;
      *(undefined4 *)(puVar3 + 0x34) = 0x1f;
    }
    break;
  case 0x1f:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      sub_020597A8(puVar3);
      sub_02059820(puVar3,puVar3[0x84]);
      *(undefined4 *)(puVar3 + 0x34) = 0x20;
    }
    break;
  case 0x20:
    iVar6 = sub_02059A08(puVar3);
    if (iVar6 == 1) {
      sub_02059AD8(puVar3);
      puVar3[0x84] = puVar3[0x81];
      *(undefined4 *)(puVar3 + 0x34) = 0x24;
    }
    else if (iVar6 == 2) {
      sub_02059AD8(puVar3);
      puVar3[0x84] = 0xff;
      ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0xf,*(undefined **)(puVar3 + 0xc));
      uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
      *(undefined4 *)(puVar3 + 0x30) = uVar5;
      sub_02037AC0(2);
      *(undefined4 *)(puVar3 + 0x34) = 0x27;
    }
    break;
  case 0x21:
    iVar6 = IsPaletteFadeFinished();
    if (iVar6 != 0) {
      sub_020594C8(puVar3,0);
      sub_02058AEC(puVar3,*(undefined4 *)(puVar3 + 0x24),*(undefined4 *)(puVar3 + 0x50),puVar3[0x84]
                   ,1,0xb,param_4);
      *(undefined4 *)(puVar3 + 0x34) = 0x22;
    }
    break;
  case 0x22:
    iVar6 = sub_02058CD8(puVar3,*(undefined4 *)(puVar3 + 0x24));
    if (iVar6 != 0) {
      FieldSystem_LoadFieldOverlay(*(undefined **)(puVar3 + 0x24));
      *(undefined4 *)(puVar3 + 0x34) = 0x23;
    }
    break;
  case 0x23:
    iVar6 = sub_02058D04(puVar3);
    if (iVar6 != 0) {
      *(undefined4 *)(puVar3 + 0x34) = 0x24;
    }
    break;
  case 0x24:
    puVar4 = Party_GetMonByIndex(*(undefined **)(puVar3 + 0x50),(uint)(byte)puVar3[0x84]);
    puVar4 = Mon_GetBoxMon(puVar4);
    BufferBoxMonSpeciesName(*(undefined **)(puVar3 + 0x28),1,puVar4);
    ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0x12,*(undefined **)(puVar3 + 0xc));
    StringExpandPlaceholders
              (*(undefined **)(puVar3 + 0x28),*(undefined **)(puVar3 + 0x10),
               *(undefined **)(puVar3 + 0xc));
    uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0x10));
    *(undefined4 *)(puVar3 + 0x30) = uVar5;
    *(undefined4 *)(puVar3 + 0x34) = 0x25;
    break;
  case 0x25:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if (bVar2 != 0) {
      sub_0205993C(puVar3,0);
      *(undefined4 *)(puVar3 + 0x34) = 0x26;
    }
    break;
  case 0x26:
    iVar6 = sub_02059A08(puVar3);
    if (iVar6 == 1) {
      if (puVar3[0x81] == '\x01') {
        sub_02059AD8(puVar3);
        ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0xe,*(undefined **)(puVar3 + 0xc));
        StringExpandPlaceholders
                  (*(undefined **)(puVar3 + 0x28),*(undefined **)(puVar3 + 0x10),
                   *(undefined **)(puVar3 + 0xc));
        uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0x10));
        *(undefined4 *)(puVar3 + 0x30) = uVar5;
        sub_02037AC0(2);
        *(undefined4 *)(puVar3 + 0x34) = 0x27;
      }
      else {
        func_0x021e636c(0);
        *(undefined4 *)(puVar3 + 0x34) = 0x21;
      }
    }
    else if (iVar6 == 2) {
      sub_02059AD8(puVar3);
      ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0x11,*(undefined **)(puVar3 + 0xc));
      uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
      *(undefined4 *)(puVar3 + 0x30) = uVar5;
      *(undefined4 *)(puVar3 + 0x34) = 0x1f;
    }
    break;
  case 0x27:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if ((bVar2 != 0) && (iVar6 = sub_02037B38(2), iVar6 != 0)) {
      sub_0205975C(puVar3);
      *(undefined4 *)(puVar3 + 0x34) = 0x29;
    }
    break;
  case 0x29:
    iVar6 = sub_02059798(puVar3);
    if (iVar6 != 0) {
      if (puVar3[0x84] == -1) {
        sub_02037AC0(4);
        *(undefined4 *)(puVar3 + 0x34) = 0x2c;
      }
      else if (puVar3[0x85] == -1) {
        *(undefined4 *)(puVar3 + 0x34) = 0x2a;
      }
      else {
        sub_020597D4(puVar3);
        sub_02037AC0(0x5d);
        *(undefined4 *)(puVar3 + 0x34) = 2;
      }
    }
    break;
  case 0x2a:
    ReadMsgDataIntoString(*(undefined **)(puVar3 + 0x2c),0xf,*(undefined **)(puVar3 + 0xc));
    uVar5 = sub_02059478(puVar3,*(undefined4 *)(puVar3 + 0xc));
    *(undefined4 *)(puVar3 + 0x30) = uVar5;
    puVar3[0x43] = 0;
    *(undefined4 *)(puVar3 + 0x34) = 0x2b;
    break;
  case 0x2b:
    bVar2 = DialogBox_IsPrintFinished((byte)*(undefined4 *)(puVar3 + 0x30));
    if ((bVar2 != 0) && (puVar3[0x43] = puVar3[0x43] + '\x01', 0x3c < (byte)puVar3[0x43])) {
      sub_02037AC0(4);
      *(undefined4 *)(puVar3 + 0x34) = 0x2c;
    }
    break;
  case 0x2c:
    iVar6 = sub_02037B38(4);
    if (iVar6 != 0) {
      ClearFrameAndWindow2(puVar3 + 0x14,0);
      (**(code **)(puVar3 + 8))(0,0);
      *(undefined4 *)(puVar3 + 0x34) = 5;
    }
  }
  return 0;
}

