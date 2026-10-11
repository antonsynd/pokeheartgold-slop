	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A43C
	.public ov48_0225A4B4
	.public ov48_0225A4C0
	.public ov48_0225A668
	.public ov48_0225AD38

	.text

	thumb_func_start ov48_0225A43C
ov48_0225A43C: ; 0x0225A43C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3c]
	add r4, r2, #0
	add r6, r1, #0
	add r1, r4, #0
	mov r7, #1
	str r0, [sp]
	bl _s32_div_f
	cmp r1, #0
	bne _0225A464
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	add r1, r0, #0
	add r0, r5, #0
	bl ov48_0225A4B4
_0225A464:
	ldrh r0, [r5, #0x3c]
	add r1, r0, #1
	mov r0, #0x12
	mul r0, r4
	cmp r1, r0
	bge _0225A472
	strh r1, [r5, #0x3c]
_0225A472:
	ldrh r0, [r5, #0x3e]
	mov r4, #0
	cmp r0, #0
	ble _0225A492
_0225A47A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov48_0225A4C0
	cmp r0, #0
	bne _0225A48A
	mov r7, #0
_0225A48A:
	ldrh r0, [r5, #0x3e]
	add r4, r4, #1
	cmp r4, r0
	blt _0225A47A
_0225A492:
	cmp r7, #1
	bne _0225A4AE
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov48_0225AD38
	mov r0, #0xb9
	lsl r0, r0, #2
	mov r1, #0
	add r0, r5, r0
	add r2, r1, #0
	bl ov48_0225A668
_0225A4AE:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov48_0225A43C

