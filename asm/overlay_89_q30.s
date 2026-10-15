	.include "macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_02259F9C
	.extern ov89_0225C724
	.extern ov89_0225C818
	.extern ov89_0225CA18
	.extern ov89_0225CBD8

	.text

	.text
	thumb_func_start ov89_02259F9C
ov89_02259F9C: ; 0x02259F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	bl ov45_0222EC3C
	mov r7, #0
	b _0225A0DC
_02259FB2:
	lsl r3, r7, #2
	mov r0, #0x17
	add r1, r6, r3
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x28]
	ldr r1, [r0, r3]
	cmp r2, r1
	bne _02259FC6
	b _0225A0CC
_02259FC6:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0225A036
	str r1, [sp]
	ldr r3, [r6]
	add r2, r6, #0
	ldr r0, [r6, #0x30]
	ldr r1, [r6, #0x2c]
	ldr r3, [r3]
	add r2, #0x34
	bl ov89_0225C724
	ldr r0, [r6, #8]
	mov r1, #6
	bl GetBgTilemapBuffer
	str r0, [sp, #0x10]
	lsl r0, r7, #3
	ldr r1, _0225A130 ; =ov89_0225CBD8
	str r0, [sp, #0x1c]
	add r4, r1, r0
	mov r0, #0x27
	lsl r0, r0, #6
	add r0, r6, r0
	ldrh r5, [r4, #2]
	str r0, [sp, #0x20]
	b _0225A01C
_02259FFE:
	ldrh r0, [r4, #4]
	ldr r1, _0225A130 ; =ov89_0225CBD8
	lsl r3, r5, #5
	lsl r2, r0, #1
	ldr r0, [sp, #0x1c]
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r0, r3, r0
	lsl r3, r0, #1
	ldr r0, [sp, #0x20]
	add r1, r1, r3
	add r0, r0, r3
	bl MIi_CpuCopy16
	add r5, r5, #1
_0225A01C:
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #6]
	add r0, r1, r0
	cmp r5, r0
	blt _02259FFE
	ldr r0, [r6, #8]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	b _0225A09C
_0225A036:
	add r0, r6, #0
	add r0, #0x34
	add r1, r7, #0
	bl ov89_0225C818
	lsl r0, r7, #1
	ldr r2, _0225A134 ; =0x0000099C
	add r3, r6, r0
	mov r1, #0
	add r0, r2, #0
	strh r1, [r3, r2]
	add r0, #0x10
	strh r1, [r3, r0]
	lsl r0, r7, #2
	add r0, r6, r0
	sub r2, #0x2c
	ldr r0, [r0, r2]
	bl ManagedSprite_SetDrawFlag
	ldr r3, _0225A130 ; =ov89_0225CBD8
	lsl r4, r7, #3
	add r0, r3, r4
	ldrh r1, [r0, #2]
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldrh r1, [r0, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldrh r0, [r0, #6]
	mov r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r3, [r3, r4]
	ldr r0, [r6, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [r6, #8]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_0225A09C:
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x28]
	lsl r2, r7, #2
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0225A0CC
	ldr r3, _0225A138 ; =ov89_0225CA18
	ldr r0, _0225A13C ; =0x0000096C
	ldrsh r1, [r3, r2]
	add r3, r3, r2
	mov r2, #2
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	ldr r0, [r6, r0]
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, _0225A13C ; =0x0000096C
	mov r1, #1
	ldr r0, [r6, r0]
	bl ManagedSprite_SetDrawFlag
_0225A0CC:
	ldr r1, [sp, #0x28]
	lsl r0, r7, #2
	ldr r2, [r1, r0]
	add r1, r6, r0
	mov r0, #0x17
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r7, r7, #1
_0225A0DC:
	cmp r7, #8
	bge _0225A0E2
	b _02259FB2
_0225A0E2:
	mov r0, #0
	mov r1, #0x17
	add r7, r0, #0
	lsl r1, r1, #4
	sub r2, r0, #1
	b _0225A0FC
_0225A0EE:
	lsl r3, r7, #2
	add r3, r6, r3
	ldr r3, [r3, r1]
	cmp r3, r2
	beq _0225A0FA
	add r0, r0, #1
_0225A0FA:
	add r7, r7, #1
_0225A0FC:
	cmp r7, #8
	blt _0225A0EE
	ldr r1, _0225A140 ; =0x000008D3
	strb r0, [r6, r1]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0225A116
	ldr r0, _0225A144 ; =0x000005E4
	bl PlaySE
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225A116:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0225A128
	ldr r0, _0225A144 ; =0x000005E4
	bl PlaySE
	add sp, #0x2c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0225A128:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225A130: .word ov89_0225CBD8
_0225A134: .word 0x0000099C
_0225A138: .word ov89_0225CA18
_0225A13C: .word 0x0000096C
_0225A140: .word 0x000008D3
_0225A144: .word 0x000005E4
	thumb_func_end ov89_02259F9C

