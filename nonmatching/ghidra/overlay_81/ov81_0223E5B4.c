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
undefined4 ov81_022408C4();
undefined4 Options_GetFrame();
undefined4 ov81_02242FB0();
undefined4 ov81_02242D18();
undefined4 sub_020196E8();
undefined4 ov81_02243228();
undefined4 func_0x02236dd4() __asm__("sub_02236DD4");
undefined4 ov81_02242218();
undefined4 ov81_0224218C();
undefined4 ov81_02242300();
undefined4 ov81_02242CBC();
undefined4 ov81_02241F50();
undefined4 ov81_02241CA0();
undefined4 ov81_02242F94();
undefined4 ov81_02241FEC();
undefined4 ov81_02242F48();
undefined4 ov81_02241524();
undefined4 ov81_02240F38();
undefined4 ov81_022420B4();
undefined4 Pokepic_SetAttr();
undefined4 ov81_02243028();
undefined4 ov81_02241C84();
undefined4 ov81_02241E68();
undefined4 ov81_02242D94();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov81_022408A0();
undefined4 FillWindowPixelBuffer();
undefined4 ov81_0224086C();
undefined4 ov81_02240658();
undefined4 ov81_022414E0();
undefined4 ov81_02241D0C();
undefined4 ov81_02241450();
undefined4 ov81_02240AD8();

void ov81_0223E5B4(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar2 = func_0x02236dd4(*(undefined1 *)(param_1 + 9));
  ov81_02240F38(param_1,0);
  ov81_02241524(param_1);
  ov81_02243228(*(undefined4 *)(param_1 + 0x464),*(undefined4 *)(param_1 + 0x468),&uStack_18,
                &uStack_1c);
  uVar3 = ov81_02242D18(param_1 + 0x1c4,0,2,0,0,uStack_18,uStack_1c);
  *(undefined4 *)(param_1 + 0x388) = uVar3;
  ov81_02243228(*(undefined4 *)(param_1 + 0x464),6,&uStack_18,&uStack_1c);
  uVar3 = ov81_02242D18(param_1 + 0x1c4,0,3,0,0,uStack_18,uStack_1c);
  *(undefined4 *)(param_1 + 0x38c) = uVar3;
  ov81_02241CA0(param_1,&uStack_18,&uStack_1c);
  uVar3 = ov81_02242CBC(param_1 + 0x1c4,1,0,0,0,uStack_18,uStack_1c);
  *(undefined4 *)(param_1 + 0x390) = uVar3;
  ov81_02241F50(param_1);
  ov81_02241FEC(param_1);
  ov81_022420B4(param_1);
  ov81_0224218C(param_1);
  uVar3 = ov81_02242D18(param_1 + 0x1c4,4,0,0,0,0x50,0xc);
  *(undefined4 *)(param_1 + 0x394) = uVar3;
  uVar3 = ov81_02242D18(param_1 + 0x1c4,5,0,0,0,0x50,0xc);
  *(undefined4 *)(param_1 + 0x398) = uVar3;
  ov81_02242218(param_1,*(undefined4 *)(param_1 + 0x3c0),*(undefined4 *)(param_1 + 0x468),6);
  ov81_02242300(param_1,*(undefined4 *)(param_1 + 0x468),6);
  sub_020196E8(*(undefined4 *)(param_1 + 0x474),0,7,0);
  ov81_022408C4(param_1,param_1 + 0x50,0,0,0);
  iVar6 = 0;
  iVar5 = param_1;
  if (*(char *)(param_1 + 0x11) != '\0') {
    do {
      ov81_02242F48(*(undefined4 *)(param_1 + (uint)*(ushort *)(iVar5 + 0x3c8) * 4 + 0x360));
      ov81_02242FB0(*(undefined4 *)(param_1 + (uint)*(ushort *)(iVar5 + 0x3c8) * 4 + 0x360),0);
      ov81_02242F94(*(undefined4 *)(param_1 + (uint)*(ushort *)(iVar5 + 0x3c8) * 4 + 0x360),1);
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + 2;
    } while (iVar6 < (int)(uint)*(byte *)(param_1 + 0x11));
  }
  uVar3 = Options_GetFrame(*(undefined4 *)(param_1 + 0x1b8));
  ov81_02243028(param_1 + 0xc0,uVar3);
  ov81_022408A0(param_1,0,*(byte *)(param_1 + 0x11) + 1);
  uVar1 = ov81_0224086C(param_1,0);
  *(undefined1 *)(param_1 + 0x10) = uVar1;
  if ((*(byte *)(param_1 + 0x13) & 3) >> 1 == 1) {
    iVar6 = ov81_02241D0C(param_1);
    iVar7 = 0;
    iVar5 = param_1;
    if (*(char *)(param_1 + 0x11) != '\0') {
      do {
        Pokepic_SetAttr(*(undefined4 *)(iVar5 + 0x1ac),6,0);
        iVar7 = iVar7 + 1;
        iVar5 = iVar5 + 4;
      } while (iVar7 < (int)(uint)*(byte *)(param_1 + 0x11));
    }
    Pokepic_SetAttr(*(undefined4 *)(param_1 + iVar6 * 4 + 0x1ac),6,0);
    ov81_02241E68(param_1,iVar6,*(undefined4 *)(param_1 + 0x468),0);
    ov81_02241FEC(param_1);
    ov81_02241C84(iVar6,*(undefined4 *)(param_1 + 0x47c),&uStack_18,&uStack_1c);
    ov81_02242D94(*(undefined4 *)(param_1 + 0x390),uStack_18,uStack_1c);
    ov81_02240658(param_1,0xff);
    ov81_02241450(param_1);
    if ((*(char *)(param_1 + 0x18) != '\0') && (iVar5 = 0, 0 < iVar2)) {
      iVar7 = param_1 + 0x50;
      iVar6 = param_1;
      do {
        iVar4 = (iVar5 + 5) * 0x10;
        FillWindowPixelBuffer(iVar7 + iVar4,0);
        if (iVar5 < (int)(uint)*(byte *)(param_1 + 0x18)) {
          ov81_02240AD8(param_1,iVar7 + iVar4,0,0,0xf,2,0,0,*(undefined2 *)(iVar6 + 0x45a),
                        *(ushort *)(iVar6 + 0x45e) & 0xff);
        }
        ScheduleWindowCopyToVram(iVar7 + iVar4);
        iVar5 = iVar5 + 1;
        iVar6 = iVar6 + 2;
      } while (iVar5 < iVar2);
      return;
    }
  }
  else {
    ov81_022414E0(param_1);
  }
  return;
}

