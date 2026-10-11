	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public ListMenuCursorSetColor

	.public NNS_G3dGlb

	.text
	thumb_func_start ListMenuCursorSetColor
ListMenuCursorSetColor: ; 0x020157D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _020157E6
	bl GF_AssertFail
_020157E6:
	cmp r5, #0
	beq _020157EC
	str r4, [r5]
_020157EC:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ListMenuCursorSetColor

