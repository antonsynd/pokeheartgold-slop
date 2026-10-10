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
undefined4 func_0x0200d68c() __asm__("sub_0200D68C");
undefined4 PlayerProfile_GetTrainerGender();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 sub_02074490();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 ov18_021F1324();

void ov18_021F4A6C(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  ov18_021F1324(param_1,1);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x4c,1,2,0xc551);
  uVar1 = sub_02074490();
  func_0x0200d68c(param_1[0x214],3,param_1[0x19a],param_1[0x19b],param_1[0x216],uVar1,0,3,2,0xc551);
  SpriteSystem_LoadCellResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x6a,1,0xc55a);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x6b,1,0xc55a);
  SpriteSystem_LoadCellResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x70,1,0xc55b);
  SpriteSystem_LoadAnimResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x71,1,0xc55b);
  iVar2 = PlayerProfile_GetTrainerGender(*(undefined4 *)(*param_1 + 4));
  if (iVar2 == 0) {
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[0x19a],param_1[0x19b],param_1[0x215],0x69,1,1,0xc59b);
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[0x19a],param_1[0x19b],param_1[0x215],0x69,1,2,0xc59c);
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[0x19a],param_1[0x19b],param_1[0x215],0x6f,1,2,0xc59d);
    func_0x0200d68c(param_1[0x214],2,param_1[0x19a],param_1[0x19b],param_1[0x215],0x6c,0,1,1,0xc55d)
    ;
    func_0x0200d68c(param_1[0x214],3,param_1[0x19a],param_1[0x19b],param_1[0x215],0x6c,0,1,2,0xc55e)
    ;
    return;
  }
  SpriteSystem_LoadCharResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x6d,1,1,0xc59b);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x6d,1,2,0xc59c);
  SpriteSystem_LoadCharResObjFromOpenNarc
            (param_1[0x19a],param_1[0x19b],param_1[0x215],0x72,1,2,0xc59d);
  func_0x0200d68c(param_1[0x214],2,param_1[0x19a],param_1[0x19b],param_1[0x215],0x6e,0,1,1,0xc55d);
  func_0x0200d68c(param_1[0x214],3,param_1[0x19a],param_1[0x19b],param_1[0x215],0x6e,0,1,2,0xc55e);
  return;
}

