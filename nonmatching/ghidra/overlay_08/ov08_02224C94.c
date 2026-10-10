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
undefined4 ov08_02224C48(undefined4, undefined4);
undefined4 func_0x02020a0c(undefined4, undefined4, undefined4) __asm__("sub_02020A0C");
undefined4 DpadMenuBox_GetNeighborInDirection(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 PlaySE(undefined4);
undefined4 DpadMenuBox_GetDimensions(undefined4, undefined4, undefined4);
undefined4 ov08_02224BFC(void);
undefined4 func_0x0226bafc(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0226BAFC");
extern undefined4 uRam021d1154 __asm__("sub_021D1154");

uint ov08_02224C94(undefined4 *param_1)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  undefined4 unaff_r6;
  undefined1 uStack_18;
  undefined1 uStack_17;
  undefined1 uStack_16;
  undefined1 uStack_15;
  
  iVar2 = ov08_02224BFC();
  if (iVar2 == 0) {
    return 0xffffffff;
  }
  if ((uRam021d1154 & 0x40) == 0) {
    if ((uRam021d1154 & 0x80) == 0) {
      if ((uRam021d1154 & 0x20) == 0) {
        if ((uRam021d1154 & 0x10) == 0) {
          uVar3 = 0xff;
        }
        else {
          uVar3 = DpadMenuBox_GetNeighborInDirection
                            (param_1[1],0,0,0,0,*(undefined1 *)((int)param_1 + 9),3);
          unaff_r6 = 3;
        }
      }
      else {
        uVar3 = DpadMenuBox_GetNeighborInDirection
                          (param_1[1],0,0,0,0,*(undefined1 *)((int)param_1 + 9),2);
        unaff_r6 = 2;
      }
    }
    else {
      uVar3 = DpadMenuBox_GetNeighborInDirection
                        (param_1[1],0,0,0,0,*(undefined1 *)((int)param_1 + 9),1);
      unaff_r6 = 1;
    }
  }
  else {
    uVar3 = DpadMenuBox_GetNeighborInDirection
                      (param_1[1],0,0,0,0,*(undefined1 *)((int)param_1 + 9),0);
    unaff_r6 = 0;
  }
  if (uVar3 == 0xff) {
    if ((uRam021d1154 & 1) != 0) {
      return (uint)*(byte *)((int)param_1 + 9);
    }
    if ((uRam021d1154 & 2) == 0) {
      return 0xffffffff;
    }
    PlaySE(0x5dd);
    return 0xfffffffe;
  }
  bVar1 = true;
  uVar4 = uVar3;
  if (((uVar3 & 0x80) != 0) &&
     (uVar4 = (uint)*(byte *)((int)param_1 + 10), *(byte *)((int)param_1 + 10) == 0xff)) {
    uVar4 = (uVar3 ^ 0x80) & 0xff;
  }
  do {
    if ((1 << (uVar4 & 0xff) & param_1[3]) != 0) goto LAB_02224d90;
    bVar1 = false;
    uVar3 = DpadMenuBox_GetNeighborInDirection(param_1[1],0,0,0,0,uVar4,unaff_r6);
    uVar3 = uVar3 & 0x7f;
  } while ((uVar3 != uVar4) && (uVar4 = uVar3, uVar3 != *(byte *)((int)param_1 + 9)));
  uVar4 = (uint)*(byte *)((int)param_1 + 9);
LAB_02224d90:
  if (*(byte *)((int)param_1 + 9) != uVar4) {
    iVar2 = uVar4 * 8;
    func_0x02020a0c(param_1[1] + iVar2,&uStack_15,&uStack_16);
    DpadMenuBox_GetDimensions(param_1[1] + iVar2,&uStack_17,&uStack_18);
    iVar2 = ov08_02224C48(param_1[1] + iVar2,unaff_r6);
    if ((iVar2 == 1) && (bVar1)) {
      *(undefined1 *)((int)param_1 + 10) = *(undefined1 *)((int)param_1 + 9);
    }
    else {
      *(undefined1 *)((int)param_1 + 10) = 0xff;
    }
    *(char *)((int)param_1 + 9) = (char)uVar4;
    func_0x0226bafc(*param_1,uStack_15,uStack_17,uStack_16,uStack_18);
    PlaySE(0x5dc);
  }
  return 0xffffffff;
}

