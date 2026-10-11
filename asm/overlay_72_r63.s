	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239FD8
	.extern ov72_02238680
	.extern ov72_0223A350

	.text

	.text
	thumb_func_start ov72_02239FD8
ov72_02239FD8: ; 0x02239FD8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223A008 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _0223A00C ; =0x00000BDC
	mov r2, #0x1b
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0x2e
	bl ov72_02238680
	mov r0, #0xf6
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223A008: .word 0x00000F0F
_0223A00C: .word 0x00000BDC
	thumb_func_end ov72_02239FD8

