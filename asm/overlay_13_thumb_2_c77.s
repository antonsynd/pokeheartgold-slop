	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223AE4
	.public ov13_02223B28
	.extern ov13_02223A7C
	.extern ov13_0224DF30
	.extern ov13_0224E3E8
	.extern ov13_0224E420

	.text

	.text
	thumb_func_start ov13_02223AE4
ov13_02223AE4: ; 0x02223AE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl WCM_LockApList
	bl WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _02223B1C
	mov r4, #0
	cmp r6, #0
	ble _02223B1C
_02223B00:
	cmp r4, r7
	bge _02223B1C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _02223B00
_02223B1C:
	mov r0, #0
	bl WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02223AE4

	thumb_func_start ov13_02223B28
ov13_02223B28: ; 0x02223B28
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _02223BFC ; =ov13_0224DF30
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #0x60]
	ldr r0, _02223C00 ; =ov13_0224E3E8
	str r0, [r1, #0x44]
	beq _02223B58
	mov r2, #0
_02223B48:
	ldrb r1, [r5]
	add r2, r2, #1
	add r5, r5, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r2, #6
	blt _02223B48
	b _02223B66
_02223B58:
	mov r1, #0xff
	mov r2, #6
	bl MI_CpuFill8
	ldr r1, _02223C04 ; =_02108FC0
	ldr r0, _02223BFC ; =ov13_0224DF30
	str r1, [r0, #0x44]
_02223B66:
	ldr r2, _02223C08 ; =ov13_0224E420
	ldr r0, _02223BFC ; =ov13_0224DF30
	cmp r4, #0
	str r2, [r0, #0x48]
	beq _02223BA2
	cmp r6, #0
	ble _02223BA2
	cmp r6, #0x20
	bge _02223BA2
	mov r0, #0
	cmp r6, #0
	ble _02223B8C
_02223B7E:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _02223B7E
_02223B8C:
	cmp r0, #0x20
	bge _02223BB2
	ldr r1, _02223C08 ; =ov13_0224E420
	add r2, r1, r0
	mov r1, #0
_02223B96:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _02223B96
	b _02223BB2
_02223BA2:
	ldr r0, _02223C08 ; =ov13_0224E420
	mov r1, #0xff
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r1, _02223C0C ; =_02108FC8
	ldr r0, _02223BFC ; =ov13_0224DF30
	str r1, [r0, #0x48]
_02223BB2:
	ldr r2, _02223BFC ; =ov13_0224DF30
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _02223BD8
	ldr r1, [r2, #0x48]
	ldr r0, _02223C00 ; =ov13_0224E3E8
	ldr r2, [r2, #0x60]
	bl WCM_SearchAsync
	cmp r0, #3
	bne _02223BF0
	ldr r0, _02223BFC ; =ov13_0224DF30
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223BD8:
	bl ov13_02223A7C
	cmp r0, #1
	bne _02223BF0
	ldr r0, _02223BFC ; =ov13_0224DF30
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223BF0:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223BFC: .word ov13_0224DF30
_02223C00: .word ov13_0224E3E8
_02223C04: .word _02108FC0
_02223C08: .word ov13_0224E420
_02223C0C: .word _02108FC8
	thumb_func_end ov13_02223B28

