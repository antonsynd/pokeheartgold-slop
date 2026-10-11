	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239760
	.public ov72_0223A41C
	.public ov72_0223A520

	.text

	thumb_func_start ov72_02239760
ov72_02239760: ; 0x02239760
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x98
	ldr r2, [r2]
	mov r1, #1
	bl ov72_0223A520
	mov r0, #0xf
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov72_0223A41C
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_02239760

