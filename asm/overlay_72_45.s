	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239E9C

	.text

	thumb_func_start ov72_02239E9C
ov72_02239E9C: ; 0x02239E9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl Save_PrepareForAsyncWrite
	mov r0, #0x28
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_02239E9C

