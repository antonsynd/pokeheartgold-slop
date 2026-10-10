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
undefined4 func_0x02077d88(undefined4, undefined4, undefined4) __asm__("sub_02077D88");
undefined4 BufferMoveName(undefined4, undefined4, undefined4);
undefined4 ov08_02223390(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0223a7e0(undefined4) __asm__("sub_0223A7E0");
undefined4 func_0x0223ac20(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0223AC20");
undefined4 Mon_GetBoxMon(undefined4);
undefined4 ov08_02223374(void);
undefined4 BufferPlayersName(undefined4, undefined4, undefined4);
undefined4 func_0x0223a880(undefined4, undefined4, undefined4) __asm__("sub_0223A880");
undefined4 NewMsgDataFromNarc(undefined4, undefined4, undefined4, undefined4);
undefined4 NewString_ReadMsgData(undefined4, undefined4);
undefined4 String_Delete(undefined4);
undefined4 BufferBoxMonNickname(undefined4, undefined4, undefined4);
undefined4 ov08_02223B20(undefined4);
undefined4 StringExpandPlaceholders(undefined4, undefined4, undefined4);
undefined4 ReadMsgDataIntoString(undefined4, undefined4, undefined4);
undefined4 func_0x0223a7f4(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0223A7F4");
undefined4 PCStorage_FindFirstBoxWithEmptySlot(undefined4);
undefined4 DestroyMsgData(undefined4);
undefined4 func_0x0223ab3c(undefined4) __asm__("sub_0223AB3C");
undefined4 Party_GetCount(undefined4);

undefined4
ov08_02222B8C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;

  puVar6 = (undefined4 *)*param_1;
  if (*(char *)((int)param_1 + 0x114d) == '\x03') {
    uVar3 = ov08_02223374();
    iVar5 = func_0x02077d88(*(undefined2 *)(puVar6 + 7),7,puVar6[3]);
    if (((puVar6[6] != 0) && (*(short *)(puVar6 + 7) != 0x37)) && (iVar5 != 3)) {
      uVar3 = func_0x0223a880(*puVar6,puVar6[4],uVar3);
      uVar4 = NewString_ReadMsgData(param_1[4],0x2e);
      uVar3 = Mon_GetBoxMon(uVar3);
      BufferBoxMonNickname(param_1[5],0,uVar3);
      BufferMoveName(param_1[5],1,0x175);
      StringExpandPlaceholders(param_1[5],param_1[6],uVar4);
      String_Delete(uVar4);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
    iVar1 = func_0x0223ac20(*puVar6,puVar6[4],uVar3,0,*(undefined2 *)(puVar6 + 7));
    if (iVar1 == 1) {
      ov08_02223390(*puVar6,*(undefined2 *)(puVar6 + 7),*(undefined1 *)((int)param_1 + 0x114d),
                    puVar6[3]);
      return 0xd;
    }
    if (iVar5 == 3) {
      uVar2 = func_0x0223a7e0(*puVar6);
      if ((uVar2 & 1) == 0) {
        ov08_02223390(*puVar6,*(undefined2 *)(puVar6 + 7),*(undefined1 *)((int)param_1 + 0x114d),
                      puVar6[3]);
        return 0xd;
      }
      uVar3 = NewMsgDataFromNarc(1,0x1b,0x28,puVar6[3]);
      uVar4 = NewString_ReadMsgData(uVar3,0x25);
      BufferPlayersName(param_1[5],0,puVar6[1]);
      StringExpandPlaceholders(param_1[5],param_1[6],uVar4);
      String_Delete(uVar4);
      DestroyMsgData(uVar3);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
    ReadMsgDataIntoString(param_1[4],0x22,param_1[6]);
    ov08_02223B20(param_1);
    *(undefined1 *)((int)param_1 + 0x114b) = 8;
    return 9;
  }
  if (*(char *)((int)param_1 + 0x114d) == '\x02') {
    if (*(char *)((int)puVar6 + 0x22) == '\x01') {
      ReadMsgDataIntoString(param_1[4],0x2c,param_1[6]);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
    if (*(char *)((int)puVar6 + 0x23) == '\x01') {
      ReadMsgDataIntoString(param_1[4],0x2f,param_1[6]);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
    if (*(char *)(puVar6 + 9) == '\x01') {
      ReadMsgDataIntoString(param_1[4],0x30,param_1[6]);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
    uVar3 = func_0x0223a7f4(*puVar6,puVar6[4],param_3,param_4,param_4);
    uVar4 = func_0x0223ab3c(*puVar6);
    iVar5 = Party_GetCount(uVar3);
    if ((iVar5 == 6) && (iVar5 = PCStorage_FindFirstBoxWithEmptySlot(uVar4), iVar5 == 0x12)) {
      ReadMsgDataIntoString(param_1[4],0x2d,param_1[6]);
      ov08_02223B20(param_1);
      *(undefined1 *)((int)param_1 + 0x114b) = 8;
      return 9;
    }
  }
  return 0xd;
}

