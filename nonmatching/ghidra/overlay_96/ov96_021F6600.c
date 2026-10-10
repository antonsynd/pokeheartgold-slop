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
undefined4 ov96_021F75E8();
undefined4 sub_0200606C();
undefined4 ov96_021F65D8();
undefined4 ov96_021EAF78();
undefined4 ov96_021F6060();
undefined4 sub_02005944();
undefined4 ov96_021F75D4();
undefined4 ov96_021F75E0();
undefined4 ov96_021F75BC();
undefined4 ov96_021E5F24();
undefined4 ov96_021EB0A4();
undefined4 ov96_021F6798();
undefined4 ov96_021E8228();
extern undefined UNK_0221c10c __asm__("sub_0221C10C");
extern undefined ov96_0221DC18;

void ov96_021F6600(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined *puVar5;
  uint uStack_44;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined4 uStack_18;
  
  uVar1 = ov96_021E5F24();
  uVar3 = 0;
  do {
    ov96_021F6798(param_1,param_2,uVar3 & 0xff);
    uVar3 = uVar3 + 1;
  } while ((int)uVar3 < 3);
  uStack_44 = 0;
  iStack_3c = param_2 + 0x90;
  puVar5 = &ov96_0221DC18;
  iStack_38 = param_2;
  iStack_34 = param_2;
  do {
    uVar4 = *(undefined4 *)(iStack_34 + 0x90);
    iVar2 = *(int *)(iStack_38 + 0xfb4) * -0x40 + 0x120000;
    ov96_021EB0A4(uVar4,(int)(*(int *)(iStack_34 + 0xac) +
                             ((uint)(*(int *)(iStack_34 + 0xac) >> 0xb) >> 0x14)) >> 0xc,
                  (int)(iVar2 + ((uint)(iVar2 >> 0xb) >> 0x14)) >> 0xc,&iStack_28,&iStack_2c);
    ov96_021EAF78(uVar4,iStack_28 << 0xc,iStack_2c << 0xc,auStack_20,auStack_1c,&iStack_24);
    uVar3 = 0;
    uStack_18 = 0;
    do {
      iVar2 = ov96_021F75E0(*(undefined4 *)(param_2 + 0x8c),uVar3 & 0xff);
      if (iVar2 != 0) {
        uVar4 = ov96_021F75D4(*(undefined4 *)(param_2 + 0x8c),uVar3 & 0xff);
        iVar2 = ov96_021F6060(auStack_20,iStack_24 << 0xc,uVar4,0x8000);
        if (iVar2 != 0) {
          ov96_021F75BC(*(undefined4 *)(param_2 + 0x8c),uVar3 & 0xff);
          iVar2 = ov96_021F65D8(iStack_3c);
          ov96_021F75E8(*(undefined4 *)(param_2 + 0x8c),uVar3 & 0xff,iVar2);
          *(undefined1 *)(param_2 + 0x142) = 1;
          sub_0200606C(0x88d,*puVar5);
          sub_02005944(*puVar5,0xffff,*(undefined4 *)(&UNK_0221c10c + iVar2 * 4));
          ov96_021E8228(param_1,uVar1,uStack_44 & 0xff,3,1);
        }
      }
      uVar3 = uVar3 + 1;
    } while ((int)uVar3 < 0x1d);
    puVar5 = puVar5 + 1;
    iStack_34 = iStack_34 + 0x38;
    iStack_38 = iStack_38 + 0x1c;
    iStack_3c = iStack_3c + 0x38;
    uStack_44 = uStack_44 + 1;
  } while ((int)uStack_44 < 3);
  iVar2 = 0;
  do {
    if ((*(char *)(param_2 + 0xb6) != '\0') &&
       (*(char *)(param_2 + 0xb7) = *(char *)(param_2 + 0xb7) + -1,
       *(char *)(param_2 + 0xb7) == '\0')) {
      *(undefined1 *)(param_2 + 0xb7) = 0;
      *(undefined1 *)(param_2 + 0xb6) = 0;
    }
    iVar2 = iVar2 + 1;
    param_2 = param_2 + 0x38;
  } while (iVar2 < 3);
  return;
}

