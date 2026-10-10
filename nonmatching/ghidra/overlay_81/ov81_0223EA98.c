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
undefined4 ov81_022408C4();
undefined4 ov81_02242CBC();
undefined4 ov81_02242058();
undefined4 ov81_02241A98();
undefined4 ov81_02243398();
undefined4 ov81_02241C84();
undefined4 ov81_02241F50();
undefined4 ov81_02242420();
undefined4 ov81_022419E0();
undefined4 ov81_02242D18();
undefined4 sub_020196E8();
undefined4 ov81_02243228();
undefined4 ov81_02242218();
undefined4 ov81_022420B4();

void ov81_0223EA98(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  uStack_c = param_4;
  uVar1 = ov81_02243398(param_1,*(undefined4 *)(param_1 + 0x464));
  *(undefined4 *)(param_1 + 0x464) = uVar1;
  ov81_02241A98(param_1);
  ov81_02243228(*(undefined4 *)(param_1 + 0x464),0,&uStack_10,&uStack_14);
  uVar1 = ov81_02242D18(param_1 + 0x1c4,0,2,0,0,uStack_10,uStack_14);
  *(undefined4 *)(param_1 + 0x388) = uVar1;
  ov81_02241C84(*(undefined4 *)(param_1 + 0x468),*(undefined4 *)(param_1 + 0x47c),&uStack_10,
                &uStack_14);
  uVar1 = ov81_02242CBC(param_1 + 0x1c4,1,0,0,0,uStack_10,uStack_14);
  *(undefined4 *)(param_1 + 0x390) = uVar1;
  ov81_02243228(*(undefined4 *)(param_1 + 0x464),6,&uStack_10,&uStack_14);
  uVar1 = ov81_02242D18(param_1 + 0x1c4,0,3,0,0,uStack_10,uStack_14);
  *(undefined4 *)(param_1 + 0x38c) = uVar1;
  ov81_02241F50(param_1);
  ov81_02242058(param_1,1);
  ov81_022420B4(param_1);
  uVar1 = ov81_02242D18(param_1 + 0x1c4,4,0,0,0,0x50,0xc);
  *(undefined4 *)(param_1 + 0x394) = uVar1;
  uVar1 = ov81_02242D18(param_1 + 0x1c4,5,0,0,0,0x50,0xc);
  *(undefined4 *)(param_1 + 0x398) = uVar1;
  ov81_02242218(param_1,*(undefined4 *)(param_1 + 0x3c4),0,4);
  ov81_02242420(param_1,0);
  sub_020196E8(*(undefined4 *)(param_1 + 0x474),0,7,0);
  ov81_022408C4(param_1,param_1 + 0x50,0,0,0);
  *(undefined4 *)(param_1 + 0x468) = 0;
  ov81_022419E0(param_1);
  return;
}

