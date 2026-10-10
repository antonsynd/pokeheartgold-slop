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
undefined4 GF3dRender_BindModelSet(void *, void *);
undefined4 NARC_ReadFile(void *, unsigned int, void *);
void * NNS_G3dGetMdlSet(void *);
undefined4 NNS_G3dRenderObjInit(void *, void *);
undefined4 GF3dRender_ResTexIsLoaded(void *);
undefined4 GF_AssertFail(void);

undefined *
ov01_021F67B4(undefined *param_1,uint param_2,undefined *param_3,undefined4 *param_4,
             undefined *param_5)

{
  int iVar1;
  undefined *puVar2;
  int *piVar3;

  NARC_ReadFile(param_1,param_2,(undefined *)*param_4);
  if (((param_5 != (undefined *)0x0) && (iVar1 = GF3dRender_ResTexIsLoaded(param_5), iVar1 == 1)) &&
     (iVar1 = GF3dRender_BindModelSet((undefined *)*param_4,param_5), iVar1 == 0)) {
    GF_AssertFail();
  }
  puVar2 = NNS_G3dGetMdlSet((undefined *)*param_4);
  if (puVar2[9] != '\x01') {
    GF_AssertFail();
  }
  puVar2 = NNS_G3dGetMdlSet((undefined *)*param_4);
  if (puVar2 != (undefined *)0x0) {
    if ((puVar2 + 8 == (undefined *)0x0) || (puVar2[9] == '\0')) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(puVar2 + 8 + *(ushort *)(puVar2 + 0xe) + 4);
    }
    if (piVar3 != (int *)0x0) {
      puVar2 = puVar2 + *piVar3;
      goto LAB_021f681a;
    }
  }
  puVar2 = (undefined *)0x0;
LAB_021f681a:
  if (puVar2 == (undefined *)0x0) {
    GF_AssertFail();
  }
  NNS_G3dRenderObjInit(param_3,puVar2);
  return puVar2;
}

