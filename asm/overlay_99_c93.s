	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7EF0
	.extern ov99_021E724C
	.extern ov99_021E7F90
	.extern ov99_021E80D0
	.extern ov99_021E810C
	.extern ov99_021E8198
	.extern ov99_021E9F60
	.extern ov99_021E9FC4

	.text

	.text
	thumb_func_start ov99_021E7EF0
ov99_021E7EF0: ; 0x021E7EF0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	ldr r5, _021E7F58 ; =ov99_021E9FC4
	add r3, sp, #0x10
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x32
	bl ov98_0221E5E0
	ldr r1, _021E7F5C ; =0x00000404
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov99_021E7F90
	add r0, r4, #0
	bl ov99_021E80D0
	add r0, r4, #0
	bl ov99_021E810C
	add r0, r4, #0
	bl ov99_021E8198
	add r0, r4, #0
	bl ov99_021E724C
	add r3, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x98
	str r0, [sp, #8]
	mov r0, #1
	ldr r1, _021E7F5C ; =0x00000404
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r2, _021E7F60 ; =ov99_021E9F60
	add r1, r4, r1
	bl ov98_0221E6F0
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7F58: .word ov99_021E9FC4
_021E7F5C: .word 0x00000404
_021E7F60: .word ov99_021E9F60
	thumb_func_end ov99_021E7EF0

