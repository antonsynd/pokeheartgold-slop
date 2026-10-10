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
undefined4 ov96_021F81C0();
undefined4 ov96_021F8180();
undefined4 ov96_021F8378();
undefined4 ov96_021F82E4();
undefined4 ov96_021F8360();
undefined4 ov96_021F8160();
undefined4 ov96_021F8128();
undefined4 PlayFanfare(unsigned short);
undefined4 ov96_021F83BC();
undefined4 ov96_021F8354();
undefined4 ov96_021F8978();
undefined4 ov96_021F8334();
undefined4 ov96_021F83D0();

undefined4 ov96_021F81CC(undefined4 *param_1,undefined *param_2)

{
  bool bVar1;
  short sVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;

  switch(*(undefined1 *)(param_1 + 0x16)) {
  case 0:
    ov96_021F8128(param_1 + 0x11,-0x50,0);
    iVar6 = ov96_021F8180((int)(param_1 + 0x11),0);
    if (iVar6 != 0) {
      ov96_021F82E4((int)param_1,param_1[0x12],0);
      ov96_021F8354(param_1 + 0x11);
      bVar1 = ov96_021F8360((int)param_1);
      if (bVar1) {
        uVar3 = ov96_021F8378(param_1,param_2,0x100,0x28);
        ov96_021F8334((int)param_1,uVar3,0);
      }
      ov96_021F81C0((int)param_1,10);
    }
    break;
  case 1:
    ov96_021F8160((int)param_1,-0x50,0);
    iVar6 = 0;
    puVar5 = param_1 + 1;
    do {
      iVar4 = ov96_021F8180((int)puVar5,0);
      if (iVar4 == 0) break;
      if ((param_1[0x18] == 0) && (sVar2 = ov96_021F8978(puVar5[1]), sVar2 == 0)) {
        PlayFanfare(0x4b9);
        param_1[0x18] = 1;
      }
      iVar6 = iVar6 + 1;
      puVar5 = puVar5 + 4;
    } while (iVar6 < 4);
    if (iVar6 == 4) {
      ov96_021F81C0((int)param_1,10);
    }
    break;
  case 2:
    ov96_021F8160((int)param_1,0,8);
    puVar5 = (undefined4 *)ov96_021F83D0((int)param_1);
    iVar6 = ov96_021F8180((int)puVar5,1);
    if (iVar6 != 0) {
      ov96_021F83BC(param_1,puVar5);
      *(undefined1 *)(param_1 + 0x16) = 0;
    }
    break;
  case 3:
    iVar6 = param_1[0x15];
    param_1[0x15] = iVar6 + -1;
    if (iVar6 < 1) {
      bVar1 = ov96_021F8360((int)param_1);
      if (!bVar1) {
        return 1;
      }
      *(undefined1 *)(param_1 + 0x16) = 2;
    }
  }
  return 0;
}

