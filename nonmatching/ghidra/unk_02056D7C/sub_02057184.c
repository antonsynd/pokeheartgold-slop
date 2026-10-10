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
unsigned char PlayerProfile_GetVersion(void *);
undefined4 MapObject_SetID(void *, unsigned int);
void * sub_02034818(unsigned int);
undefined4 PlayerProfile_GetTrainerGender(void *);
void * PlayerAvatar_GetMapObject(void *);
void * MapObjectManager_GetFirstActiveObjectByID(void *, unsigned int);
unsigned short sub_0203769C(void);
undefined4 GF_AssertFail(void);
undefined4 MapObject_Remove(void *);
void * PlayerAvatar_CreateWithParams(void *, unsigned int, unsigned int, unsigned int, int, unsigned int, unsigned int, void *);
extern int  iRam021d41c4 __asm__("sub_021D41C4");

void sub_02057184(uint param_1)

{
  int iVar1;
  byte bVar2;
  ushort uVar3;
  undefined *puVar4;
  undefined *puVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;

  if ((*(int *)(iRam021d41c4 + param_1 * 4 + 4) == 0) && (*(char *)(iRam021d41c4 + 0xee) == '\0')) {
    puVar4 = sub_02034818(param_1);
    if (puVar4 != (undefined *)0x0) {
      uVar3 = sub_0203769C();
      if ((param_1 != uVar3) &&
         (puVar5 = MapObjectManager_GetFirstActiveObjectByID
                             (*(undefined **)(*(int *)(iRam021d41c4 + 0x30) + 0x3c),param_1 + 0x100)
         , puVar5 != (undefined *)0x0)) {
        MapObject_Remove(puVar5);
      }
      uVar8 = 2;
      bVar2 = PlayerProfile_GetVersion(puVar4);
      iVar1 = iRam021d41c4;
      if (bVar2 == 0) {
        uVar8 = 1;
      }
      else if (bVar2 == 0xc) {
        uVar8 = 0;
      }
      uVar6 = PlayerProfile_GetTrainerGender(puVar4);
      iVar7 = iVar1 + param_1 * 8;
      puVar4 = PlayerAvatar_CreateWithParams
                         (*(undefined **)(*(int *)(iVar1 + 0x30) + 0x3c),
                          (uint)*(ushort *)(iVar7 + 0x74),(uint)*(ushort *)(iVar7 + 0x76),
                          (int)*(char *)(iVar7 + 0x78),0,uVar6,uVar8,(undefined *)0x0);
      if (puVar4 == (undefined *)0x0) {
        GF_AssertFail();
      }
      *(undefined **)(iRam021d41c4 + param_1 * 4 + 4) = puVar4;
      puVar4 = PlayerAvatar_GetMapObject(puVar4);
      MapObject_SetID(puVar4,param_1 + 0x100);
      *(undefined1 *)(iRam021d41c4 + param_1 + 0x24) = 1;
    }
  }
  return;
}

