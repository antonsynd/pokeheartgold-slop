	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E5C04
	.extern _021E6D4C
	.extern ov67_021E6BB8

	.text

	.text
	thumb_func_start ov67_021E5C04
ov67_021E5C04: ; 0x021E5C04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E5C34 ; =_021E6D4C
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	beq _021E5C1C
	ldr r0, _021E5C38 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r1, r0
	beq _021E5C30
_021E5C1C:
	ldr r0, _021E5C3C ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov67_021E6BB8
	ldr r0, _021E5C40 ; =0x0000049C
	mov r1, #6
	str r1, [r4, r0]
	mov r0, #5
_021E5C30:
	pop {r4, pc}
	nop
_021E5C34: .word _021E6D4C
_021E5C38: .word gSystem
_021E5C3C: .word 0x000005DD
_021E5C40: .word 0x0000049C
	thumb_func_end ov67_021E5C04

