#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02222B8C
	.extern ov08_02223374
	.extern ov08_02223390
	.extern ov08_02223B20

	.text

	.text
	thumb_func_start ov08_02222B8C
ov08_02222B8C: ; 0x02222B8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02222D6C ; =0x0000114D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	ldr r4, [r5]
	cmp r1, #3
	beq _02222B9C
	b _02222CB6
_02222B9C:
	bl ov08_02223374
	add r7, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	mov r1, #7
	bl GetItemAttr
	add r6, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02222C0E
	ldrh r0, [r4, #0x1c]
	cmp r0, #0x37
	beq _02222C0E
	cmp r6, #3
	beq _02222C0E
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r7, #0
	bl BattleSystem_GetPartyMon
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0x2e
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl BufferBoxMonNickname
	ldr r0, [r5, #0x14]
	ldr r2, _02222D70 ; =MOVE_EMBARGO
	mov r1, #1
	bl BufferMoveName
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222C0E:
	ldrh r0, [r4, #0x1c]
	add r2, r7, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	bl BattleSystem_RecoverStatus
	cmp r0, #1
	bne _02222C34
	ldr r2, _02222D6C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4]
	ldr r3, [r4, #0xc]
	bl ov08_02223390
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02222C34:
	cmp r6, #3
	bne _02222C9C
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	tst r0, r1
	bne _02222C56
	ldr r2, _02222D6C ; =0x0000114D
	ldrh r1, [r4, #0x1c]
	ldrb r2, [r5, r2]
	ldr r0, [r4]
	ldr r3, [r4, #0xc]
	bl ov08_02223390
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_02222C56:
	ldr r3, [r4, #0xc]
	add r0, r1, #0
	mov r1, #0x1b
	mov r2, #0x28
	bl NewMsgDataFromNarc
	mov r1, #0x25
	add r7, r0, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r4, #4]
	mov r1, #0
	bl BufferPlayersName
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222C9C:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x22
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222CB6:
	cmp r1, #2
	bne _02222D66
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _02222CDE
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2c
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222CDE:
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #1
	bne _02222D02
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2f
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222D02:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _02222D26
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x30
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222D26:
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	bl BattleSystem_GetParty
	add r6, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetPcStorage
	add r4, r0, #0
	add r0, r6, #0
	bl Party_GetCount
	cmp r0, #6
	bne _02222D66
	add r0, r4, #0
	bl PCStorage_FindFirstBoxWithEmptySlot
	cmp r0, #0x12
	bne _02222D66
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	mov r1, #0x2d
	bl ReadMsgDataIntoString
	add r0, r5, #0
	bl ov08_02223B20
	ldr r0, _02222D74 ; =0x0000114B
	mov r1, #8
	strb r1, [r5, r0]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_02222D66:
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222D6C: .word 0x0000114D
_02222D70: .word MOVE_EMBARGO
_02222D74: .word 0x0000114B
	thumb_func_end ov08_02222B8C

