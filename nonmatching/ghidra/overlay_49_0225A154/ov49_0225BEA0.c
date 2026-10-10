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
undefined4 func_0x0222aaec() __asm__("sub_0222AAEC");
undefined4 CopyToBgTilemapRect();
undefined4 func_0x02007a44() __asm__("sub_02007A44");
undefined4 Heap_Free();
undefined4 sub_0207769C();
undefined4 BG_LoadCharTilesData();
undefined4 sub_02077678();
undefined4 sub_020776B4();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 func_0x020b70a8() __asm__("sub_020B70A8");
undefined4 func_0x0222d7c0() __asm__("sub_0222D7C0");
undefined4 BgTilemapRectChangePalette();
extern undefined ov49_0226978C;
extern undefined ov49_022696F8;

void ov49_0225BEA0(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
                  undefined4 param_5)

{
  char cVar1;
  short sVar2;
  undefined2 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  undefined *puVar7;
  undefined2 *puStack_28;
  int iStack_24;
  int iStack_18;
  
  puVar7 = &ov49_0226978C;
  iStack_24 = 0;
  puStack_28 = (undefined2 *)&ov49_022696F8;
  cVar6 = '\x02';
  do {
    sVar2 = func_0x0222aaec(param_5,iStack_24);
    if (sVar2 != 0) {
      uVar3 = func_0x0222d7c0();
      uVar4 = sub_020776B4();
      uVar5 = sub_02077678(uVar3);
      uVar4 = func_0x02007a44(uVar4,uVar5,1,param_4,1);
      func_0x020b70a8(uVar4,&iStack_18);
      BG_LoadCharTilesData(*param_3,6,*(undefined4 *)(iStack_18 + 0x14),0x100,*puStack_28);
      Heap_Free(uVar4);
      CopyToBgTilemapRect(*param_3,6,0x1a,cVar6,4,2,puVar7,0,0,4,2);
      cVar1 = sub_0207769C(uVar3);
      BgTilemapRectChangePalette(*param_3,6,0x1a,cVar6,4,2,cVar1 + '\v');
      ScheduleBgTilemapBufferTransfer(*param_3,6);
    }
    puVar7 = puVar7 + 0x10;
    puStack_28 = puStack_28 + 1;
    cVar6 = cVar6 + '\x02';
    iStack_24 = iStack_24 + 1;
  } while (iStack_24 < 2);
  return;
}

