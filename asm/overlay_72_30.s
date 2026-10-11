	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237B80
	.public ov72_02239614
	.public ov72_0223A420

	.text

	thumb_func_start ov72_02239614
ov72_02239614: ; 0x02239614
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0]
	bl ov72_02237B80
	mov r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, _02239634 ; =0x00000FD4
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov72_0223A420
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02239634: .word 0x00000FD4
	thumb_func_end ov72_02239614

