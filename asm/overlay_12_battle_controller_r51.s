	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_EmitBattleMonToPartyMonCopy
	.extern ov12_02262240

	.text

	.text
	thumb_func_start BattleController_EmitBattleMonToPartyMonCopy
BattleController_EmitBattleMonToPartyMonCopy: ; 0x02263B4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r1, #0
	str r2, [sp, #8]
	mov r1, #0x27
	add r2, sp, #0x10
	strb r1, [r2]
	ldrb r1, [r2, #1]
	mov r3, #0xf
	str r0, [sp, #4]
	bic r1, r3
	ldr r3, [sp, #8]
	add r4, r6, r3
	ldr r3, _02263C88 ; =0x0000219C
	ldrb r4, [r4, r3]
	mov r3, #0xf
	and r3, r4
	orr r1, r3
	strb r1, [r2, #1]
	ldr r1, [sp, #8]
	mov r3, #0xc0
	mul r3, r1
	ldrb r4, [r2, #1]
	mov r1, #0xf0
	str r3, [sp, #0xc]
	bic r4, r1
	add r1, r3, #0
	add r3, r6, r1
	ldr r1, _02263C8C ; =0x00002DCC
	ldr r5, [r3, r1]
	lsl r5, r5, #0x1a
	lsr r5, r5, #0x1c
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x18
	orr r4, r5
	strb r4, [r2, #1]
	add r4, r1, #0
	sub r4, #0x40
	ldr r4, [r3, r4]
	sub r1, #0x14
	strh r4, [r2, #2]
	ldrh r1, [r3, r1]
	strh r1, [r2, #0xc]
	ldr r1, [sp, #8]
	bl BattleSystem_GetFieldSide
	lsl r0, r0, #3
	add r1, r6, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r7, _02263C90 ; =0x00002D6C
	lsl r0, r0, #3
	lsr r0, r0, #0x1a
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r2, r6, r0
	ldr r0, _02263C94 ; =0x00002D66
	ldrb r1, [r2, r0]
	add r0, r0, #1
	lsl r1, r1, #0x1b
	lsr r3, r1, #0x1b
	add r1, sp, #0x10
	strh r3, [r1, #0x20]
	ldrb r0, [r2, r0]
	ldr r1, [sp, #8]
	mov r2, #0xc0
	mul r2, r1
	add r1, r6, r2
	mov ip, r2
	add r2, sp, #0x10
	str r0, [sp, #0x34]
	mov r0, #0
	add r3, r1, #0
	add r4, r2, #0
_02263BE6:
	ldr r5, _02263C98 ; =0x00002D4C
	add r0, r0, #1
	ldrh r5, [r1, r5]
	add r1, r1, #2
	strh r5, [r2, #0xe]
	ldrb r5, [r3, r7]
	add r2, r2, #2
	add r3, r3, #1
	strb r5, [r4, #0x16]
	add r4, r4, #1
	cmp r0, #4
	blt _02263BE6
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _02263C1E
	mov r0, ip
	add r3, r6, r0
	ldr r0, _02263C9C ; =0x00002DAC
	ldr r1, _02263CA0 ; =0xFFFFF0FF
	ldr r2, [r3, r0]
	add r0, r0, #4
	and r1, r2
	str r1, [sp, #0x14]
	ldr r0, [r3, r0]
	str r0, [sp, #0x2c]
	b _02263C2C
_02263C1E:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r6, r0
	ldr r0, _02263CA4 ; =0x00002DB0
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
_02263C2C:
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #1
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1a
	tst r0, r2
	add r0, sp, #0x10
	beq _02263C4A
	mov r2, #1
	strh r2, [r0, #0x2a]
	ldr r2, [r6, r1]
	ldr r0, _02263CA8 ; =0xFBFFFFFF
	and r0, r2
	str r0, [r6, r1]
	b _02263C4E
_02263C4A:
	mov r1, #0
	strh r1, [r0, #0x2a]
_02263C4E:
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1a
	tst r0, r2
	add r0, sp, #0x10
	beq _02263C6E
	mov r2, #1
	strh r2, [r0, #0x28]
	strh r2, [r0, #0x2a]
	ldr r2, [r6, r1]
	ldr r0, _02263CAC ; =0xF7FFFFFF
	and r0, r2
	str r0, [r6, r1]
	b _02263C72
_02263C6E:
	mov r1, #0
	strh r1, [r0, #0x28]
_02263C72:
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02263C88: .word 0x0000219C
_02263C8C: .word 0x00002DCC
_02263C90: .word 0x00002D6C
_02263C94: .word 0x00002D66
_02263C98: .word 0x00002D4C
_02263C9C: .word 0x00002DAC
_02263CA0: .word 0xFFFFF0FF
_02263CA4: .word 0x00002DB0
_02263CA8: .word 0xFBFFFFFF
_02263CAC: .word 0xF7FFFFFF
	thumb_func_end BattleController_EmitBattleMonToPartyMonCopy

