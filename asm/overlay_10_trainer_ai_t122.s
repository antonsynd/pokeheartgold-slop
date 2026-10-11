	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221F62C
	.extern ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_0221F62C
ov10_0221F62C: ; 0x0221F62C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	add r5, r1, #0
	str r2, [sp, #0x18]
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _0221F646
	add sp, #0x44
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F646:
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r4, r0, #0
	eor r4, r1
	mov r1, #0xc0
	add r0, r4, #0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _0221F7DC ; =0x00002D67
	ldrb r0, [r2, r0]
	cmp r0, #0x19
	bne _0221F6C4
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	mul r1, r0
	add r6, r5, r1
_0221F668:
	ldr r0, _0221F7E0 ; =0x00002D4C
	ldr r2, [sp, #0x18]
	ldrh r7, [r6, r0]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r3, r7, #0
	bl ov10_0221F47C
	add r3, r0, #0
	cmp r7, #0
	beq _0221F6A8
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x40
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	bl ov12_02251D28
	ldr r1, [sp, #0x40]
	mov r0, #2
	tst r0, r1
	beq _0221F6A8
	add sp, #0x44
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221F6A8:
	ldr r0, [sp, #0x28]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _0221F668
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetPartySize
	cmp r0, #0
	bgt _0221F6C6
_0221F6C4:
	b _0221F7D6
_0221F6C6:
	ldr r0, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #0x24]
_0221F6CC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _0221F7C0
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221F7C0
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221F7E4 ; =0x000001EE
	cmp r0, r1
	beq _0221F7C0
	ldr r1, _0221F7E8 ; =0x0000219C
	ldr r0, [sp, #0x24]
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	beq _0221F7C0
	mov r7, #0
_0221F710:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r1, r5, #0
	add r2, r6, #0
	bl ov12_02258BB4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0221F7BA
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x3c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r1, [sp, #4]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x40
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov12_02252054
	ldr r1, [sp, #0x40]
	mov r0, #2
	tst r0, r1
	beq _0221F7BA
	ldr r0, [sp, #0x14]
	bl BattleSystem_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _0221F7BA
	ldr r0, [sp, #0x18]
	ldr r1, _0221F7EC ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x20]
	add sp, #0x44
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221F7BA:
	add r7, r7, #1
	cmp r7, #4
	blt _0221F710
_0221F7C0:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	bl BattleSystem_GetPartySize
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _0221F7D6
	b _0221F6CC
_0221F7D6:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F7DC: .word 0x00002D67
_0221F7E0: .word 0x00002D4C
_0221F7E4: .word 0x000001EE
_0221F7E8: .word 0x0000219C
_0221F7EC: .word 0x000021A4
	thumb_func_end ov10_0221F62C

