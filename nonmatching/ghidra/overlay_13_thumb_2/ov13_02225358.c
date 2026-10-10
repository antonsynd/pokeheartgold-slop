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
undefined4 ov13_02225B58();
undefined4 ov13_022256C8();
undefined4 _ll_mul();
undefined4 memcpy();
undefined4 ov13_02225710();

undefined4 ov13_02225358(byte *param_1,undefined1 *param_2,uint param_3,byte *param_4,uint param_5)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  byte *pbVar7;
  byte *pbVar8;
  uint uVar9;
  byte *pbVar10;
  longlong lVar11;
  byte *local_1c0;
  uint local_1a0;
  byte local_178 [8];
  uint local_170;
  uint local_16c;
  byte local_168 [8];
  byte local_160 [8];
  uint auStack_158 [80];
  byte *pbStack_18;
  
  local_178[0] = 0xa6;
  local_178[1] = 0xa6;
  local_178[2] = 0xa6;
  local_178[3] = 0xa6;
  local_178[4] = 0xa6;
  local_178[5] = 0xa6;
  local_178[6] = 0xa6;
  local_178[7] = 0xa6;
  if (((param_3 & 7) == 0) && ((param_5 & 7) == 0)) {
    uVar2 = param_3 >> 3;
    if (1 < uVar2) {
      pbStack_18 = param_4;
      iVar3 = ov13_02225710(auStack_158,param_4,param_5 << 3);
      memcpy(param_1 + 8,param_2,param_3);
      pbVar8 = local_168;
      pbVar7 = local_178;
      iVar4 = 8;
      do {
        bVar1 = *pbVar7;
        pbVar7 = pbVar7 + 1;
        *pbVar8 = bVar1;
        pbVar8 = pbVar8 + 1;
        iVar4 = iVar4 + -1;
      } while (iVar4 != 0);
      local_1a0 = 0;
      do {
        iVar4 = 1;
        if (uVar2 != 0) {
          lVar11 = _ll_mul(uVar2,0,local_1a0,(int)local_1a0 >> 0x1f);
          do {
            pbVar10 = param_1 + iVar4 * 8;
            pbVar8 = local_160;
            iVar5 = 8;
            pbVar7 = pbVar10;
            do {
              bVar1 = *pbVar7;
              pbVar7 = pbVar7 + 1;
              *pbVar8 = bVar1;
              pbVar8 = pbVar8 + 1;
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            ov13_02225B58(auStack_158,iVar3,local_168,local_168);
            uVar9 = (uint)(lVar11 + iVar4);
            uVar6 = (uint)((ulonglong)(lVar11 + iVar4) >> 0x20);
            local_16c = (uVar9 & 0xff0000) >> 8 | (uVar9 & 0xff00) << 8 | uVar9 * 0x1000000 |
                        uVar9 >> 0x18;
            local_170 = uVar6 >> 0x18 |
                        uVar6 * 0x1000000 | (uVar6 & 0xff00) << 8 | (uVar6 & 0xff0000) >> 8;
            ov13_022256C8(local_168,(byte *)&local_170,local_168);
            pbVar8 = local_160;
            iVar5 = 8;
            do {
              bVar1 = *pbVar8;
              pbVar8 = pbVar8 + 1;
              *pbVar10 = bVar1;
              pbVar10 = pbVar10 + 1;
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            iVar4 = iVar4 + 1;
          } while (iVar4 <= (int)uVar2);
        }
        local_1a0 = local_1a0 + 1;
      } while ((int)local_1a0 < 6);
      pbVar8 = local_168;
      iVar3 = 8;
      local_1c0 = param_1;
      do {
        bVar1 = *pbVar8;
        pbVar8 = pbVar8 + 1;
        *local_1c0 = bVar1;
        local_1c0 = local_1c0 + 1;
        iVar3 = iVar3 + -1;
      } while (iVar3 != 0);
      return 1;
    }
    return 0;
  }
  return 0;
}

