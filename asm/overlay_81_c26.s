	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022400D0
	.extern ov81_0224080C
	.extern ov81_022408B8
	.extern ov81_022413E0
	.extern ov81_02242FC8
	.extern ov81_02243028

	.text

	.text
	thumb_func_start ov81_022400D0
ov81_022400D0: ; 0x022400D0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022400E2
	cmp r0, #1
	beq _022401AC
	b _022401C0
_022400E2:
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240114
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Delete2dMenu
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_022413E0
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242FC8
	mov r0, #0xdf
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02240114:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ov80_0222A7CC
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	add r1, #8
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov81_022408B8
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	ldrh r1, [r4, r1]
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl ov81_022408B8
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov81_02243028
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	mov r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x10
	bl ov81_0224080C
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl ScheduleWindowCopyToVram
	mov r0, #0x50
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022401C0
_022401AC:
	ldrb r0, [r4, #0x10]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _022401C0
	mov r0, #0
	strb r0, [r4, #0x19]
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_022401C0:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov81_022400D0

