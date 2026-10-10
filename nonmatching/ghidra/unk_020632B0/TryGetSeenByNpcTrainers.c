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
undefined4 GF_AssertFail();
undefined4 FieldSystem_SetEngagedTrainer();
undefined4 sub_02064520();
undefined4 StartMapSceneScript();
undefined4 CheckSeenByNpcTrainers();
undefined4 GetEngagingTrainerParams();

undefined4 TryGetSeenByNpcTrainers(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uVar3 = *(undefined4 *)(param_1 + 0x40);
  uVar2 = *(undefined4 *)(param_1 + 0x3c);
  uStack_18 = param_4;
  iVar1 = CheckSeenByNpcTrainers(param_1,uVar2,uVar3,0,&uStack_30);
  if (iVar1 == 0) {
    return 0;
  }
  if (iStack_20 == 0) {
    StartMapSceneScript(param_1,0xe9b,uStack_1c);
    if (param_2 != 0) {
      iVar1 = CheckSeenByNpcTrainers(param_1,uVar2,uVar3,uStack_1c,&uStack_48);
      if (iVar1 != 0) {
        FieldSystem_SetEngagedTrainer(param_1,uStack_1c,uStack_30,uStack_2c,uStack_28,uStack_24,2,0)
        ;
        FieldSystem_SetEngagedTrainer(param_1,uStack_34,uStack_48,uStack_44,uStack_40,uStack_3c,2,1)
        ;
        return 1;
      }
    }
    FieldSystem_SetEngagedTrainer(param_1,uStack_1c,uStack_30,uStack_2c,uStack_28,uStack_24,0,0);
    return 1;
  }
  if (iStack_20 != 1) {
    GF_AssertFail();
    return 0;
  }
  if (param_2 == 0) {
    return 0;
  }
  uVar2 = sub_02064520(param_1,uVar2,uStack_1c,uStack_24);
  GetEngagingTrainerParams(&uStack_60,uVar2,uStack_30,uStack_2c);
  StartMapSceneScript(param_1,0xe9b,uStack_1c);
  FieldSystem_SetEngagedTrainer(param_1,uStack_1c,uStack_30,uStack_2c,uStack_28,uStack_24,1,0);
  FieldSystem_SetEngagedTrainer(param_1,uStack_4c,uStack_60,uStack_5c,uStack_58,uStack_54,1,1);
  return 1;
}

