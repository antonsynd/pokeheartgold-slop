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
undefined4 FillBgTilemapRect();
undefined4 ScheduleBgTilemapBufferTransfer();

void ov75_02247D24(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  *(int *)(param_1 + 0xbc) = *(int *)(param_1 + 0xbc) + 1;
  if (*(int *)(param_1 + 0xbc) == 8) {
    *(uint *)(param_1 + 0xc0) = *(uint *)(param_1 + 0xc0) ^ 1;
    *(undefined4 *)(param_1 + 0xbc) = 0;
    if (*(int *)(param_1 + 0xac) + 6 == *(int *)(param_1 + 0xb4)) {
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,0,0xe,0x11,4,2,9,param_4);
    }
    else {
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 1U & 0xffff
                        ,0xe,0x11,1,1,9,param_4);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 2U & 0xffff
                        ,0xf,0x11,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 3U & 0xffff
                        ,0x10,0x11,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 4U & 0xffff
                        ,0x11,0x11,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0xbU & 0xffff,0xe,0x12,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0xcU & 0xffff,0xf,0x12,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0xdU & 0xffff,0x10,0x12,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0xeU & 0xffff,0x11,0x12,1,1,9);
    }
    if (*(int *)(param_1 + 0xac) == 0) {
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,0,0xe,3,4,2,9,param_4);
    }
    else {
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 5U & 0xffff
                        ,0xe,3,1,1,9,param_4);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 6U & 0xffff
                        ,0xf,3,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 7U & 0xffff
                        ,0x10,3,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,*(int *)(param_1 + 0xc0) * 0x14 + 8U & 0xffff
                        ,0x11,3,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0xfU & 0xffff,0xe,4,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0x10U & 0xffff,0xf,4,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0x11U & 0xffff,0x10,4,1,1,9);
      FillBgTilemapRect(*(undefined4 *)(param_1 + 4),3,
                        *(int *)(param_1 + 0xc0) * 0x14 + 0x12U & 0xffff,0x11,4,1,1,9);
    }
    ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 4),3);
  }
  return;
}

