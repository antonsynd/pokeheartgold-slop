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
undefined4 ov08_0221D5DC();
undefined4 ov08_022201C0();
undefined4 ReadMsgDataIntoString();
undefined4 func_0x0223ac20() __asm__("sub_0223AC20");
undefined4 func_0x0223a880() __asm__("sub_0223A880");
undefined4 func_0x02077d88() __asm__("sub_02077D88");
undefined4 ov08_0221DBCC();
undefined4 ov08_0222057C();
undefined4 GetMonData();

undefined4 ov08_0221C1C8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *param_1;
  if (((*(char *)(iVar3 + 0x11) != '\0') || (*(int *)(iVar3 + 0x18) == 0)) &&
     ((*(char *)(iVar3 + 0x11) != '\x01' || (*(int *)(iVar3 + 0x1c) == 0)))) {
    iVar2 = func_0x02077d88(*(undefined2 *)(iVar3 + 0x22),0x24,*(undefined4 *)(iVar3 + 0xc),param_4,
                            param_4);
    if (((iVar2 != 0) &&
        (iVar2 = func_0x02077d88(*(undefined2 *)(iVar3 + 0x22),0x25,*(undefined4 *)(iVar3 + 0xc)),
        iVar2 == 0)) &&
       (-1 < (int)((uint)*(byte *)((int)param_1 + (uint)*(byte *)(iVar3 + 0x11) * 0x50 + 0x1b) <<
                  0x18))) {
      *(undefined1 *)((int)param_1 + 0x2079) = 0xd;
      return 0x16;
    }
    iVar2 = func_0x0223ac20(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0x28),
                            *(undefined1 *)(iVar3 + (uint)*(byte *)(iVar3 + 0x11) + 0x2c),0,
                            *(undefined2 *)(iVar3 + 0x22));
    if (iVar2 == 1) {
      iVar2 = func_0x02077d88(*(undefined2 *)(iVar3 + 0x22),0x25,*(undefined4 *)(iVar3 + 0xc));
      if (iVar2 == 0) {
        iVar2 = ov08_0221D5DC(param_1,*(undefined1 *)(iVar3 + 0x11));
        if ((iVar2 == 1) &&
           (iVar2 = func_0x02077d88(*(undefined2 *)(iVar3 + 0x22),0x17,*(undefined4 *)(iVar3 + 0xc))
           , iVar2 == 0)) {
          ov08_0221DBCC(*(undefined4 *)(iVar3 + 8),*(undefined2 *)(iVar3 + 0x22),
                        *(undefined1 *)(iVar3 + 0x33),*(undefined4 *)(iVar3 + 0xc));
          iVar2 = func_0x0223a880(*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0x28),
                                  *(undefined1 *)(iVar3 + (uint)*(byte *)(iVar3 + 0x11) + 0x2c));
          param_1[(uint)*(byte *)(iVar3 + 0x11) * 0x14 + 1] = iVar2;
          uVar1 = GetMonData(param_1[(uint)*(byte *)(iVar3 + 0x11) * 0x14 + 1],0xa3,0);
          *(undefined2 *)(iVar3 + 0x20) = uVar1;
          *(short *)(iVar3 + 0x20) =
               *(short *)(iVar3 + 0x20) - (short)param_1[(uint)*(byte *)(iVar3 + 0x11) * 0x14 + 5];
          *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
        }
        else {
          *(undefined1 *)((int)param_1 + 0x2079) = 0x17;
        }
      }
      else {
        *(undefined1 *)((int)param_1 + 0x2079) = 0xd;
      }
      *(undefined1 *)(param_1 + 0x81f) = 0;
      return 0x16;
    }
    ReadMsgDataIntoString(param_1[0x7ea],0x51,param_1[0x7ec]);
    ov08_022201C0(param_1);
    *(undefined1 *)(*param_1 + 0x11) = 6;
    *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
    return 0x11;
  }
  ov08_0222057C(param_1);
  ov08_022201C0(param_1);
  *(undefined1 *)(*param_1 + 0x11) = 6;
  *(undefined1 *)((int)param_1 + 0x2079) = 0x19;
  return 0x11;
}

