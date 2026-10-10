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
undefined4 Heap_Alloc();
undefined4 func_0x0201fcac() __asm__("sub_0201FCAC");
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 func_0x020136b4() __asm__("sub_020136B4");
undefined4 Heap_Free();
undefined4 sub_020879E0();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov40_0222D294();
undefined4 func_0x020137c0() __asm__("sub_020137C0");
undefined4 ov40_0222C39C();
undefined4 ov40_0222D288();
undefined4 sub_020878B8();
undefined4 sub_02087948();
undefined4 func_0x0200df08() __asm__("sub_0200DF08");
undefined4 func_0x0200df2c() __asm__("sub_0200DF2C");
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov40_0223142C(int param_1)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  int iVar6;
  short sVar7;
  int iStack_34;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  short sStack_20;
  short sStack_1e;
  short sStack_1c;
  undefined1 auStack_1a [2];
  undefined1 auStack_18 [4];

  if (*(int *)(param_1 + 8) == 0) {
    piVar4 = (int *)Heap_Alloc(0x6d,0x54);
    func_0x020d4994(piVar4,0,0x54);
    *(int **)(param_1 + 0x860) = piVar4;
    *(undefined1 *)(piVar4 + 0x14) = 0x10;
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,(char)piVar4[0x14],
                    *(uint *)(param_1 + 0x58) & 0xffff);
    iStack_24 = 0;
    if (0 < *(int *)(param_1 + 0x6e0)) {
      sVar7 = 0x19;
      iStack_34 = 0;
      iVar6 = param_1;
      do {
        *piVar4 = iStack_34;
        piVar4[1] = 0x5a;
        *(short *)(piVar4 + 2) = sVar7 + (5 - (short)*(undefined4 *)(param_1 + 0x6e0)) * 0x10;
        ov40_0222D288(*(undefined4 *)(iVar6 + 0x5fc),0x2a,
                      ((5 - *(int *)(param_1 + 0x6e0)) * 0x10 + 0xa9) * 0x10000 >> 0x10);
        func_0x0200df2c(*(undefined4 *)(iVar6 + 0x5fc),piVar4 + 3,auStack_18);
        func_0x0200df08(*(undefined4 *)(iVar6 + 0x5fc),piVar4[3],
                        ((5 - *(int *)(param_1 + 0x6e0)) * 0x10 + 0xa9) * 0x1000);
        func_0x020136b4(*(undefined4 *)(iVar6 + 0x610),0x24,0xfffffff8);
        func_0x020137c0(*(undefined4 *)(iVar6 + 0x610),1);
        piVar4 = piVar4 + 4;
        iStack_34 = iStack_34 + 4;
        sVar7 = sVar7 + 0x24;
        iStack_24 = iStack_24 + 1;
        iVar6 = iVar6 + 0x28;
      } while (iStack_24 < *(int *)(param_1 + 0x6e0));
    }
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else {
    if (*(int *)(param_1 + 8) != 1) {
      uVar5 = *(undefined4 *)(param_1 + 0x860);
      ov40_0222D294(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x6e4) * 0x28 + 0x5fc),&sStack_1e,
                    &sStack_20);
      sub_02087948(*(undefined4 *)(param_1 + 0x6f0),(sStack_1e + 0x10) * 0x10000 >> 0x10,
                   (int)sStack_20);
      sub_020878B8(*(undefined4 *)(param_1 + 0x6f0),(sStack_1e + 0x10) * 0x10000 >> 0x10,
                   (int)sStack_20);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      ov40_0222C39C(param_1);
      Heap_Free(uVar5);
      return 1;
    }
    piVar4 = *(int **)(param_1 + 0x860);
    if ((char)piVar4[0x14] != '\0') {
      *(char *)(piVar4 + 0x14) = (char)piVar4[0x14] + -1;
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,(char)piVar4[0x14],
                      *(uint *)(param_1 + 0x58) & 0xffff);
    }
    iStack_2c = 0;
    iStack_28 = 0;
    iVar3 = *(int *)(param_1 + 0x6e0);
    iVar6 = param_1;
    if (0 < iVar3) {
      do {
        if (*piVar4 == 0) {
          ov40_0222D294(*(undefined4 *)(iVar6 + 0x5fc),auStack_1a,&sStack_1c);
          sVar7 = (short)piVar4[2];
          if ((int)sStack_1c == (int)sVar7) {
            iStack_2c = iStack_2c + 1;
          }
          else {
            if ((int)sVar7 < sStack_1c + -8) {
              sVar7 = sStack_1c + -8;
            }
            sStack_1c = sVar7;
            iVar3 = (int)sStack_1c;
            uVar1 = func_0x020f2998(piVar4[1] * 0xffff,0x168);
            iVar2 = func_0x0201fcac(uVar1);
            piVar4[1] = piVar4[1] + -4;
            func_0x0200df08(*(undefined4 *)(iVar6 + 0x5fc),piVar4[3] + iVar2 * 0x10,iVar3 << 0xc);
            func_0x020136b4(*(undefined4 *)(iVar6 + 0x610),0x24,0xfffffff8);
          }
        }
        else {
          *piVar4 = *piVar4 + -1;
        }
        piVar4 = piVar4 + 4;
        iStack_28 = iStack_28 + 1;
        iVar3 = *(int *)(param_1 + 0x6e0);
        iVar6 = iVar6 + 0x28;
      } while (iStack_28 < iVar3);
    }
    if (iStack_2c == iVar3) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
  }
  return 0;
}

