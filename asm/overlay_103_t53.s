	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDA98
	.public ov103_021EDB18
	.public ov103_021EDB60
	.extern ov103_021EE110

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

	thumb_func_start ov103_021EDB18
ov103_021EDB18: ; 0x021EDB18
	push {r4, r5}
	mov r3, #0xb9
	ldr r4, [r0, #0xc]
	lsl r3, r3, #2
	add r4, r4, r3
	ldrb r5, [r4]
	mov r3, #1
	lsl r1, r1, #0x18
	bic r5, r3
	strb r5, [r4]
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	ldrb r3, [r4]
	mov r5, #0xfe
	lsr r1, r1, #0x18
	bic r3, r5
	orr r1, r3
	strb r1, [r4]
	ldrb r3, [r4, #1]
	mov r1, #0xf
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r4, #1]
	ldrb r3, [r4, #1]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r4, #1]
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	str r2, [r0, #0x28]
	mov r0, #5
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov103_021EDB18

	thumb_func_start ov103_021EDB60
ov103_021EDB60: ; 0x021EDB60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	cmp r1, #1
	bne _021EDB90
	mov r1, #0
	mov r2, #1
	bl ov103_021EE110
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov103_021EE110
	mov r0, #0xc
	str r0, [sp]
	mov r1, #4
	ldr r0, _021EDBAC ; =0x04000050
	mov r2, #8
	add r3, r1, #0
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021EDB90:
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE110
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov103_021EE110
	ldr r0, _021EDBAC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EDBAC: .word 0x04000050
	thumb_func_end ov103_021EDB60

