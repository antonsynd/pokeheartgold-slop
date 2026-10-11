	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223858C
	.public ov59_022385AC
	.public ov59_02238C24
	.public ov59_02238D74

	.text

	thumb_func_start ov59_0223858C
ov59_0223858C: ; 0x0223858C
	push {r4, lr}
	add r4, r0, #0
	bl ov59_022385AC
	cmp r0, #0
	beq _022385A8
	add r0, r4, #0
	bl ov59_02238D74
	add r0, r4, #0
	bl ov59_02238C24
	mov r0, #4
	pop {r4, pc}
_022385A8:
	mov r0, #0xf
	pop {r4, pc}
	thumb_func_end ov59_0223858C

