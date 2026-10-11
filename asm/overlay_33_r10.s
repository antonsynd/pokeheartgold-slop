	.include "asm/macros.inc"
	.include "overlay_33.inc"
	.include "global.inc"
	.public ov33_0225D8D4
	.extern ov33_0225DA50

	.text

	.text
	thumb_func_start ov33_0225D8D4
ov33_0225D8D4: ; 0x0225D8D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	mov r0, #4
	mov r1, #8
	bl FontID_Alloc
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #8
	bl NewMsgDataFromNarc
	str r0, [sp, #0x14]
	ldr r0, _0225D9C8 ; =0x000001BA
	ldr r3, _0225D9CC ; =ov33_0225DA50
	ldrh r0, [r7, r0]
	mov r1, #0xc
	mov r5, #0
	sub r2, r0, #1
	mul r1, r2
	add r1, r3, r1
	str r1, [sp, #0x18]
	cmp r0, #0
	bls _0225D9B0
	add r0, r7, #0
	str r0, [sp, #0x1c]
	add r0, #0x38
	add r4, r7, #0
	str r0, [sp, #0x1c]
	add r4, #0x18
_0225D912:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x18]
	ldrh r1, [r1, #0xa]
	ldrb r0, [r0, #9]
	ldr r3, [sp, #0x18]
	add r1, r1, #6
	add r2, r1, #0
	mul r2, r5
	add r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldrb r3, [r3, #8]
	ldr r0, [r7]
	ldr r2, [sp, #0x1c]
	mov r1, #5
	bl LoadRectToBgTilemapRect
	ldr r1, [r7, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r1]
	lsl r1, r5, #2
	ldr r1, [r2, r1]
	bl NewString_ReadMsgData
	lsl r6, r5, #4
	str r0, [sp, #0x20]
	add r0, r4, r6
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	mov r0, #4
	mov r2, #0
	bl FontID_String_GetWidth
	lsr r1, r0, #1
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D9D0 ; =0x00020100
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, r6
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r6
	bl CopyWindowPixelsToVram_TextMode
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x20]
	bl String_Delete
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0225D9C8 ; =0x000001BA
	ldrh r0, [r7, r0]
	cmp r5, r0
	blo _0225D912
_0225D9B0:
	ldr r0, [sp, #0x14]
	bl DestroyMsgData
	mov r0, #4
	bl FontID_Release
	ldr r0, [r7]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D9C8: .word 0x000001BA
_0225D9CC: .word ov33_0225DA50
_0225D9D0: .word 0x00020100
	thumb_func_end ov33_0225D8D4

