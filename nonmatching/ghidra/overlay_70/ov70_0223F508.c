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
undefined4 BufferIntegerAsString();
undefined4 GetBoxMonData();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 ReadMsgDataIntoString();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 CalcBoxMonLevel();
undefined4 ov70_02245084();
undefined4 FillWindowPixelBuffer();
undefined4 String_New();
extern undefined ov70_022465EC;

void ov70_0223F508(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
                  undefined2 *param_5)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  
  uVar2 = String_New(0xb,0x3d);
  uVar3 = String_New(0xb,0x3d);
  GetBoxMonData(param_4,0x77,uVar2);
  iVar4 = GetBoxMonData(param_4,0x6f,0);
  iVar9 = iVar4 + 1;
  uVar5 = CalcBoxMonLevel(param_4);
  uVar6 = NewString_ReadMsgData(param_1,0x68);
  BufferIntegerAsString(param_2,3,uVar5,3,0,1);
  uVar7 = ReadMsgData_ExpandPlaceholders(param_2,param_1,0x6c,0x3d);
  if (iVar9 != 3) {
    ReadMsgDataIntoString(param_1,*(undefined4 *)(iVar9 * 4 + 0x2245910),uVar3);
  }
  iVar8 = 0;
  iVar10 = param_3;
  do {
    FillWindowPixelBuffer(param_3,0);
    iVar8 = iVar8 + 1;
    param_3 = param_3 + 0x10;
  } while (iVar8 < 3);
  ov70_02245084(iVar10,uVar6,0,0,0,0xf0200);
  ov70_02245084(iVar10 + 0x10,uVar2,0,0,0,0x10200);
  ov70_02245084(iVar10 + 0x20,uVar7,0,0,2,0x10200);
  if (iVar9 != 3) {
    ov70_02245084(iVar10 + 0x10,uVar3,0x46,0,0,*(undefined4 *)(&ov70_022465EC + iVar4 * 4),
                  iVar10 + 0x10);
  }
  uVar1 = GetBoxMonData(param_4,5,0);
  *param_5 = uVar1;
  *(char *)(param_5 + 1) = (char)iVar9;
  *(char *)((int)param_5 + 3) = (char)uVar5;
  String_Delete(uVar7);
  String_Delete(uVar3);
  String_Delete(uVar2);
  String_Delete(uVar6);
  return;
}

