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
undefined4 CopyPokemonToPokemon();
undefined4 Pokedex_SetMonCaughtFlag();
undefined4 SetMonData();
undefined4 GameStats_Inc();
undefined4 Heap_Free();
undefined4 AllocMonZeroed();
undefined4 Party_GetCount();
undefined4 CalcMonLevelAndStats();
undefined4 UpdateMonAbility();
undefined4 GameStats_AddScore();
undefined4 Party_GetMaxCount();
undefined4 Party_AddMon();
undefined4 Mail_New();
undefined4 Bag_GetQuantity();
undefined4 Bag_TakeItem();
undefined4 func_0x020d4858() __asm__("sub_020D4858");

void sub_02076C90(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uStack_30;
  int iStack_2c;
  undefined1 auStack_28 [24];
  
  iVar1 = *(int *)(param_1 + 0x78);
  if (iVar1 < 7) {
    if (iVar1 != 6) {
      return;
    }
LAB_02076e50:
    iStack_2c = 0;
    SetMonData(*(undefined4 *)(param_1 + 0x28),6,&iStack_2c);
  }
  else {
    switch(iVar1) {
    case 0xd:
    case 0xe:
      iVar1 = Bag_GetQuantity(*(undefined4 *)(param_1 + 0x4c),4,*(undefined4 *)(param_1 + 0x5c));
      if (iVar1 != 0) {
        iVar1 = Party_GetCount(*(undefined4 *)(param_1 + 0x24));
        iVar2 = Party_GetMaxCount(*(undefined4 *)(param_1 + 0x24));
        if (iVar1 < iVar2) {
          uVar3 = AllocMonZeroed(*(undefined4 *)(param_1 + 0x5c));
          CopyPokemonToPokemon(*(undefined4 *)(param_1 + 0x28),uVar3);
          uStack_30 = 0x124;
          SetMonData(uVar3,5,&uStack_30);
          uStack_30 = 4;
          SetMonData(uVar3,0x9b,&uStack_30);
          uStack_30 = 0;
          SetMonData(uVar3,6,&uStack_30);
          SetMonData(uVar3,0xb,&uStack_30);
          iStack_2c = 0x19;
          do {
            SetMonData(uVar3,iStack_2c,&uStack_30);
            iStack_2c = iStack_2c + 1;
          } while (iStack_2c < 0x36);
          iStack_2c = 0x4e;
          do {
            SetMonData(uVar3,iStack_2c,&uStack_30);
            iStack_2c = iStack_2c + 1;
          } while (iStack_2c < 0x6e);
          iStack_2c = 0x7b;
          do {
            SetMonData(uVar3,iStack_2c,&uStack_30);
            iStack_2c = iStack_2c + 1;
          } while (iStack_2c < 0x90);
          SetMonData(uVar3,0xb5,&uStack_30);
          SetMonData(uVar3,0xb6,&uStack_30);
          SetMonData(uVar3,0xb7,&uStack_30);
          SetMonData(uVar3,0xb8,&uStack_30);
          SetMonData(uVar3,0xb9,&uStack_30);
          SetMonData(uVar3,0xba,&uStack_30);
          SetMonData(uVar3,0xbb,&uStack_30);
          SetMonData(uVar3,0xb3,0);
          SetMonData(uVar3,0x4d,&uStack_30);
          SetMonData(uVar3,0xa0,&uStack_30);
          uVar4 = Mail_New(*(undefined4 *)(param_1 + 0x5c));
          SetMonData(uVar3,0xaa,uVar4);
          Heap_Free(uVar4);
          SetMonData(uVar3,0xa2,&uStack_30);
          func_0x020d4858(0,auStack_28,0x18);
          SetMonData(uVar3,0xab,auStack_28);
          UpdateMonAbility(uVar3);
          CalcMonLevelAndStats(uVar3);
          Party_AddMon(*(undefined4 *)(param_1 + 0x24),uVar3);
          Pokedex_SetMonCaughtFlag(*(undefined4 *)(param_1 + 0x48),uVar3);
          GameStats_Inc(*(undefined4 *)(param_1 + 0x50),0xd);
          GameStats_AddScore(*(undefined4 *)(param_1 + 0x50),0x15);
          Heap_Free(uVar3);
          Bag_TakeItem(*(undefined4 *)(param_1 + 0x4c),4,1,*(undefined4 *)(param_1 + 0x5c));
          return;
        }
      }
      break;
    case 0x12:
    case 0x13:
      goto LAB_02076e50;
    }
  }
  return;
}

