	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034434
	.extern _021D4130

	.text
	thumb_func_start sub_02034434
sub_02034434: ; 0x02034434
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203769C
	add r4, r0, #0
	ldr r0, _0203451C ; =_021D4130
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl Save_FriendGroup_Get
	str r0, [sp]
	ldr r0, _0203451C ; =_021D4130
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_0202C6F4
	add r7, r0, #0
	ldr r0, _0203451C ; =_021D4130
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl Save_WiFiHistory_Get
	add r6, r0, #0
	ldr r0, _0203451C ; =_021D4130
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	bne _02034470
	ldr r0, [r1, #8]
	bl Save_PlayerData_GetProfile
_02034470:
	ldr r1, _0203451C ; =_021D4130
	ldr r2, [r1]
	lsl r1, r4, #2
	add r2, r2, r1
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl PlayerProfile_Copy
	mov r0, #0x68
	add r5, r4, #0
	mul r5, r0
	ldr r0, _0203451C ; =_021D4130
	ldr r0, [r0]
	add r0, #0x68
	add r0, r0, r5
	bl OS_GetMacAddress
	ldr r0, [sp]
	mov r1, #1
	mov r2, #0
	bl sub_0202C7E0
	ldr r1, _0203451C ; =_021D4130
	mov r2, #0x10
	ldr r1, [r1]
	add r1, #0x58
	add r1, r1, r5
	bl MI_CpuCopy8
	add r0, r6, #0
	bl WifiHistory_GetPlayerCountry
	ldr r1, _0203451C ; =_021D4130
	ldr r1, [r1]
	add r1, r1, r5
	add r1, #0x6f
	strb r0, [r1]
	add r0, r6, #0
	bl WiFiHistory_GetPlayerRegion
	ldr r2, _0203451C ; =_021D4130
	ldr r1, [r2]
	add r1, r1, r5
	add r1, #0x70
	strb r0, [r1]
	ldr r0, [r2]
	mov r1, #0
	add r0, r0, r5
	add r0, #0x71
	strb r1, [r0]
	add r0, r7, #0
	bl sub_0202C08C
	ldr r1, _0203451C ; =_021D4130
	ldr r1, [r1]
	add r1, #0x4c
	add r1, r1, r5
	bl DWC_CreateExchangeToken
	ldr r0, _0203451C ; =_021D4130
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x20
	add r0, #0xc
	add r0, r0, r5
	bl MI_CpuFill8
	ldr r0, _0203451C ; =_021D4130
	ldr r1, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0203450A
	add r1, #0xc
	add r1, r1, r5
	bl LinkBattleRuleset_Copy
_0203450A:
	ldr r1, _0203451C ; =_021D4130
	mov r0, #3
	ldr r1, [r1]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_02037030
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203451C: .word _021D4130
	thumb_func_end sub_02034434

