	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDA98

	.text

	.text
	thumb_func_start ov103_021EDA98
ov103_021EDA98: ; 0x021EDA98
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r2, #0
	add r2, sp, #0
	ldr r0, [r0, #4]
	add r2, #1
	add r3, sp, #0
	add r6, r1, #0
	bl sub_02019B1C
	ldr r0, [r5, #0xc]
	add r3, sp, #0
	ldr r0, [r0, #4]
	add r1, r6, #0
	add r2, sp, #4
	add r3, #2
	bl sub_02019B44
	mov r0, #0xb9
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	ldrb r2, [r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strb r2, [r1]
	ldrb r3, [r1]
	mov r2, #0xfe
	bic r3, r2
	mov r2, #4
	orr r2, r3
	strb r2, [r1]
	ldrb r3, [r1, #1]
	mov r2, #0xf
	bic r3, r2
	mov r2, #2
	orr r2, r3
	strb r2, [r1, #1]
	ldrb r3, [r1, #1]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0x10
	orr r2, r3
	strb r2, [r1, #1]
	mov r3, #0
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	add r2, sp, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #4]
	ldrsb r0, [r2, r3]
	strb r0, [r1, #5]
	ldrh r0, [r2, #4]
	strb r0, [r1, #6]
	ldrh r0, [r2, #2]
	strb r0, [r1, #7]
	str r4, [r5, #0x28]
	mov r0, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov103_021EDA98

