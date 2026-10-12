	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222DB0
	.public ov13_02222F28
	.extern ov13_02222B34
	.extern ov13_02222BC0
	.extern ov13_02222BE4
	.extern ov13_02222C08
	.extern ov13_02223434
	.extern ov13_02223478
	.extern ov13_02223568
	.extern ov13_02223634
	.extern ov13_0224DD80
	.extern ov13_0224DDA0
	.extern ov13_0224DDC0
	.extern ov13_0224DE80

	.text

	.text
	thumb_func_start ov13_02222DB0
ov13_02222DB0: ; 0x02222DB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r6, #0
	ldr r0, _02222F14 ; =ov13_0224DD80
	add r7, r6, #0
	ldr r1, [r0]
	add r5, r6, #0
	cmp r1, #0
	beq _02222DD4
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02222DDC
_02222DD4:
	mov r0, #0
	add sp, #0x44
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02222DDC:
	mov r0, #3
	lsl r0, r0, #0xc
	blx r1
	add r4, r0, #0
	bne _02222DEC
	add sp, #0x44
	sub r0, r6, #1
	pop {r4, r5, r6, r7, pc}
_02222DEC:
	add r0, r6, #0
	ldr r3, _02222F18 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	str r4, [sp, #8]
	bl ov13_02223478
	cmp r0, #0
	bne _02222E00
	b _02222F04
_02222E00:
	add r0, sp, #0x18
	bl OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _02222F1C ; =0x003FEC42
	ldr r3, _02222F20 ; =ov13_02222C08
	add r0, sp, #0x18
	add r2, r6, #0
	bl OS_SetAlarm
_02222E16:
	ldr r0, _02222F24 ; =ov13_0224DDA0
	add r1, sp, #0x14
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp, #0x14]
	cmp r0, #0x13
	bhi _02222EEA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222E32: ; jump table
	.short _02222EEA - _02222E32 - 2 ; case 0
	.short _02222EEA - _02222E32 - 2 ; case 1
	.short _02222EEA - _02222E32 - 2 ; case 2
	.short _02222EEA - _02222E32 - 2 ; case 3
	.short _02222EA0 - _02222E32 - 2 ; case 4
	.short _02222E78 - _02222E32 - 2 ; case 5
	.short _02222EEA - _02222E32 - 2 ; case 6
	.short _02222EEA - _02222E32 - 2 ; case 7
	.short _02222EA0 - _02222E32 - 2 ; case 8
	.short _02222EEA - _02222E32 - 2 ; case 9
	.short _02222E9A - _02222E32 - 2 ; case 10
	.short _02222EEA - _02222E32 - 2 ; case 11
	.short _02222EEA - _02222E32 - 2 ; case 12
	.short _02222EEA - _02222E32 - 2 ; case 13
	.short _02222EEA - _02222E32 - 2 ; case 14
	.short _02222EEA - _02222E32 - 2 ; case 15
	.short _02222EEA - _02222E32 - 2 ; case 16
	.short _02222EEA - _02222E32 - 2 ; case 17
	.short _02222EA0 - _02222E32 - 2 ; case 18
	.short _02222E5A - _02222E32 - 2 ; case 19
_02222E5A:
	cmp r6, #0
	bne _02222EA0
	cmp r5, #0
	beq _02222E6C
	add r0, r4, #0
	mov r1, #0x40
	bl ov13_02223434
	add r7, r0, #0
_02222E6C:
	bl ov13_02223568
	cmp r0, #0
	beq _02222EEA
	mov r6, #1
	b _02222EA0
_02222E78:
	cmp r6, #0
	bne _02222EA0
	cmp r5, #8
	bge _02222E84
	add r5, r5, #1
	b _02222EA0
_02222E84:
	add r0, r4, #0
	mov r1, #0x40
	bl ov13_02223434
	add r7, r0, #0
	bl ov13_02223568
	cmp r0, #0
	beq _02222EEA
	mov r6, #1
	b _02222EA0
_02222E9A:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_02222EA0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02222E16
	cmp r7, #0
	beq _02222EBE
	sub r1, r7, #1
	mov r0, #0x54
	mul r0, r1
	ldr r1, _02222F14 ; =ov13_0224DD80
	add r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	bne _02222ECA
	b _02222EEA
_02222EBE:
	ldr r1, _02222F14 ; =ov13_0224DD80
	mov r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _02222EEA
_02222ECA:
	ldr r1, [sp, #4]
	mov r6, #0
	str r0, [r1]
	str r7, [r0]
	cmp r7, #0
	ble _02222EEA
	add r5, r0, #4
_02222ED8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_02222B34
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0x54
	cmp r6, r7
	blt _02222ED8
_02222EEA:
	add r0, sp, #0x18
	bl OS_CancelAlarm
	ldr r5, _02222F24 ; =ov13_0224DDA0
	add r4, sp, #0x14
	mov r6, #0
_02222EF6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl OS_ReceiveMessage
	cmp r0, #1
	beq _02222EF6
_02222F04:
	ldr r1, _02222F14 ; =ov13_0224DD80
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02222F14: .word ov13_0224DD80
_02222F18: .word 0x0030BFFE
_02222F1C: .word 0x003FEC42
_02222F20: .word ov13_02222C08
_02222F24: .word ov13_0224DDA0
	thumb_func_end ov13_02222DB0

	thumb_func_start ov13_02222F28
ov13_02222F28: ; 0x02222F28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r4, #1
	add r7, r0, #0
	sub r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x24]
	mov r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	bne _02222F42
	lsl r5, r4, #0x13
	b _02222F4A
_02222F42:
	cmp r0, #1
	bne _02222F4A
	mov r5, #3
	lsl r5, r5, #0x12
_02222F4A:
	mov r0, #3
	lsl r0, r0, #0x10
	orr r5, r0
	ldr r0, _022230DC ; =ov13_0224DE80
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _02222F68
	ldr r0, _022230DC ; =ov13_0224DE80
	mov r1, #1
	strb r1, [r0]
	b _02222F88
_02222F68:
	cmp r0, #0xd
	bne _02222F74
	ldr r0, _022230DC ; =ov13_0224DE80
	mov r1, #2
	strb r1, [r0]
	b _02222F88
_02222F74:
	cmp r0, #0x10
	bne _02222F80
	ldr r0, _022230DC ; =ov13_0224DE80
	mov r1, #3
	strb r1, [r0]
	b _02222F88
_02222F80:
	mov r0, #0
	add sp, #0x40
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02222F88:
	mov r1, #0x14
	ldr r2, _022230DC ; =ov13_0224DE80
	mul r1, r6
	add r1, r1, #2
	add r0, r7, #0
	strb r6, [r2, #1]
	add r1, r2, r1
	ldr r2, [r7, #0x28]
	add r0, #0x2c
	bl MI_CpuCopy8
	bl WCM_ClearApList
	ldr r2, [r7]
	ldr r3, _022230E0 ; =0x0030BFFE
	mov r0, #0
	add r1, r7, #4
	bl ov13_02223478
	cmp r0, #0
	bne _02222FB4
	b _022230C2
_02222FB4:
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	bl OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _022230E4 ; =0x003FEC42
	ldr r3, _022230E8 ; =ov13_02222C08
	add r0, sp, #0x14
	mov r2, #0
	bl OS_SetAlarm
	b _022230A4
_02222FD0:
	ldr r0, _022230EC ; =ov13_0224DDA0
	add r1, sp, #0x10
	mov r2, #1
	bl OS_ReceiveMessage
	ldr r0, [sp, #0x10]
	cmp r0, #0x13
	bhi _022230A2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222FEC: ; jump table
	.short _022230A2 - _02222FEC - 2 ; case 0
	.short _022230A2 - _02222FEC - 2 ; case 1
	.short _022230A2 - _02222FEC - 2 ; case 2
	.short _022230A2 - _02222FEC - 2 ; case 3
	.short _022230A4 - _02222FEC - 2 ; case 4
	.short _0222301C - _02222FEC - 2 ; case 5
	.short _022230A2 - _02222FEC - 2 ; case 6
	.short _022230A2 - _02222FEC - 2 ; case 7
	.short _022230A4 - _02222FEC - 2 ; case 8
	.short _022230A2 - _02222FEC - 2 ; case 9
	.short _02223062 - _02222FEC - 2 ; case 10
	.short _022230A2 - _02222FEC - 2 ; case 11
	.short _0222307C - _02222FEC - 2 ; case 12
	.short _02223082 - _02222FEC - 2 ; case 13
	.short _022230A2 - _02222FEC - 2 ; case 14
	.short _022230A2 - _02222FEC - 2 ; case 15
	.short _022230A2 - _02222FEC - 2 ; case 16
	.short _022230A2 - _02222FEC - 2 ; case 17
	.short _02223014 - _02222FEC - 2 ; case 18
	.short _0222301A - _02222FEC - 2 ; case 19
_02223014:
	cmp r6, #0
	bne _022230A4
	mov r4, #0
_0222301A:
	b _022230A4
_0222301C:
	cmp r6, #0
	bne _022230A4
	add r0, sp, #0x14
	bl OS_CancelAlarm
	ldr r0, _022230F0 ; =ov13_0224DDC0
	mov r1, #1
	bl ov13_02223434
	cmp r0, #1
	beq _02223036
	mov r4, #0
	b _022230A4
_02223036:
	ldr r1, _022230F0 ; =ov13_0224DDC0
	add r0, r7, #0
	bl ov13_02222BC0
	ldr r1, _022230F4 ; =ov13_0224DDC0
	mov r0, #0
	ldrh r1, [r1, #0xa]
	b _02223048
_02223046:
	add r0, r0, #1
_02223048:
	cmp r0, r1
	blt _02223046
	ldr r0, _022230F0 ; =ov13_0224DDC0
	ldr r1, _022230DC ; =ov13_0224DE80
	add r2, r5, #0
	bl ov13_02223634
	cmp r0, #0
	bne _0222305E
	mov r4, #0
	b _022230A4
_0222305E:
	mov r6, #1
	b _022230A4
_02223062:
	ldr r1, _022230F0 ; =ov13_0224DDC0
	add r0, r7, #0
	bl ov13_02222BC0
	ldr r0, _022230F0 ; =ov13_0224DDC0
	ldr r1, _022230DC ; =ov13_0224DE80
	add r2, r5, #0
	bl ov13_02223634
	cmp r0, #0
	bne _022230A4
	mov r4, #0
	b _022230A4
_0222307C:
	mov r4, #0
	str r4, [sp, #0xc]
	b _022230A4
_02223082:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	bge _0222309E
	ldr r0, _022230F0 ; =ov13_0224DDC0
	ldr r1, _022230DC ; =ov13_0224DE80
	add r2, r5, #0
	bl ov13_02223634
	cmp r0, #0
	bne _022230A4
	mov r4, #0
	b _022230A4
_0222309E:
	mov r4, #0
	b _022230A4
_022230A2:
	mov r4, #0
_022230A4:
	cmp r4, #0
	bne _02222FD0
	add r0, sp, #0x14
	bl OS_CancelAlarm
	ldr r5, _022230EC ; =ov13_0224DDA0
	add r4, sp, #0x10
	mov r6, #0
_022230B4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl OS_ReceiveMessage
	cmp r0, #1
	beq _022230B4
_022230C2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _022230CC
	mov r2, #1
	b _022230CE
_022230CC:
	mov r2, #0
_022230CE:
	ldr r0, [sp, #4]
	ldr r1, _022230F0 ; =ov13_0224DDC0
	bl ov13_02222BE4
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022230DC: .word ov13_0224DE80
_022230E0: .word 0x0030BFFE
_022230E4: .word 0x003FEC42
_022230E8: .word ov13_02222C08
_022230EC: .word ov13_0224DDA0
_022230F0: .word ov13_0224DDC0
_022230F4: .word ov13_0224DDC0
	thumb_func_end ov13_02222F28

