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
undefined4 BufferTrainerClassName(void *, unsigned int, unsigned int);
undefined4 PlayerProfile_GetTrainerGender(void *);
unsigned short MailMsg_GetMsgBank(void *);
unsigned char PlayerProfile_GetAvatar(void *);
unsigned short MailMsg_GetMsgNo(void *);
unsigned short MailMsg_GetFieldI(void *, int);
undefined4 GetUnionRoomAvatarAttrBySprite(int, int, int);
undefined4 MailMsg_IsInit(void *);
undefined4 BufferECWord(void *, unsigned int, unsigned short);
extern undefined UNK_020fc9d4 __asm__("sub_020FC9D4");



int sub_0205A9A0(undefined *param_1,undefined *param_2)

{
  byte bVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined *puVar6;
  
  iVar5 = 0;
  iVar4 = 0;
  puVar6 = param_1;
  do {
    if (*(int *)(puVar6 + 0x110) != 0) {
      iVar5 = iVar5 + 1;
    }
    iVar4 = iVar4 + 1;
    puVar6 = puVar6 + 4;
  } while (iVar4 < 10);
  if (iVar5 != 0) {
    return 0xa6;
  }
  iVar4 = MailMsg_IsInit(param_1 + 0x178);
  if (iVar4 == 0) {
    return 0xa7;
  }
  uVar2 = MailMsg_GetMsgBank(param_1 + 0x178);
  if (uVar2 != 4) {
    bVar1 = PlayerProfile_GetAvatar(*(undefined **)(param_1 + 8));
    uVar3 = PlayerProfile_GetTrainerGender(*(undefined **)(param_1 + 8));
    uVar3 = GetUnionRoomAvatarAttrBySprite(uVar3,(uint)bVar1,2);
    BufferTrainerClassName(param_2,0,uVar3);
    return 0xa8;
  }
  uVar2 = MailMsg_GetMsgNo(param_1 + 0x178);
  uVar3 = (uint)uVar2;
  if (0x13 < uVar3) {
    uVar3 = 0;
  }
  uVar2 = MailMsg_GetFieldI(param_1 + 0x178,0);
  if (uVar2 != 0xffff) {
    BufferECWord(param_2,0,uVar2);
  }
  return *(int *)(&UNK_020fc9d4 + uVar3 * 4);
}

