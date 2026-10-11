	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F770
	.public ov82_0223F7B4

	.text

	.text
	thumb_func_start ov82_0223F770
ov82_0223F770: ; 0x0223F770
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0223F790
	ldrb r0, [r5, #0x18]
	cmp r0, #0xff
	bne _0223F790
	strb r4, [r5, #0x18]
_0223F790:
	ldrb r1, [r5, #0x18]
	mov r0, #0x8a
	lsl r0, r0, #2
	strh r1, [r5, r0]
	sub r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0
	bl Party_GetMonByIndex
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	ldr r1, _0223F7B0 ; =0x0000022A
	strh r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F7B0: .word 0x0000022A
	thumb_func_end ov82_0223F770

	thumb_func_start ov82_0223F7B4
ov82_0223F7B4: ; 0x0223F7B4
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0x16]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x16]
	bl sub_0203769C
	cmp r6, r0
	beq _0223F804
	ldrh r1, [r5, #2]
	mov r0, #0x9f
	lsl r0, r0, #2
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0223F7F6
	ldrb r0, [r4, #0x18]
	cmp r0, #0xff
	beq _0223F7EA
	mov r0, #0x9f
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	b _0223F7FA
_0223F7EA:
	mov r0, #0x9f
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r0, #0x14
	strb r0, [r4, #0x18]
	b _0223F7FA
_0223F7F6:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x18]
_0223F7FA:
	mov r0, #0x87
	lsl r0, r0, #2
	ldrh r1, [r5, #6]
	ldr r0, [r4, r0]
	strh r1, [r0]
_0223F804:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov82_0223F7B4

