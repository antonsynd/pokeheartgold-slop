	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230404
	.public ov40_02230410

	.text

	thumb_func_start ov40_02230410
ov40_02230410: ; 0x02230410
	push {r3, lr}
	bl ov40_02230404
	cmp r0, #1
	bne _0223041E
	mov r0, #0x51
	pop {r3, pc}
_0223041E:
	mov r0, #0x52
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov40_02230410

