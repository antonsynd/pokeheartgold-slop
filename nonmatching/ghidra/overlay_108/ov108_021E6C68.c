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
undefined4 InitBgFromTemplate();
undefined4 ov108_021E6C48();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 BG_ClearCharDataRange();
undefined4 BgConfig_Alloc();
undefined4 SetBothScreensModesAndDisable();
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined ov108_021EA898;

void ov108_021E6C68(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  char cVar5;
  undefined4 *puVar6;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 auStack_f4 [56];
  
  ov108_021E6C48();
  uRam04000304 = uRam04000304 & 0x7fff;
  uVar1 = BgConfig_Alloc(*param_1);
  param_1[0xd0] = uVar1;
  uStack_104 = 1;
  uStack_100 = 0;
  uStack_fc = 0;
  uStack_f8 = 0;
  SetBothScreensModesAndDisable(&uStack_104,0,&uStack_104,auStack_f4);
  puVar6 = (undefined4 *)&ov108_021EA898;
  puVar4 = auStack_f4;
  iVar3 = 0x1c;
  do {
    uVar1 = *puVar6;
    uVar2 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar2;
    puVar4 = puVar4 + 2;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  cVar5 = '\0';
  iVar3 = 0;
  puVar4 = auStack_f4;
  do {
    InitBgFromTemplate(param_1[0xd0],cVar5,puVar4,0);
    BgClearTilemapBufferAndCommit(param_1[0xd0],cVar5);
    BG_ClearCharDataRange(cVar5,0x40,0,*param_1);
    iVar3 = iVar3 + 1;
    cVar5 = cVar5 + '\x01';
    puVar4 = puVar4 + 7;
  } while (iVar3 < 8);
  func_0x020cf15c(0x4000050,2,0x1c,0x1c,4);
  func_0x020cf15c(0x4001050,1,0x1e,0x1c,4);
  return;
}

