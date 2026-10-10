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
undefined4 ov41_02249B94();
undefined4 ov41_022481D8();
undefined4 ov41_0224883C();
undefined4 func_0x0201fdb8() __asm__("sub_0201FDB8");
undefined4 ov41_0224942C();
undefined4 ov41_022463FC();
undefined4 ov41_0224946C();
undefined4 PlaySE();
undefined4 ov41_02248158();
undefined4 ov41_022480A4();
undefined4 ov41_02249B44();
undefined4 ov41_022484E8();
undefined4 ov41_02249480();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 ov41_0224AC08();
undefined4 ov41_02249418();

void ov41_022490F0(undefined4 *param_1)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int extraout_r1;
  int extraout_r1_00;
  int *piVar7;
  undefined4 *puVar8;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  piVar7 = (int *)*param_1;
  if (piVar7[4] != 0) {
    ov41_0224946C(param_1,&uStack_14,&uStack_18,&uStack_1c,&uStack_20);
    iVar2 = ov41_022481D8(piVar7[1],uStack_1c,uStack_14);
    iVar3 = ov41_022481D8(piVar7[1],uStack_20,uStack_14);
    iVar4 = ov41_022481D8(piVar7[1],uStack_1c,uStack_18);
    iVar5 = ov41_022481D8(piVar7[1],uStack_20,uStack_18);
    if (iVar2 + iVar3 + iVar4 + iVar5 < 4) {
      puVar8 = *(undefined4 **)piVar7[4];
      ov41_0224942C(param_1,&uStack_14,&uStack_18,&uStack_1c,&uStack_20);
      iVar2 = ov41_0224883C(piVar7[2],uStack_1c,uStack_14);
      iVar3 = ov41_0224883C(piVar7[2],uStack_20,uStack_18);
      if (iVar2 + iVar3 < 2) {
        if ((char)piVar7[8] == '\x01') {
          ov41_02249B94(piVar7[4],&iStack_24,&iStack_28);
          uVar6 = func_0x0201fdb8();
          func_0x020f2ba4(uVar6,0x6c - iStack_24);
          iStack_2c = extraout_r1 + 10;
          uVar6 = func_0x0201fdb8();
          func_0x020f2ba4(uVar6,0x7d - iStack_28);
          iStack_30 = extraout_r1_00 + 0x12;
        }
        else {
          iStack_2c = (int)(short)piVar7[7];
          iStack_30 = (int)*(short *)((int)piVar7 + 0x1e);
        }
        PlaySE(0x682);
      }
      else {
        ov41_02249B44(piVar7[4],&iStack_2c,&iStack_30);
        PlaySE(0x5eb);
      }
      if ((char)piVar7[8] == '\x01') {
        uVar1 = ov41_022484E8(*(undefined4 *)(piVar7[4] + 4),*puVar8,*(undefined4 *)(piVar7[2] + 4))
        ;
        *(undefined1 *)((int)piVar7 + 0x21) = uVar1;
      }
      ov41_02249480(piVar7,4,iStack_2c,iStack_30,*(undefined4 *)(piVar7[4] + 4),
                    *(undefined1 *)((int)piVar7 + 0x21));
    }
    else {
      iVar2 = ov41_022480A4(piVar7[1],piVar7[4],*(undefined4 *)(*piVar7 + 0x38));
      if (iVar2 == 0) {
        iStack_2c = (int)(short)piVar7[7];
        iStack_30 = (int)*(short *)((int)piVar7 + 0x1e);
        PlaySE(0x682);
        ov41_0224AC08(piVar7[3],0x1b,0xd7,3);
        ov41_02249480(piVar7,4,iStack_2c,iStack_30,*(undefined4 *)(piVar7[4] + 4),
                      *(undefined1 *)((int)piVar7 + 0x21));
      }
      else {
        ov41_02248158(piVar7[1]);
        ov41_022463FC();
        piVar7[0xc] = 0;
        PlaySE(0x5ea);
      }
    }
    ov41_02249418(piVar7);
  }
  return;
}

