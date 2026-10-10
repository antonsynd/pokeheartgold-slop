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
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 String_GetLength();
undefined4 ov88_0225983C();
undefined4 FillWindowPixelBuffer();
undefined4 String_GetLineN();
undefined4 AddWindowParameterized();
undefined4 ReadMsgDataIntoString();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x02003068() __asm__("sub_02003068");
undefined4 String_Delete();
undefined4 String_New();
undefined4 ScheduleWindowCopyToVram();
undefined4 NewMsgDataFromNarc();
undefined4 String_CountLines();
extern undefined ov88_02259980;
extern undefined UNK_02259a60 __asm__("sub_02259A60");
extern undefined ov88_02259A68;
undefined4 DestroyMsgData();

void ov88_0225967C(int param_1,undefined4 *param_2,undefined4 param_3)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined *puVar7;
  uint uVar8;
  uint uVar9;
  int iStack_44;
  int iStack_38;
  undefined2 *puStack_34;
  undefined4 *puStack_30;
  uint uStack_2c;
  int iStack_1c;

  func_0x020e5b44(param_1,0,0x70);
  uVar2 = NewMsgDataFromNarc(0,0x1b,0x2f5,param_3);
  uVar3 = String_New(0x80,param_3);
  iStack_1c = 0;
  puVar7 = &ov88_02259980;
  puStack_30 = (undefined4 *)&ov88_02259A68;
  puStack_34 = (undefined2 *)&UNK_02259a60;
  iStack_38 = param_1 + 0x40;
  iStack_44 = param_1;
  do {
    ov88_0225983C(iStack_38,*puStack_34,*puStack_30);
    AddWindowParameterized
              (*param_2,iStack_44,0,*puVar7,puVar7[1],puVar7[2],puVar7[3],puVar7[6],
               *(undefined2 *)(puVar7 + 4));
    FillWindowPixelBuffer(iStack_44,0);
    ReadMsgDataIntoString(uVar2,iStack_1c,uVar3);
    uVar4 = String_CountLines(uVar3);
    uVar8 = (uint)(byte)puVar7[8];
    iVar5 = String_GetLength(uVar3);
    uVar6 = String_New(iVar5 + 1,param_3);
    uVar9 = 0;
    if (uVar4 != 0) {
      do {
        String_GetLineN(uVar6,uVar3,uVar9);
        cVar1 = puVar7[9];
        if (cVar1 == '\0') {
          uStack_2c = (uint)(byte)puVar7[7];
        }
        else if (cVar1 == '\x01') {
          iVar5 = func_0x02003068(0,uVar6,0);
          uStack_2c = (uint)(byte)puVar7[7] - (iVar5 + 1U >> 1);
        }
        else if (cVar1 == '\x02') {
          iVar5 = func_0x02003068(0,uVar6,0);
          uStack_2c = (uint)(byte)puVar7[7] - iVar5;
        }
        AddTextPrinterParameterizedWithColor
                  (iStack_44,0,uVar6,uStack_2c,uVar8,0xff,*(undefined4 *)(puVar7 + 0xc),0);
        uVar9 = uVar9 + 1;
        uVar8 = uVar8 + 0x10;
      } while (uVar9 < uVar4);
    }
    String_Delete(uVar6);
    ScheduleWindowCopyToVram(iStack_44);
    puVar7 = puVar7 + 0x10;
    puStack_30 = puStack_30 + 1;
    puStack_34 = puStack_34 + 1;
    iStack_38 = iStack_38 + 0xc;
    iStack_44 = iStack_44 + 0x10;
    iStack_1c = iStack_1c + 1;
  } while (iStack_1c < 4);
  String_Delete(uVar3);
  DestroyMsgData(uVar2);
  return;
}

