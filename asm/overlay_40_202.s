	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223D540
	.public ov40_0223D600

	.text

	thumb_func_start ov40_0223D600
ov40_0223D600: ; 0x0223D600
	push {r3, lr}
	mov r1, #0x42
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0223D614
	bl ov40_0223D540
	bl ov39_022272EC
_0223D614:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov40_0223D600

