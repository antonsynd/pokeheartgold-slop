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
void * PokeathlonCourse_GetParticipantData(void *, int);
undefined4 ov96_021EEBF8();
void * PokeathlonCourse_GetParticipantUnk04(void *, int);
undefined4 GetMonSpriteCharAndPlttNarcIdsEx(void *, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned int);
undefined4 Heap_Free(void *);
undefined4 ov96_021EAF60();
undefined4 ov96_021E6168();
void * GfGfxLoader_GetPlttData(int, int, void *, int);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);

void ov96_021EC790(undefined *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined *puVar2;
  char cVar3;
  int *piVar4;
  int iStack_44;
  int iStack_3c;
  ushort auStack_38 [2];
  ushort uStack_34;
  ushort auStack_28 [3];
  byte bStack_22;
  byte bStack_21;
  uint uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  piVar1 = (int *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
  PokeathlonCourse_GetParticipantUnk04(param_1,param_2);
  PokeathlonCourse_GetParticipantData(param_1,param_2);
  iStack_44 = 0;
  cVar3 = '\x01';
  piVar4 = piVar1;
  do {
    ov96_021E6168(param_1,param_2,iStack_44,auStack_28);
    ov96_021EEBF8(piVar4[0x1d],auStack_28,1,0,*piVar1,0);
    GetMonSpriteCharAndPlttNarcIdsEx
              ((undefined *)auStack_38,auStack_28[0],bStack_21,2,bStack_22,(byte)auStack_28[1],
               uStack_1c);
    puVar2 = GfGfxLoader_GetPlttData
                       ((uint)auStack_38[0],(uint)uStack_34,(undefined *)&iStack_3c,*piVar1);
    ov96_021EAF60(piVar1[5],cVar3,1,*(undefined4 *)(iStack_3c + 0xc));
    Heap_Free(puVar2);
    piVar4 = piVar4 + 1;
    iStack_44 = iStack_44 + 1;
    cVar3 = cVar3 + '\x03';
  } while (iStack_44 < 3);
  return;
}

