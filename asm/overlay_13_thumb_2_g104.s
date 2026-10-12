	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02224988
	.extern ov13_02224718
	.extern ov13_022247DC
	.extern ov13_02242680
	.extern ov13_02245A58
	.extern ov13_0224DF30
	.extern ov13_0224E3D8
	.extern ov13_0224E464

	.text

	.text
	thumb_func_start ov13_02224988
ov13_02224988: ; 0x02224988
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r2, sp, #4
	lsl r1, r1, #8
	add r0, sp, #4
	strh r1, [r0]
	ldr r3, _02224A10 ; =ov13_02242680
	add r2, #2
	mov r1, #7
_0222499E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222499E
	ldr r0, _02224A14 ; =ov13_02245A58
	mov r1, #1
	ldr r0, [r0]
	add r2, sp, #4
	mov r3, #2
	bl ov13_022247DC
	mov r1, #2
	add r2, sp, #4
	add r3, r1, #0
	bl ov13_022247DC
	ldr r1, _02224A18 ; =ov13_0224DF30
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022249D4
	mov r1, #5
	add r2, sp, #4
	mov r3, #2
	bl ov13_022247DC
_022249D4:
	add r2, sp, #4
	mov r1, #3
	add r2, #2
	mov r3, #7
	bl ov13_022247DC
	ldr r1, _02224A18 ; =ov13_0224DF30
	add r3, r0, #0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _022249F6
	ldr r2, _02224A1C ; =ov13_0224E3D8
	mov r1, #4
	mov r3, #6
	bl ov13_022247DC
	add r3, r0, #0
_022249F6:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r4, _02224A14 ; =ov13_02245A58
	ldr r2, _02224A20 ; =ov13_0224E464
	ldr r4, [r4]
	mov r1, #2
	sub r3, r3, r4
	add r3, #8
	bl ov13_02224718
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02224A10: .word ov13_02242680
_02224A14: .word ov13_02245A58
_02224A18: .word ov13_0224DF30
_02224A1C: .word ov13_0224E3D8
_02224A20: .word ov13_0224E464
	thumb_func_end ov13_02224988

