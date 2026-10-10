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
undefined4 func_0x021efec8() __asm__("sub_021EFEC8");
undefined4 func_0x021f0614() __asm__("sub_021F0614");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x021eff28() __asm__("sub_021EFF28");
undefined4 func_0x021f0718() __asm__("sub_021F0718");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x021efcf8() __asm__("sub_021EFCF8");
undefined4 func_0x020247f4() __asm__("sub_020247F4");
undefined4 func_0x021fb514() __asm__("sub_021FB514");
undefined4 func_0x021efe44() __asm__("sub_021EFE44");
undefined4 Sprite_SetDrawFlag();
undefined4 func_0x021f05c4() __asm__("sub_021F05C4");
undefined4 func_0x02024818() __asm__("sub_02024818");
undefined4 func_0x021f074c() __asm__("sub_021F074C");
undefined4 func_0x021efe34() __asm__("sub_021EFE34");
undefined4 Sprite_SetMatrix();
undefined4 Heap_Alloc();
undefined4 func_0x02024804() __asm__("sub_02024804");
undefined4 func_0x02023614() __asm__("sub_02023614");
undefined4 BeginNormalPaletteFade();
undefined4 func_0x020235d4() __asm__("sub_020235D4");
undefined4 func_0x021f06ec() __asm__("sub_021F06EC");
undefined4 func_0x021fb4f4() __asm__("sub_021FB4F4");
undefined4 sub_0200FBF4();
undefined4 func_0x021efcdc() __asm__("sub_021EFCDC");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x021f05f4() __asm__("sub_021F05F4");
undefined4 Sprite_Delete();
undefined4 SpriteList_RenderAndAnimateSprites();

void ov119_0225FF9C(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined1 auStack_24 [12];
  undefined4 uStack_18;

  piVar2 = (int *)param_2[3];
  uStack_18 = param_4;
  switch(*param_2) {
  case 0:
    iVar1 = Heap_Alloc(4,0x1f0);
    param_2[3] = iVar1;
    func_0x020e5b44(iVar1,0,0x1f0);
    piVar2 = (int *)param_2[3];
    piVar2[0x74] = *(int *)(param_2[4] + 0x24);
    func_0x021f05c4(piVar2 + 0x17,1,1);
    func_0x021f0614(param_2[8],piVar2 + 0x17,piVar2 + 0x66,0,1,4,6,5,600000);
    iVar1 = func_0x021f0718(piVar2 + 0x17,piVar2 + 0x66,0x80000,0xfffe0000,0,0);
    piVar2[0x73] = iVar1;
    Sprite_SetDrawFlag(piVar2[0x73],0);
    GfGfx_EngineATogglePlanes(0x10,1);
    *param_2 = *param_2 + 1;
    break;
  case 1:
    func_0x021efcf8(1,0xfffffff0,0xfffffff0,param_2 + 1,2);
    *param_2 = *param_2 + 1;
    break;
  case 2:
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 3:
    func_0x021efec8(piVar2,0,0x100000,0x2000,0xc);
    Sprite_SetDrawFlag(piVar2[0x73],1);
    func_0x021efec8(piVar2 + 6,0x19a,0x2000,0,0xc);
    func_0x021efec8(piVar2 + 0xc,0x19a,0x2000,0,0xc);
    func_0x021f074c(auStack_24,piVar2[6],piVar2[0xc],0);
    func_0x02024804(piVar2[0x73],auStack_24,2);
    func_0x021efe34(piVar2 + 0x12,0,0xffff,0xc);
    *param_2 = *param_2 + 1;
    break;
  case 4:
    iVar1 = func_0x021eff28(piVar2);
    func_0x021f074c(&uStack_3c,0x80000,*piVar2 + -0x20000,0);
    uStack_30 = uStack_3c;
    uStack_2c = uStack_38;
    uStack_28 = uStack_34;
    Sprite_SetMatrix(piVar2[0x73],&uStack_30);
    func_0x021eff28(piVar2 + 6);
    func_0x021eff28(piVar2 + 0xc);
    func_0x021f074c(auStack_24,piVar2[6],piVar2[0xc],0);
    func_0x020247f4(piVar2[0x73],auStack_24);
    func_0x021efe44(piVar2 + 0x12);
    func_0x02024818(piVar2[0x73],piVar2[0x12] & 0xffff);
    if (iVar1 == 1) {
      Sprite_SetDrawFlag(piVar2[0x73],0);
      *param_2 = *param_2 + 1;
    }
    break;
  case 5:
    func_0x021fb514(*(undefined4 *)(*(int *)(param_2[4] + 4) + 0x1c));
    iVar1 = func_0x02023614(piVar2[0x74]);
    func_0x021efec8(piVar2 + 0x75,iVar1,iVar1 + -0x3e8000,0xa000,8);
    BeginNormalPaletteFade(3,0x12,0,0,8,1,4);
    *param_2 = *param_2 + 1;
    break;
  case 6:
    func_0x021eff28(piVar2 + 0x75);
    func_0x020235d4(piVar2[0x75],piVar2[0x74]);
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      *param_2 = *param_2 + 1;
    }
    break;
  case 7:
    sub_0200FBF4(1,0);
    func_0x021fb4f4(*(undefined4 *)(*(int *)(param_2[4] + 4) + 0x1c));
    if ((undefined4 *)param_2[5] != (undefined4 *)0x0) {
      *(undefined4 *)param_2[5] = 1;
    }
    Sprite_Delete(piVar2[0x73]);
    func_0x021f06ec(piVar2 + 0x17,piVar2 + 0x66);
    func_0x021f05f4(piVar2 + 0x17);
    func_0x021efcdc(param_2,param_1);
  }
  if (*param_2 != 7) {
    SpriteList_RenderAndAnimateSprites(piVar2[0x17]);
  }
  return;
}

