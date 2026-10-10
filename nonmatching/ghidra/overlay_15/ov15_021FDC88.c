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
undefined4 func_0x02023254() __asm__("sub_02023254");
undefined4 GF3dRender_DrawModel();
undefined4 RequestSwap3DBuffers();
undefined4 ov15_021FDD54();
undefined4 Camera_PushLookAtToNNSGlb();
undefined4 ov15_021FDB2C();
undefined4 func_0x02026e48() __asm__("sub_02026E48");
extern undefined ov15_022005CC;

void ov15_021FDC88(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 auStack_30 [9];

  puVar5 = (undefined4 *)&ov15_022005CC;
  puVar4 = auStack_30;
  iVar3 = 4;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  *puVar4 = *puVar5;
  uStack_3c = 0x1000;
  uStack_38 = 0x1000;
  uStack_34 = 0x1000;
  ov15_021FDB2C(param_1 + 0x808,*(undefined1 *)(param_1 + 0x615));
  func_0x02023254(param_1 + 0x904,*(undefined4 *)(param_1 + 0x910),param_1 + 0x914,
                  *(undefined2 *)(param_1 + 0x91e),*(undefined1 *)(param_1 + 0x91c),1,
                  *(undefined4 *)(param_1 + 0x818));
  func_0x02026e48();
  Camera_PushLookAtToNNSGlb();
  iVar3 = param_1 + 0x81c;
  ov15_021FDD54(*(undefined4 *)(iVar3 + *(int *)(param_1 + 0x900) * 4 + 0xa0));
  ov15_021FDD54(*(undefined4 *)(iVar3 + *(int *)(param_1 + 0x900) * 4 + 0xc0));
  ov15_021FDD54(*(undefined4 *)(param_1 + 0x8fc));
  GF3dRender_DrawModel(iVar3,param_1 + 0x934,auStack_30,&uStack_3c);
  RequestSwap3DBuffers(0,0);
  return;
}

