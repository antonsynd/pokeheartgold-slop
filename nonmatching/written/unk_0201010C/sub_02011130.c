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
undefined4 GF_AssertFail(void);

void sub_02011130(int param_1)

{
  uint uVar1;
  uint uVar2;

  if (param_1 == 0) {
    GF_AssertFail();
  }
  uVar1 = (uint)(*(unsigned short *)0x04000006);
  if (uVar1 < 0xc0) {
    uVar2 = uVar1 + 1;
    if (0xbf < uVar2) {
      uVar2 = uVar1 - 0xbf;
    }
    if (*(char *)(param_1 + 0x308) == '\x01') {
      if (*(char *)(param_1 + uVar2 + 0xc0) == '\0') {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x3f;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x3f;
        }
        if (*(int *)(param_1 + 0x180) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x20;
              return;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x20;
            return;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x2000;
            return;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x2000;
          return;
        }
      }
      else {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x20;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x20;
        }
        if (*(int *)(param_1 + 0x180) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x3f;
              return;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x3f;
            return;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x3f00;
            return;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x3f00;
          return;
        }
      }
    }
    else {
      if (*(char *)(param_1 + uVar2 + 0xc0) == '\0') {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x3f;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x3f;
        }
        if (*(int *)(param_1 + 0x180) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x20;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x20;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x2000;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x2000;
        }
      }
      else {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x20;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x20;
        }
        if (*(int *)(param_1 + 0x180) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x3f;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x3f;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x3f00;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x3f00;
        }
      }
      if (*(char *)(param_1 + uVar2 + 0x244) == '\0') {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x3f;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x3f;
        }
        if (*(int *)(param_1 + 0x304) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x20;
              return;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x20;
            return;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x2000;
            return;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x2000;
          return;
        }
      }
      else {
        if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x0400004a) = (*(unsigned short *)0x0400004a) & 0xffc0 | 0x20;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x0400104a) = (*(unsigned short *)0x0400104a) & 0xffc0 | 0x20;
        }
        if (*(int *)(param_1 + 0x304) == 0) {
          if (*(char *)(param_1 + 0x309) == '\0') {
            if (((*(unsigned short *)0x04000004) & 2) != 0) {
              (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xffc0 | 0x3f;
              return;
            }
          }
          else if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xffc0 | 0x3f;
            return;
          }
        }
        else if (*(char *)(param_1 + 0x309) == '\0') {
          if (((*(unsigned short *)0x04000004) & 2) != 0) {
            (*(unsigned short *)0x04000048) = (*(unsigned short *)0x04000048) & 0xc0ff | 0x3f00;
            return;
          }
        }
        else if (((*(unsigned short *)0x04000004) & 2) != 0) {
          (*(unsigned short *)0x04001048) = (*(unsigned short *)0x04001048) & 0xc0ff | 0x3f00;
        }
      }
    }
  }
  return;
}

