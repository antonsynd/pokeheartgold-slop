	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237CB0
	.public ov72_022393B0

	.text

	thumb_func_start ov72_022393B0
ov72_022393B0: ; 0x022393B0
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237CB0
	mov r0, #8
	str r0, [r4, #0x1c]
	ldr r0, _022393C8 ; =0x00000FD4
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022393C8: .word 0x00000FD4
	thumb_func_end ov72_022393B0

