	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239BC8
	.public ov72_0223A41C
	.public ov72_0223A520

	.text

	thumb_func_start ov72_02239BC8
ov72_02239BC8: ; 0x02239BC8
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #1
	add r2, #0x94
	str r1, [r2]
	add r2, r1, #0
	bl ov72_0223A41C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa
	bl ov72_0223A520
	mov r0, #0x1f
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov72_02239BC8

