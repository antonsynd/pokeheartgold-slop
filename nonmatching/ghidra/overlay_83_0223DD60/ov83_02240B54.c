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
undefined4 ListMenuItems_AppendFromMsgData();
undefined4 NewMsgDataFromNarc();
undefined4 ov83_02240528();
undefined4 ov83_0224088C();
undefined4 ov83_022407FC();
undefined4 ov83_02247B7C();
undefined4 ov83_0224759C();
undefined4 ov83_022408E0();
undefined4 ov83_02240664();
undefined4 ov83_0224755C();
undefined4 ov83_02240748();
undefined4 ov83_02240984();
undefined4 ListMenuItems_New();
undefined4 ov83_0224777C();
undefined4 DestroyMsgData();
extern undefined ov83_02247D24;
extern undefined ov83_02247D12;
extern undefined ov83_02247EE0;
extern undefined ov83_02247F88;

void ov83_02240B54(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined *puVar5;
  
  uVar1 = NewMsgDataFromNarc(1,0x1b,0xde,0x6b);
  iVar2 = ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),1);
  if (param_2 == 6) {
    puVar5 = &ov83_02247F88;
    *(char *)(param_1 + 0x861) = (char)*(undefined2 *)(&ov83_02247D12 + (iVar2 + -1) * 2);
  }
  else {
    puVar5 = &ov83_02247EE0;
    *(char *)(param_1 + 0x861) = (char)*(undefined2 *)(&ov83_02247D24 + (iVar2 + -1) * 2);
  }
  uVar3 = ListMenuItems_New(*(undefined1 *)(param_1 + 0x861),0x6b);
  uVar4 = 0;
  *(undefined4 *)(param_1 + 0x4dc) = uVar3;
  if (*(char *)(param_1 + 0x861) != '\0') {
    do {
      ListMenuItems_AppendFromMsgData
                (*(undefined4 *)(param_1 + 0x4dc),uVar1,*(undefined2 *)(puVar5 + uVar4 * 2),uVar4);
      uVar4 = uVar4 + 1 & 0xffff;
    } while (uVar4 < *(byte *)(param_1 + 0x861));
  }
  DestroyMsgData(uVar1);
  uVar1 = ov83_02247B7C(param_1);
  *(undefined4 *)(param_1 + 0x85c) = uVar1;
  ov83_0224755C(*(undefined4 *)(param_1 + 0x77c),1);
  ov83_02240528(param_1,param_2);
  ov83_02240664(param_1);
  ov83_02240748(param_1);
  ov83_022407FC(param_1);
  ov83_0224088C(param_1);
  ov83_022408E0(param_1,0);
  ov83_02240984(param_1);
  ov83_0224759C(*(undefined4 *)(param_1 + 0x780),0x30,0x48);
  return;
}

