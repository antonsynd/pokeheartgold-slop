	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_022492E0
	.extern ov41_022495A4

    .text

	.text
	thumb_func_start ov41_022492E0
ov41_022492E0: ; 0x022492E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02249384
	ldr r1, _02249388 ; =gSystem + 0x40
	ldrh r2, [r1, #0x20]
	ldr r1, _0224938C ; =0x0000FFFF
	cmp r2, r1
	beq _02249384
	beq _02249384
	add r1, sp, #8
	str r1, [sp]
	add r1, sp, #0x14
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov41_02249BAC
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov41_02249B94
	ldr r0, _02249388 ; =gSystem + 0x40
	ldr r1, [r4, #0x14]
	ldrh r2, [r0, #0x20]
	ldr r3, [sp, #0x18]
	sub r5, r2, r1
	ldrh r1, [r0, #0x22]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	sub r6, r1, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	sub r0, r2, r0
	ldr r2, [sp, #8]
	add r7, r6, r1
	sub r2, r3, r2
	ldr r3, [sp, #0x14]
	str r2, [sp, #0x18]
	add r2, r5, r3
	str r0, [sp, #0x1c]
	cmp r2, #0x8a
	bgt _02249342
	mov r0, #0x8a
	sub r5, r0, r3
	b _0224934C
_02249342:
	add r2, r5, r0
	cmp r2, #0xf6
	blt _0224934C
	mov r2, #0xf6
	sub r5, r2, r0
_0224934C:
	cmp r7, #0x12
	bgt _02249356
	mov r0, #0x12
	sub r6, r0, r1
	b _02249362
_02249356:
	ldr r1, [sp, #0x18]
	add r0, r6, r1
	cmp r0, #0x8f
	blt _02249362
	mov r0, #0x8f
	sub r6, r0, r1
_02249362:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov41_022495A4
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov41_022482B8
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r5, r1
	add r2, r6, r2
	bl ov41_022495A4
_02249384:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02249388: .word gSystem + 0x40
_0224938C: .word 0x0000FFFF
	thumb_func_end ov41_022492E0

