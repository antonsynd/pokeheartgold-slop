	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CE14
	.extern ov43_0222A320
	.extern ov43_0222ED7A

	.text

	.text
	thumb_func_start ov43_0222CE14
ov43_0222CE14: ; 0x0222CE14
	push {r4, lr}
	ldr r0, _0222CE40 ; =ov43_0222ED7A
	add r4, r1, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	cmp r0, #0
	bne _0222CE28
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_0222CE28:
	add r0, r4, #0
	bl ov43_0222A320
	ldr r0, _0222CE44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222CE3C
	mov r0, #1
	pop {r4, pc}
_0222CE3C:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222CE40: .word ov43_0222ED7A
_0222CE44: .word gSystem
	thumb_func_end ov43_0222CE14

