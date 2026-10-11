	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225DC24

	.text

	thumb_func_start ov91_0225DC24
ov91_0225DC24: ; 0x0225DC24
	push {r3, lr}
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov90_02258CE0
	cmp r0, #1
	bne _0225DC38
	mov r0, #1
	pop {r3, pc}
_0225DC38:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov91_0225DC24

