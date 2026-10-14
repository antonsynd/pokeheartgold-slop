	.include "macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02247C70
	.extern _02249B20
	.extern ov75_02249B24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02247C70
ov75_02247C70: ; 0x02247C70
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xd4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x34]
	mov r1, #0x2a
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r3, _02247D00 ; =_02249B20
	mov r1, #0
	ldr r0, [r3, #4]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3]
	add r0, r4, #0
	add r0, #0xd4
	add r3, #0xc
	bl AddTextPrinterParameterized
	add r0, r5, #0
	bl String_Delete
	ldr r0, [r4, #0x34]
	mov r1, #0x2b
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r3, _02247D00 ; =_02249B20
	mov r1, #0
	ldr r0, [r3, #0xc]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #8]
	add r0, r4, #0
	add r0, #0xd4
	add r3, #0xc
	bl AddTextPrinterParameterized
	add r0, r5, #0
	bl String_Delete
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	lsl r3, r0, #3
	add r0, r4, #0
	ldr r2, _02247D04 ; =_02249B20
	add r0, #0xe4
	ldr r5, _02247D08 ; =ov75_02249B24
	ldr r2, [r2, r3]
	ldr r0, [r0]
	ldr r3, [r5, r3]
	add r1, #0xd4
	bl ListMenuUpdateCursorObj
	add r4, #0xd4
	add r0, r4, #0
	bl CopyWindowToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02247D00: .word _02249B20
_02247D04: .word _02249B20
_02247D08: .word ov75_02249B24
	thumb_func_end ov75_02247C70

