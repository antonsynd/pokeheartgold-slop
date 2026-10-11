	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237BD0
	.public ov72_0223988C
	.public ov72_0223A420

	.text

	thumb_func_start ov72_0223988C
ov72_0223988C: ; 0x0223988C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x9c
	add r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, #0xa0
	bl ov72_02237BD0
	add r0, r4, #0
	bl ov72_0223A420
	mov r0, #0x12
	str r0, [r4, #0x1c]
	ldr r0, _022398B8 ; =0x00000FD4
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022398B8: .word 0x00000FD4
	thumb_func_end ov72_0223988C

