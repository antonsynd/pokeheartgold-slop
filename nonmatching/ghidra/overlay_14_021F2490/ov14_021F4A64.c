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
undefined4 AcquireBoxMonLock(void *);
undefined4 ReleaseBoxMonLock(void *, int);
undefined4 GetMonBaseStatEx_HandleAlternateForm(void *, int, int, int);
void * PCStorage_GetMonByIndexPair(void *, unsigned int, unsigned int);
undefined4 MIi_CpuClear16(unsigned short, void *, unsigned int);
undefined4 GetBoxMonData(void *, int, void *);
extern undefined ov14_021F8080;

void ov14_021F4A64(int param_1,uint param_2,int param_3)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uStack_30;
  uint uStack_28;
  uint uStack_24;
  uint uStack_20;

  uStack_30 = 0xb;
  uStack_20 = 0;
  do {
    uStack_28 = 10;
    uStack_24 = 0;
    do {
      puVar2 = PCStorage_GetMonByIndexPair
                         (*(undefined **)(param_1 + 4),param_2,uStack_24 + uStack_20 * 6);
      iVar3 = AcquireBoxMonLock(puVar2);
      uVar4 = GetBoxMonData(puVar2,5,(undefined *)0x0);
      uVar5 = GetBoxMonData(puVar2,0xac,(undefined *)0x0);
      if (uVar5 != 0) {
        uVar5 = GetBoxMonData(puVar2,0x4c,(undefined *)0x0);
        if (uVar5 == 0) {
          uVar5 = GetBoxMonData(puVar2,0x70,(undefined *)0x0);
          uVar4 = GetMonBaseStatEx_HandleAlternateForm
                            (*(undefined **)(*(int *)(param_1 + 0x34) + 0x450),uVar4,uVar5 & 0xffff,
                             0x1b);
          uVar4 = uVar4 & 0xffff;
        }
        else if (uVar4 == 0x1ea) {
          uVar4 = 1;
        }
        else {
          uVar4 = 8;
        }
        bVar1 = (&ov14_021F8080)[uVar4];
        if (uStack_30 < uStack_30 + 2) {
          uVar4 = uStack_30;
          do {
            MIi_CpuClear16((bVar1 + 0x20) * 0x100 | bVar1 + 0x20,
                           (undefined *)
                           (param_3 +
                           (uStack_28 & 7) +
                           (uVar4 & 7) * 8 + (((int)uVar4 >> 3) * 4 + ((int)uStack_28 >> 3)) * 0x40)
                           ,2);
            uVar4 = uVar4 + 1 & 0xff;
          } while (uVar4 < uStack_30 + 2);
        }
      }
      ReleaseBoxMonLock(puVar2,iVar3);
      uStack_28 = uStack_28 + 2 & 0xff;
      uStack_24 = uStack_24 + 1 & 0xff;
    } while (uStack_24 < 6);
    uStack_30 = uStack_30 + 2 & 0xff;
    uStack_20 = uStack_20 + 1 & 0xff;
  } while (uStack_20 < 5);
  return;
}

