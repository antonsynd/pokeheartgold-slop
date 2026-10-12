	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258E54
	.extern ov90_02258EE0

	.text

	.text
	thumb_func_start ov90_02258E54
ov90_02258E54: ; 0x02258E54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r6, [r5, #0x14]
	mov r4, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r7, r3, #0
	add r1, r4, #0
	cmp r6, #0
	bls _02258E84
	ldr r3, [r5, #0x10]
	add r2, r3, #0
_02258E6E:
	ldr r0, [r2]
	cmp r0, #0
	bne _02258E7C
	mov r0, #0x38
	mul r0, r1
	add r4, r3, r0
	b _02258E84
_02258E7C:
	add r1, r1, #1
	add r2, #0x38
	cmp r1, r6
	blo _02258E6E
_02258E84:
	cmp r4, #0
	bne _02258E8C
	bl GF_AssertFail
_02258E8C:
	ldr r0, [sp, #0x38]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov90_02258EE0
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov90_02258E54

