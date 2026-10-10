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
undefined4 String_Delete(void *);
void * ReadMsgData_ExpandPlaceholders(void *, void *, unsigned int, int);
undefined4 GetItemNameIntoString(void *, unsigned short, int);
void * NewString_ReadMsgData(void *, int);
undefined4 GetBoxMonData(void *, int, void *);
undefined4 BufferIntegerAsString(void *, unsigned int, int, unsigned int, int, int);
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 ov70_02245084();
void * String_New(unsigned int, int);
extern undefined ov70_0224649C;

void ov70_0223A578(undefined *param_1,undefined *param_2,undefined *param_3,undefined *param_4,
                  undefined *param_5,short *param_6)

{
  char cVar1;
  short sVar2;
  short sVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  undefined *puVar7;
  int iVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined *puVar11;
  undefined *puVar12;
  undefined *puVar13;
  int iVar14;
  undefined *puVar15;

  puVar4 = String_New(0x16,0x3d);
  puVar5 = String_New(0x12,0x3d);
  GetBoxMonData(param_5,0x77,puVar4);
  sVar2 = *param_6;
  sVar3 = param_6[1];
  cVar1 = *(char *)((int)param_6 + 3);
  uVar6 = GetBoxMonData(param_5,6,(undefined *)0x0);
  puVar7 = NewString_ReadMsgData(param_1,0x49);
  iVar8 = (char)sVar3 * 4;
  puVar9 = NewString_ReadMsgData(param_1,*(int *)(iVar8 + 0x2245910));
  puVar10 = NewString_ReadMsgData(param_1,0x6a);
  BufferIntegerAsString(param_3,3,(int)cVar1,3,0,1);
  puVar11 = ReadMsgData_ExpandPlaceholders(param_3,param_1,0x6b,0x3d);
  puVar12 = NewString_ReadMsgData(param_2,(int)sVar2);
  GetItemNameIntoString(puVar5,(ushort)uVar6,0x3d);
  puVar13 = NewString_ReadMsgData(param_1,0x3b);
  iVar14 = 0;
  puVar15 = param_4;
  do {
    FillWindowPixelBuffer(puVar15,0);
    iVar14 = iVar14 + 1;
    puVar15 = puVar15 + 0x10;
  } while (iVar14 < 6);
  ov70_02245084(param_4,puVar4,0,0,0,0x10200);
  if ((char)sVar3 != 3) {
    ov70_02245084(param_4,puVar9,0x40,0,0,*(undefined4 *)(&ov70_0224649C + iVar8));
  }
  ov70_02245084(param_4 + 0x10,puVar12,0,0,0,0x10200);
  ov70_02245084(param_4 + 0x20,puVar10,0,0,0,0x10200);
  ov70_02245084(param_4 + 0x30,puVar11,0,0,0,0x10200);
  ov70_02245084(param_4 + 0x40,puVar7,0,0,0,0xf0200);
  ov70_02245084(param_4 + 0x50,puVar5,0,0,0,0x10200);
  ov70_02245084(param_4 + 0x60,puVar13,0,0,0,0xf0200);
  String_Delete(puVar7);
  String_Delete(puVar5);
  String_Delete(puVar10);
  String_Delete(puVar11);
  String_Delete(puVar9);
  String_Delete(puVar4);
  String_Delete(puVar12);
  String_Delete(puVar13);
  return;
}

