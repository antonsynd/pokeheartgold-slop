	.include "macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E7F28
	.extern ov87_021E84C0

	.text

	.text
	thumb_func_start ov87_021E7F28
ov87_021E7F28: ; 0x021E7F28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _021E7F38
	bl GF_AssertFail
_021E7F38:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	bl SpriteResourceCollection_Find
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x7a
	str r0, [sp, #4]
	ldr r3, _021E7F68 ; =ov87_021E84C0
	add r0, #0xb6
	ldrb r3, [r3, r4]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0xcf
	bl ReplacePlttResObjFromNarc
	add r0, r6, #0
	bl SpriteTransfer_ReplacePlttData
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E7F68: .word ov87_021E84C0
	thumb_func_end ov87_021E7F28

