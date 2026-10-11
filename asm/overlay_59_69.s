	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BAE8
	.public ov59_0223C99C

	.text

	thumb_func_start ov59_0223BAE8
ov59_0223BAE8: ; 0x0223BAE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x4a
	ldrb r1, [r0]
	add r2, r4, #0
	mov r0, #0x34
	mul r0, r1
	add r2, #0x7c
	add r0, r2, r0
	str r0, [sp]
	ldr r2, [sp]
	add r0, r4, #0
	ldrb r2, [r2, #8]
	ldr r1, [r4, #0x10]
	add r0, #0x18
	bl ov58_022379C0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #8
	bne _0223BB18
	ldr r0, [r4, #0x14]
	bl sub_02032024
_0223BB18:
	ldr r2, [sp]
	ldr r1, [sp]
	ldrb r2, [r2, #8]
	ldr r0, [r4, #0x10]
	add r1, #0x10
	bl Party_GetMonAprijuiceModifiers
	ldr r0, [sp]
	ldr r2, [sp]
	ldrh r0, [r0, #0x16]
	ldr r1, [sp]
	add r2, #0x10
	strh r0, [r4, #0x2e]
	ldr r0, [sp]
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0x30]
	ldr r0, [sp]
	ldrh r0, [r0, #0x1a]
	strh r0, [r4, #0x32]
	ldr r0, [sp]
	ldrh r0, [r0, #0x1c]
	strh r0, [r4, #0x34]
	ldr r0, [sp]
	ldr r1, [r1]
	ldr r3, [r4]
	add r0, #0x16
	bl CalcMonPokeathlonStars
	add r0, r4, #0
	add r7, r4, #0
	mov r3, #0
	add r0, #0x3e
	ldr r5, _0223BBAC ; =ov59_0223C99C
	strb r3, [r0]
	add r7, #0x3e
_0223BB5E:
	ldr r1, [r5]
	lsl r0, r1, #1
	add r2, r1, r0
	ldr r0, [sp]
	add r1, r4, r3
	ldrh r0, [r0, #0x16]
	add r6, r0, #0
	asr r6, r2
	mov r0, #7
	and r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	ldrh r0, [r4, #0x2e]
	asr r0, r2
	mov r2, #7
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, ip
	sub r2, r2, r0
	add r0, r1, #0
	add r0, #0x39
	strb r2, [r0]
	mov r0, #0x39
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0223BB9C
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_0223BB9C:
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #5
	blt _0223BB5E
	mov r0, #1
	add r4, #0x48
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223BBAC: .word ov59_0223C99C
	thumb_func_end ov59_0223BAE8

