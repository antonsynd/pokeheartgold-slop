	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221BF44
	.extern ov10_0221C278
	.extern ov10_0221EE88

	.text

	.text
	thumb_func_start ov10_0221BF44
ov10_0221BF44: ; 0x0221BF44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl ov10_0221EE88
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0221BF9A
	add r6, r0, #0
	add r4, r0, #5
_0221BF5E:
	mov r0, #1
	tst r0, r1
	beq _0221BF80
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0221BF78
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0221BF78:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov10_0221C278
_0221BF80:
	ldr r0, [r5, r6]
	mov r1, #0
	lsr r0, r0, #1
	str r0, [r5, r6]
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	ldr r0, _0221C030 ; =0x00000355
	strb r1, [r5, r0]
	add r0, #0xb
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0221BF5E
_0221BF9A:
	mov r3, #0xd9
	lsl r3, r3, #2
	ldrb r1, [r5, r3]
	mov r0, #2
	tst r0, r1
	beq _0221BFAA
	mov r0, #4
	b _0221C01C
_0221BFAA:
	mov r0, #4
	tst r0, r1
	beq _0221BFB4
	mov r0, #5
	b _0221C01C
_0221BFB4:
	add r0, r3, #0
	sub r0, #0xc
	ldrsb r0, [r5, r0]
	add r1, sp, #4
	mov r4, #1
	strb r0, [r1, #4]
	mov r0, #0
	strb r0, [r1]
	add r3, #0x6b
	ldrb r3, [r5, r3]
	mov r0, #0xc0
	add r2, r4, #0
	mul r0, r3
	add r0, r5, r0
	add r3, r0, #2
_0221BFD2:
	ldr r0, _0221C034 ; =0x00002D4C
	ldrh r0, [r3, r0]
	cmp r0, #0
	beq _0221C004
	mov r0, #0xd6
	add r6, r5, r2
	lsl r0, r0, #2
	ldrsb r6, [r6, r0]
	ldrb r0, [r1, #4]
	cmp r0, r6
	bne _0221BFF8
	add r0, sp, #8
	strb r6, [r0, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r7, r4, #0
	lsr r4, r0, #0x18
	add r0, sp, #4
	strb r2, [r0, r7]
_0221BFF8:
	ldrb r0, [r1, #4]
	cmp r0, r6
	bge _0221C004
	strb r6, [r1, #4]
	mov r4, #1
	strb r2, [r1]
_0221C004:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blt _0221BFD2
	ldr r0, [sp]
	bl BattleSystem_Random
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #4
	ldrb r0, [r0, r1]
_0221C01C:
	mov r2, #0x3d
	lsl r2, r2, #4
	sub r1, r2, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r2]
	add r2, #0xa
	add r1, r5, r1
	strb r3, [r1, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C030: .word 0x00000355
_0221C034: .word 0x00002D4C
	thumb_func_end ov10_0221BF44

