	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225BC28
	.public ov90_0225BD08
	.public ov90_0225BD84
	.extern ov90_0225BDE4
	.extern ov90_0225C2B4

	.text

	.text
	thumb_func_start ov90_0225BC28
ov90_0225BC28: ; 0x0225BC28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r2, [sp]
	mov r0, #8
	ldrsh r2, [r2, r0]
	mov r3, #0x17
	add r4, r2, #0
	mul r4, r3
	asr r2, r4, #2
	lsr r2, r2, #0x1d
	add r2, r4, r2
	asr r4, r2, #3
	ldr r2, [sp]
	strh r4, [r2, #0xa]
	ldrsh r0, [r2, r0]
	add r0, r0, r1
	cmp r0, #8
	bgt _0225BC62
	cmp r0, #0
	blt _0225BC62
	add r1, r0, #0
	mul r1, r3
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #4]
	b _0225BC6A
_0225BC62:
	ldr r0, [sp]
	mov r1, #0xa
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
_0225BC6A:
	ldr r0, [sp, #4]
	ldr r7, _0225BD04 ; =ov90_0225C2B4
	ldr r4, [sp]
	mov r6, #0
	lsl r5, r0, #0xc
_0225BC74:
	add r3, r7, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	cmp r6, #0
	str r0, [r2]
	bne _0225BCB6
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0225BC9C
	add r0, r5, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225BCAA
_0225BC9C:
	add r0, r5, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225BCAA:
	bl _ffix
	ldr r1, [sp, #0xc]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	b _0225BCE6
_0225BCB6:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0225BCCE
	add r0, r5, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225BCDC
_0225BCCE:
	add r0, r5, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225BCDC:
	bl _ffix
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0225BCE6:
	ldr r0, [r4]
	add r1, sp, #8
	bl Sprite_SetMatrix
	add r6, r6, #1
	add r7, #0xc
	add r4, r4, #4
	cmp r6, #2
	blt _0225BC74
	ldr r0, [sp]
	bl ov90_0225BD84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225BD04: .word ov90_0225C2B4
	thumb_func_end ov90_0225BC28

	thumb_func_start ov90_0225BD08
ov90_0225BD08: ; 0x0225BD08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0225BD22
	bl SysTask_Destroy
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
_0225BD22:
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0225BD28:
	ldr r0, [r5]
	cmp r0, #0
	beq _0225BD34
	bl Sprite_Delete
	str r7, [r5]
_0225BD34:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0225BD28
	bl HBlankInterruptDisable
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0225BD7C ; =0xFFFF1FFF
	add r3, r1, #0
	and r3, r0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	sub r0, r0, #4
	lsl r1, r1, #0xd
	orr r1, r3
	str r1, [r2]
	add r2, #0x4a
	ldrh r2, [r2]
	mov r1, #0x3f
	ldrb r0, [r6, r0]
	bic r2, r1
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #0x1a
	orr r1, r2
	lsr r0, r0, #0x1f
	beq _0225BD74
	mov r0, #0x20
	orr r1, r0
_0225BD74:
	ldr r0, _0225BD80 ; =0x0400004A
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BD7C: .word 0xFFFF1FFF
_0225BD80: .word 0x0400004A
	thumb_func_end ov90_0225BD08

	thumb_func_start ov90_0225BD84
ov90_0225BD84: ; 0x0225BD84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0xcc
	mov r1, #0
	mov r2, #0xc0
	bl memset
	mov r0, #0xa
	ldrsh r2, [r4, r0]
	mov r0, #0x17
	mov r1, #0
	sub r0, r0, r2
	cmp r0, #0
	ble _0225BDC0
	ldr r7, _0225BDDC ; =0x00000115
	mov r0, #1
	mov r2, #0x79
	mov r5, #0xa
	mov r6, #0x17
_0225BDAA:
	add r3, r4, r1
	strb r0, [r3, r7]
	sub r3, r2, r1
	add r3, r4, r3
	add r3, #0xcc
	strb r0, [r3]
	ldrsh r3, [r4, r5]
	add r1, r1, #1
	sub r3, r6, r3
	cmp r1, r3
	blt _0225BDAA
_0225BDC0:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225BDDA
	ldr r0, _0225BDE0 ; =ov90_0225BDE4
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
_0225BDDA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BDDC: .word 0x00000115
_0225BDE0: .word ov90_0225BDE4
	thumb_func_end ov90_0225BD84

