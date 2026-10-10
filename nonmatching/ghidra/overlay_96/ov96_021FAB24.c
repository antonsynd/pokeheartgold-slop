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
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);

void ov96_021FAB24(undefined *param_1,ushort *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_2 + 0xe);
  if (iVar1 == 0) {
    if (0x6f < *param_2) {
      FillBgTilemapRect(param_1,(byte)param_2[10],2,(char)param_2[0xc] * '\n' + 2,0x32,1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],3,(char)param_2[0xc] * '\n' + 3,0x32,6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],0x402,(char)param_2[0xc] * '\n' + 9,0x32,1,2,0x10)
      ;
      FillBgTilemapRect(param_1,(byte)param_2[0xb],2,(char)param_2[0xc] * '\n' + 2,0x32,1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],3,(char)param_2[0xc] * '\n' + 3,0x32,6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],0x402,(char)param_2[0xc] * '\n' + 9,0x32,1,2,0x10
                       );
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[10]);
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[0xb]);
      param_2[0xe] = 1;
      param_2[0xf] = 0;
      *(undefined1 *)(param_2 + 0xd) = 0xff;
      return;
    }
  }
  else if (iVar1 == 1) {
    iVar1 = *param_2 - 0x10;
    if (0xe47 < iVar1) {
      iVar1 = iVar1 + ((uint)(iVar1 >> 2) >> 0x1d);
      iVar2 = iVar1 >> 0x1f;
      iVar2 = ((uint)((iVar1 >> 3) * 0x4000000 + iVar2) >> 0x1a | iVar2 << 6) - iVar2;
      iVar1 = 0x40 - iVar2 >> 0x1f;
      iVar1 = ((uint)(iVar2 * -0x4000000 + iVar1) >> 0x1a | iVar1 << 6) - iVar1;
      iVar2 = iVar1 + -2;
      if (iVar2 < 0) {
        iVar2 = iVar1 + 0x3e;
      }
      *(char *)((int)param_2 + 0x1b) = (char)iVar2;
      FillBgTilemapRect(param_1,(byte)param_2[10],0x60,(char)param_2[0xc] * '\n' + 2,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],0x61,(char)param_2[0xc] * '\n' + 3,
                        *(byte *)((int)param_2 + 0x1b),6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],0x62,(char)param_2[0xc] * '\n' + 9,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],0x60,(char)param_2[0xc] * '\n' + 2,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],0x61,(char)param_2[0xc] * '\n' + 3,
                        *(byte *)((int)param_2 + 0x1b),6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],0x62,(char)param_2[0xc] * '\n' + 9,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[10]);
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[0xb]);
      param_2[0xe] = 2;
      param_2[0xf] = 0;
      return;
    }
  }
  else {
    if (iVar1 != 2) {
      return;
    }
    iVar1 = *param_2 - 0x10;
    if (0x1047 < iVar1) {
      iVar1 = iVar1 + ((uint)(iVar1 >> 2) >> 0x1d);
      iVar2 = iVar1 >> 0x1f;
      iVar2 = ((uint)((iVar1 >> 3) * 0x4000000 + iVar2) >> 0x1a | iVar2 << 6) - iVar2;
      iVar1 = 0x40 - iVar2 >> 0x1f;
      iVar1 = ((uint)(iVar2 * -0x4000000 + iVar1) >> 0x1a | iVar1 << 6) - iVar1;
      iVar2 = iVar1 + -2;
      if (iVar2 < 0) {
        iVar2 = iVar1 + 0x3e;
      }
      *(char *)((int)param_2 + 0x1b) = (char)iVar2;
      FillBgTilemapRect(param_1,(byte)param_2[10],2,(char)param_2[0xc] * '\n' + 2,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],3,(char)param_2[0xc] * '\n' + 3,
                        *(byte *)((int)param_2 + 0x1b),6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[10],0x402,(char)param_2[0xc] * '\n' + 9,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],2,(char)param_2[0xc] * '\n' + 2,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],3,(char)param_2[0xc] * '\n' + 3,
                        *(byte *)((int)param_2 + 0x1b),6,2,0x10);
      FillBgTilemapRect(param_1,(byte)param_2[0xb],0x402,(char)param_2[0xc] * '\n' + 9,
                        *(byte *)((int)param_2 + 0x1b),1,2,0x10);
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[10]);
      ScheduleBgTilemapBufferTransfer(param_1,(byte)param_2[0xb]);
      param_2[0xe] = 3;
      param_2[0xf] = 0;
    }
  }
  return;
}

