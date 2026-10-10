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
undefined4 PokeathlonCourse_GetField1EF();
undefined4 ov96_021E8484();
undefined4 PokeathlonCourse_ResetField1EF();
undefined4 PokeathlonCourse_IncrementField1EF();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 PokeathlonCourse_GetParticipantCount();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 PokeathlonCourse_GetParticipantData();

void ov96_021E9718(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  
  iVar2 = ov96_021E5F24(param_4);
  if (iVar2 == 0) {
    uVar3 = PokeathlonCourse_GetParticipantData(param_4,param_1);
    func_0x020e5ad8(uVar3,param_3,param_2);
    PokeathlonCourse_IncrementField1EF(param_4);
    iVar2 = PokeathlonCourse_GetParticipantCount(param_4);
    iVar4 = PokeathlonCourse_GetField1EF(param_4);
    if (iVar2 == iVar4) {
      uVar5 = PokeathlonCourse_GetField1EF(param_4);
      if (uVar5 < 4) {
        cVar1 = PokeathlonCourse_GetField1EF(param_4);
        ov96_021E8484(param_4,'\x04' - cVar1);
      }
      PokeathlonCourse_ResetField1EF(param_4);
      PokeathlonCourse_SetStateField07(param_4,4);
    }
  }
  return;
}

