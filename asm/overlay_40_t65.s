	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DD9C
	.extern ov40_0222C6C8

	.text

	.text
	thumb_func_start ov40_0222DD9C
ov40_0222DD9C: ; 0x0222DD9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _0222DE34 ; =0x000008A4
	add r6, r1, #0
	add r5, r0, #0
	sub r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _0222DE30
	mov r2, #1
	sub r1, r4, #4
	str r2, [r5, r1]
	mov r1, #6
	mov r2, #0
	bl ov40_0222C6C8
	ldr r0, _0222DE38 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r0, #6
	bl SetBgPriority
	add r0, r5, r4
	bl InitWindow
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r2, #6
	mov r3, #1
	bl AddWindowParameterized
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, r4
	mov r1, #0xcc
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222DE3C ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	bl OS_WaitVBlankIntr
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
_0222DE30:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222DE34: .word 0x000008A4
_0222DE38: .word 0x04001050
_0222DE3C: .word 0x000F0D0C
	thumb_func_end ov40_0222DD9C

