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
undefined4 SpriteSystem_LoadPlttResObj();
undefined4 String_New();
undefined4 NARC_New();
undefined4 GF_AssertFail();
undefined4 Heap_Alloc();
undefined4 GfGfxLoader_GetScrnData();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_GetParticipantUnk04();
undefined4 CopyU16ArrayToString();
undefined4 ov96_02219A08();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 sub_02074490();

undefined4 *
ov96_022194C4(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,
             undefined1 param_7,undefined4 param_8,undefined4 param_9)

{
  undefined2 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;

  if (param_1 == 0) {
    GF_AssertFail();
  }
  if (param_2 == 0) {
    GF_AssertFail();
  }
  if (param_3 == 0) {
    GF_AssertFail();
  }
  if (param_4 == 0) {
    GF_AssertFail();
  }
  if (param_5 == 0) {
    GF_AssertFail();
  }
  if (param_6 == 0) {
    GF_AssertFail();
  }
  puVar2 = (undefined4 *)Heap_Alloc(param_8,200);
  func_0x020d4994(puVar2,0,200);
  puVar2[2] = param_1;
  puVar2[3] = param_2;
  puVar2[4] = param_3;
  *(undefined1 *)((int)puVar2 + 0x22) = param_7;
  puVar2[1] = param_8;
  puVar2[5] = param_4;
  puVar2[6] = param_5;
  puVar2[7] = param_6;
  *puVar2 = param_9;
  uVar3 = NARC_New(0x14,puVar2[1]);
  puVar2[9] = uVar3;
  uVar3 = GfGfxLoader_GetScrnData(0xf2,7,1,puVar2 + 0xb,puVar2[1]);
  puVar2[10] = uVar3;
  uVar3 = sub_02074490();
  uVar1 = SpriteSystem_LoadPlttResObj(param_1,param_2,0x14,uVar3,0,3,2,0x2714);
  *(undefined2 *)(puVar2 + 8) = uVar1;
  uVar3 = ov96_021E5F24(param_9);
  iVar4 = PokeathlonCourse_GetParticipantUnk04(param_9,uVar3);
  iVar6 = 0;
  puVar5 = puVar2;
  do {
    uVar3 = String_New(0xb,puVar2[1]);
    puVar5[0x2c] = uVar3;
    CopyU16ArrayToString(puVar5[0x2c],iVar4 + 0x12);
    iVar6 = iVar6 + 1;
    puVar5 = puVar5 + 1;
    iVar4 = iVar4 + 0x28;
  } while (iVar6 < 3);
  ov96_02219A08(puVar2);
  return puVar2;
}

