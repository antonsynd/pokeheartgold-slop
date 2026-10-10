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
undefined4 NewMsgDataFromNarc(undefined4, undefined4, undefined4, undefined4);
undefined4 ov05_0221D7AC(undefined4);
undefined4 ov05_0221D228(void);
undefined4 ov05_0221D094(undefined4);
undefined4 Main_SetVBlankIntrCB(undefined4, undefined4);
undefined4 sub_0203A880(void);
undefined4 ov05_0221D6C4(undefined4, undefined4, undefined4);
undefined4 String_New(undefined4, undefined4);
undefined4 PlayerProfile_GetVersion(void);
undefined4 MessageFormat_New(undefined4);
undefined4 sub_020880CC(undefined4, undefined4);
undefined4 func_0x0202fd28(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0202FD28");
undefined4 sub_02034818(undefined4);
undefined4 ov05_0221D140(undefined4);
undefined4 ov05_0221CEB8(undefined4, undefined4, undefined4);

undefined4 ov05_0221BF08(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iStack_10;

  cVar1 = *(char *)((int)param_1 + 0xb82);
  iStack_10 = param_4;
  if (cVar1 == '\0') {
    ov05_0221CEB8(param_1,0,1);
    ov05_0221D094(param_1);
    ov05_0221D140(param_1);
    ov05_0221D228();
    func_0x0202fd28(*(undefined4 *)(*(int *)*param_1 + 0x1c0),((int *)*param_1)[9],&iStack_10,0);
    iVar3 = 0;
    param_1[0x2f3] = iStack_10;
    param_1[0x2f4] = 0;
    do {
      iVar2 = sub_02034818(iVar3);
      if ((iVar2 != 0) && (iVar2 = PlayerProfile_GetVersion(), iVar2 == 0)) {
        param_1[0x2f4] = 1;
        break;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < 8);
  }
  else if (cVar1 == '\x01') {
    ov05_0221D6C4(param_1,0xffffffe0,0xfffffff0);
    ov05_0221D7AC(param_1);
    sub_0203A880();
  }
  else if (cVar1 == '\x02') {
    sub_020880CC(0,*(undefined4 *)(*param_1 + 0x24));
    Main_SetVBlankIntrCB(0x221ce89,param_1);
    *(undefined1 *)((int)param_1 + 0xb82) = 0;
    *(undefined1 *)(param_1 + 0x2df) = 4;
    *(undefined1 *)((int)param_1 + 0xb7d) = 2;
    param_1[0x2dd] = 0xc;
    iVar3 = NewMsgDataFromNarc(0,0x1b,0x27e,*(undefined4 *)(*param_1 + 0x24));
    param_1[0x2eb] = iVar3;
    iVar3 = MessageFormat_New(*(undefined4 *)(*param_1 + 0x24));
    param_1[0x2ec] = iVar3;
    iVar3 = String_New(0x140,*(undefined4 *)(*param_1 + 0x24));
    param_1[0x2ed] = iVar3;
    param_1[0x2ef] = 1;
    return 1;
  }
  *(char *)((int)param_1 + 0xb82) = *(char *)((int)param_1 + 0xb82) + '\x01';
  return 0;
}

