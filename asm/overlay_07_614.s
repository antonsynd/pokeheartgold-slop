	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0223261C
	.extern ov07_0223251C
	.extern ov07_0223746C

	.text

	.text
	thumb_func_start ov07_0223261C
ov07_0223261C: ; 0x0223261C
	push {r3, lr}
	bl ov07_0223251C
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0223262C ; =ov07_0223746C
	ldr r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
_0223262C: .word ov07_0223746C
	thumb_func_end ov07_0223261C

