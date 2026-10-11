	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268B0C
	.extern ov49_0226A894
	.extern ov49_0226A8B4

    .text

	.text
	thumb_func_start ov49_02268B0C
ov49_02268B0C: ; 0x02268B0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	bl _u32_div_f
	cmp r1, #0
	bne _02268B86
	ldr r5, _02268B88 ; =ov49_0226A8B4
	mov r4, #0
_02268B20:
	ldr r0, [r7, #0xc]
	add r1, r4, #0
	lsl r2, r0, #3
	ldr r0, _02268B8C ; =ov49_0226A894
	mov r6, #0
	add r3, r0, r2
	mov r0, #3
	and r1, r0
	ldr r0, _02268B8C ; =ov49_0226A894
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _02268B40
	mov r0, #1
	str r0, [sp]
	add r6, r0, #0
	b _02268B4C
_02268B40:
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _02268B4C
	add r0, r6, #0
	str r0, [sp]
	mov r6, #1
_02268B4C:
	cmp r6, #1
	bne _02268B72
	cmp r4, #0x11
	bhs _02268B6E
	ldrb r1, [r5]
	mov r3, #1
	ldr r0, [r7, #4]
	ldr r2, [sp]
	lsl r3, r3, #0xc
	bl ov49_0225E85C
	add r6, r0, #0
	cmp r6, #1
	beq _02268B74
	bl GF_AssertFail
	b _02268B74
_02268B6E:
	mov r6, #0
	b _02268B74
_02268B72:
	mov r6, #1
_02268B74:
	add r5, r5, #1
	add r4, r4, #1
	cmp r6, #1
	beq _02268B20
	ldr r0, [r7, #0xc]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	str r0, [r7, #0xc]
_02268B86:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02268B88: .word ov49_0226A8B4
_02268B8C: .word ov49_0226A894
	thumb_func_end ov49_02268B0C

