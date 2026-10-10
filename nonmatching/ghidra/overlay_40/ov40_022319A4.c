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
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Heap_Alloc();
undefined4 ov40_0222BF80();
undefined4 ov40_0222BFB0();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov40_0222C03C();
undefined4 func_0x0200dd24() __asm__("sub_0200DD24");
undefined4 SysTask_CreateOnMainQueue();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov40_0222D3E8();
undefined4 ov40_0222D294();
undefined4 func_0x020137c0() __asm__("sub_020137C0");
undefined4 Heap_Free();

undefined4 ov40_022319A4(int param_1)

{
  undefined4 *puVar1;
  undefined2 *puVar2;
  uint *puVar3;
  short *psVar4;
  int iVar5;
  int iVar6;
  int iVar7;

  iVar6 = *(int *)(param_1 + 8);
  if (iVar6 == 0) {
    puVar1 = (undefined4 *)Heap_Alloc(0x6d,0x10);
    func_0x020d4994(puVar1,0,0x10);
    *(undefined4 **)(param_1 + 0x860) = puVar1;
    iVar6 = 0;
    puVar1[2] = 0;
    if (0 < *(int *)(param_1 + 0x6e0)) {
      iVar5 = param_1;
      do {
        puVar2 = (undefined2 *)Heap_Alloc(0x6d,0x34);
        func_0x020e5b44(puVar2,0,0x34);
        ov40_0222D294(*(undefined4 *)(iVar5 + 0x5fc),puVar2,puVar2 + 1);
        *(undefined4 *)(puVar2 + 0x10) = *(undefined4 *)(iVar5 + 0x5fc);
        *(undefined4 *)(puVar2 + 0x12) = *(undefined4 *)(iVar5 + 0x610);
        *(undefined4 **)(puVar2 + 0x16) = puVar1 + 1;
        *(undefined4 **)(puVar2 + 0x18) = puVar1 + 3;
        if (iVar6 == *(int *)(param_1 + 0x6e4)) {
          *(undefined4 *)(puVar2 + 0x14) = *(undefined4 *)(param_1 + 0x6f0);
          puVar2[2] = *puVar2;
          puVar2[3] = 0xffd0;
          *(undefined1 *)(puVar2 + 0xe) = 8;
        }
        else {
          *(undefined4 *)(puVar2 + 0x14) = 0;
          puVar2[2] = *puVar2;
          puVar2[3] = (5 - (short)*(undefined4 *)(param_1 + 0x6e0)) * 0x10 + 0xcd;
          if (0xdc < (short)puVar2[3]) {
            puVar2[3] = 0xdd;
          }
          *(undefined1 *)(puVar2 + 0xe) = 8;
        }
        SysTask_CreateOnMainQueue(0x22318c9,puVar2,0x2000);
        iVar6 = iVar6 + 1;
        iVar5 = iVar5 + 0x28;
      } while (iVar6 < *(int *)(param_1 + 0x6e0));
    }
    *puVar1 = 0;
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (iVar6 == 1) {
    puVar3 = *(uint **)(param_1 + 0x860);
    if (*puVar3 != 0x10) {
      *puVar3 = *puVar3 + 2;
      func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,*puVar3 & 0xff,
                      *(uint *)(param_1 + 0x58) & 0xffff);
    }
    if (puVar3[3] == 1) {
      iVar6 = 0;
      if (puVar3[2] == 0) {
        puVar3[2] = 1;
        iVar5 = param_1;
        do {
          psVar4 = (short *)Heap_Alloc(0x6d,0x34);
          func_0x020e5b44(psVar4,0,0x34);
          ov40_0222D294(*(undefined4 *)(iVar5 + 0x534),psVar4,psVar4 + 1);
          *(undefined4 *)(psVar4 + 0x10) = *(undefined4 *)(iVar5 + 0x534);
          *(undefined4 *)(psVar4 + 0x12) = *(undefined4 *)(iVar5 + 0x548);
          *(uint **)(psVar4 + 0x16) = puVar3 + 1;
          psVar4[0x14] = 0;
          psVar4[0x15] = 0;
          psVar4[2] = *psVar4;
          if (*(int *)(param_1 + 0x6d8) == iVar6) {
            psVar4[2] = *psVar4;
            psVar4[3] = 0xa9;
            ManagedSprite_SetAnim
                      (*(undefined4 *)(iVar5 + 0x534),
                       *(undefined4 *)
                        (*(int *)(param_1 + 0x818) + *(int *)(param_1 + 0x6e4) * 0x24 + 0xc));
            ov40_0222D3E8(param_1,param_1 + 0x534 + *(int *)(param_1 + 0x6d8) * 0x28,
                          *(undefined4 *)
                           (*(int *)(param_1 + 0x818) + *(int *)(param_1 + 0x6e4) * 0x24 + 8));
            func_0x020137c0(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x6d8) * 0x28 + 0x548),1);
            ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar5 + 0x534),1);
          }
          else {
            psVar4[2] = *psVar4 + -4;
            psVar4[3] = ((short)*(undefined4 *)(param_1 + 0x6d8) - (short)iVar6) * -0x14 + 0xa9;
          }
          *(undefined1 *)(psVar4 + 0xe) = 4;
          SysTask_CreateOnMainQueue(0x22318c9,psVar4,0x2000);
          iVar6 = iVar6 + 1;
          iVar5 = iVar5 + 0x28;
        } while (iVar6 <= *(int *)(param_1 + 0x6d8));
      }
      puVar3[1] = puVar3[3];
      puVar3[3] = 0;
    }
    iVar7 = 0;
    iVar5 = *(int *)(param_1 + 0x6d8);
    iVar6 = param_1;
    if (0 < iVar5) {
      do {
        if (iVar7 == iVar5) {
          func_0x0200dd24(*(undefined4 *)(iVar6 + 0x534),1);
        }
        else {
          func_0x0200dd24(*(undefined4 *)(iVar6 + 0x534),2);
        }
        iVar7 = iVar7 + 1;
        iVar5 = *(int *)(param_1 + 0x6d8);
        iVar6 = iVar6 + 0x28;
      } while (iVar7 < iVar5);
    }
    if (puVar3[1] == 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    puVar3[1] = 0;
  }
  else if (iVar6 == 2) {
    if (*(int *)(*(int *)(param_1 + 0x818) + *(int *)(param_1 + 0x6e4) * 0x24 + 0x20) == 0) {
      ov40_0222C03C();
    }
    else {
      ov40_0222BF80(param_1,5);
    }
    ov40_0222BFB0(param_1);
    Heap_Free(*(undefined4 *)(param_1 + 0x860));
  }
  return 0;
}

