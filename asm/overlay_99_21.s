	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6C14
	.public ov99_021E9E2C

	.text

	thumb_func_start ov99_021E6C14
ov99_021E6C14: ; 0x021E6C14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, _021E6C2C ; =ov99_021E9E2C
	bl ov98_0221E6E0
	mov r1, #1
	str r0, [r4, #0x18]
	bl ManagedSprite_SetAnimateFlag
	pop {r4, pc}
	nop
_021E6C2C: .word ov99_021E9E2C
	thumb_func_end ov99_021E6C14

