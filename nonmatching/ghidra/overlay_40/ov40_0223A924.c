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
undefined4 ov40_022306E0();
undefined4 ov40_0222FC14();
unsigned long long sub_0203088C(void *, int, int);
undefined4 ov40_0223077C();
undefined4 PlaySE(unsigned short);
undefined4 sub_020879E0(void *, int);
undefined4 sub_020307F8();
undefined4 sub_02087A08(void *, int, int);
undefined4 func_0x0222774c() __asm__("sub_0222774C");
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 ov40_0223D540();
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 ov40_0222DA84();
undefined4 ov40_0223A510();
undefined4 PaletteData_BlendPalettes(void *, int, unsigned short, unsigned char, unsigned short);
undefined4 ov40_0222DA00();
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 ov40_0223D5CC();
undefined4 ov40_02230964();
undefined4 ov40_0222DEAC();
undefined4 ov40_0222F734();
undefined4 StopSE(unsigned short, int);
undefined4 ov40_0222D88C();
undefined4 ov40_0222DAA8();
undefined4 System_GetTouchNew(void);
undefined4 TouchHitboxController_Destroy(void *);
undefined4 ov40_0222FBB4();
undefined4 ov40_0222FDC4();
undefined4 ov40_0223B44C();
undefined4 ov40_0222FB90();
undefined4 ov40_0223A83C();
undefined4 ov40_0222BF64();
undefined4 ov40_0222FCCC();
undefined4 ov40_0222DD08();
undefined4 sub_0203A948();
undefined4 Heap_Free(void *);
undefined4 ov40_0222BF80();
undefined4 sub_0202FC48(void);
undefined4 sub_0202FC24(void);

undefined4 ov40_0223A924(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined *puVar3;
  ulonglong uVar4;
  undefined1 auStack_14 [4];
  
  puVar3 = *(undefined **)(param_1 + 0x860);
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    GfGfx_EngineBTogglePlanes(4,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    ov40_0222DA84(puVar3 + 8,1);
    iVar2 = ov40_0222DA00(puVar3,puVar3 + 4,1,2);
    if (iVar2 != 0) {
      BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),6);
      ov40_0223A510(param_1,0x116,0);
      ov40_022306E0(param_1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    PaletteData_BlendPalettes
              (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(puVar3 + 8),
               (ushort)*(undefined4 *)(param_1 + 0x58));
    break;
  case 2:
    iVar2 = ov40_0222FC14(param_1,*(undefined4 *)(puVar3 + 0x2028),
                          *(undefined1 *)(param_1 + *(int *)(param_1 + 0x4d4) + 0x413c));
    if (iVar2 != 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 3:
    ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x80,0x60);
    sub_020879E0(*(undefined **)(param_1 + 0x6f0),1);
    sub_02087A08(*(undefined **)(param_1 + 0x6f0),0x18,0x18);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    PlaySE(0x57d);
    break;
  case 4:
    iVar2 = ov40_0223D5CC();
    if (iVar2 == 0) {
      return 0;
    }
    ov40_0223A510(param_1,0x118,0);
    puVar3 = sub_020307F8();
    uVar4 = sub_0203088C(puVar3,4,0);
    uVar1 = ov40_0223D540(param_1);
    iVar2 = func_0x0222774c(uVar1,(int)uVar4,(int)(uVar4 >> 0x20));
    if (iVar2 == 1) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 5:
    iVar2 = ov40_0223D5CC();
    if (iVar2 == 0) {
      return 0;
    }
    uVar1 = ov40_0223D540(param_1);
    iVar2 = func_0x02227d44(uVar1,auStack_14);
    if (iVar2 == 1) {
      StopSE(0x57d,0);
    }
    else {
      StopSE(0x57d,0);
      PlaySE(0x577);
    }
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    ov40_0223A510(param_1,0x119,0);
    break;
  case 6:
    iVar2 = System_GetTouchNew();
    if (iVar2 != 0) {
      ov40_0222DEAC(param_1);
      ov40_02230964(param_1,1);
      ov40_0223B44C(param_1);
      ov40_02230964(param_1,0);
      sub_020879E0(*(undefined **)(param_1 + 0x6f0),0);
      sub_02087A08(*(undefined **)(param_1 + 0x6f0),0,0);
      ov40_0222FDC4(param_1);
      ov40_0222FCCC(param_1);
      ov40_0222F734(param_1 + 0x49c);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 7:
    TouchHitboxController_Destroy(*(undefined **)(puVar3 + 0x188));
    TouchHitboxController_Destroy(*(undefined **)(puVar3 + 0x18c));
    TouchHitboxController_Destroy(*(undefined **)(puVar3 + 400));
    ov40_0223A83C(param_1);
    ov40_0222DAA8(puVar3 + 8);
    ov40_02230964(param_1,1);
    ov40_0222D88C(param_1);
    ov40_02230964(param_1,0);
    sub_0203A948(1,0x6d);
    ov40_0222FB90(param_1,1);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  default:
    iVar2 = ov40_0222FBB4(param_1);
    if (iVar2 != 0) {
      iVar2 = ov40_0222DA84(puVar3 + 8,0);
      if (iVar2 == 0) {
        PaletteData_BlendPalettes
                  (*(undefined **)(param_1 + 0x28),1,2,(byte)*(undefined4 *)(puVar3 + 8),
                   (ushort)*(undefined4 *)(param_1 + 0x58));
        PaletteData_BlendPalettes
                  (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(puVar3 + 8),
                   (ushort)*(undefined4 *)(param_1 + 0x58));
      }
      else {
        ov40_0222DD08(param_1);
        ov40_0222DAA8(puVar3 + 8);
        PaletteData_BlendPalettes
                  (*(undefined **)(param_1 + 0x28),2,0xc,0x10,
                   (ushort)*(undefined4 *)(param_1 + 0x58));
        ov40_0222BF64(param_1,1,1,*(undefined4 *)(param_1 + 0x10));
        ov40_0222BF80(param_1,5);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),2);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),6);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),3);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),7);
        Heap_Free(puVar3);
        iVar2 = sub_0202FC48();
        if (iVar2 == 1) {
          sub_0202FC24();
        }
      }
    }
  }
  return 0;
}

