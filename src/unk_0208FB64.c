#include "unk_0208FB64.h"

#include "global.h"

#include "math_util.h"
#include "unk_02005D10.h"
#include "unk_02033AE0.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"

extern void sub_02091570(int a0, int a1, void *a2, void *a3);
extern u32 sub_02091590(void);
extern void sub_02036FD8(int a0, void *a1, int a2);
extern u32 sub_02033250(void);
extern void sub_02038C1C(void);
extern int MATH_CountPopulation(u32 x);
extern void ov73_021E6B98(void *a0);
extern void ov73_021E705C(void *a0, int a1, int a2);
extern void ov73_021E7120(void *a0, int a1, int a2);
extern int ov73_021E7488(void);

typedef void (*RecHandler)(int, int, void *, void *);
typedef u32 (*RecSizeGetter)(void);
typedef void *(*RecGetter)(int, void *);

typedef struct RecCommand {
    RecHandler handler;
    RecSizeGetter getSize;
    RecGetter getRecord;
} RecCommand;

static void sub_0208FB78(int a0, int a1, void *a2, void *a3);
static void sub_0208FB88(int a0, int a1, void *a2, void *a3);
static void sub_0208FB98(int a0, int a1, void *a2, void *a3);
static void sub_0208FBE0(int a0, int a1, void *a2, void *a3);
static void sub_0208FBF0(int a0, int a1, void *a2, void *a3);
static void sub_0208FCDC(int a0, int a1, void *a2, void *a3);
static void sub_0208FCFC(int a0, int a1, void *a2, void *a3);
static void sub_0208FD00(int a0, int a1, void *a2, void *a3);
static void sub_0208FD04(int a0, int a1, void *a2, void *a3);
static void sub_0208FD1C(int a0, int a1, void *a2, void *a3);
static void sub_0208FD3C(void *a3, int a1);
static u32 sub_0208FD7C(void);
static u32 sub_0208FD80(void);
static u32 sub_0208FD84(void);
static void *sub_0208FD88(int a0, void *a1);

static const RecCommand _021059DC[] = {
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x00
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x01
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x02
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x03
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x04
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x05
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x06
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x07
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x08
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x09
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0D
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0E
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x0F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x10
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x11
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x12
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x13
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x14
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x15
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x16
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x17
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x18
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x19
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1D
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1E
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x1F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x20
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x21
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x22
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x23
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x24
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x25
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x26
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x27
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x28
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x29
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2D
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2E
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x2F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x30
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x31
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x32
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x33
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x34
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x35
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x36
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x37
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x38
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x39
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3D
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3E
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x3F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x40
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x41
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x42
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x43
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x44
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x45
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x46
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x47
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x48
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x49
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4D
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4E
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x4F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x50
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x51
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x52
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x53
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x54
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x55
    { sub_0208FCFC, sub_0208FD80, NULL         }, // 0x56
    { sub_0208FD00, sub_0208FD80, NULL         }, // 0x57
    { sub_0208FCDC, sub_0208FD80, NULL         }, // 0x58
    { sub_0208FBE0, sub_0208FD7C, NULL         }, // 0x59
    { sub_0208FBF0, sub_0208FD84, NULL         }, // 0x5A
    { sub_0208FD04, sub_0208FD7C, NULL         }, // 0x5B
    { sub_0208FD1C, sub_0208FD7C, NULL         }, // 0x5C
    { sub_0208FB98, sub_0208FD7C, NULL         }, // 0x5D
    { sub_0208FB78, sub_02091590, sub_0208FD88 }, // 0x5E
    { sub_0208FB88, sub_0208FD80, NULL         }, // 0x5F
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x60
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x61
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x62
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x63
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x64
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x65
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x66
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x67
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x68
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x69
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x6A
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x6B
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x6C
    { sub_02091570, sub_0208FD7C, NULL         }, // 0x6D
};

void sub_0208FB64(void *arg0) {
    sub_0203410C(&_021059DC, NELEMS(_021059DC), arg0);
}

static void sub_0208FB78(int a0, int a1, void *a2, void *a3) {
    *(int *)((u8 *)a3 + 0x4A08) += 1;
}

static void sub_0208FB88(int a0, int a1, void *a2, void *a3) {
    if (a0 == 0) {
        *(int *)((u8 *)a3 + 0x4A10) = *(u8 *)a2;
    }
}

static void sub_0208FB98(int a0, int a1, void *a2, void *a3) {
    *(int *)((u8 *)a3 + 0x4A08) = 0;
    *(u8 *)((u8 *)a3 + 0x4A14) = 1;
    sub_0208FD3C(a3, sub_0203769C());
    ov73_021E6B98(a3);
    ov73_021E705C(a3, 0x19, (u8)a0);
    sub_020398D4(1, 1);
    PlaySE(0x657);
}

static void sub_0208FBE0(int a0, int a1, void *a2, void *a3) {
    ov73_021E705C(a3, 2, 0);
}

