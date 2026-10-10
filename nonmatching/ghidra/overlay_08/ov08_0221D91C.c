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
undefined4 ov08_0221DAC4(undefined4);
undefined4 BufferTrainerNameFromDataStruct(undefined4, undefined4, undefined4);
undefined4 Mon_GetBoxMon(undefined4);
undefined4 ov08_0221DB24(void);
undefined4 func_0x0223ab6c(undefined4, undefined4) __asm__("sub_0223AB6C");
undefined4 ReadMsgDataIntoString(undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 String_Delete(undefined4);
undefined4 BufferBoxMonNickname(undefined4, undefined4, undefined4);
undefined4 func_0x0223a9f4(undefined4, undefined4) __asm__("sub_0223A9F4");
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);

undefined4 ov08_0221D91C(int *param_1)

{
  char cVar1;
  byte bVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int *piVar6;
  
  piVar6 = param_1 + (uint)*(byte *)(*param_1 + 0x11) * 0x14 + 1;
  iVar3 = ov08_0221DB24();
  if (iVar3 == 1) {
    uVar4 = NewString_ReadMsgData(param_1[0x7ea],0x50);
    uVar5 = func_0x0223ab6c(*(undefined4 *)(*param_1 + 8),*(undefined4 *)(*param_1 + 0x28));
    uVar5 = func_0x0223a9f4(*(undefined4 *)(*param_1 + 8),uVar5);
    BufferTrainerNameFromDataStruct(param_1[0x7eb],0,uVar5);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar4);
    String_Delete(uVar4);
    return 0;
  }
  if ((short)piVar6[4] == 0) {
    uVar4 = NewString_ReadMsgData(param_1[0x7ea],0x4d);
    uVar5 = Mon_GetBoxMon(*piVar6);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar5);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar4);
    String_Delete(uVar4);
    return 0;
  }
  iVar3 = *param_1;
  cVar1 = *(char *)(iVar3 + (uint)*(byte *)(iVar3 + 0x11) + 0x2c);
  if ((*(char *)(iVar3 + 0x14) == cVar1) || (*(char *)(iVar3 + 0x15) == cVar1)) {
    uVar4 = NewString_ReadMsgData(param_1[0x7ea],0x4c);
    uVar5 = Mon_GetBoxMon(*piVar6);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar5);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar4);
    String_Delete(uVar4);
    return 0;
  }
  iVar3 = ov08_0221DAC4(param_1);
  if (iVar3 == 1) {
    ReadMsgDataIntoString(param_1[0x7ea],0x4f,param_1[0x7ec]);
    return 0;
  }
  iVar3 = *param_1;
  if ((*(char *)(iVar3 + 0x12) != '\x06') &&
     (bVar2 = *(byte *)(iVar3 + 0x11),
     *(char *)(iVar3 + 0x12) == *(char *)(iVar3 + (uint)bVar2 + 0x2c))) {
    uVar4 = NewString_ReadMsgData(param_1[0x7ea],0x5d);
    uVar5 = Mon_GetBoxMon(param_1[(uint)bVar2 * 0x14 + 1]);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar5);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar4);
    String_Delete(uVar4);
    return 0;
  }
  if (*(short *)(iVar3 + 0x24) != 0) {
    bVar2 = *(byte *)((int)param_1 + 0x2076);
    uVar4 = NewString_ReadMsgData(param_1[0x7ea],0x4e);
    uVar5 = Mon_GetBoxMon(param_1[(uint)bVar2 * 0x14 + 1]);
    BufferBoxMonNickname(param_1[0x7eb],0,uVar5);
    StringExpandPlaceholders(param_1[0x7eb],param_1[0x7ec],uVar4);
    String_Delete(uVar4);
    return 0;
  }
  return 1;
}

