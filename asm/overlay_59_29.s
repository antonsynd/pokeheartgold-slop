	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022398CC
	.public ov59_0223C668

	.text

	thumb_func_start ov59_022398CC
ov59_022398CC: ; 0x022398CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _02239910
	sub r0, r0, #1
	lsl r7, r0, #3
	ldr r0, _02239914 ; =ov59_0223C668
	ldr r1, [r6]
	add r5, r0, r7
	ldrh r0, [r0, r7]
	bl ListMenuItems_New
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02239914 ; =ov59_0223C668
	mov r4, #0
	ldrh r0, [r0, r7]
	cmp r0, #0
	ble _02239910
	add r7, r1, #0
_022398FA:
	ldr r2, [r5, #4]
	ldr r0, [r6, r7]
	ldrb r2, [r2, r4]
	ldr r1, [r6, #0x5c]
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	ldrh r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _022398FA
_02239910:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239914: .word ov59_0223C668
	thumb_func_end ov59_022398CC

