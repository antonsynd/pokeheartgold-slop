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
undefined4 sub_0209569C();
undefined4 Sprite_GetMatrixPtr();
undefined4 sub_02094860();
undefined4 sub_02095DD8();
undefined4 sub_020948C4();
undefined4 Sprite_SetMatrix();
undefined4 sub_02094794();
undefined4 sub_02095D40();
undefined4 sub_02095DE8();
undefined4 sub_02094A70();

uint sub_02095354(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  uVar5 = 0;
  uVar1 = sub_02095DD8(*(undefined4 *)(param_1 + 0x46b8));
  uVar2 = sub_02095DE8(*(undefined4 *)(param_1 + 0x46b8));
  switch(uVar1) {
  case 1:
    sub_0209569C(param_1);
    uVar5 = 3;
    break;
  case 2:
  case 6:
    iVar3 = sub_02094794(param_1,uVar2);
    if (iVar3 == 1) {
      sub_020948C4(param_1,1,uVar2);
      if (*(char *)(param_1 + 0xd) != '\0') {
        iVar3 = 0;
        do {
          uStack_18 = 0;
          if (*(int *)(*(int *)(param_1 + 0x46a4) + iVar3 + 4) == 0) {
            *(undefined4 *)(param_1 + 0x4694) = 0xd4;
            *(uint *)(param_1 + 0x4698) = ((uVar5 & 0xff) + 1) * 0x28;
            iStack_2c = *(int *)(param_1 + 0x4694) << 0xc;
            iStack_1c = *(int *)(param_1 + 0x4698) * 0x1000;
            uStack_24 = 0;
            iStack_28 = iStack_1c + -0x4000;
            iStack_20 = iStack_2c;
            Sprite_SetMatrix(*(undefined4 *)
                              (*(int *)(param_1 + 0x46a0) + *(int *)(param_1 + 0x4684) * 0x34),
                             &iStack_2c);
            Sprite_SetMatrix(*(undefined4 *)(param_1 + 0x8c0),&iStack_20);
            sub_02095D40(*(undefined4 *)(param_1 + 0x46b8),4,uVar5 & 0xff);
            break;
          }
          uVar5 = uVar5 + 1;
          iVar3 = iVar3 + 8;
        } while ((int)uVar5 < (int)(uint)*(byte *)(param_1 + 0xd));
      }
      uVar5 = 1;
      *(undefined4 *)(param_1 + 0x46bc) = 1;
    }
    break;
  case 3:
    iVar3 = sub_02094860(param_1,uVar2);
    if (iVar3 == 1) {
      sub_020948C4(param_1,2,uVar2);
      puVar4 = (undefined4 *)
               Sprite_GetMatrixPtr(*(undefined4 *)
                                    (*(int *)(param_1 + 0x46a0) + *(int *)(param_1 + 0x4684) * 0x34)
                                  );
      uStack_38 = *puVar4;
      uStack_30 = puVar4[2];
      iStack_34 = puVar4[1] + -0x4000;
      Sprite_SetMatrix(*(undefined4 *)
                        (*(int *)(param_1 + 0x46a0) + *(int *)(param_1 + 0x4684) * 0x34),&uStack_38)
      ;
      uVar5 = 1;
      *(undefined4 *)(param_1 + 0x46bc) = 1;
      *(undefined4 *)(param_1 + 0x14) = 4;
    }
    break;
  case 4:
    sub_02094A70(param_1);
  }
  return uVar5;
}

