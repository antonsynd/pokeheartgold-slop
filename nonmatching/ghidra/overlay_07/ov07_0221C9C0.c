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
typedef void code(void);
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
undefined4 ov07_0221D55C(undefined4, undefined4);
undefined4 ov07_0221C4A0(undefined4);
undefined4 ov07_0221FF2C(void);
undefined4 BgClearTilemapBufferAndCommit(undefined4, undefined4);
undefined4 sub_020154B0(void);
undefined4 ov07_0221FAEC(undefined4, undefined4);
undefined4 BG_ClearCharDataRange(undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221BFD0(undefined4);
undefined4 ToggleBgLayer(undefined4, undefined4);
undefined4 func_0x0201bc8c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0201BC8C");
undefined4 ov07_0221DD14(undefined4, undefined4);
undefined4 GF_IsAnySEPlaying(void);
undefined4 SpriteSystem_FreeResourcesAndManager(undefined4);
undefined4 func_0x0201bb68(undefined4, undefined4) __asm__("sub_0201BB68");
undefined4 func_0x0223c340(void) __asm__("sub_0223C340");

void ov07_0221C9C0(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;

  iVar6 = 0;
  if (*(char *)(param_1 + 0x17e) == '\0') {
    *(undefined1 *)(param_1 + 0x8d) = 1;
    *(char *)(param_1 + 0x17e) = *(char *)(param_1 + 0x17e) + '\x01';
    return;
  }
  iVar7 = 0;
  iVar5 = 0;
  do {
    if (*(int *)(*(int *)(param_1 + 0xc0) + iVar5 + 0x1c) != 0) {
      iVar2 = sub_020154B0();
      iVar6 = iVar6 + iVar2;
    }
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar7 < 0x10);
  if (((iVar6 == 0) && (*(short *)(param_1 + 0x8e) == 0)) && (*(short *)(param_1 + 0x90) == 0)) {
    iVar6 = GF_IsAnySEPlaying();
    if (iVar6 != 0) {
      *(char *)(param_1 + 0x17d) = *(char *)(param_1 + 0x17d) + '\x01';
      if (*(byte *)(param_1 + 0x17d) < 0x5b) {
        *(undefined1 *)(param_1 + 0x8d) = 1;
        return;
      }
      *(undefined1 *)(param_1 + 0x17d) = 0;
      *(undefined1 *)(param_1 + 0x8d) = 0;
    }
    iVar5 = 0;
    *(undefined1 *)(param_1 + 0x17d) = 0;
    *(undefined1 *)(param_1 + 0x17e) = 0;
    iVar7 = 0;
    iVar6 = param_1;
    do {
      iVar5 = iVar5 + 1;
      *(undefined4 *)(iVar6 + 0x1c) = 0;
      iVar6 = iVar6 + 4;
    } while (iVar5 < 3);
    iVar5 = 0;
    iVar6 = param_1;
    do {
      *(undefined4 *)(iVar6 + 0x28) = 0;
      *(undefined1 *)(iVar6 + 0x2c) = 0;
      *(undefined1 *)(iVar6 + 0x2d) = 0;
      *(undefined4 *)(iVar6 + 0x30) = 0;
      iVar7 = iVar7 + 1;
      iVar6 = iVar6 + 0xc;
    } while (iVar7 < 3);
    iVar7 = 0;
    iVar6 = param_1;
    do {
      if (*(int *)(iVar6 + 0xcc) != 0) {
        SpriteSystem_FreeResourcesAndManager(*(undefined4 *)(*(int *)(param_1 + 0xc0) + 0xac));
      }
      puVar3 = (undefined4 *)(iVar6 + 0xcc);
      iVar5 = iVar5 + 1;
      iVar6 = iVar6 + 4;
      *puVar3 = 0;
    } while (iVar5 < 4);
    do {
      ov07_0221D55C(param_1,iVar7);
      iVar7 = iVar7 + 1;
    } while (iVar7 < 5);
    iVar5 = 0;
    iVar6 = 0;
    do {
      if (*(int *)(*(int *)(param_1 + 0xc0) + iVar6 + 0x1c) != 0) {
        ov07_0221FF2C();
        *(undefined4 *)(*(int *)(param_1 + 0xc0) + iVar6 + 0x1c) = 0;
      }
      iVar5 = iVar5 + 1;
      iVar6 = iVar6 + 4;
    } while (iVar5 < 0x10);
    ov07_0221DD14(param_1 + 0x180,5);
    func_0x0223c340();
    uVar1 = ov07_0221FAEC(param_1,1);
    uVar4 = ov07_0221BFD0(param_1);
    BG_ClearCharDataRange(uVar1,0x4000,0,uVar4);
    uVar4 = ov07_0221C4A0(param_1);
    uVar1 = ov07_0221FAEC(param_1,1);
    BgClearTilemapBufferAndCommit(uVar4,uVar1);
    ToggleBgLayer(2,1);
    func_0x0201bb68(0,*(undefined1 *)(param_1 + 0x1ac));
    func_0x0201bb68(1,*(undefined1 *)(param_1 + 0x1ad));
    func_0x0201bb68(2,*(undefined1 *)(param_1 + 0x1ae));
    func_0x0201bb68(3,*(undefined1 *)(param_1 + 0x1af));
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0xc4),2,0,0);
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0xc4),2,3,0);
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0xc4),3,0,0);
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0xc4),3,3,0);
    *(undefined4 *)(param_1 + 0x10) = 0;
    return;
  }
  *(undefined1 *)(param_1 + 0x8d) = 1;
  *(undefined1 *)(param_1 + 0x17d) = 0;
  return;
}

