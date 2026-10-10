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
undefined4 ov70_0223E114();
undefined4 NARC_Delete();
undefined4 Party_GetCount();
undefined4 ov70_0223E170();
undefined4 ReadMsgDataIntoString();
undefined4 Party_GetMonByIndex();
undefined4 func_0x02073f00() __asm__("sub_02073F00");
undefined4 Sprite_SetDrawFlag();
undefined4 NARC_New();
undefined4 Mon_GetBoxMon();
undefined4 Heap_AllocAtEnd();
undefined4 GetMonData();
undefined4 func_0x02074058() __asm__("sub_02074058");
undefined4 ov70_02245084();
undefined4 FillWindowPixelBuffer();
undefined4 ov70_0223E738();

void ov70_0223E264(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined1 auStack_54 [60];
  undefined4 uStack_18;
  
  uVar1 = *(undefined4 *)(*param_1 + 0xc);
  uStack_18 = param_4;
  iVar2 = Heap_AllocAtEnd(3,0x3d68);
  param_1[0x480] = iVar2;
  uVar3 = NARC_New(0x14,0x3d);
  if ((param_2 < 0) || (0x11 < param_2)) {
    iVar5 = Party_GetCount(*(undefined4 *)(*param_1 + 8));
    uVar7 = 0;
    if (0 < iVar5) {
      do {
        uVar1 = Party_GetMonByIndex(*(undefined4 *)(*param_1 + 8),uVar7);
        uVar4 = Mon_GetBoxMon();
        ov70_0223E114(uVar4,param_1[0x47d] + uVar7 * 4);
        ov70_0223E170(uVar4,param_1[uVar7 + 0x376],param_1[uVar7 + 0x394],auStack_54 + uVar7 * 2,
                      uVar7,uVar3,param_1[0x47d] + uVar7 * 4,iVar2 + uVar7 * 0x20c);
        iVar6 = GetMonData(uVar1,0xa2,0);
        if (iVar6 == 0) {
          Sprite_SetDrawFlag(param_1[uVar7 + 0x3b2],0);
        }
        else {
          Sprite_SetDrawFlag(param_1[uVar7 + 0x3b2],1);
        }
        uVar7 = uVar7 + 1 & 0xffff;
      } while ((int)uVar7 < iVar5);
    }
    for (; uVar7 < 0x1e; uVar7 = uVar7 + 1 & 0xffff) {
      *(undefined2 *)(param_1[0x47d] + uVar7 * 4) = 0;
      Sprite_SetDrawFlag(param_1[uVar7 + 0x376],0);
      Sprite_SetDrawFlag(param_1[uVar7 + 0x394],0);
      *(undefined4 *)(iVar2 + uVar7 * 0x20c + 8) = 0;
      if (uVar7 < 6) {
        Sprite_SetDrawFlag(param_1[uVar7 + 0x3b2],0);
      }
    }
    ReadMsgDataIntoString(param_1[0x2e8],0x5c,param_1[0x2ed]);
  }
  else {
    uVar7 = 0;
    do {
      uVar4 = func_0x02074058(uVar1,param_2,uVar7);
      ov70_0223E114(uVar4,param_1[0x47d] + uVar7 * 4);
      uVar7 = uVar7 + 1 & 0xffff;
    } while (uVar7 < 0x1e);
    uVar7 = 0;
    do {
      *(undefined2 *)(param_1[0x47d] + uVar7 * 4) = 0;
      uVar4 = func_0x02074058(uVar1,param_2,uVar7);
      ov70_0223E170(uVar4,param_1[uVar7 + 0x376],param_1[uVar7 + 0x394],auStack_54 + uVar7 * 2,uVar7
                    ,uVar3,param_1[0x47d] + uVar7 * 4,iVar2 + uVar7 * 0x20c);
      if (uVar7 < 6) {
        Sprite_SetDrawFlag(param_1[uVar7 + 0x3b2],0);
      }
      uVar7 = uVar7 + 1 & 0xffff;
    } while (uVar7 < 0x1e);
    func_0x02073f00(uVar1,param_2,param_1[0x2ed]);
  }
  NARC_Delete(uVar3);
  FillWindowPixelBuffer(param_1 + 0x3d2,0);
  ov70_02245084(param_1 + 0x3d2,param_1[0x2ed],0,5,1,0x10200);
  if (param_1[9] == 6) {
    ov70_0223E738(param_1[0x47d],param_1 + 0x376,param_1 + param_1[0x4b] * 0x49 + 0xd4,iVar2);
  }
  param_1[0x481] = 0x223e121;
  return;
}

