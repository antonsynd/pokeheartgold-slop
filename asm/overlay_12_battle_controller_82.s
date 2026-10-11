	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_022645F8

	.text

	.text
	thumb_func_start ov12_022645F8
ov12_022645F8: ; 0x022645F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r5, r2, #0
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	mov r0, #0
	add r1, r5, #0
	mov r2, #8
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp]
	bl BattleSystem_GetBattleType
	add r4, r0, #0
	mov r0, #0xc
	and r0, r4
	strb r6, [r5]
	cmp r0, #0xc
	beq _0226464C
	mov r0, #0x10
	tst r0, r4
	beq _02264636
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _0226464C
_02264636:
	cmp r4, #0x4b
	bne _02264646
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _0226464C
_02264646:
	cmp r4, #0xcb
	beq _0226464C
	b _02264782
_0226464C:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov12_0223AB0C
	cmp r0, #2
	beq _02264664
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl ov12_0223AB0C
	cmp r0, #3
	bne _02264672
_02264664:
	ldr r6, [sp, #0x38]
	ldr r0, [sp]
	add r1, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	str r0, [sp, #0x38]
	b _0226467C
_02264672:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl BattleSystem_GetBattlerIdPartner
	add r6, r0, #0
_0226467C:
	ldr r0, [sp]
	add r1, r6, #0
	bl BattleSystem_GetParty
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, r4, #0
	bl Party_GetCount
	cmp r0, #0
	ble _022646FC
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_0226469C:
	ldr r1, _0226481C ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r6, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x14]
	bl GetMonData
	cmp r0, #0
	beq _022646EE
	ldr r1, _02264820 ; =0x000001EE
	cmp r0, r1
	beq _022646EE
	ldr r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022646E6
	ldr r0, [sp, #0x14]
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022646DE
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _022646EC
_022646DE:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _022646EC
_022646E6:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_022646EC:
	add r4, r4, #1
_022646EE:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _0226469C
_022646FC:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl BattleSystem_GetParty
	str r0, [sp, #8]
	mov r4, #3
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	bgt _02264714
	b _02264816
_02264714:
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_0226471E:
	ldr r1, _0226481C ; =0x0000312C
	ldr r0, [sp, #8]
	ldrb r1, [r6, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x18]
	bl GetMonData
	cmp r0, #0
	beq _02264770
	ldr r1, _02264820 ; =0x000001EE
	cmp r0, r1
	beq _02264770
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02264768
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02264760
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _0226476E
_02264760:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _0226476E
_02264768:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_0226476E:
	add r4, r4, #1
_02264770:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _0226471E
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02264782:
	mov r0, #2
	tst r0, r4
	beq _02264796
	mov r0, #8
	tst r0, r4
	bne _02264796
	ldr r0, [sp, #0x38]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x38]
_02264796:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl BattleSystem_GetParty
	mov r4, #0
	str r0, [sp, #0xc]
	add r7, r4, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02264816
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_022647B6:
	ldr r1, _0226481C ; =0x0000312C
	ldr r0, [sp, #0xc]
	ldrb r1, [r6, r1]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	cmp r0, #0
	beq _02264808
	ldr r1, _02264820 ; =0x000001EE
	cmp r0, r1
	beq _02264808
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02264800
	ldr r0, [sp, #0x1c]
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022647F8
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02264806
_022647F8:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02264806
_02264800:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02264806:
	add r4, r4, #1
_02264808:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _022647B6
_02264816:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226481C: .word 0x0000312C
_02264820: .word 0x000001EE
	thumb_func_end ov12_022645F8
