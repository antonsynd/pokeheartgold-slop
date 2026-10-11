	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02260908
	.extern ov93_0225FC8C
	.extern ov93_02260314
	.extern ov93_02260B84

	.text

	.text
	thumb_func_start ov93_02260908
ov93_02260908: ; 0x02260908
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02260970 ; =0x0000339C
	add r4, r5, r0
	ldr r0, [r4]
	cmp r0, #1
	bne _0226091A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0226091A:
	mov r2, #0x47
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r1, _02260970 ; =0x0000339C
	ldr r2, _02260974 ; =0x00001428
	add r0, r5, #0
	add r1, r5, r1
	add r2, r5, r2
	bl ov93_02260314
	ldr r1, _02260974 ; =0x00001428
	ldr r0, [r5, #0x2c]
	add r1, r5, r1
	bl ov93_0225FC8C
	add r0, r5, #0
	bl ov93_02260B84
	mov r2, #0
	ldr r0, _02260978 ; =0x00002FCC
	add r1, r2, #0
	str r2, [r5, r0]
	ldr r0, _0226097C ; =0x00001430
	str r2, [r5, r0]
	add r0, #8
	str r2, [r5, r0]
	mov r0, #0x51
	lsl r0, r0, #6
_02260958:
	add r2, r2, #1
	str r1, [r5, r0]
	add r5, r5, #4
	cmp r2, #4
	blt _02260958
	ldr r0, _02260980 ; =0x00000594
	bl PlaySE
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02260970: .word 0x0000339C
_02260974: .word 0x00001428
_02260978: .word 0x00002FCC
_0226097C: .word 0x00001430
_02260980: .word 0x00000594
	thumb_func_end ov93_02260908

