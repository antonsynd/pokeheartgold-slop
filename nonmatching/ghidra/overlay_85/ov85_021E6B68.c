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
undefined4 func_0x020b70a8() __asm__("sub_020B70A8");
undefined4 BgCommitTilemapBufferToVram();
undefined4 func_0x020b7140() __asm__("sub_020B7140");
undefined4 func_0x0201c0a8() __asm__("sub_0201C0A8");
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 func_0x0200316c() __asm__("sub_0200316C");
undefined4 Heap_Free();
undefined4 BG_LoadCharTilesData();
undefined4 ov85_021E8588();
undefined4 func_0x020b71d8() __asm__("sub_020B71D8");

void ov85_021E6B68(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;

  uVar1 = ov85_021E8588(param_1,0x11,0,param_4,param_4);
  func_0x020b7140(uVar1,param_1 + 0xd90);
  func_0x0200316c(*(undefined4 *)(param_1 + 0xd9c),*(undefined4 *)(*(int *)(param_1 + 0xd90) + 0xc),
                  0,0,0x40);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x14,0);
  func_0x020b7140(uVar1,param_1 + 0xd90);
  func_0x0200316c(*(undefined4 *)(param_1 + 0xd9c),*(undefined4 *)(*(int *)(param_1 + 0xd90) + 0xc),
                  1,0,0x40);
  Heap_Free(uVar1);
  func_0x02003ea4(*(undefined4 *)(param_1 + 0xd9c),1,0xffff,8,0);
  uVar1 = ov85_021E8588(param_1,0x10,0);
  func_0x020b70a8(uVar1,param_1 + 0xd8c);
  BG_LoadCharTilesData
            (*(undefined4 *)(param_1 + 0xd84),3,*(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x14),
             *(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x10),0);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x16,0);
  func_0x020b70a8(uVar1,param_1 + 0xd8c);
  BG_LoadCharTilesData
            (*(undefined4 *)(param_1 + 0xd84),6,*(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x14),
             *(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x10),0);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x15,0);
  func_0x020b70a8(uVar1,param_1 + 0xd8c);
  BG_LoadCharTilesData
            (*(undefined4 *)(param_1 + 0xd84),7,*(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x14),
             *(undefined4 *)(*(int *)(param_1 + 0xd8c) + 0x10),0);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x13,0);
  func_0x020b71d8(uVar1,param_1 + 0xd88);
  func_0x0201c0a8(*(undefined4 *)(param_1 + 0xd84),2,*(int *)(param_1 + 0xd88) + 0xc,
                  *(undefined4 *)(*(int *)(param_1 + 0xd88) + 8));
  BgCommitTilemapBufferToVram(*(undefined4 *)(param_1 + 0xd84),2);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x12,0);
  func_0x020b71d8(uVar1,param_1 + 0xd88);
  func_0x0201c0a8(*(undefined4 *)(param_1 + 0xd84),3,*(int *)(param_1 + 0xd88) + 0xc,
                  *(undefined4 *)(*(int *)(param_1 + 0xd88) + 8));
  BgCommitTilemapBufferToVram(*(undefined4 *)(param_1 + 0xd84),3);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x18,0);
  func_0x020b71d8(uVar1,param_1 + 0xd88);
  func_0x0201c0a8(*(undefined4 *)(param_1 + 0xd84),6,*(int *)(param_1 + 0xd88) + 0xc,
                  *(undefined4 *)(*(int *)(param_1 + 0xd88) + 8));
  BgCommitTilemapBufferToVram(*(undefined4 *)(param_1 + 0xd84),6);
  Heap_Free(uVar1);
  uVar1 = ov85_021E8588(param_1,0x17,0);
  func_0x020b71d8(uVar1,param_1 + 0xd88);
  func_0x0201c0a8(*(undefined4 *)(param_1 + 0xd84),7,*(int *)(param_1 + 0xd88) + 0xc,
                  *(undefined4 *)(*(int *)(param_1 + 0xd88) + 8));
  BgCommitTilemapBufferToVram(*(undefined4 *)(param_1 + 0xd84),7);
  Heap_Free(uVar1);
  return;
}

