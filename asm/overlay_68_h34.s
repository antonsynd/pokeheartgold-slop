	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E68D4
	.extern ov68_021E6234
	.extern ov68_021E62D4
	.extern ov68_021E7124

	.text

	.text
	thumb_func_start ov68_021E68D4
ov68_021E68D4: ; 0x021E68D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x58
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021E69EE
	add r0, r4, #0
	mov r1, #2
	bl GetMoveAttr
	add r2, r0, #0
	cmp r2, #1
	bhi _021E692E
	mov r1, #0x21
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xdf
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	b _021E693C
_021E692E:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1d
	mov r3, #3
	bl ov68_021E62D4
_021E693C:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r3, _021E6A24 ; =0x00010200
	add r0, r5, #0
	mov r1, #3
	str r2, [sp, #4]
	bl ov68_021E6234
	add r0, r4, #0
	mov r1, #4
	bl GetMoveAttr
	add r2, r0, #0
	bne _021E696E
	mov r1, #0x21
	add r0, r5, #0
	add r2, r1, #0
	add r0, #0xf8
	add r2, #0xdf
	ldr r0, [r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	b _021E697C
_021E696E:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x1e
	mov r3, #3
	bl ov68_021E62D4
_021E697C:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	ldr r3, _021E6A24 ; =0x00010200
	add r0, r5, #0
	mov r1, #4
	str r2, [sp, #4]
	bl ov68_021E6234
	ldr r2, _021E6A28 ; =0x000002ED
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x42
	bl NewMsgDataFromNarc
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r6, r0, #0
	bl ReadMsgDataIntoString
	mov r2, #0
	str r2, [sp]
	ldr r3, _021E6A24 ; =0x00010200
	add r0, r5, #0
	mov r1, #5
	str r2, [sp, #4]
	bl ov68_021E6234
	add r0, r6, #0
	bl DestroyMsgData
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov68_021E7124
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r0, #8
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x18
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x28
	bl ScheduleWindowCopyToVram
	b _021E6A06
_021E69EE:
	add r0, r5, #0
	add r0, #8
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0x18
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	add r0, #0x28
	bl ClearWindowTilemapAndScheduleTransfer
_021E6A06:
	add r0, r5, #0
	add r0, #0x58
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add r0, #0x38
	bl ScheduleWindowCopyToVram
	add r5, #0x48
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021E6A24: .word 0x00010200
_021E6A28: .word 0x000002ED
	thumb_func_end ov68_021E68D4

