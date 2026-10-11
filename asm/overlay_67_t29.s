	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6BC4
	.extern ov67_021E6C14
	.extern ov67_021E6D6C
	.extern ov67_021E6E60
	.extern ov67_021E6EE8

	.text

	.text
	thumb_func_start ov67_021E6BC4
ov67_021E6BC4: ; 0x021E6BC4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, _021E6BF4 ; =ov67_021E6EE8
	str r0, [sp, #8]
	ldr r0, _021E6BF8 ; =ov67_021E6E60
	ldr r2, _021E6BFC ; =ov67_021E6D6C
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021E6C00 ; =0x000004A4
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov67_021E6C14
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E6BF4: .word ov67_021E6EE8
_021E6BF8: .word ov67_021E6E60
_021E6BFC: .word ov67_021E6D6C
_021E6C00: .word 0x000004A4
	thumb_func_end ov67_021E6BC4

