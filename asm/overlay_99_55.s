	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E89A4
	.public ov99_021EA384
	.public ov99_021EA38C

	.text

	thumb_func_start ov99_021E89A4
ov99_021E89A4: ; 0x021E89A4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	add r2, #0xb0
	ldr r2, [r2]
	ldr r0, [r4, #0x10]
	lsl r3, r2, #2
	ldr r2, _021E89E4 ; =ov99_021EA384
	ldr r2, [r2, r3]
	mov r3, #1
	bl ov98_0221EC08
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r4, #0xb0
	ldr r2, [r4]
	mov r1, #1
	lsl r3, r2, #2
	ldr r2, _021E89E8 ; =ov99_021EA38C
	ldr r2, [r2, r3]
	add r3, r1, #0
	bl ov98_0221EBEC
	add sp, #8
	pop {r4, pc}
	nop
_021E89E4: .word ov99_021EA384
_021E89E8: .word ov99_021EA38C
	thumb_func_end ov99_021E89A4

