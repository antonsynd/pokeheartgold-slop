	.include "asm/macros.inc"
	.include "overlay_80_0223AC24.inc"
	.include "global.inc"
	.public ov80_0223B544
	.extern ov80_0223B4A0
	.extern ov80_0223B528
	.extern ov80_0223B53C

    .text

	.text
	thumb_func_start ov80_0223B544
ov80_0223B544: ; 0x0223B544
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r4, r0, #0
	ldr r1, _0223B5D4 ; =0x00003024
	add r0, r5, #0
	bl Heap_Alloc
	ldr r2, _0223B5D4 ; =0x00003024
	str r0, [sp]
	mov r1, #0
	bl memset
	ldr r0, [sp]
	cmp r0, #0
	bne _0223B568
	bl GF_AssertFail
_0223B568:
	ldr r1, [sp]
	ldr r3, _0223B5D8 ; =0x00001820
	ldr r2, [sp]
	add r0, r5, #0
	add r1, #0x20
	add r2, r2, r3
	bl sub_02014A08
	ldr r1, [sp]
	cmp r0, #0
	str r0, [r1, #0x1c]
	bne _0223B584
	bl GF_AssertFail
_0223B584:
	ldr r0, [sp]
	ldr r1, _0223B5DC ; =0x00003020
	mov r5, #0
	str r4, [r0, r1]
	add r6, r0, #0
_0223B58E:
	add r3, r6, #0
	add r4, r7, #0
	add r3, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _0223B5D8 ; =0x00001820
	add r3, r7, #0
	add r4, r6, r0
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r5, r5, #1
	add r6, r2, #0
	stmia r4!, {r0, r1}
	cmp r5, #0xc0
	blt _0223B58E
	ldr r0, [sp]
	ldr r2, _0223B5E0 ; =ov80_0223B528
	ldr r3, _0223B5E4 ; =ov80_0223B53C
	add r1, r0, #0
	bl ov80_0223B4A0
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B5D4: .word 0x00003024
_0223B5D8: .word 0x00001820
_0223B5DC: .word 0x00003020
_0223B5E0: .word ov80_0223B528
_0223B5E4: .word ov80_0223B53C
	thumb_func_end ov80_0223B544

