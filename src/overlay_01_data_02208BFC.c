#include "global.h"

typedef void *(*UnkFuncPtr_ov01_02208C5C_Ctor)(void *);
typedef void (*UnkFuncPtr_ov01_02208C5C_Dtor)(void *);

typedef struct {
    u32 unk0;
    UnkFuncPtr_ov01_02208C5C_Ctor unk4;
    UnkFuncPtr_ov01_02208C5C_Dtor unk8;
} UnkStruct_ov01_02208C5C;

extern void *ov01_021FD1B8(void *);
extern void ov01_021FD1CC(void *);
extern void *ov01_021FD41C(void *);
extern void ov01_021FD440(void *);
extern void *ov01_021FDA14(void *);
extern void ov01_021FDA30(void *);
extern void *ov01_021FE200(void *);
extern void ov01_021FE220(void *);
extern void *ov01_021FE590(void *);
extern void ov01_021FE5A4(void *);
extern void *ov01_021FE780(void *);
extern void ov01_021FE79C(void *);
extern void *ov01_021FEA0C(void *);
extern void ov01_021FEA20(void *);
extern void *ov01_021FEC38(void *);
extern void ov01_021FEC54(void *);
extern void *ov01_021FED9C(void *);
extern void ov01_021FEDB8(void *);
extern void *ov01_021FEEEC(void *);
extern void ov01_021FEF08(void *);
extern void *ov01_021FF464(void *);
extern void ov01_021FF480(void *);
extern void *ov01_021FF6B0(void *);
extern void ov01_021FF6CC(void *);
extern void *ov01_021FF854(void *);
extern void ov01_021FF870(void *);
extern void *ov01_021FFC0C(void *);
extern void ov01_021FFC28(void *);
extern void *ov01_021FFECC(void *);
extern void ov01_021FFEE8(void *);
extern void *ov01_02200040(void *);
extern void ov01_0220005C(void *);
extern void *ov01_022001E4(void *);
extern void ov01_022001F8(void *);
extern void *ov01_022006A8(void *);
extern void ov01_022006C4(void *);
extern void *ov01_02200858(void *);
extern void ov01_02200874(void *);
extern void *ov01_022031C0(void *);
extern void ov01_022031E8(void *);
extern void *ov01_02203A18(void *);
extern void ov01_02203A38(void *);
extern void *ov01_02203E40(void *);
extern void ov01_02203E64(void *);
extern void *ov01_022051EC(void *);
extern void ov01_02205208(void *);

const u32 defaultFieldEffectRenderers[] = {
    0x14,
    0x13,
    0x11,
    0x01,
    0x10,
    0x05,
    0x16,
    0x08,
    0x09,
    0x0A,
    0x0B,
    0x0C,
    0x0D,
    0x0F,
    0x12,
    0x00,
    0x02,
    0x03,
    0x04,
    0x0E,
    0x06,
    0x07,
    0x15,
    0x17,
};

const UnkStruct_ov01_02208C5C ov01_02208C5C[] = {
    { 0x00, ov01_021FD41C, ov01_021FD440 },
    { 0x01, ov01_021FDA14, ov01_021FDA30 },
    { 0x02, ov01_021FE200, ov01_021FE220 },
    { 0x03, ov01_02200858, ov01_02200874 },
    { 0x04, ov01_021FE780, ov01_021FE79C },
    { 0x05, ov01_021FEA0C, ov01_021FEA20 },
    { 0x06, ov01_021FEC38, ov01_021FEC54 },
    { 0x07, ov01_021FED9C, ov01_021FEDB8 },
    { 0x08, ov01_021FEEEC, ov01_021FEF08 },
    { 0x09, ov01_022001E4, ov01_022001F8 },
    { 0x0A, ov01_021FF464, ov01_021FF480 },
    { 0x0B, ov01_021FF6B0, ov01_021FF6CC },
    { 0x0C, ov01_021FF854, ov01_021FF870 },
    { 0x0D, ov01_021FFC0C, ov01_021FFC28 },
    { 0x0E, ov01_021FFECC, ov01_021FFEE8 },
    { 0x0F, ov01_02200040, ov01_0220005C },
    { 0x10, ov01_021FE590, ov01_021FE5A4 },
    { 0x11, ov01_022031C0, ov01_022031E8 },
    { 0x12, ov01_02203A18, ov01_02203A38 },
    { 0x13, ov01_02203E40, ov01_02203E64 },
    { 0x14, ov01_021FD1B8, ov01_021FD1CC },
    { 0x15, ov01_022006A8, ov01_022006C4 },
    { 0x16, ov01_022051EC, ov01_02205208 },
    { 0x17, NULL,          NULL          },
};
