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
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 Mon_GetBoxMon(undefined4);
undefined4 BufferBoxMonNickname(undefined4, undefined4, undefined4);
undefined4 func_0x02077dac(undefined4, undefined4) __asm__("sub_02077DAC");
undefined4 func_0x0223a880(undefined4, undefined4, undefined4) __asm__("sub_0223A880");
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 String_Delete(undefined4);
undefined4 func_0x02077ce8(undefined4, undefined4, undefined4) __asm__("sub_02077CE8");
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);
undefined4 ReadMsgDataIntoString(undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 BufferIntegerAsString(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov08_02220224(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  byte bVar7;
  
  iVar1 = *param_1;
  uVar2 = func_0x02077ce8(*(undefined2 *)(iVar1 + 0x22),0,*(undefined4 *)(iVar1 + 0xc));
  uVar3 = func_0x0223a880(*(undefined4 *)(iVar1 + 8),*(undefined4 *)(iVar1 + 0x28),
                          *(undefined1 *)(iVar1 + (uint)*(byte *)(iVar1 + 0x11) + 0x2c));
  uVar4 = GetMonData(uVar3,0xa3,0);
  uVar4 = uVar4 & 0xffff;
  iVar5 = func_0x02077dac(uVar2,0xf);
  bVar7 = iVar5 != 0;
  iVar5 = func_0x02077dac(uVar2,0x10);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 2;
  }
  iVar5 = func_0x02077dac(uVar2,0x11);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 4;
  }
  iVar5 = func_0x02077dac(uVar2,0x12);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 8;
  }
  iVar5 = func_0x02077dac(uVar2,0x13);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 0x10;
  }
  iVar5 = func_0x02077dac(uVar2,0x14);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 0x20;
  }
  iVar5 = func_0x02077dac(uVar2,0x15);
  if (iVar5 != 0) {
    bVar7 = bVar7 | 0x40;
  }
  if ((*(ushort *)(param_1 + (uint)*(byte *)(iVar1 + 0x11) * 0x14 + 5) == 0) && (uVar4 != 0)) {
    uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x58);
    uVar3 = Mon_GetBoxMon(uVar3);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
    String_Delete(uVar6);
  }
  else if (uVar4 == *(ushort *)(param_1 + (uint)*(byte *)(iVar1 + 0x11) * 0x14 + 5)) {
    iVar1 = func_0x02077dac(uVar2,0x24);
    if ((iVar1 == 0) && (iVar1 = func_0x02077dac(uVar2,0x25), iVar1 == 0)) {
      if (bVar7 == 1) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x5c);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 2) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x53);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 4) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x55);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 8) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x56);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 0x10) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x54);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 0x20) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x5a);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else if (bVar7 == 0x40) {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x5b);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
      else {
        uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x59);
        uVar3 = Mon_GetBoxMon(uVar3);
        BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
        StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
        String_Delete(uVar6);
      }
    }
    else {
      ReadMsgDataIntoString(param_1[0x7ea],0x57,param_1[0x7ec]);
    }
  }
  else {
    uVar6 = NewString_ReadMsgData(param_1[0x7ea],0x52);
    uVar3 = Mon_GetBoxMon(uVar3);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar3);
    BufferIntegerAsString
              (param_1[0x7eb],1,
               uVar4 - *(ushort *)(param_1 + (uint)*(byte *)(iVar1 + 0x11) * 0x14 + 5),3,0,1);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar6);
    String_Delete(uVar6);
  }
  Heap_Free(uVar2);
  return;
}

