	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EEA24
	.extern ov103_021EEFBC

	.text

	.text
	thumb_func_start ov103_021EEA24
ov103_021EEA24: ; 0x021EEA24
	push {r3, lr}
	ldr r1, [r0, #0xc]
	ldr r0, _021EEA40 ; =0x000002E2
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021EEA36
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021EEA36:
	ldr r0, _021EEA44 ; =ov103_021EEFBC
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
	nop
_021EEA40: .word 0x000002E2
_021EEA44: .word ov103_021EEFBC
	thumb_func_end ov103_021EEA24

