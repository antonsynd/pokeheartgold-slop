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
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 BgTilemapRectChangePalette(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 ScheduleBgTilemapBufferTransfer(void *, unsigned char);
undefined4 CopyToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);

void ov88_02258DE8(int param_1,undefined4 *param_2,char param_3,char param_4,uint param_5,
                  int param_6,int param_7,int param_8,int param_9)

{
  byte bVar1;
  uint uVar2;
  uint extraout_r1;
  ushort *puVar3;
  byte bVar4;

  _u32_div_f(param_5,3);
  uVar2 = _u32_div_f(param_5,3);
  if (param_8 != 0) {
    uVar2 = uVar2 + 2;
  }
  if (param_6 == 1) {
    uVar2 = uVar2 + 1;
  }
  puVar3 = *(ushort **)(param_1 + 4);
  bVar1 = param_4 * '\x02' + 4;
  bVar4 = param_3 * '\x02' + 0x15;
  CopyToBgTilemapRect((undefined *)*param_2,3,bVar4,bVar1,2,2,(undefined *)(puVar3 + 6),
                      (byte)((extraout_r1 & 0x7f) << 1),(byte)((uVar2 & 0x7f) << 1),
                      (byte)((*puVar3 & 0x7ff) >> 3),(byte)((puVar3[1] & 0x7ff) >> 3));
  if (param_9 == 0) {
    if (param_7 != 0) {
      BgTilemapRectChangePalette((undefined *)*param_2,3,bVar4,bVar1,2,2,3);
    }
  }
  else {
    BgTilemapRectChangePalette((undefined *)*param_2,3,bVar4,bVar1,2,2,4);
  }
  ScheduleBgTilemapBufferTransfer((undefined *)*param_2,3);
  return;
}

