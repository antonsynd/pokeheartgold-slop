	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A98C
	.extern ov49_0225AA70
	.extern ov49_0225B518

    .text

	.text
	thumb_func_start ov49_0225A98C
ov49_0225A98C: ; 0x0225A98C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B44
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9B2
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF24
_0225A9B2:
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E318
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _0225A9E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225A9E8
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258B5C
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_0225EF30
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02268870
_0225A9E8:
	add r0, r4, #0
	bl ov49_0225AA70
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225AA1E
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225AA0A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225AA0E
_0225AA0A:
	mov r2, #1
	b _0225AA10
_0225AA0E:
	mov r2, #0
_0225AA10:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	mov r3, #0x77
	bl ov49_0225B518
_0225AA1E:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02265378
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A98C

