	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225BB14
	.public ov49_0225CAD4
	.public ov49_022696EC
	.public ov49_022696F0

    .text

	thumb_func_start ov49_0225CAD4
ov49_0225CAD4: ; 0x0225CAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x20
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp]
	mov r1, #0x15
	str r1, [sp, #4]
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x2c]
	add r7, r3, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #3
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _0225CB34
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, _0225CB48 ; =ov49_022696EC
	str r0, [sp, #4]
	ldrh r3, [r5, #0xa]
	ldrb r2, [r2, r6]
	add r0, r4, #0
	lsl r3, r3, #1
	add r2, r2, r3
	add r1, r7, #0
	add r2, #0x60
	mov r3, #6
	bl ov49_0225BB14
_0225CB34:
	ldr r3, _0225CB4C ; =ov49_022696F0
	ldr r0, [r4]
	ldrsb r3, [r3, r6]
	mov r1, #6
	mov r2, #3
	bl ScheduleSetBgPosText
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225CB48: .word ov49_022696EC
_0225CB4C: .word ov49_022696F0
	thumb_func_end ov49_0225CAD4


