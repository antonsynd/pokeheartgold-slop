	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239F8C
	.extern ov72_02238680
	.extern ov72_0223A350

	.text

	.text
	thumb_func_start ov72_02239F8C
ov72_02239F8C: ; 0x02239F8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239FB4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239FB8 ; =0x00000BDC
	mov r2, #0x1a
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A350
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2a
	bl ov72_02238680
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239FB4: .word 0x00000F0F
_02239FB8: .word 0x00000BDC
	thumb_func_end ov72_02239F8C

