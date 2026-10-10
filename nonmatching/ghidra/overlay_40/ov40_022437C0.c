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
undefined4 ov40_02243E80();
undefined4 ov40_02243614();
undefined4 ov40_0224355C();
undefined4 ov40_02243F38();
undefined4 ov40_02243EEC();
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 ov40_02244054();
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 PlaySE(unsigned short);

void ov40_022437C0(uint param_1,int param_2,int *param_3)

{
  uint uVar1;
  int iVar2;
  undefined2 extraout_r1;
  int iVar3;
  int iVar4;

  if (param_3[0x7d] == 1) {
    if (param_3[0xa6] != 1) {
      param_3[0xa6] = 1;
    }
    if (param_2 == 0) {
      if (param_1 < 0xc) {
        if (param_3[param_1 * 7 + 2] == 1) {
          param_3[0xa7] = 2;
          param_3[0xa8] = param_1;
        }
        else {
          param_3[0xa7] = 1;
          param_3[0xa8] = param_3[param_1 * 7 + 1];
        }
        PlaySE(0x57b);
        return;
      }
      if (param_1 == 0x16) {
        *(undefined2 *)(param_3 + 0x6e) = 0;
        *(undefined2 *)((int)param_3 + 0x1ba) = 2;
      }
      else if (param_1 == 0x17) {
        *(undefined2 *)(param_3 + 0x6e) = 3;
        *(undefined2 *)((int)param_3 + 0x1ba) = 2;
      }
      else {
        { uint nug_a = (uint)(param_1 - 0xc), nug_b = (uint)(5); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
        *(undefined2 *)(param_3 + 0x6e) = extraout_r1;
        uVar1 = _u32_div_f(param_1 - 0xc,5);
        *(short *)((int)param_3 + 0x1ba) = (short)uVar1;
      }
      if ((param_1 < 0xc) || (0x15 < param_1)) {
        if (param_1 == 0x16) {
          PlaySE(0x57b);
          ov40_02243614((int)param_3);
          return;
        }
        PlaySE(0x57b);
        ov40_0224355C(param_3);
      }
      else if (param_3[0x82] != 0) {
        PlaySE(0x57b);
        iVar4 = param_3[0x62];
        param_3[iVar4 * 7] = param_1 - 0xb;
        iVar2 = ov40_02244054(param_3[iVar4 * 7],param_3[iVar4 * 7 + 2]);
        ManagedSprite_SetAnim((undefined *)param_3[iVar4 * 7 + 3],iVar2);
        ov40_02243E80((int)param_3,1,1);
        ov40_02243EEC((int)param_3,param_1 - 0xc);
        ov40_02243E80((int)param_3,1,0);
        ov40_02243E80((int)param_3,2,1);
        ov40_02243F38((int)param_3,param_1 - 0xc,2);
        ManagedSprite_SetAnim((undefined *)param_3[0x73],3);
        iVar2 = iVar4 + 1;
        if (iVar2 == param_3[0x81]) {
          param_3[0xa7] = 1;
          param_3[0xa8] = 0;
          param_3[0xa9] = 0;
          return;
        }
        iVar3 = param_3[iVar2 * 7 + 1];
        if (param_3[iVar4 * 7 + 1] == iVar3) {
          param_3[0xa7] = 2;
          param_3[0xa8] = iVar2;
          return;
        }
        param_3[0xa7] = 1;
        param_3[0xa8] = iVar3;
        param_3[0xa9] = 0;
        return;
      }
    }
  }
  return;
}

