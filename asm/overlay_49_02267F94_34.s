	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268B90
	.extern ov49_02268D0C
	.extern ov49_0226A83C
	.extern ov49_0226A83D

    .text

	.text
	thumb_func_start ov49_02268B90
ov49_02268B90: ; 0x02268B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #6
	bl _u32_div_f
	cmp r1, #0
	bne _02268C20
	ldr r0, [r5, #0xc]
	lsl r1, r0, #1
	ldr r0, _02268C24 ; =ov49_0226A83C
	ldrb r0, [r0, r1]
	str r0, [sp]
	ldr r0, _02268C28 ; =ov49_0226A83D
	ldrb r0, [r0, r1]
	add r1, sp, #4
	bl ov49_02268D0C
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _02268BE2
	mov r7, #1
	add r6, r4, #0
	lsl r7, r7, #0xc
_02268BC4:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225E85C
	cmp r0, #1
	beq _02268BDA
	bl GF_AssertFail
_02268BDA:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02268BC4
_02268BE2:
	ldr r0, [sp]
	add r1, sp, #4
	bl ov49_02268D0C
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	bls _02268C14
	mov r6, #1
	lsl r7, r6, #0xc
_02268BF6:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225E85C
	cmp r0, #1
	beq _02268C0C
	bl GF_AssertFail
_02268C0C:
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02268BF6
_02268C14:
	ldr r0, [r5, #0xc]
	mov r1, #7
	add r0, r0, #1
	bl _u32_div_f
	str r1, [r5, #0xc]
_02268C20:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02268C24: .word ov49_0226A83C
_02268C28: .word ov49_0226A83D
	thumb_func_end ov49_02268B90

