	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221C278
	.extern ov10_0222B0B4

	.text

	.text
	thumb_func_start ov10_0221C278
ov10_0221C278: ; 0x0221C278
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xd5
	add r5, r1, #0
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #2
	beq _0221C35E
	mov r6, #0xd9
	lsl r6, r6, #2
	add r4, r6, #0
	sub r4, #0x10
_0221C290:
	cmp r0, #0
	beq _0221C29C
	cmp r0, #1
	beq _0221C2DC
	cmp r0, #2
	b _0221C354
_0221C29C:
	ldr r1, _0221C360 ; =0x00000365
	ldr r0, _0221C364 ; =0x00002134
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, _0221C368 ; =0x00002138
	str r1, [r5, r0]
	ldr r0, _0221C36C ; =0x000003CF
	ldrb r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	add r3, r5, r0
	ldr r0, _0221C370 ; =0x00000355
	ldrb r2, [r5, r0]
	ldr r0, _0221C374 ; =0x00002D6C
	add r1, r3, r2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0221C2C8
	mov r1, #0
	b _0221C2D0
_0221C2C8:
	lsl r0, r2, #1
	add r1, r3, r0
	ldr r0, _0221C378 ; =0x00002D4C
	ldrh r1, [r1, r0]
_0221C2D0:
	ldr r0, _0221C37C ; =0x00000356
	strh r1, [r5, r0]
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _0221C354
_0221C2DC:
	ldr r0, _0221C37C ; =0x00000356
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0221C2FE
	ldr r3, _0221C368 ; =0x00002138
	ldr r2, _0221C364 ; =0x00002134
	ldr r3, [r5, r3]
	ldr r2, [r5, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r0, r7, #0
	lsl r3, r2, #2
	ldr r2, _0221C380 ; =ov10_0222B0B4
	add r1, r5, #0
	ldr r2, [r2, r3]
	blx r2
	b _0221C314
_0221C2FE:
	ldr r0, _0221C370 ; =0x00000355
	mov r1, #0
	ldrb r0, [r5, r0]
	add r2, r5, r0
	mov r0, #0xd6
	lsl r0, r0, #2
	strb r1, [r2, r0]
	ldrb r1, [r5, r6]
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r6]
_0221C314:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0221C354
	ldr r0, _0221C370 ; =0x00000355
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _0221C370 ; =0x00000355
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #4
	bhs _0221C346
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #8
	tst r0, r1
	bne _0221C346
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
	b _0221C34C
_0221C346:
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_0221C34C:
	ldrb r1, [r5, r6]
	mov r0, #0xfe
	and r0, r1
	strb r0, [r5, r6]
_0221C354:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #2
	bne _0221C290
_0221C35E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C360: .word 0x00000365
_0221C364: .word 0x00002134
_0221C368: .word 0x00002138
_0221C36C: .word 0x000003CF
_0221C370: .word 0x00000355
_0221C374: .word 0x00002D6C
_0221C378: .word 0x00002D4C
_0221C37C: .word 0x00000356
_0221C380: .word ov10_0222B0B4
	thumb_func_end ov10_0221C278

