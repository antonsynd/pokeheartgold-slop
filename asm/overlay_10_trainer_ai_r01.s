	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221C038
	.extern ov10_0221C278
	.extern ov10_0221EE88

	.text

	.text
	thumb_func_start ov10_0221C038
ov10_0221C038: ; 0x0221C038
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, sp, #0x20
	str r5, [sp, #8]
	str r0, [sp]
_0221C04E:
	ldr r0, _0221C264 ; =0x000003CF
	ldrb r2, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r2
	beq _0221C062
	ldr r1, _0221C268 ; =0x00002D8C
	ldr r0, [sp, #8]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0221C070
_0221C062:
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	strb r1, [r0]
	ldr r0, [sp]
	strh r1, [r0]
	b _0221C190
_0221C070:
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0xf
	bl ov10_0221BE20
	mov r1, #0x3d
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	strb r0, [r5, r1]
	sub r1, r1, #1
	mov r2, #1
	ldrb r1, [r5, r1]
	and r0, r2
	and r1, r2
	cmp r0, r1
	beq _0221C098
	add r0, r7, #0
	add r1, r5, #0
	bl ov10_0221EE88
_0221C098:
	ldr r0, _0221C26C ; =0x00000365
	mov r2, #0
	add r1, r0, #0
	strb r2, [r5, r0]
	sub r1, #0x10
	strb r2, [r5, r1]
	sub r0, r0, #5
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _0221C0E2
	ldr r6, _0221C26C ; =0x00000365
_0221C0AE:
	mov r0, #1
	tst r0, r4
	beq _0221C0D0
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0221C0C8
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0221C0C8:
	add r0, r7, #0
	add r1, r5, #0
	bl ov10_0221C278
_0221C0D0:
	ldrb r0, [r5, r6]
	asr r4, r4, #1
	mov r1, #0
	add r0, r0, #1
	strb r0, [r5, r6]
	ldr r0, _0221C270 ; =0x00000355
	cmp r4, #0
	strb r1, [r5, r0]
	bne _0221C0AE
_0221C0E2:
	mov r2, #0xd9
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	mov r0, #2
	tst r0, r1
	beq _0221C0F6
	ldr r0, [sp, #4]
	mov r1, #4
	strb r1, [r0]
	b _0221C190
_0221C0F6:
	mov r0, #4
	tst r0, r1
	beq _0221C104
	ldr r0, [sp, #4]
	mov r1, #5
	strb r1, [r0]
	b _0221C190
_0221C104:
	add r0, r2, #0
	sub r0, #0xc
	ldrsb r1, [r5, r0]
	add r0, sp, #0x10
	add r2, #0x6b
	strb r1, [r0, #4]
	mov r1, #0
	strb r1, [r0]
	ldrb r3, [r5, r2]
	mov r2, #0xc0
	mov r4, #1
	mul r2, r3
	add r2, r5, r2
	add r1, r4, #0
	add r2, r2, #2
_0221C122:
	ldr r3, _0221C274 ; =0x00002D4C
	ldrh r3, [r2, r3]
	cmp r3, #0
	beq _0221C14E
	mov r3, #0xd6
	add r6, r5, r1
	lsl r3, r3, #2
	ldrsb r3, [r6, r3]
	ldrb r6, [r0, #4]
	cmp r6, r3
	bne _0221C142
	add r6, sp, #0x14
	strb r3, [r6, r4]
	add r6, sp, #0x10
	strb r1, [r6, r4]
	add r4, r4, #1
_0221C142:
	ldrb r6, [r0, #4]
	cmp r6, r3
	bge _0221C14E
	strb r3, [r0, #4]
	strb r1, [r0]
	mov r4, #1
_0221C14E:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _0221C122
	add r0, r7, #0
	bl BattleSystem_Random
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #0x10
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0]
	add r0, sp, #0x10
	ldrb r1, [r0, #4]
	ldr r0, [sp]
	strh r1, [r0]
	ldr r0, _0221C264 ; =0x000003CF
	ldrb r1, [r5, r0]
	mov r0, #2
	eor r1, r0
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _0221C190
	ldr r0, [sp]
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	bge _0221C190
	ldr r0, [sp]
	sub r1, r1, #1
	strh r1, [r0]
_0221C190:
	ldr r0, [sp, #8]
	add r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _0221C1AE
	b _0221C04E
_0221C1AE:
	mov r1, #0x10
	add r0, sp, #0x10
	ldrsh r1, [r0, r1]
	mov r2, #0
	mov r6, #1
	strb r2, [r0, #0xc]
	add r2, sp, #0x20
	add r4, r6, #0
	add r2, #2
_0221C1C0:
	mov r0, #0
	ldrsh r3, [r2, r0]
	cmp r1, r3
	bne _0221C1CE
	add r0, sp, #0x1c
	strb r4, [r0, r6]
	add r6, r6, #1
_0221C1CE:
	cmp r1, r3
	bge _0221C1DA
	add r0, sp, #0x10
	add r1, r3, #0
	strb r4, [r0, #0xc]
	mov r6, #1
_0221C1DA:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #4
	blt _0221C1C0
	add r0, r7, #0
	bl BattleSystem_Random
	add r1, r6, #0
	bl _s32_div_f
	add r0, sp, #0x1c
	ldrb r3, [r0, r1]
	ldr r0, _0221C264 ; =0x000003CF
	ldrb r1, [r5, r0]
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0xb
	strb r3, [r2, r1]
	ldrb r2, [r5, r0]
	add r1, r0, #0
	add r1, #0xb
	add r3, r5, r2
	ldrb r1, [r3, r1]
	add r3, sp, #0x18
	add r0, #0x17
	ldrsb r4, [r3, r1]
	mov r3, #0xc0
	mul r3, r2
	add r3, r5, r3
	lsl r2, r4, #1
	add r3, r3, r2
	ldr r2, _0221C274 ; =0x00002D4C
	ldrh r6, [r3, r2]
	lsl r2, r6, #4
	add r2, r5, r2
	ldrh r2, [r2, r0]
	mov r0, #2
	lsl r0, r0, #8
	cmp r2, r0
	bne _0221C23E
	add r0, r7, #0
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _0221C23E
	ldr r0, _0221C264 ; =0x000003CF
	ldrb r2, [r5, r0]
	add r0, #0xb
	add r1, r5, r2
	strb r2, [r1, r0]
_0221C23E:
	cmp r6, #0xae
	bne _0221C25C
	ldr r2, _0221C264 ; =0x000003CF
	add r0, r5, #0
	ldrb r2, [r5, r2]
	add r1, r6, #0
	bl CurseUserIsGhost
	cmp r0, #0
	bne _0221C25C
	ldr r0, _0221C264 ; =0x000003CF
	ldrb r2, [r5, r0]
	add r0, #0xb
	add r1, r5, r2
	strb r2, [r1, r0]
_0221C25C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C264: .word 0x000003CF
_0221C268: .word 0x00002D8C
_0221C26C: .word 0x00000365
_0221C270: .word 0x00000355
_0221C274: .word 0x00002D4C
	thumb_func_end ov10_0221C038

