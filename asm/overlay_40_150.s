	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237564

	.text

	thumb_func_start ov40_02237564
ov40_02237564: ; 0x02237564
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223757A
	bl Pokepic_Delete
_0223757A:
	pop {r3, pc}
	thumb_func_end ov40_02237564

