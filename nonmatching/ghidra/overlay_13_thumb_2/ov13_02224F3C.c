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
undefined4 ov13_02224864();
undefined4 ov13_02223FDC();
undefined4 func_0x020a2ed8() __asm__("sub_020A2ED8");
undefined4 func_0x020a2eac() __asm__("sub_020A2EAC");
undefined4 ov13_02226F3C();
undefined4 OS_Sleep();
undefined4 ov13_02224330();
undefined4 ov13_02224A30();
undefined4 func_0x020a2f84() __asm__("sub_020A2F84");
undefined4 ov13_02226CBC();
extern undefined4 uRam0224df68 __asm__("sub_0224DF68");
extern undefined4 iRam0224df40 __asm__("sub_0224DF40");
extern undefined4 uRam0224df4c __asm__("sub_0224DF4C");
extern undefined4 _UNK_02245a64;
undefined4 ov13_0222483C();
undefined4 ov13_02226C94();
undefined4 ov13_022246E4();
undefined4 ov13_02224618();
undefined4 ov13_02224718();
undefined4 ov13_02224988();
undefined4 ov13_02224B2C();
undefined4 ov13_02224938();
undefined4 func_0x020a30c8() __asm__("sub_020A30C8");
extern undefined4 uRam0224df44 __asm__("sub_0224DF44");
extern undefined1 uRam0224df30 __asm__("sub_0224DF30");
extern int iRam0224df64 __asm__("sub_0224DF64");
undefined4 ov13_02224DB4();
undefined4 ov13_02223DE0();
extern char cRam0224e284 __asm__("sub_0224E284");



int ov13_02224F3C(void)

