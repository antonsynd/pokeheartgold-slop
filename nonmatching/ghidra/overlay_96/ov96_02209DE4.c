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
undefined4 NewMsgDataFromNarc();
undefined4 PokeathlonCourse_GetParticipantUnk04();
undefined4 ov96_021E5F24();
undefined4 MessageFormat_New();
undefined4 CopyU16ArrayToString();
undefined4 FillWindowPixelBuffer();
undefined4 AddWindow();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ClearWindowTilemap();
extern undefined ov96_0221CC60;

void ov96_02209DE4(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined *puVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  
  puVar1 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4();
  uVar2 = NewMsgDataFromNarc(1,0x1b,0x135,*puVar1);
  puVar1[0x96] = uVar2;
  uVar2 = MessageFormat_New(*puVar1);
  puVar1[0x97] = uVar2;
  puVar3 = &ov96_0221CC60;
  iVar5 = 0;
  puVar4 = puVar1 + 0x86;
  do {
    AddWindow(puVar1[1],puVar4,puVar3);
    FillWindowPixelBuffer(puVar4,0);
    ClearWindowTilemap(puVar4);
    iVar5 = iVar5 + 1;
    puVar3 = puVar3 + 8;
    puVar4 = puVar4 + 4;
  } while (iVar5 < 4);
  uVar2 = ov96_021E5F24(param_1);
  iVar5 = PokeathlonCourse_GetParticipantUnk04(param_1,uVar2);
  iVar6 = 0;
  puVar4 = puVar1;
  do {
    uVar2 = String_New(0xb,*puVar1);
    puVar4[6] = uVar2;
    CopyU16ArrayToString(uVar2,iVar5 + 0x12);
    iVar6 = iVar6 + 1;
    puVar4 = puVar4 + 1;
    iVar5 = iVar5 + 0x28;
  } while (iVar6 < 3);
  return;
}

