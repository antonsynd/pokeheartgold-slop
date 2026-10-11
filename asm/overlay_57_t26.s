	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223866C

	.text

	.text
	thumb_func_start ov57_0223866C
ov57_0223866C: ; 0x0223866C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	cmp r1, #0
	beq _022386DC
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xb
	mov r3, #0x34
	bl NewMsgDataFromNarc
	mov r1, #0x11
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	add r1, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x40
	sub r3, r1, r0
	mov r2, #0
	str r2, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r0, _022386EC ; =0x00010F00
	add r1, #0xd
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r5, r1
	mov r1, #4
	add r2, r4, #0
	lsr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
_022386DC:
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022386EC: .word 0x00010F00
	thumb_func_end ov57_0223866C

