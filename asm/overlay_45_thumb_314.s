#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222D9EC
	.extern ov45_0222E04C
	.extern ov45_0222E0A4
	.extern ov45_0222E0E0
	.extern ov45_02254BDC

	.text

	.text
	thumb_func_start ov45_0222D9EC
ov45_0222D9EC: ; 0x0222D9EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	ldr r4, [r5]
	add r6, r0, #0
	cmp r4, #0
	beq _0222DA02
	cmp r4, #1
	beq _0222DA02
	cmp r4, #2
	bne _0222DA76
_0222DA02:
	ldr r0, [r5, #0x20]
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _0222DA16
	cmp r0, #2
	blo _0222DA76
	cmp r0, #4
	bls _0222DA1E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0222DA16:
	cmp r0, #1
	blo _0222DA76
	cmp r0, #4
	bhi _0222DA76
_0222DA1E:
	ldr r0, _0222DA7C ; =ov45_02254BDC
	lsl r1, r4, #2
	ldr r7, [r0, r1]
	add r0, r6, #0
	lsl r1, r7, #0x10
	add r0, #0x5c
	lsr r1, r1, #0x10
	bl ov45_0222E04C
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq _0222DA76
	ldr r1, [r5, #8]
	str r1, [sp]
	ldr r1, [r5, #0xc]
	str r1, [sp, #4]
	ldr r1, [r5, #0x10]
	str r1, [sp, #8]
	ldr r1, [r5, #0x14]
	str r1, [sp, #0xc]
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0x10]
	ldrh r1, [r5, #0x1a]
	str r1, [sp, #0x14]
	ldrh r1, [r5, #0x1c]
	str r1, [sp, #0x18]
	ldrh r1, [r5, #0x1e]
	str r1, [sp, #0x1c]
	mov r1, #0xe1
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	mov r1, #2
	str r1, [sp, #0x28]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x20]
	add r1, r4, #0
	bl ov45_0222E0E0
	add r6, #0x5c
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl ov45_0222E0A4
_0222DA76:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DA7C: .word ov45_02254BDC
	thumb_func_end ov45_0222D9EC