#ifdef NONMATCHING
static void sub_0208FBF0(int a0, int a1, void *a2, void *a3) {
    u8 *data = a2;
    if (a0 != 0) {
        u8 buf[4];
        if (sub_0203769C() != 0) {
            return;
        }
        buf[0] = data[0];
        buf[1] = data[1];
        buf[2] = data[2];
        buf[3] = data[3];
        buf[0] = a0;
        buf[1] = *(int *)((u8 *)a3 + 0x4A1C);
        switch (data[2]) {
        case 0:
            if (*(int *)((u8 *)a3 + 0x4A1C) == sub_02037454() && *(int *)((u8 *)a3 + 0x4A1C) == ov73_021E7488() && *(int *)((u8 *)a3 + 0x4A1C) == MATH_CountPopulation(sub_02033250())) {
                *(u32 *)((u8 *)a3 + 0x4A24) |= 1 << a0;
                buf[3] = 1;
                sub_02037454();
                sub_02038C1C();
            } else {
                buf[3] = 0;
            }
            break;
        case 1:
            break;
        }
        sub_02037030(0x70, buf, 4);
    } else {
        switch (data[2]) {
        case 0:
            if (data[0] != sub_0203769C()) {
                return;
            }
            if (data[3] == 0) {
                ov73_021E705C(a3, 8, data[0]);
                return;
            }
            *(u16 *)((u8 *)a3 + 0x4A30) = data[1];
            ov73_021E705C(a3, 7, data[0]);
            return;
        case 1:
            ov73_021E705C(a3, 0x13, data[0]);
            return;
        }
    }
}
#else
// clang-format off
// NONMATCHING: correct C above; retail does NOT promote the 0x4A1C field offset
// to a callee-saved register (it reloads the constant from the literal pool
// before each of the 4 field accesses, using only r4/r5/r6), whereas MWCC caches
// it in r7 here. This is a constant-register-promotion heuristic, not
// source-controllable.
static asm void sub_0208FBF0(int a0, int a1, void *a2, void *a3) {
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0208FC86
	bl sub_0203769C
	cmp r0, #0
	bne _0208FCD0
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	ldr r0, =0x00004A1C
	strb r6, [r1]
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0208FC2A
	cmp r0, #1
	b _0208FC78
_0208FC2A:
	bl sub_02037454
	ldr r1, =0x00004A1C
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0208FC52
	bl ov73_021E7488
	ldr r1, =0x00004A1C
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0208FC52
	bl sub_02033250
	bl MATH_CountPopulation
	ldr r1, =0x00004A1C
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _0208FC5A
_0208FC52:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _0208FC78
_0208FC5A:
	add r0, r1, #0
	add r0, #8
	mov r2, #1
	ldr r3, [r4, r0]
	add r0, r2, #0
	lsl r0, r6
	orr r0, r3
	add r1, #8
	str r0, [r4, r1]
	add r0, sp, #0
	strb r2, [r0, #3]
	bl sub_02037454
	bl sub_02038C1C
_0208FC78:
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_02037030
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FC86:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0208FC94
	cmp r0, #1
	beq _0208FCC6
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FC94:
	ldrb r6, [r5]
	bl sub_0203769C
	cmp r6, r0
	bne _0208FCD0
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0208FCB2
	add r0, r4, #0
	mov r1, #8
	add r2, r6, #0
	bl ov73_021E705C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FCB2:
	ldrb r1, [r5, #1]
	ldr r0, =0x00004A30
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #7
	bl ov73_021E705C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0208FCC6:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x13
	bl ov73_021E705C
_0208FCD0:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
}
// clang-format on
#endif

static void sub_0208FCDC(int a0, int a1, void *a2, void *a3) {
    ov73_021E7120(a3, 1, *(u8 *)a2);
    if (sub_0203769C() == 0) {
        *(int *)((u8 *)a3 + 0x384) = 0;
    }
}

static void sub_0208FCFC(int a0, int a1, void *a2, void *a3) {
}

static void sub_0208FD00(int a0, int a1, void *a2, void *a3) {
}

static void sub_0208FD04(int a0, int a1, void *a2, void *a3) {
    if (sub_0203769C()) {
        ov73_021E705C(a3, 0xd, 0);
    }
}

static void sub_0208FD1C(int a0, int a1, void *a2, void *a3) {
    if (sub_0203769C() == 0) {
        u8 buf;
        buf = a0;
        sub_02037030(0x6e, &buf, 1);
    }
}

static void sub_0208FD3C(void *a3, int a1) {
    int i;
    u32 checksum = 0;
    u32 *p = (u32 *)((u8 *)a3 + 0x388);
    for (i = 0; i < 0x2EE; i++) {
        checksum ^= *p;
        p++;
    }
    *(u32 *)((u8 *)a3 + 0xF40) = checksum;
    *(u32 *)((u8 *)a3 + 0xF44) = LCRandom();
    sub_02036FD8(0x74, (u8 *)a3 + 0x388, 0xBC0);
}

static u32 sub_0208FD7C(void) {
    return 0;
}

static u32 sub_0208FD80(void) {
    return 1;
}

static u32 sub_0208FD84(void) {
    return 4;
}

static void *sub_0208FD88(int a0, void *a1) {
    return (u8 *)a1 + 0xF48 + a0 * 0xBC0;
}
