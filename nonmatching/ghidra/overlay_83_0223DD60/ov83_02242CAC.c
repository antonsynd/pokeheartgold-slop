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
undefined4 ListMenuItems_AppendFromMsgData(void *, void *, int, int);
void * ListMenuItems_New(unsigned int, int);
unsigned char ov83_0224777C(void *, unsigned char, unsigned char);
undefined4 ov83_02242AEC();
extern undefined ov83_02247EB0;
extern undefined ov83_02248008;
extern undefined UNK_02247eb8 __asm__("sub_02247EB8");
extern undefined UNK_02247eb4 __asm__("sub_02247EB4");

void ov83_02242CAC(int param_1)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  puVar2 = ListMenuItems_New(4,0x6b);
  *(undefined **)(param_1 + 0x844) = puVar2;
  bVar1 = ov83_0224777C(*(undefined **)(param_1 + 0x50c),*(byte *)(param_1 + 9),1);
  uVar5 = 0;
  uVar6 = 0;
  do {
    iVar3 = uVar6 * 0xc;
    iVar4 = *(int *)(&UNK_02247eb8 + iVar3);
    if ((iVar4 == 6) || (iVar4 == 7)) {
      if (*(uint *)(&ov83_02247EB0 + iVar3) <= (uint)bVar1) {
        ListMenuItems_AppendFromMsgData
                  (*(undefined **)(param_1 + 0x844),*(undefined **)(param_1 + 0x20),
                   *(int *)(&UNK_02247eb4 + iVar3),iVar4);
        uVar5 = uVar5 + 1 & 0xff;
      }
    }
    else if (iVar4 == 8) {
      if (bVar1 != 3) {
        ListMenuItems_AppendFromMsgData
                  (*(undefined **)(param_1 + 0x844),*(undefined **)(param_1 + 0x20),
                   *(int *)(&UNK_02247eb4 + iVar3),8);
        uVar5 = uVar5 + 1 & 0xff;
      }
    }
    else {
      ListMenuItems_AppendFromMsgData
                (*(undefined **)(param_1 + 0x844),*(undefined **)(param_1 + 0x20),
                 *(int *)(&UNK_02247eb4 + iVar3),iVar4);
      uVar5 = uVar5 + 1 & 0xff;
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 4);
  ov83_02242AEC(param_1,uVar5,0x11,(&ov83_02248008)[uVar5],0xd);
  return;
}

