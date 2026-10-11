	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022306C0
	.public ov40_02230E34

	.text

	thumb_func_start ov40_02230E34
ov40_02230E34: ; 0x02230E34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02230EAC ; =0x000008A4
	add r5, r0, #0
	add r0, r5, r4
	bl InitWindow
	mov r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r4
	mov r3, #8
	bl AddWindowParameterized
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0xc0
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, r4
	add r1, r6, #0
	bl ov40_022306C0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230EB0 ; =0x00010E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, r4
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02230EAC: .word 0x000008A4
_02230EB0: .word 0x00010E00
	thumb_func_end ov40_02230E34

