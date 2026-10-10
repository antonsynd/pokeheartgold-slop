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
undefined4 ov40_02233044();
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_02230964();
undefined4 ov40_0222D874();
undefined4 ov40_0222DA84();
undefined4 sub_0203088C();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FB90();
undefined4 ov40_0222C4DC();

undefined4 ov40_022322E0(int param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  longlong lVar4;
  
  iVar3 = *(int *)(param_1 + 0x860);
  if (*(int *)(param_1 + 8) == 0) {
    iVar2 = ov40_0222DA84(iVar3 + 8,1);
    if (iVar2 != 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),1,2,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
  }
  else if (*(int *)(param_1 + 8) == 1) {
    ov40_02230964(param_1,1);
    ov40_0222D874(param_1);
    ov40_02230964(param_1,0);
    func_0x0201bb68(0,0);
    func_0x0201bb68(1,3);
    func_0x0201bb68(2,0);
    func_0x0201bb68(3,2);
    func_0x0201bb68(4,0);
    func_0x0201bb68(5,3);
    func_0x0201bb68(6,1);
    func_0x0201bb68(7,2);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else {
    ov40_0222FB90(param_1,0);
    iVar2 = ov40_0222C4DC(param_1);
    if (iVar2 == 1) {
      bVar1 = false;
      if (*(int *)(param_1 + 0x86c) == 0) {
        bVar1 = true;
      }
      else {
        lVar4 = sub_0203088C(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x86c) * 4 + 0x87c),5,0);
        if (lVar4 == 1) {
          bVar1 = true;
        }
        else if (*(int *)(param_1 + 0x874) == 1) {
          bVar1 = true;
        }
      }
      if (bVar1) {
        ov40_02233044(param_1);
        *(undefined4 *)(iVar3 + 0x198) = 0;
        ov40_0222BF80(param_1,9);
      }
      else {
        *(undefined4 *)(iVar3 + 0x198) = 1;
        ov40_0222BF80(param_1,6);
      }
    }
    else {
      ov40_0222BF80(param_1,2);
    }
  }
  return 0;
}

