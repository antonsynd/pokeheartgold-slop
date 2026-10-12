	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public TradeSequence_Main
	.extern ov71_022473F0
	.extern ov71_0224BBEC
	.extern ov71_0224BBF0
	.extern ov71_0224BBF4
	.extern ov71_0224BBF8

	.text

	.text
	thumb_func_start TradeSequence_Main
TradeSequence_Main: ; 0x02246BB8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #7
	bhs _02246C34
	ldr r1, [r4]
	ldr r6, _02246C38 ; =ov71_0224BBF8
	lsl r2, r3, #4
	ldr r1, [r1, #0x10]
	ldr r6, [r6, r2]
	tst r1, r6
	beq _02246C24
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02246BEC
	ldr r1, _02246C3C ; =ov71_0224BBEC
	ldr r1, [r1, r2]
	blx r1
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
_02246BEC:
	ldr r2, [r4, #4]
	mov r0, #0x55
	lsl r3, r2, #4
	ldr r2, _02246C40 ; =ov71_0224BBF0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, r3]
	add r1, r5, #0
	blx r2
	cmp r0, #0
	beq _02246C2C
	ldr r1, [r4, #4]
	mov r0, #0x55
	lsl r2, r1, #4
	ldr r1, _02246C44 ; =ov71_0224BBF4
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	blx r1
	mov r0, #0x55
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	str r1, [r5]
	b _02246C2C
_02246C24:
	add r0, r3, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r5]
_02246C2C:
	bl ov71_022473F0
	mov r0, #0
	pop {r4, r5, r6, pc}
_02246C34:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02246C38: .word ov71_0224BBF8
_02246C3C: .word ov71_0224BBEC
_02246C40: .word ov71_0224BBF0
_02246C44: .word ov71_0224BBF4
	thumb_func_end TradeSequence_Main

