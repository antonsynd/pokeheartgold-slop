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
undefined4 BufferPlayersName(void *, unsigned int, void *);
undefined4 DestroyMsgData(void *);
unsigned char PlayerProfile_GetLanguage(void *);
void * sub_02034818(unsigned int);
undefined4 BufferString(void *, unsigned int, void *, int, int, int);
undefined4 sub_02035798();
unsigned short sub_0203769C(void);
undefined4 Heap_Free(void *);
void * NewString_ReadMsgData(void *, int);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 Save_EasyChat_SetGreetingFlag(void *, unsigned int);
extern undefined DAT_020fc898 __asm__("sub_020FC898");

void sub_0205AA9C(undefined *param_1,int param_2,int param_3,undefined *param_4,undefined *param_5)

{
  byte bVar1;
  ushort uVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar6;
  int iVar7;
  uint uVar5;
  
  puVar3 = NewMsgDataFromNarc(1,0x1b,0x2e2,4);
  if (param_2 == 0) {
    puVar4 = (undefined *)sub_02035798(param_3 + -1);
  }
  else {
    uVar2 = sub_0203769C();
    puVar4 = sub_02034818(uVar2 ^ 1);
  }
  if (puVar4 != (undefined *)0x0) {
    BufferPlayersName(param_1,0,puVar4);
    BufferPlayersName(param_1,1,param_4);
    bVar1 = PlayerProfile_GetLanguage(puVar4);
    uVar5 = (uint)bVar1;
    if ((((uVar5 != 0) && (uVar5 < 8)) && (uVar6 = uVar5 - 1 & 0xffff, uVar6 < 7)) &&
       (-1 < (int)*(uint *)(&DAT_020fc898 + uVar6 * 4))) {
      Save_EasyChat_SetGreetingFlag(param_5,*(uint *)(&DAT_020fc898 + uVar6 * 4));
    }
    switch(uVar5) {
    default:
      iVar7 = 0xd9;
      break;
    case 1:
      iVar7 = 0xd3;
      break;
    case 2:
      iVar7 = 0xd4;
      break;
    case 3:
      iVar7 = 0xd5;
      break;
    case 4:
      iVar7 = 0xd6;
      break;
    case 5:
      iVar7 = 0xd7;
      break;
    case 7:
      iVar7 = 0xd8;
    }
    puVar4 = NewString_ReadMsgData(puVar3,iVar7);
    BufferString(param_1,2,puVar4,0,1,uVar5);
    Heap_Free(puVar4);
    DestroyMsgData(puVar3);
    return;
  }
  DestroyMsgData(puVar3);
  return;
}

