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
undefined4 _ddiv();
undefined4 ov96_021E5F24(void *);
undefined4 _dmul();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021FDA30();
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 VEC_MultAdd(int, void *, void *, void *);
void * ov96_021E8A20(void *);
undefined4 ov96_021FFE5C();
undefined4 _fmul(void);
undefined4 ov96_021FDE6C();
undefined4 ov96_021FDE08();
undefined4 ov96_021FF6DC();
undefined4 ov96_021E8228();
undefined4 _f2d();
undefined4 _dfix();
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 _fgr(void);
undefined4 _fflt(void);
undefined4 ov96_021FDE7C();
undefined4 VEC_Normalize(void *, void *);
undefined4 ov96_021FF72C();
undefined4 ov96_02200EF4();
undefined4 _ffix(void);
undefined4 VEC_Mag(void *);
undefined4 _s32_div_f(void);

void ov96_021FD4D0(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined2 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  int *piVar9;
  uint uVar10;
  undefined1 extraout_r1;
  undefined4 uVar11;
  undefined *puVar12;
  undefined *puVar13;
  undefined *puVar14;
  bool bVar15;
  bool bVar16;
  longlong lVar17;
  ulonglong uVar18;
  int *local_78;
  int *local_74;
  undefined *local_70;
  undefined *local_6c;
  undefined *local_68;
  undefined *local_64;
  uint local_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int aiStack_30 [4];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar2 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar3 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iVar4 = ov96_021E5F24(param_1);
  if (iVar4 == 0) {
    if (puVar3[0x3c0] != '\0') {
      puVar5 = (undefined2 *)ov96_021E8A20(puVar2 + 0x28);
      ov96_021FDA30((int)puVar3,puVar5);
      return;
    }
    puVar6 = (undefined4 *)ov96_021E8A20(puVar2 + 0x50);
    puVar7 = (undefined4 *)ov96_021E8A20(puVar2);
    iVar4 = 4;
    do {
      uVar8 = *puVar7;
      uVar11 = puVar7[1];
      puVar7 = puVar7 + 2;
      *puVar6 = uVar8;
      puVar6[1] = uVar11;
      puVar6 = puVar6 + 2;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    *puVar6 = *puVar7;
    if (*(short *)(puVar3 + 0x640) != 0) {
      *(short *)(puVar3 + 0x640) = *(short *)(puVar3 + 0x640) + -1;
    }
    ov96_021E8A20(puVar2 + 0x28);
    local_4c = 0;
    local_64 = puVar2 + 0x50;
    local_68 = puVar3 + 0x30;
    local_6c = puVar3 + 0xe0;
    local_70 = puVar3 + 0xec;
    local_78 = (int *)(puVar3 + 0xbc);
    puVar12 = puVar3;
    puVar13 = puVar3;
    puVar14 = puVar3;
    local_74 = local_78;
    do {
      piVar9 = (int *)ov96_021E8A20(local_64);
      if (*piVar9 == 0) {
        *(undefined4 *)(puVar12 + 0x380) = 0;
        *(undefined4 *)(puVar12 + 900) = 0;
      }
      else if ((*(int *)(puVar12 + 0x380) == 0) || (*(int *)(puVar12 + 900) == 0)) {
        if ((*(int *)(puVar12 + 0x380) == 0) && (*(int *)(puVar12 + 900) == 0)) {
          *(undefined4 *)(puVar12 + 0x380) = 1;
          *(undefined4 *)(puVar12 + 900) = 1;
        }
      }
      else {
        *(undefined4 *)(puVar12 + 0x380) = 0;
      }
      iVar4 = ov96_021FDE6C(puVar3,(uint)*(byte *)(piVar9 + 1),(uint)*(byte *)((int)piVar9 + 5));
      ov96_021FFE5C((int)puVar3,local_4c & 0xff,iVar4);
      if (puVar13[0xcd] == '\0') {
        if (puVar13[(uint)(byte)puVar13[0xbb] * 0x1c + 0x60] == '\x02') {
          *(undefined4 *)(puVar14 + 0x3b0) = 0;
          *(undefined4 *)(puVar13 + 0xdc) = 0;
          *(undefined4 *)(puVar13 + 0xe0) = 0;
          *(undefined4 *)(puVar13 + 0xe4) = 0;
          *(undefined4 *)(puVar13 + 0xe8) = 0;
          *(undefined4 *)(puVar13 + 0xec) = *(undefined4 *)(puVar13 + 0xe0);
          *(undefined4 *)(puVar13 + 0xf0) = *(undefined4 *)(puVar13 + 0xe4);
          *(undefined4 *)(puVar13 + 0xf4) = *(undefined4 *)(puVar13 + 0xe8);
        }
        else if (puVar13[0xd9] == '\0') {
          bVar1 = false;
          if (*(int *)(puVar12 + 0x380) == 0) {
            if (*(int *)(puVar12 + 900) == 0) {
              if (*(int *)(puVar14 + 0x3b0) != 0) {
                if (*(int *)(puVar13 + 0xdc) < 0x1f) {
                  puVar13[0xda] = 1;
                }
                *(undefined4 *)(puVar14 + 0x3b0) = 0;
                puVar3[0x3c2] = 0;
              }
              bVar1 = true;
            }
            else {
              if (*(int *)(puVar13 + 0xdc) < 0xff) {
                *(int *)(puVar13 + 0xdc) = *(int *)(puVar13 + 0xdc) + 1;
              }
              else {
                puVar3[0x3c2] = 1;
              }
              if (*(int *)(puVar14 + 0x3b0) == 0) goto LAB_021fd994;
              *(uint *)(puVar13 + 0xec) = (uint)*(byte *)(piVar9 + 1) << 0xc;
              *(uint *)(puVar13 + 0xf0) = (uint)*(byte *)((int)piVar9 + 5) << 0xc;
            }
          }
          else {
            iVar4 = ov96_021FDE6C(puVar3,(uint)*(byte *)(piVar9 + 1),
                                  (uint)*(byte *)((int)piVar9 + 5));
            if (iVar4 == 0) {
              iVar4 = ov96_021FDE08((int)puVar3,local_4c & 0xff,(uint)*(byte *)(piVar9 + 1),
                                    (uint)*(byte *)((int)piVar9 + 5));
              if (iVar4 != 0) {
                *(undefined4 *)(puVar14 + 0x3b0) = 1;
                *(uint *)(puVar13 + 0xe0) = (uint)*(byte *)(piVar9 + 1) << 0xc;
                *(uint *)(puVar13 + 0xe4) = (uint)*(byte *)((int)piVar9 + 5) << 0xc;
                *(undefined4 *)(puVar13 + 0xe8) = 0;
                *(undefined4 *)(puVar13 + 0xec) = *(undefined4 *)(puVar13 + 0xe0);
                *(undefined4 *)(puVar13 + 0xf0) = *(undefined4 *)(puVar13 + 0xe4);
                *(undefined4 *)(puVar13 + 0xf4) = *(undefined4 *)(puVar13 + 0xe8);
              }
            }
            else {
              puVar13[0xcd] = 1;
              puVar13[0xce] = 1;
              ov96_021E8228(param_1,(uint)(byte)puVar13[0x100],(uint)(byte)puVar13[0xbb],7,1);
            }
          }
          if (puVar13[0xda] != '\0') {
            uStack_3c = 0;
            uStack_38 = 0;
            uStack_34 = 0;
            uVar10 = *(uint *)(puVar13 + (uint)(byte)puVar13[0xbb] * 0x1c + 0x48);
            ov96_021FF6DC((uint)local_68,(uint)(byte)puVar13[0xbb]);
            _fmul();
            lVar17 = _f2d(uVar10);
            uVar18 = _ddiv((uint)lVar17,(uint)((ulonglong)lVar17 >> 0x20),0,0x40200000);
            uVar18 = _dmul(0,0x40b00000,(uint)uVar18,(uint)(uVar18 >> 0x20));
            uVar10 = _dfix((uint)uVar18,(uint)(uVar18 >> 0x20));
            VEC_Subtract(local_70,local_6c,(undefined *)aiStack_30);
            if (aiStack_30[0] < 0) {
              if (aiStack_30[0] < -0x10000) {
                puVar13[0xcd] = 1;
                puVar13[0xce] = 1;
                ov96_021E8228(param_1,(uint)(byte)puVar13[0x100],(uint)(byte)puVar13[0xbb],7,1);
              }
              aiStack_30[0] = 0;
              aiStack_30[1] = 0;
              aiStack_30[2] = 0;
            }
            VEC_MultAdd(uVar10,(undefined *)aiStack_30,(undefined *)&uStack_3c,
                        (undefined *)aiStack_30);
            VEC_Mag((undefined *)aiStack_30);
            _fflt();
            piVar9 = aiStack_30 + 3;
            aiStack_30[3] = *(int *)(puVar13 + 0xbc);
            uStack_20 = *(undefined4 *)(puVar13 + 0xc0);
            uStack_1c = *(undefined4 *)(puVar13 + 0xc4);
            ov96_021FF72C(piVar9,aiStack_30,piVar9);
            iVar4 = VEC_Mag((undefined *)piVar9);
            _fflt();
            _fmul();
            bVar16 = iVar4 == 0;
            bVar15 = false;
            _fgr();
            if (!bVar15 || bVar16) {
              ov96_021FF72C(local_78,aiStack_30,local_74);
            }
            else {
              uStack_48 = 0;
              uStack_44 = 0;
              uStack_40 = 0;
              VEC_Normalize((undefined *)(aiStack_30 + 3),(undefined *)(aiStack_30 + 3));
              iVar4 = 0x45800000;
              _fmul();
              _ffix();
              VEC_MultAdd(iVar4,(undefined *)(aiStack_30 + 3),(undefined *)&uStack_48,
                          (undefined *)local_74);
            }
            iVar4 = VEC_Mag(local_68 + 0x8c);
            if ((int)(((byte)local_68[(uint)(byte)local_68[0x8b] * 0x1c + 0x2e] - 3) * 0x1000) <=
                iVar4) {
              ov96_021E8228(param_1,(uint)(byte)local_68[0xd0],(uint)(byte)local_68[0x8b],6,1);
            }
            puVar13[0xda] = 0;
          }
          if (bVar1) {
            *(undefined4 *)(puVar13 + 0xdc) = 0;
            *(undefined4 *)(puVar13 + 0xe0) = 0;
            *(undefined4 *)(puVar13 + 0xe4) = 0;
            *(undefined4 *)(puVar13 + 0xe8) = 0;
            *(undefined4 *)(puVar13 + 0xec) = *(undefined4 *)(puVar13 + 0xe0);
            *(undefined4 *)(puVar13 + 0xf0) = *(undefined4 *)(puVar13 + 0xe4);
            *(undefined4 *)(puVar13 + 0xf4) = *(undefined4 *)(puVar13 + 0xe8);
          }
        }
        else {
          *(undefined4 *)(puVar14 + 0x3b0) = 0;
          *(undefined4 *)(puVar13 + 0xdc) = 0;
          *(undefined4 *)(puVar13 + 0xe0) = 0;
          *(undefined4 *)(puVar13 + 0xe4) = 0;
          *(undefined4 *)(puVar13 + 0xe8) = 0;
          *(undefined4 *)(puVar13 + 0xec) = *(undefined4 *)(puVar13 + 0xe0);
          *(undefined4 *)(puVar13 + 0xf0) = *(undefined4 *)(puVar13 + 0xe4);
          *(undefined4 *)(puVar13 + 0xf4) = *(undefined4 *)(puVar13 + 0xe8);
        }
      }
      else {
        if ((puVar13[0xce] == '\x01') && ((char)piVar9[2] == '\x01')) {
          _s32_div_f();
          puVar13[0xbb] = extraout_r1;
          puVar13[0xce] = 2;
        }
        else if ((puVar13[0xce] == '\x02') && ((char)piVar9[2] == '\x02')) {
          puVar13[0xce] = 0;
          puVar13[0xcd] = 0;
          puVar13[0xd3] = 0;
        }
        *(undefined4 *)(puVar14 + 0x3b0) = 0;
        *(undefined4 *)(puVar13 + 0xdc) = 0;
        *(undefined4 *)(puVar13 + 0xe0) = 0;
        *(undefined4 *)(puVar13 + 0xe4) = 0;
        *(undefined4 *)(puVar13 + 0xe8) = 0;
        *(undefined4 *)(puVar13 + 0xec) = *(undefined4 *)(puVar13 + 0xe0);
        *(undefined4 *)(puVar13 + 0xf0) = *(undefined4 *)(puVar13 + 0xe4);
        *(undefined4 *)(puVar13 + 0xf4) = *(undefined4 *)(puVar13 + 0xe8);
      }
LAB_021fd994:
      puVar12 = puVar12 + 0xc;
      local_64 = local_64 + 0x28;
      puVar13 = puVar13 + 0xd4;
      local_68 = local_68 + 0xd4;
      puVar14 = puVar14 + 4;
      local_6c = local_6c + 0xd4;
      local_70 = local_70 + 0xd4;
      local_74 = local_74 + 0x35;
      local_78 = local_78 + 0x35;
      local_4c = local_4c + 1;
    } while ((int)local_4c < 4);
    ov96_02200EF4(param_1,*(uint **)(puVar3 + 0x3dc),(uint)*(ushort *)(puVar3 + 0x640));
    ov96_021FDE7C(param_1);
    puVar3[0x3c0] = *(short *)(puVar3 + 0x640) == 0;
    puVar5 = (undefined2 *)ov96_021E8A20(puVar2 + 0x28);
    ov96_021FDA30((int)puVar3,puVar5);
  }
  return;
}

