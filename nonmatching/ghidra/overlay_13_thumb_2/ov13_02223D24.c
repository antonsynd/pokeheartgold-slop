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
undefined4 OS_RestoreInterrupts(int);
undefined4 func_0x020ad850() __asm__("sub_020AD850");
undefined4 OS_DisableInterrupts(void);
extern int  iRam0224df5c __asm__("sub_0224DF5C");
extern uint  uRam0224df6c __asm__("sub_0224DF6C");
extern int  iRam0224df7c __asm__("sub_0224DF7C");
extern int  iRam0224df58 __asm__("sub_0224DF58");
extern uint  uRam0224dfb0 __asm__("sub_0224DFB0");
extern uint * puRam0224df38 __asm__("sub_0224DF38");
undefined4 func_0x020ad9c0() __asm__("sub_020AD9C0");

undefined4 ov13_02223D24(undefined4 param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = OS_DisableInterrupts();
  puRam0224df38 = (undefined4 *)(param_2 + 99U & 0xfffffffc);
  uRam0224df6c = (int)puRam0224df38 + 0x2fU & 0xffffffe0;
  iRam0224df7c = uRam0224df6c + 0x2300;
  iRam0224df58 = param_2;
  puRam0224df38[1] = uRam0224df6c + 0x23c0;
  puRam0224df38[2] = (param_2 + param_3) - puRam0224df38[1];
  puRam0224df38[3] = 0;
  *puRam0224df38 = 3;
  uRam0224dfb0 = param_1;
  if (iRam0224df5c == 0) {
    iVar2 = func_0x020ad850(uRam0224df6c,0x2300);
    if (iVar2 != 0) {
      OS_RestoreInterrupts(iVar1);
      return 0;
    }
    iRam0224df5c = 1;
  }
  if (iRam0224df5c == 1) {
    iVar2 = func_0x020ad9c0(puRam0224df38,0x2223771);
    if (iVar2 != 3) {
      OS_RestoreInterrupts(iVar1);
      return 0;
    }
    iRam0224df5c = 4;
    OS_RestoreInterrupts(iVar1);
    return 1;
  }
  OS_RestoreInterrupts(iVar1);
  return 0;
}

