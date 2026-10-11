#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021F0910
	.public ov14_021F09BC
	.extern ov14_021F0234
	.extern ov14_021F0254
	.extern ov14_021F027C

    .text

	.text
	thumb_func_start ov14_021F0910
ov14_021F0910: ; 0x021F0910
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021F0948
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F09B8 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x4f
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021F0948:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	add r4, r0, #0
	bne _021F096A
	mov r0, #0x26
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov14_021F027C
	pop {r3, r4, r5, pc}
_021F096A:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	ldr r1, [r5, #0x34]
	bne _021F0998
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F09B8 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x50
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021F0998:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x25
	bl ov14_021F6704
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F0254
	pop {r3, r4, r5, pc}
	nop
_021F09B8: .word ov14_021E9450
	thumb_func_end ov14_021F0910

	thumb_func_start ov14_021F09BC
ov14_021F09BC: ; 0x021F09BC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021F09D0
	cmp r1, #1
	beq _021F09DA
	cmp r1, #2
	b _021F09E4
_021F09D0:
	mov r1, #0
	mov r2, #9
	bl ov14_021F6AC0
	b _021F0A04
_021F09DA:
	mov r1, #2
	mov r2, #0x24
	bl ov14_021F6AC0
	b _021F0A04
_021F09E4:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F09FA
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x27
	bl ov14_021F6AC0
	b _021F0A04
_021F09FA:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xb
	bl ov14_021F6AC0
_021F0A04:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x26
	bl ov14_021F6654
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F0A26
	add r0, r4, #0
	bl ov14_021F57B8
_021F0A26:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F0A3A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021F0A3A:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7E64
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _021F0A6E
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F0A6E
	ldr r1, _021F0A7C ; =ov14_021E94A8
	add r0, r4, #0
	mov r2, #0x17
	bl ov14_021F0234
	pop {r4, pc}
_021F0A6E:
	ldr r1, _021F0A7C ; =ov14_021E94A8
	add r0, r4, #0
	mov r2, #0xe
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0A7C: .word ov14_021E94A8
	thumb_func_end ov14_021F09BC

