	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_02220010
	.extern ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_02220010
ov10_02220010: ; 0x02220010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r1, r2, #0
	lsl r6, r1, #1
	str r3, [sp, #0x1c]
	ldr r1, _02220258 ; =0x00003064
	add r3, r5, r6
	str r2, [sp, #0x18]
	ldrh r2, [r3, r1]
	str r0, [sp, #0x14]
	cmp r2, #0
	beq _02220032
	add r1, #8
	ldrh r1, [r3, r1]
	cmp r1, #0xff
	bne _02220038
_02220032:
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220038:
	lsl r1, r2, #4
	add r2, r5, r1
	ldr r1, _0222025C ; =0x000003E1
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _0222004A
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222004A:
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _02220066
	ldr r0, [sp, #0x14]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0222006A
_02220066:
	add r7, r4, #0
	b _02220076
_0222006A:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02220076:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetPartySize
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _0222008C
	b _02220250
_0222008C:
	add r0, r5, r4
	str r0, [sp, #0x2c]
	add r0, r5, r7
	str r0, [sp, #0x28]
	add r0, sp, #0x68
	ldrb r0, [r0, #0x10]
	add r4, r5, r6
	str r0, [sp, #0x24]
_0222009C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x34]
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02220102
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02220102
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _02220260 ; =0x000001EE
	cmp r0, r1
	beq _02220102
	ldr r0, _02220264 ; =0x0000219C
	ldr r1, [sp, #0x2c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	ldr r1, [sp, #0x28]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	add r2, r0, #0
	ldr r1, [sp, #0x2c]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02220102
	ldr r1, [sp, #0x28]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bne _02220104
_02220102:
	b _02220242
_02220104:
	mov r0, #0
	str r0, [sp, #0x5c]
	ldr r3, _02220268 ; =0x0000306C
	ldr r0, [sp, #0x14]
	ldrh r2, [r4, r3]
	sub r3, #8
	ldrh r3, [r4, r3]
	add r1, r5, #0
	bl ov10_0221F47C
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x38]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerAbility
	str r0, [sp, #0x3c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl GetItemVar
	str r0, [sp, #0x44]
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x38]
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x3c]
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, _02220258 ; =0x00003064
	add r0, r5, #0
	ldrh r1, [r4, r1]
	bl ov12_02252054
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _02220242
	mov r7, #0
_0222018A:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	add r2, r6, #0
	bl ov12_02258BB4
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0222023C
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x4c]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerAbility
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x50]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x54]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	ldr r1, _02220268 ; =0x0000306C
	str r0, [sp, #0x58]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x48]
	str r1, [sp]
	ldr r1, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	str r1, [sp, #4]
	ldr r1, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov12_02252054
	ldr r1, [sp, #0x5c]
	mov r0, #2
	tst r0, r1
	beq _0222023C
	ldr r0, [sp, #0x14]
	bl BattleSystem_Random
	ldr r1, [sp, #0x24]
	bl _s32_div_f
	cmp r1, #0
	bne _0222023C
	ldr r0, [sp, #0x18]
	ldr r1, _0222026C ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0x60
	strb r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222023C:
	add r7, r7, #1
	cmp r7, #4
	blt _0222018A
_02220242:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _02220250
	b _0222009C
_02220250:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220258: .word 0x00003064
_0222025C: .word 0x000003E1
_02220260: .word 0x000001EE
_02220264: .word 0x0000219C
_02220268: .word 0x0000306C
_0222026C: .word 0x000021A4
	thumb_func_end ov10_02220010

