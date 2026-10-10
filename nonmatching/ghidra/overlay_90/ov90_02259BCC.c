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
undefined4 Sprite_SetAnimCtrlSeq(undefined4, undefined4);
undefined4 func_0x02024a74(undefined4, undefined4) __asm__("sub_02024A74");
undefined4 func_0x0201bb68(undefined4, undefined4) __asm__("sub_0201BB68");
undefined4 Sprite_SetAnimActiveFlag(undefined4, undefined4);
undefined4 FillWindowPixelBuffer(undefined4, undefined4);
undefined4 Sprite_SetDrawFlag(undefined4, undefined4);
undefined4 ov90_0225A050(undefined4, undefined4, undefined4);
undefined4 AddWindowParameterized(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_02258EB4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 CopyToBgTilemapRect(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
extern undefined ov90_0225C318;
extern undefined ov90_0225C310;
extern undefined ov90_0225C276;
extern undefined ov90_0225C274;
extern undefined ov90_0225C314;

void ov90_02259BCC(int param_1,int param_2,int param_3,ushort *param_4,undefined4 *param_5,
                  uint param_6,uint param_7,undefined4 *param_8,undefined4 param_9,
                  undefined4 param_10)

{
  byte bVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  
  if (param_3 != 0) {
    uVar2 = param_6;
    if (param_3 == 1) {
      if (param_6 < param_7) {
        uVar2 = param_6 + 1;
      }
      else if (param_7 == param_6) {
        uVar2 = 0;
      }
      goto LAB_02259c12;
    }
    if (param_3 != 2) goto LAB_02259c12;
  }
  uVar2 = ov90_0225A050(param_2,param_6,param_7);
LAB_02259c12:
  func_0x0201bb68(1,2);
  func_0x0201bb68(0,1);
  iVar5 = param_2 * 0xc;
  uVar4 = (uint)(byte)(&ov90_0225C310)[uVar2 + iVar5];
  AddWindowParameterized
            (*param_5,param_1,0,5,uVar4 + 1 & 0xff,0x1a,4,0xc,param_6 * 0x68 + 0x201 & 0xffff);
  FillWindowPixelBuffer(param_1,0);
  CopyToBgTilemapRect(*param_5,1,0,uVar4,0x20,6,param_4 + 6,0,(&ov90_0225C314)[param_6 + iVar5],
                      (*param_4 & 0x7ff) >> 3,(param_4[1] & 0x7ff) >> 3);
  bVar1 = (&ov90_0225C318)[uVar2 + iVar5];
  iVar5 = (uint)bVar1 * 4;
  uVar3 = ov90_02258EB4(param_9,*param_8,*(ushort *)(&ov90_0225C274 + iVar5) & 0xff,
                        (int)*(short *)(&ov90_0225C276 + iVar5) + uVar4 * 8 & 0xff,0,param_10);
  *(undefined4 *)(param_1 + 0x10) = uVar3;
  Sprite_SetAnimCtrlSeq(uVar3,(uint)bVar1);
  func_0x02024a74(*(undefined4 *)(param_1 + 0x10),param_6);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x10),0);
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0x10),1);
  uVar3 = ov90_02258EB4(param_9,*param_8,0x18,uVar4 * 8 + 0x15 & 0xff,0,param_10);
  *(undefined4 *)(param_1 + 0x14) = uVar3;
  Sprite_SetAnimCtrlSeq(uVar3,0);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x14),0);
  *(char *)(param_1 + 0x1a) = (char)param_6;
  *(char *)(param_1 + 0x1b) = (char)uVar2;
  *(short *)(param_1 + 0x18) = (short)param_2;
  return;
}

