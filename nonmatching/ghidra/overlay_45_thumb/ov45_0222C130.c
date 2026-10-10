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
undefined4 ov45_0222DAE0();
undefined4 ov45_0222A578();
undefined4 ov45_0222EC68();
undefined4 ov45_0222A844();

void ov45_0222C130(int param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  uint uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  undefined2 uStack_28;
  undefined2 uStack_26;
  undefined4 auStack_24 [4];
  
  if ((*(byte *)(param_2 + 4) < 5) && (*(byte *)(param_2 + 4) != 0)) {
    iVar6 = 0;
    puVar4 = auStack_24;
    iVar3 = param_1;
    puVar5 = param_2;
    do {
      if (iVar6 < (int)(uint)*(byte *)(param_2 + 4)) {
        iVar1 = ov45_0222EC68(*puVar5);
        if (iVar1 == -1) {
          return;
        }
        uVar2 = ov45_0222A578(param_1);
        ov45_0222A844(uVar2,*(undefined4 *)(iVar3 + 0xe8),*(undefined4 *)(param_1 + 0x528));
        *puVar4 = *(undefined4 *)(iVar3 + 0xe8);
      }
      else {
        *puVar4 = 0;
      }
      iVar6 = iVar6 + 1;
      puVar5 = puVar5 + 1;
      iVar3 = iVar3 + 4;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 4);
    uStack_40 = (uint)*(byte *)(param_2 + 4);
    uStack_3c = auStack_24[0];
    uStack_38 = auStack_24[1];
    uStack_34 = auStack_24[2];
    uStack_30 = auStack_24[3];
    uStack_2c = ov45_0222EC68(*param_2);
    uStack_2a = ov45_0222EC68(param_2[1]);
    uStack_28 = ov45_0222EC68(param_2[2]);
    uStack_26 = ov45_0222EC68(param_2[3]);
    ov45_0222DAE0(*(undefined4 *)(param_1 + 4),&uStack_40);
  }
  return;
}

