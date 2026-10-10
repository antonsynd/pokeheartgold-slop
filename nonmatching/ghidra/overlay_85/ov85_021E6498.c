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
undefined4 ov85_021E7274();
undefined4 ov85_021E8454();
undefined4 Bag_AddItem(void *, unsigned short, unsigned short, int);
undefined4 PlayFanfare(unsigned short);
void * Save_Bag_Get(void *);
unsigned short LCRandom(void);
undefined4 _u32_div_f(unsigned int, unsigned int);
extern undefined ov85_021EA72C;
extern undefined ov85_021EA728;

undefined4 ov85_021E6498(undefined4 *param_1)

{
  ushort uVar1;
  uint uVar2;
  undefined *puVar3;
  undefined4 uVar4;
  int extraout_r1;
  int iVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  
  ov85_021E8454();
  if ((param_1[8] & 1 << (*(uint *)(param_1[10] + 0xc) & 0xff)) != 0) {
    iVar7 = param_1[0xc] * 8;
    iVar5 = *(int *)(&ov85_021EA728 + iVar7);
    uVar8 = *(uint *)(&ov85_021EA72C + iVar7);
    uVar1 = LCRandom();
    { uint nug_a = (uint)((uint)uVar1), nug_b = (uint)((uVar8 - iVar5) + 1); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    uVar6 = iVar5 + extraout_r1;
    uVar2 = *(uint *)(&ov85_021EA728 + iVar7);
    if ((uVar2 <= uVar6) && (uVar2 = uVar6, uVar8 < uVar6)) {
      uVar2 = uVar8;
    }
    ov85_021E7274(param_1,3,uVar2);
    puVar3 = Save_Bag_Get(*(undefined **)(param_1[0x33] + 0x1c));
    iVar5 = Bag_AddItem(puVar3,(ushort)uVar2,1,0x66);
    PlayFanfare(0x4a1);
    if (iVar5 == 1) {
      uVar4 = 0x28;
    }
    else {
      uVar4 = 0x29;
    }
    *param_1 = uVar4;
    return 0;
  }
  *param_1 = 0x2b;
  return 0;
}

