	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E78C4
	.extern _021E7968

	.text

	.text
	thumb_func_start ov37_021E78C4
ov37_021E78C4: ; 0x021E78C4
	push {r3, lr}
	ldr r0, _021E78DC ; =_021E7968
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E78D8
	mov r0, #1
	pop {r3, pc}
_021E78D8:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021E78DC: .word _021E7968
	thumb_func_end ov37_021E78C4

