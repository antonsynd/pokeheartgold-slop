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
undefined4 ManagedSprite_SetAnim();
undefined4 Sprite_TickFrame();
undefined4 ov93_0225E3C4();
undefined4 sub_0203769C();
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
extern undefined ov93_02262CB6;
extern undefined ov93_02262CB4;
extern undefined ov93_02262C7A;

void ov93_02261C58(int *param_1,int param_2,int param_3,int param_4,short param_5)

{
  short sVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  
  puVar4 = (undefined4 *)0x0;
  if ((param_3 != 0) && (iVar2 = sub_0203769C(), param_4 != iVar2)) {
    iVar3 = 0;
    iVar2 = param_2;
    do {
      if (*(char *)(iVar2 + 0x15) == '\0') {
        puVar4 = (undefined4 *)(param_2 + iVar3 * 0x18);
        break;
      }
      iVar3 = iVar3 + 1;
      iVar2 = iVar2 + 0x18;
    } while (iVar3 < 3);
    if (puVar4 != (undefined4 *)0x0) {
      iVar2 = ov93_0225E3C4(param_1,param_4);
      func_0x0200dd10(*puVar4,*(undefined2 *)
                               (iVar2 * 2 + (uint)*(byte *)(*param_1 + 0x30) * 8 + 0x2262d2c));
      ManagedSprite_SetAnim(*puVar4,*(undefined2 *)(&ov93_02262C7A + param_3 * 2));
      iVar2 = (uint)*(byte *)(iVar2 + (uint)*(byte *)(*param_1 + 0x30) * 4 + 0x2262cd8) * 4;
      sVar1 = *(short *)(&ov93_02262CB4 + iVar2);
      *(short *)(puVar4 + 4) = *(short *)(&ov93_02262CB6 + iVar2) + -0x18;
      func_0x0200ddf4(*puVar4,(int)sVar1,(*(short *)(puVar4 + 4) + -0x60) * 0x10000 >> 0x10,0x160000
                     );
      Sprite_TickFrame(*(undefined4 *)*puVar4);
      *(char *)((int)puVar4 + 0x12) = (char)param_3;
      *(short *)((int)puVar4 + 0x16) = param_5 + -0xc;
      *(undefined1 *)((int)puVar4 + 0x13) = 0;
      *(undefined1 *)((int)puVar4 + 0x15) = 1;
    }
  }
  return;
}

