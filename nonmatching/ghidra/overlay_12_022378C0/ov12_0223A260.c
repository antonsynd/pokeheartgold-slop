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
void * PlayerProfile_GetPlayerName_NewString(void *, int);
void * OverlayManager_GetData(void *);
undefined4 func_0x0221ba00() __asm__("sub_0221BA00");
void * Heap_Alloc(int, unsigned int);
void * OverlayManager_GetArgs(void *);
undefined4 sub_020378AC(int);
undefined4 sub_0203A914(void);
undefined4 MIi_CpuClearFast(unsigned int, void *, unsigned int);
unsigned short sub_0203769C(void);



int ov12_0223A260(undefined *param_1)

{
  ushort uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;

  puVar2 = OverlayManager_GetData(param_1);
  OverlayManager_GetArgs(param_1);
  if ((((*(uint *)(puVar2 + 0x2c) & 4) != 0) && ((*(uint *)(puVar2 + 0x240c) & 0x10) == 0)) &&
     ((*(uint *)(puVar2 + 0x2c) & 0x80) == 0)) {
    uVar1 = sub_0203769C();
    uVar7 = uVar1 & 0xff;
    puVar3 = Heap_Alloc(5,0x30);
    *(undefined **)(puVar2 + 0x1c4) = puVar3;
    MIi_CpuClearFast(0,*(undefined **)(puVar2 + 0x1c4),0x30);
    if ((*(uint *)(puVar2 + 0x2c) & 8) == 0) {
      iVar8 = sub_020378AC(uVar7);
      *(undefined4 *)(*(int *)(puVar2 + 0x1c4) + iVar8 * 4 + 4) =
           *(undefined4 *)(puVar2 + uVar7 * 4 + 0x68);
      uVar6 = uVar7 ^ 1;
      iVar8 = sub_020378AC(uVar6);
      *(undefined4 *)(*(int *)(puVar2 + 0x1c4) + iVar8 * 4 + 4) =
           *(undefined4 *)(puVar2 + uVar6 * 4 + 0x68);
      iVar8 = sub_020378AC(uVar7);
      puVar3 = PlayerProfile_GetPlayerName_NewString(*(undefined **)(puVar2 + uVar7 * 4 + 0x48),5);
      *(undefined **)(*(int *)(puVar2 + 0x1c4) + iVar8 * 4 + 0x14) = puVar3;
      iVar8 = sub_020378AC(uVar6);
      puVar3 = PlayerProfile_GetPlayerName_NewString(*(undefined **)(puVar2 + uVar6 * 4 + 0x48),5);
      *(undefined **)(*(int *)(puVar2 + 0x1c4) + iVar8 * 4 + 0x14) = puVar3;
      *(undefined4 *)(*(int *)(puVar2 + 0x1c4) + 0x24) = 5;
      *(undefined1 *)(*(int *)(puVar2 + 0x1c4) + 0x28) = 1;
      *(undefined1 *)(*(int *)(puVar2 + 0x1c4) + 0x29) = 0;
    }
    else {
      iVar8 = 0;
      puVar3 = puVar2;
      do {
        iVar4 = sub_020378AC(iVar8);
        *(undefined4 *)(*(int *)(puVar2 + 0x1c4) + iVar4 * 4 + 4) = *(undefined4 *)(puVar3 + 0x68);
        iVar4 = sub_020378AC(iVar8);
        puVar5 = PlayerProfile_GetPlayerName_NewString(*(undefined **)(puVar3 + 0x48),5);
        iVar8 = iVar8 + 1;
        puVar3 = puVar3 + 4;
        *(undefined **)(*(int *)(puVar2 + 0x1c4) + iVar4 * 4 + 0x14) = puVar5;
      } while (iVar8 < 4);
      *(undefined4 *)(*(int *)(puVar2 + 0x1c4) + 0x24) = 5;
      *(undefined1 *)(*(int *)(puVar2 + 0x1c4) + 0x28) = 1;
      *(undefined1 *)(*(int *)(puVar2 + 0x1c4) + 0x29) = 1;
    }
    func_0x0221ba00(*(undefined4 *)(puVar2 + 0x1c4));
    return 1;
  }
  sub_0203A914();
  return 0;
}

