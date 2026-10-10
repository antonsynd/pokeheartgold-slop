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
undefined4 HBlankInterruptDisable();
undefined4 Main_SetVBlankIntrCB();
undefined4 sub_02021148();
undefined4 Heap_Create();
undefined4 ov14_021E5A60();
undefined4 ov14_021E5C54();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov14_021E5E74();
undefined4 sub_020210BC();
undefined4 ov14_021E5D78();
undefined4 func_0x02022d04() __asm__("sub_02022D04");
undefined4 NARC_New();
undefined4 func_0x02022c9c() __asm__("sub_02022C9C");
undefined4 ov14_021E5A70();
undefined4 Heap_Alloc();
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern ushort uRam04000304 __asm__("sub_04000304");
extern undefined2 uRam04001050 __asm__("sub_04001050");
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 ov14_021F566C();
undefined4 ov14_021E5DE0();
undefined4 ov14_021E81FC();
undefined4 ov14_021E783C();
undefined4 ov14_021E82BC();
undefined4 ov14_021F6A44();
undefined4 ov14_021E7BA4();
undefined4 ov14_021F297C();
undefined4 ov14_021E7930();
undefined4 ov14_021E5ED0();
undefined4 ov14_021E825C();
undefined4 ov14_021F5620();
undefined4 ov14_021F2F3C();
undefined4 ov14_021F4ED0();
undefined4 ov14_021F2F20();
undefined4 ov14_021F49C8();
undefined4 ov14_021E5EAC();

int ov14_021EAFAC(int *param_1)

{
  int iVar1;
  undefined4 uVar2;

  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  func_0x02022c9c(0);
  func_0x02022d04(0);
  uRam04000050 = 0;
  uRam04001050 = 0;
  sub_020210BC();
  sub_02021148(4);
  uRam04000304 = uRam04000304 & 0x7fff;
  Heap_Create(3,10,0x80000);
  iVar1 = Heap_Alloc(10,0x88e0);
  param_1[0xd] = iVar1;
  func_0x020d4994(iVar1,0,0x88e0);
  uVar2 = NARC_New(2,10);
  *(undefined4 *)(param_1[0xd] + 0x450) = uVar2;
  uVar2 = NARC_New(0x14,10);
  *(undefined4 *)(param_1[0xd] + 0x454) = uVar2;
  ov14_021E5A60();
  ov14_021E5A70(param_1);
  ov14_021E5E74(param_1);
  ov14_021E5C54(param_1);
  ov14_021E5D78(param_1);
  ov14_021E5DE0(param_1);
  ov14_021F4ED0(param_1);
  ov14_021F297C(param_1);
  ov14_021F2F20(param_1);
  ov14_021F2F3C(param_1);
  uVar2 = ov14_021E7930(param_1,*(undefined1 *)((int)param_1 + 0x1f));
  ov14_021E783C(param_1,uVar2,2);
  ov14_021E7BA4(param_1);
  if ((*(int *)(*param_1 + 8) != 1) && (*(int *)(*param_1 + 8) != 0)) {
    ov14_021E81FC(param_1);
    ov14_021E825C(param_1);
  }
  ov14_021E82BC(param_1);
  ov14_021E5ED0(param_1);
  ov14_021F5620(param_1);
  ov14_021F566C(param_1);
  ov14_021F49C8(param_1);
  ov14_021F6A44(param_1);
  uVar2 = SysTask_CreateOnVBlankQueue(0x21e59ad,param_1,0);
  *(undefined4 *)param_1[0xd] = uVar2;
  ov14_021E5EAC(1);
  return param_1[0xc];
}

