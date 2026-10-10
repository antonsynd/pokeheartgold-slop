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
undefined4 sub_020335B4();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 Heap_Alloc();
undefined4 LinkBattleRuleset_sizeof();
undefined4 MailMsg_Init();
extern int iRam021d413c __asm__("sub_021D413C");
undefined4 func_0x020df250() __asm__("sub_020DF250");
undefined4 sub_02034DF0();
extern undefined2 uRam021d4134 __asm__("sub_021D4134");

void sub_02034B0C(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  if (iRam021d413c == 0) {
    iRam021d413c = Heap_Alloc(0xf,0xd98,param_3,param_4,param_4);
    func_0x020d4994(iRam021d413c,0,0xd98);
    uVar1 = sub_020335B4();
    uVar1 = Heap_Alloc(0xf,uVar1);
    *(undefined4 *)(iRam021d413c + 0xd64) = uVar1;
    uVar1 = sub_020335B4();
    func_0x020d4994(*(undefined4 *)(iRam021d413c + 0xd64),0,uVar1);
    uVar1 = LinkBattleRuleset_sizeof();
    uVar1 = Heap_Alloc(0xf,uVar1);
    *(undefined4 *)(iRam021d413c + 0xd7c) = uVar1;
    uVar1 = LinkBattleRuleset_sizeof();
    func_0x020d4994(*(undefined4 *)(iRam021d413c + 0xd7c),0,uVar1);
    uVar1 = Heap_Alloc(0xf,0x90);
    *(undefined4 *)(iRam021d413c + 0xd84) = uVar1;
    *(uint *)(iRam021d413c + 0xd88) =
         (0x20 - (*(uint *)(iRam021d413c + 0xd84) & 0x1f)) + *(uint *)(iRam021d413c + 0xd84);
    *(undefined4 *)(iRam021d413c + 0xd80) = 0x333;
    *(undefined4 *)(iRam021d413c + 0xd78) = param_1;
    MailMsg_Init(iRam021d413c + 0xd68);
    sub_02034DF0(param_2);
    uRam021d4134 = func_0x020df250();
  }
  return;
}

