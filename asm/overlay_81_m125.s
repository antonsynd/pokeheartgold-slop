	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242694
	.extern ov81_02242FBC

	.text

	.text
	thumb_func_start ov81_02242694
ov81_02242694: ; 0x02242694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _022426D2
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _022426FC ; =0x04001050
	mov r1, #0
	mov r2, #0xf
	mov r3, #6
	bl G2x_SetBlendAlpha_
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	bls _022426FA
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_022426BA:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022426C6
	mov r1, #1
	bl ov81_02242FBC
_022426C6:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blo _022426BA
	pop {r3, r4, r5, r6, r7, pc}
_022426D2:
	ldr r0, _02242700 ; =0x04000050
	mov r6, #0
	strh r6, [r0]
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bls _022426FA
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_022426E4:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022426F0
	mov r1, #0
	bl ov81_02242FBC
_022426F0:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blo _022426E4
_022426FA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022426FC: .word 0x04001050
_02242700: .word 0x04000050
	thumb_func_end ov81_02242694

