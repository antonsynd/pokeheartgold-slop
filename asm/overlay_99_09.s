	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6018

	.text

	thumb_func_start ov99_021E6018
ov99_021E6018: ; 0x021E6018
	push {r4, lr}
	sub sp, #8
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #2
	mov r3, #1
	bl ov98_0221EC08
	mov r2, #0
	str r2, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	mov r1, #2
	mov r3, #1
	bl ov98_0221EBEC
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	mov r2, #7
	mov r3, #0
	bl ov98_0221EBD8
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov99_021E6018

