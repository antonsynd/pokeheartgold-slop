	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EEB04
	.extern ov103_021EEFB4

	.text

	.text
	thumb_func_start ov103_021EEB04
ov103_021EEB04: ; 0x021EEB04
	push {r3, lr}
	ldr r0, _021EEB2C ; =ov103_021EEFB4
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021EEB18
	mov r0, #1
	pop {r3, pc}
_021EEB18:
	ldr r0, _021EEB30 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021EEB26
	mov r0, #1
	pop {r3, pc}
_021EEB26:
	mov r0, #0
	pop {r3, pc}
	nop
_021EEB2C: .word ov103_021EEFB4
_021EEB30: .word gSystem
	thumb_func_end ov103_021EEB04

