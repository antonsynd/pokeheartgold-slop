	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241144
	.extern ov81_0224093C
	.extern ov81_02240AD8

	.text

	.text
	thumb_func_start ov81_02241144
ov81_02241144: ; 0x02241144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	ldrb r0, [r7, #9]
	bl ov80_02236DD4
	str r0, [sp, #0x18]
	ldrb r0, [r7, #0x13]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02241180
	add r0, r7, #0
	add r0, #0x60
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r7, #0
	add r0, #0xa0
	bl ClearWindowTilemapAndScheduleTransfer
	add r7, #0xb0
	add r0, r7, #0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02241180:
	ldr r0, _0224120C ; =0x00000463
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _02241200
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _022411E8
	add r6, r7, #0
	add r5, r7, #0
	add r6, #0x50
_02241196:
	add r0, r4, #5
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r6, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r7, #0x18]
	cmp r4, r0
	bge _022411D6
	mov r0, #0xf
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241210 ; =0x0000045A
	ldr r1, [sp, #0x1c]
	ldrh r0, [r5, r0]
	mov r2, #0
	add r1, r6, r1
	str r0, [sp, #0x10]
	ldr r0, _02241214 ; =0x0000045E
	add r3, r2, #0
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov81_02240AD8
_022411D6:
	ldr r0, [sp, #0x1c]
	add r0, r6, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _02241196
_022411E8:
	mov r2, #0
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x60
	add r3, r2, #0
	str r2, [sp]
	bl ov81_0224093C
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
_02241200:
	ldr r0, _0224120C ; =0x00000463
	mov r1, #0
	strb r1, [r7, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224120C: .word 0x00000463
_02241210: .word 0x0000045A
_02241214: .word 0x0000045E
	thumb_func_end ov81_02241144

