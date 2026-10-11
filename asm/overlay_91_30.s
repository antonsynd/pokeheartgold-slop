	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225DB44

	.text

	thumb_func_start ov91_0225DB44
ov91_0225DB44: ; 0x0225DB44
	push {r3, lr}
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov90_02258CE0
	cmp r0, #1
	beq _0225DB58
	mov r0, #1
	pop {r3, pc}
_0225DB58:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov91_0225DB44