{
  undefined1 uVar1;
  bool bVar2;
  undefined4 *puVar3;
  undefined1 *puVar4;
  int iVar5;
  uint uVar6;
  undefined1 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined1 auStack_2c [4];
  int iStack_28;
  undefined1 auStack_24 [8];
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar8 = 0;
  iStack_38 = -5;
  iStack_34 = 0;
  iStack_3c = 0;
  bVar2 = false;
  uRam0224df4c = 1;
  while ((!bVar2 && (iRam0224df40 == 0))) {
    OS_Sleep(500);
    switch(uRam0224df4c) {
    case 1:
      iStack_38 = ov13_02224330();
      if (iStack_38 == 1) {
        uRam0224df68 = 3;
        ov13_02226F3C();
        uRam0224df4c = 2;
      }
      else {
        bVar2 = true;
      }
      break;
    case 2:
      iStack_38 = ov13_02223FDC();
      if (iStack_38 == 1) {
        uRam0224df4c = 3;
      }
      else {
        bVar2 = true;
      }
      break;
    case 3:
      iVar8 = func_0x020a2eac(2,2,0);
      if (iVar8 < 0) {
        iStack_38 = -2;
        bVar2 = true;
      }
      else {
        uStack_1c = 0x1e60208;
        uStack_18 = 0;
        iStack_38 = func_0x020a2ed8(iVar8,&uStack_1c);
        if (iStack_38 < 0) {
          iStack_38 = -2;
          bVar2 = true;
        }
        else {
          uRam0224df4c = 4;
        }
      }
      break;
    case 4:
      uVar6 = ov13_02226CBC();
      if (uVar6 < 0xffffffff) {
        auStack_24[0] = 8;
        ov13_02224A30(0x224e3f0,auStack_24);
        iVar5 = func_0x020a2f84(iVar8,0x224ec64,0x800,4,auStack_24);
        if ((0 < iVar5) && (iVar5 = ov13_02224864(0x224ec64,0x224df80), iVar5 != 0)) {
          _UNK_02245a64 = ov13_02226CBC();
          _UNK_02245a64 = _UNK_02245a64 + 30000;

          uRam0224df4c = 5;
          uRam0224df68 = 4;
          ov13_02226F3C();
        }
      }
      else {
        func_0x020a30c8(iVar8);
        iStack_38 = -3;
        bVar2 = true;
      }
      break;
    case 5:
      uRam0224df44 = ov13_02224988(0x224ec64);
      ov13_02224618(iVar8,auStack_24,0x224ec64);
      iStack_34 = ov13_02226CBC();
      uRam0224df4c = 6;
      break;
    case 6:
      uVar6 = ov13_02226CBC();
      if (uVar6 < 0xffffffff) {
        iVar5 = func_0x020a2f84(iVar8,0x224ec64,0x800,4,auStack_24);
        if ((iVar5 < 1) || (iVar5 = ov13_02224938(0x224ec64,3,0x224e464,0x224e3f0), iVar5 == 0)) {
          uVar6 = ov13_02226CBC();
          if (iStack_34 + 1000U <= uVar6) {
            uRam0224df4c = 5;
          }
        }
        else {
          puVar4 = (undefined1 *)ov13_022246E4(0x224e464,&iStack_28,auStack_2c);
          if (iStack_28 == 0x101) {
            uStack_30 = ov13_02226CBC();
            puVar7 = (undefined1 *)0x224e400;
            iVar5 = 8;
            do {
              uVar1 = *puVar4;
              puVar4 = puVar4 + 1;
              *puVar7 = uVar1;
              puVar7 = puVar7 + 1;
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            ov13_02226C94(0x224e408,&uStack_30,4);
            iStack_3c = 0;
            uRam0224df4c = 7;
            uRam0224df68 = 5;

            _UNK_02245a64 = -1;
            ov13_02226F3C();
          }
        }
      }
      else {
        func_0x020a30c8(iVar8);
        iStack_38 = -4;
        bVar2 = true;
      }
      break;
    case 7:
      iRam0224df64 = ov13_0222483C(0x224e464,0x102,0x224e408,8);
      uRam0224df44 = ov13_02224718(0x224ec64,4,0x224e464,iRam0224df64,0x224e3f0);
      ov13_02224618(iVar8,auStack_24,0x224ec64);
      iStack_34 = ov13_02226CBC();
      iVar5 = 0x12;
      puVar3 = (undefined4 *)0x224e184;
      do {
        puVar9 = puVar3;
        *puVar9 = 0;
        puVar9[1] = 0;
        puVar9[2] = 0;
        puVar9[3] = 0;
        iVar5 = iVar5 + -1;
        puVar9[4] = 0;
        puVar9[5] = 0;
        puVar9[6] = 0;
        puVar9[7] = 0;
        puVar3 = puVar9 + 8;
      } while (iVar5 != 0);
      puVar9[8] = 0;
      puVar9[9] = 0;
      puVar9[10] = 0;
      puVar9[0xb] = 0;
      puVar9[0xc] = 0;
      uRam0224df4c = 8;
      break;
    case 8:
      iVar5 = func_0x020a2f84(iVar8,0x224ec64,0x800,4,auStack_24);
      if (((iVar5 < 1) ||
          (iRam0224df64 = ov13_02224938(0x224ec64,5,0x224e464,0x224e400), iRam0224df64 == 0)) ||
         (iVar5 = ov13_02224B2C(0x224e464), iVar5 == 0)) {
        uVar6 = ov13_02226CBC();
        if (iStack_34 + 1000U <= uVar6) {
          iStack_3c = iStack_3c + 1;
          if (iStack_3c < 10) {
            uRam0224df4c = 7;
          }
          else {
            func_0x020a30c8(iVar8);
            iStack_38 = -2;
            bVar2 = true;
          }
        }
      }
      else {
        uRam0224df30 = cRam0224e284 != '\0';
        iStack_3c = 0;
        uRam0224df4c = 9;
      }
      break;
    case 9:
      iRam0224df64 = ov13_0222483C(0x224e464,0x301,0x224df30,1);
      uRam0224df44 = ov13_02224718(0x224ec64,6,0x224e464,iRam0224df64,0x224e400);
      iVar5 = ov13_02223DE0();
      if (iVar5 == 7) {
        ov13_02224618(iVar8,auStack_24,0x224ec64,uRam0224df44);
        iStack_34 = ov13_02226CBC();
        uRam0224df4c = 10;
      }
      else {
        iStack_34 = ov13_02226CBC();
        iStack_34 = iStack_34 + 1000;
        iStack_3c = 10;
        uRam0224df4c = 10;
      }
      break;
    case 10:
      uVar6 = ov13_02226CBC();
      if (iStack_34 + 1000U <= uVar6) {
        iStack_3c = iStack_3c + 1;
        if (iStack_3c < 10) {
          uRam0224df4c = 9;
        }
        else {
          bVar2 = true;
          iStack_38 = ov13_02224DB4();
        }
      }
    }
  }
  if (iVar8 != 0) {
    func_0x020a30c8(iVar8);
  }
  if (iRam0224df40 != 0) {
    iStack_38 = -8;
  }
  return iStack_38;
}

