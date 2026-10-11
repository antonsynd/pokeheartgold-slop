	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E848
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF7C
	.extern ov10_0222B080
	.extern ov10_0222B098

	.text

	.text
	thumb_func_start ov10_0221E848
ov10_0221E848: ; 0x0221E848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	ldr r2, _0221E984 ; =0x00000356
	str r0, [sp, #0x20]
	ldrh r3, [r6, r2]
	add r2, #0x88
	ldr r1, _0221E988 ; =ov10_0222B098
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0221E98C ; =0x0000FFFF
	mov r0, #0
_0221E872:
	ldrh r4, [r1]
	cmp r3, r4
	beq _0221E882
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _0221E872
_0221E882:
	ldr r2, _0221E990 ; =ov10_0222B080
	ldr r4, _0221E98C ; =0x0000FFFF
	mov r1, #0
_0221E888:
	ldrh r5, [r2]
	cmp r3, r5
	beq _0221E898
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0221E888
_0221E898:
	lsl r2, r1, #1
	ldr r1, _0221E990 ; =ov10_0222B080
	ldrh r1, [r1, r2]
	ldr r2, _0221E98C ; =0x0000FFFF
	cmp r1, r2
	bne _0221E8B8
	ldr r1, _0221E994 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _0221E976
	lsl r1, r0, #1
	ldr r0, _0221E988 ; =ov10_0222B098
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _0221E976
_0221E8B8:
	ldr r0, _0221E998 ; =0x000003CF
	ldrb r7, [r6, r0]
	mov r0, #0
	str r0, [sp, #0x1c]
_0221E8C0:
	mov r4, #0
	add r5, sp, #0x28
_0221E8C4:
	add r2, r4, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0xa
	mov r3, #0
	bl GetBattlerVar
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221E8C4
	mov r0, #0xc0
	add r4, r7, #0
	mul r4, r0
	add r0, r6, #0
	add r1, r7, #0
	bl GetBattlerAbility
	add r1, sp, #0x30
	str r1, [sp]
	ldr r3, _0221E99C ; =0x00002DB8
	add r1, r6, r4
	ldrh r2, [r1, r3]
	str r2, [sp, #4]
	add r2, sp, #0x28
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r3, r4
	bl ov10_0221EF7C
	ldr r1, _0221E998 ; =0x000003CF
	ldr r0, [sp, #0x18]
	ldrb r1, [r6, r1]
	bl BattleSystem_GetBattlerIdPartner
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0221E93A
	ldr r0, _0221E9A0 ; =0x00000355
	ldrb r0, [r6, r0]
	lsl r1, r0, #2
	add r0, sp, #0x30
	ldr r0, [r0, r1]
	str r0, [sp, #0x24]
_0221E93A:
	mov r3, #0
	add r2, sp, #0x30
_0221E93E:
	ldr r1, [r2]
	ldr r0, [sp, #0x24]
	cmp r1, r0
	bgt _0221E94E
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _0221E93E
_0221E94E:
	cmp r3, #4
	bne _0221E95C
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r6, r0]
	b _0221E968
_0221E95C:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	add sp, #0x40
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221E968:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0221E8C0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0221E976:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221E984: .word 0x00000356
_0221E988: .word ov10_0222B098
_0221E98C: .word 0x0000FFFF
_0221E990: .word ov10_0222B080
_0221E994: .word 0x000003E1
_0221E998: .word 0x000003CF
_0221E99C: .word 0x00002DB8
_0221E9A0: .word 0x00000355
	thumb_func_end ov10_0221E848

