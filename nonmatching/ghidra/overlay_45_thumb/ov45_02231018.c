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
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 LocationGmmDatIndexGetByCountryMsgNo(int);
undefined4 GF_AssertFail(void);
undefined4 LocationGmmDatGetEarthPlaceDatId(int);
undefined4 Heap_Free(void *);
void * GfGfxLoader_LoadFromOpenNarc_GetSizeOut(void *, int, int, int, int, void *);

void ov45_02231018(undefined *param_1,int param_2,int param_3,int param_4,int *param_5)

{
  short sVar1;
  undefined *puVar2;
  uint uVar3;
  int iVar4;
  uint uStack_1c;
  uint uStack_18;

  puVar2 = GfGfxLoader_LoadFromOpenNarc_GetSizeOut(param_1,0x12,0,param_2,0,(undefined *)&uStack_18)
  ;
  uVar3 = _u32_div_f(uStack_18,6);
  if ((int)uVar3 <= param_3) {
    GF_AssertFail();
  }
  sVar1 = *(short *)(puVar2 + param_3 * 6);
  if (sVar1 != 2) {
    *param_5 = (int)*(short *)(puVar2 + param_3 * 6 + 4);
  }
  Heap_Free(puVar2);
  if (sVar1 == 2) {
    iVar4 = LocationGmmDatIndexGetByCountryMsgNo(param_3);
    iVar4 = LocationGmmDatGetEarthPlaceDatId(iVar4);
    puVar2 = GfGfxLoader_LoadFromOpenNarc_GetSizeOut
                       (param_1,iVar4,0,param_2,0,(undefined *)&uStack_1c);
    if (param_4 < (int)(uStack_1c >> 2)) {
      sVar1 = *(short *)(puVar2 + param_4 * 4 + 2);
    }
    else {
      GF_AssertFail();
      sVar1 = *(short *)(puVar2 + 2);
    }
    *param_5 = (int)sVar1;
    Heap_Free(puVar2);
  }
  return;
}

